#!/usr/bin/env python3
"""Execute cruise-map ARM64 wire v2 and ABI tests against a native build directory."""
import sys
sys.dont_write_bytecode = True

import hashlib
import json
import struct
import unittest
from collections import deque
from pathlib import Path

import unicorn
from unicorn import Uc, UC_ARCH_ARM64, UC_MODE_ARM, UC_HOOK_CODE, UC_HOOK_INTR
from unicorn import arm64_const as reg

if len(sys.argv) < 2 or sys.argv[1].startswith('-'):
    raise SystemExit('Usage: PYTHONPATH=.tmp/map-voice-research/test-deps python3 '
                     'scripts/test-cruise-map-native.py NATIVE_BUILD_OUTPUT [unittest options]')
DIRECTORY = Path(sys.argv.pop(1)).resolve()
ENTRY, RESUME = 0x19820c4, 0x19820c8
HEADER, ROW = struct.Struct('<IIIIQII'), struct.Struct('<iiii')
MAGIC, MASK64 = 0x43534d31, (1 << 64) - 1
AT_FDCWD = (-100) & MASK64
FILE_ROOT = '/data/user/0/com.autonavi.amapautolite/files/content-cruise-map'
LOCK, TEMP, OUTPUT = (FILE_ROOT + suffix for suffix in ('.lock', '.tmp', '.bin'))
RUNS = 0


def load_artifacts():
    receipt = next(t for t in json.loads((DIRECTORY / 'native-patch-report.json').read_text())['targets']
                   if t['name'] == 'libGbl.so')
    assert (DIRECTORY / 'libGbl.so').stat().st_size <= 128 * 1024 * 1024
    image = (DIRECTORY / 'libGbl.so').read_bytes()
    payload = (DIRECTORY / 'libGbl.so.payload').read_bytes()
    assert 0 < len(payload) <= 65536 and len(payload) == receipt['payloadSize']
    assert hashlib.sha256(image).hexdigest() == receipt['outputSha256']
    assert hashlib.sha256(payload).hexdigest() == receipt['payloadSha256']
    assert image[:6] == b'\x7fELF\x02\x01' and struct.unpack_from('<H', image, 18)[0] == 183
    phoff = struct.unpack_from('<Q', image, 32)[0]
    phsize, phnum = struct.unpack_from('<HH', image, 54)
    assert phsize == 56 and 0 < phnum <= 64
    segments = []
    for i in range(phnum):
        kind, flags, offset, va, _, size, memory_size, _ = struct.unpack_from('<II6Q', image, phoff + i * 56)
        if kind == 1:
            assert size <= memory_size and offset + size <= len(image)
            segments.append((va, offset, size, flags))
    return receipt, image, payload, segments


RECEIPT, IMAGE, PAYLOAD, SEGMENTS = load_artifacts()
CODE = RECEIPT['codeVa'] + RECEIPT['symbols']['map_mute_cruise_capture']


def image_at(va, size):
    for base, offset, length, flags in SEGMENTS:
        if flags & 1 and base <= va and va + size <= base + length:
            return IMAGE[offset + va - base:offset + va - base + size]
    raise AssertionError(f'code VA {va:#x}+{size:#x} not in executable PT_LOAD')


def branch_target(word, pc):
    assert word & 0xfc000000 == 0x14000000, 'expected nonlink B'
    delta = word & 0x3ffffff
    return pc + 4 * (delta - 0x4000000 if delta & 0x2000000 else delta)


class Machine:
    STACK, DATA = 0x70000000, 0x60000000
    SP, DTO, VECTOR = STACK + 0x18000, DATA + 0x1000, DATA + 0x3000

    def __init__(self, rows=((3, 1, 23, 2), (3, 2, 4, 6), (3, 8, 0, 8)),
                 light_count=3, sd_type=1, bias=0, failure=None,
                 write_plan=(), chunk=None, bounds=None, null_dto=False):
        self.uc = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
        self.rows, self.light_count, self.sd_type = tuple(rows), light_count, sd_type
        self.bias, self.failure = bias, failure
        self.write_plan, self.chunk = deque(write_plan), chunk
        self.pid, self.clock = 4093, (1234567890, 234567890)
        self.files = {OUTPUT: b'previous-complete-batch'}
        self.fds, self.events, self.writes = {}, [], []
        self.next_fd = 40
        # Map only entry/resume and actual injected PT_LOAD pages; no host files
        # are written. Full ELF and payload identity were verified above.
        pages = {ENTRY & ~4095}
        pages.update(range(CODE & ~4095, (CODE + len(PAYLOAD) + 4095) & ~4095, 4096))
        for page in pages:
            self.uc.mem_map(bias + page, 4096)
            for va, offset, size, _ in SEGMENTS:
                start, end = max(page, va), min(page + 4096, va + size)
                if start < end:
                    self.uc.mem_write(bias + start, IMAGE[offset + start - va:offset + end - va])
        self.uc.mem_map(self.STACK, 0x20000)
        self.uc.mem_map(self.DATA, 0x10000)
        self.uc.mem_write(self.DTO, b'\xe5' * 0x100)
        raw = b''.join(ROW.pack(*row) for row in self.rows)
        assert len(raw) <= 65536 - 0x3000
        if raw:
            self.uc.mem_write(self.VECTOR, raw)
        begin, end = bounds if bounds is not None else (self.VECTOR, self.VECTOR + len(raw))
        self.uc.mem_write(self.DTO + 0x40, struct.pack('<I', light_count & 0xffffffff))
        self.uc.mem_write(self.DTO + 0x48, struct.pack('<QQ', begin, end))
        self.uc.mem_write(self.DTO + 0xa8, bytes([sd_type]))
        self.input_x0 = 0 if null_dto else self.DTO
        self.uc.hook_add(UC_HOOK_CODE, self.on_code)
        self.uc.hook_add(UC_HOOK_INTR, self.on_interrupt)

    def x(self, index):
        return self.uc.reg_read(getattr(reg, f'UC_ARM64_REG_X{index}'))

    def cstring(self, pointer):
        for length in range(192):
            if self.uc.mem_read(pointer + length, 1)[0] == 0:
                return bytes(self.uc.mem_read(pointer, length)).decode('ascii')
        raise AssertionError('unterminated/oversized syscall path')

    def on_code(self, uc, address, size, _):
        self.steps += 1
        assert self.steps <= 12000, 'instruction budget exceeded'
        sp = uc.reg_read(reg.UC_ARM64_REG_SP)
        assert sp % 16 == 0 and self.SP - 768 <= sp <= self.SP, 'invalid stack frame'
        if address == self.bias + RESUME:
            self.reached = True
            uc.emu_stop()
        else:
            assert address == self.bias + ENTRY or self.bias + CODE <= address < self.bias + CODE + len(PAYLOAD)

    def on_interrupt(self, uc, interrupt, _):
        assert interrupt == 2
        assert bytes(uc.mem_read(uc.reg_read(reg.UC_ARM64_REG_PC) - 4, 4)) == b'\x01\x00\x00\xd4'
        assert len(self.events) < 512, 'syscall budget exceeded'
        number = self.x(8)
        a0, a1, a2, a3 = (self.x(i) for i in range(4))
        if number == 56:  # openat
            path = self.cstring(a1)
            assert a0 == AT_FDCWD and a3 == 0x180 and path in (LOCK, TEMP)
            kind = 'open_lock' if path == LOCK else 'open_temp'
            assert a2 == (0xa0042 if path == LOCK else 0xa0241)
            result = -13 if self.failure == kind else self.next_fd
            if result >= 0:
                self.next_fd += 1
                self.fds[result] = path
                self.files[path] = b'' if path == TEMP else self.files.get(path, b'')
            event = (kind, path, result)
        elif number == 32:  # flock: LOCK_EX | LOCK_NB
            assert self.fds.get(a0) == LOCK and a1 == 6
            result = -11 if self.failure == 'flock' else 0
            event = ('flock', result)
        elif number == 113:  # CLOCK_MONOTONIC
            assert a0 == 1 and self.SP - 768 <= a1 <= self.SP - 16
            result = -22 if self.failure == 'clock' else 0
            if result == 0:
                uc.mem_write(a1, struct.pack('<qq', *self.clock))
            event = ('clock', result)
        elif number == 172:  # getpid
            result = self.pid
            event = ('getpid', result)
        elif number == 64:  # write
            assert self.fds.get(a0) == TEMP and 0 < a2 <= 288
            assert self.SP - 368 <= a1 and a1 + a2 <= self.SP - 80
            assert self.files[OUTPUT] == self.output_before_run, 'published before complete write'
            result = self.write_plan.popleft() if self.write_plan else min(a2, self.chunk or a2)
            assert result <= a2
            if result > 0:
                self.files[TEMP] += bytes(uc.mem_read(a1, result))
            self.writes.append((a1, a2, result))
            event = ('write', a2, result)
        elif number == 57:  # close: model Linux close releasing the fd even on IO error
            path = self.fds.pop(a0)
            result = -5 if self.failure == 'close_temp' and path == TEMP else 0
            event = ('close', path, result)
        elif number == 38:  # renameat
            assert (a0, a2, self.cstring(a1), self.cstring(a3)) == (AT_FDCWD, AT_FDCWD, TEMP, OUTPUT)
            assert TEMP not in self.fds.values() and LOCK in self.fds.values()
            result = -13 if self.failure == 'rename' else 0
            if result == 0:
                self.files[OUTPUT] = self.files.pop(TEMP)
            event = ('rename', result)
        else:
            raise AssertionError(f'unexpected syscall {number}')
        self.events.append(event)
        uc.reg_write(reg.UC_ARM64_REG_X0, result & MASK64)

    def expected_wire(self):
        sec, nano = self.clock
        return HEADER.pack(MAGIC, 2, self.pid, len(self.rows), sec * 1000000000 + nano,
                           self.light_count & 0xffffffff, self.sd_type) + b''.join(ROW.pack(*row) for row in self.rows)

    def run(self, nzcv=0xb0000000):
        global RUNS
        RUNS += 1
        self.steps, self.reached = 0, False
        self.output_before_run = self.files[OUTPUT]
        gprs = {i: (0x1020304050607080 + i * 0x102030405) & MASK64 for i in range(31)}
        gprs[0] = self.input_x0
        vectors = {i: ((0x123456789abcdef0 + i) << 64) | (0xfedcba9876543210 ^ (i * 0x10101)) for i in range(32)}
        for i, value in gprs.items():
            self.uc.reg_write(getattr(reg, f'UC_ARM64_REG_X{i}'), value)
        for i, value in vectors.items():
            self.uc.reg_write(getattr(reg, f'UC_ARM64_REG_Q{i}'), value)
        self.uc.reg_write(reg.UC_ARM64_REG_SP, self.SP)
        self.uc.reg_write(reg.UC_ARM64_REG_NZCV, nzcv)
        guards = {self.SP: b'after-incoming-stack' * 2, self.SP - 800: b'before-payload-frame'}
        for pointer, value in guards.items():
            self.uc.mem_write(pointer, value)
        dto = bytes(self.uc.mem_read(self.DTO, 0x100))
        rows = bytes(self.uc.mem_read(self.VECTOR, len(self.rows) * 16))
        self.uc.emu_start(self.bias + ENTRY, self.bias + RESUME + 4, timeout=2000000, count=12000)
        assert self.reached and self.uc.reg_read(reg.UC_ARM64_REG_PC) == self.bias + RESUME
        assert self.uc.reg_read(reg.UC_ARM64_REG_SP) == self.SP - 0xf0, 'original sub sp,#0xf0 not replayed'
        assert self.uc.reg_read(reg.UC_ARM64_REG_NZCV) == nzcv, 'NZCV changed'
        for i, value in gprs.items():
            assert self.uc.reg_read(getattr(reg, f'UC_ARM64_REG_X{i}')) == value, f'x{i} changed'
        for i, value in vectors.items():
            assert self.uc.reg_read(getattr(reg, f'UC_ARM64_REG_Q{i}')) == value, f'q{i} changed'
        for pointer, value in guards.items():
            assert bytes(self.uc.mem_read(pointer, len(value))) == value, 'stack guard overwritten'
        assert bytes(self.uc.mem_read(self.DTO, 0x100)) == dto, 'input DTO modified'
        assert bytes(self.uc.mem_read(self.VECTOR, len(self.rows) * 16)) == rows, 'input vector modified'
        assert not self.fds, 'descriptor leaked'
        return self


class CruiseMapNativeTests(unittest.TestCase):
    def assert_published(self, vm):
        self.assertEqual(vm.files[OUTPUT], vm.expected_wire())
        self.assertNotIn(TEMP, vm.files)
        self.assertEqual([e for e in vm.events if e[0] == 'rename'], [('rename', 0)])

    def test_receipt_and_installed_branches(self):
        self.assertEqual(unicorn.__version__, '2.1.4')
        self.assertEqual(image_at(RECEIPT['codeVa'], len(PAYLOAD)), PAYLOAD)
        self.assertEqual(branch_target(struct.unpack('<I', image_at(ENTRY, 4))[0], ENTRY), CODE)
        end = RECEIPT['symbols']['map_mute_cruise_lock']
        self.assertEqual(struct.unpack_from('<I', PAYLOAD, end - 8)[0], 0xd103c3ff)
        self.assertEqual(branch_target(struct.unpack_from('<I', PAYLOAD, end - 4)[0], RECEIPT['codeVa'] + end - 4), RESUME)

    def test_complete_v2_preserves_raw_rows_and_exact_metadata(self):
        rows = ((3, 1, 17, 2), (3, 2, 0, 6), (2, 8, -1, 8),
                (-2147483648, 2147483647, -2147483648, 2147483647))
        for light_count, sd_type in ((3, 1), (0, 0), (-3, 0xad)):
            with self.subTest(light_count=light_count, sd_type=sd_type):
                vm = Machine(rows, light_count=light_count, sd_type=sd_type).run()
                self.assert_published(vm)
                self.assertEqual(len(vm.files[OUTPUT]), 96)
                self.assertEqual([e[0] for e in vm.events],
                                 ['open_lock', 'flock', 'clock', 'getpid', 'open_temp', 'write', 'close', 'rename', 'close'])

    def test_valid_empty_publishes_header_for_null_and_nonnull_begin(self):
        for pointer in (0, Machine.VECTOR):
            with self.subTest(pointer=pointer):
                vm = Machine((), light_count=0, sd_type=0, bounds=(pointer, pointer)).run()
                self.assert_published(vm)
                self.assertEqual(len(vm.files[OUTPUT]), 32)

    def test_invalid_vector_and_null_dto_skip_io(self):
        start = Machine.VECTOR
        cases = [dict(bounds=b) for b in ((start, start - 16), (start, start + 17),
                 (start, start + 17 * 16), (0, 16), (start, start + (1 << 40)))]
        cases.append(dict(null_dto=True))
        for kwargs in cases:
            with self.subTest(**kwargs):
                vm = Machine(**kwargs).run()
                self.assertEqual(vm.events, [])
                self.assertEqual(vm.files[OUTPUT], b'previous-complete-batch')

    def test_sixteen_rows_full_and_one_byte_writes(self):
        rows = tuple((3, 8, i + 1, 2 + i % 7) for i in range(16))
        for chunk in (None, 1):
            with self.subTest(chunk=chunk):
                vm = Machine(rows, chunk=chunk).run()
                self.assert_published(vm)
                self.assertEqual(len(vm.files[OUTPUT]), 288)
                self.assertEqual(len(vm.writes), 1 if chunk is None else 288)

    def test_partial_writes_advance_pointer_and_remaining_length(self):
        vm = Machine(write_plan=(1, 3, 7)).run()
        self.assert_published(vm)
        consumed, first_pointer = 0, vm.writes[0][0]
        for pointer, requested, written in vm.writes:
            self.assertEqual(pointer, first_pointer + consumed)
            self.assertEqual(requested, len(vm.expected_wire()) - consumed)
            consumed += written
        self.assertEqual(consumed, len(vm.expected_wire()))

    def test_io_errors_close_descriptors_and_never_publish_partial_batch(self):
        cases = [dict(failure=f) for f in ('open_lock', 'flock', 'clock', 'open_temp')]
        cases += [dict(write_plan=p) for p in ((0,), (-5,), (7, 0), (7, -4))]
        for kwargs in cases:
            with self.subTest(**kwargs):
                vm = Machine(**kwargs).run()
                self.assertEqual(vm.files[OUTPUT], b'previous-complete-batch')
                self.assertFalse(any(e[0] == 'rename' for e in vm.events))
                if kwargs.get('failure') in ('flock', 'clock', 'open_temp'):
                    self.assertEqual(vm.events[-1][0:2], ('close', LOCK))
                if 'write_plan' in kwargs:
                    self.assertEqual([e[1] for e in vm.events if e[0] == 'close'], [TEMP, LOCK])
                    self.assertEqual(len(vm.files[TEMP]), 7 if len(kwargs['write_plan']) == 2 else 0)

    def test_rename_failure_keeps_old_batch_and_close_error_matches_actual_payload(self):
        vm = Machine(failure='rename').run()
        self.assertEqual(vm.files[OUTPUT], b'previous-complete-batch')
        self.assertEqual(vm.files[TEMP], vm.expected_wire())
        self.assertEqual([e for e in vm.events if e[0] == 'rename'], [('rename', -13)])
        # The real payload does not inspect close's return value; record that
        # boundary rather than asserting durability or inventing a failure gate.
        vm = Machine(failure='close_temp').run()
        self.assert_published(vm)
        self.assertIn(('close', TEMP, -5), vm.events)

    def test_aslr_nzcv_and_complete_register_restore(self):
        for bias, flags in ((0, 0), (0, 0xf0000000),
                            (0x100000000, 0xa0000000), (0x100000000, 0x50000000)):
            with self.subTest(bias=bias, flags=flags):
                self.assert_published(Machine(bias=bias).run(flags))

    def test_repeated_capture_has_fresh_monotonic_timestamp(self):
        vm = Machine().run()
        first = vm.files[OUTPUT]
        vm.clock = (vm.clock[0] + 1, 99)
        vm.run()
        self.assertEqual(vm.files[OUTPUT], vm.expected_wire())
        self.assertNotEqual(vm.files[OUTPUT], first)
        self.assertEqual([e for e in vm.events if e[0] == 'rename'], [('rename', 0), ('rename', 0)])


if __name__ == '__main__':
    result = unittest.main(verbosity=2, exit=False).result
    print(f'ARM64 executions: {RUNS}; wire v2; GPR x0-x30 / NEON q0-q31 / NZCV; '
          'mock Linux syscalls only, not Android/vehicle evidence')
    raise SystemExit(0 if result.wasSuccessful() else 1)
