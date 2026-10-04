"""Execute the actual AArch64 patch and original SetMute in Unicorn.

Config/GAI are explicit substitutes: this checks machine-code behavior and ABI,
not Android linking or the real user's encrypted file persistence.
Usage: PYTHONPATH=<local Unicorn dependency> python3 scripts/test-map-mute-native.py OUTPUT
"""
import json
import struct
import sys
import unittest
from pathlib import Path
from unicorn import Uc, UC_ARCH_ARM64, UC_MODE_ARM, UC_HOOK_CODE
from unicorn import arm64_const as reg

ROOT = Path(__file__).resolve().parents[1]
DIRECTORY = Path(sys.argv.pop(1)).resolve()
LOCK = json.loads((ROOT / 'source/amap-9.5.0.600013/native-patches/map-mute.lock.json').read_text())
REPORT = json.loads((DIRECTORY / 'native-patch-report.json').read_text())
PRIVATE = 0x303
KEY = 'icar03_user_mute'


class Machine:
    STACK = 0x70000000
    DATA = 0x60000000
    HALT = 0x71000000

    def __init__(self, bias, preference=None, legacy=False):
        self.bias = bias
        self.uc = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
        self.preference = preference
        self.disk = preference
        self.legacy = legacy
        self.accept = True
        self.read_found = True
        self.save_ok = True
        self.config_available = True
        self.volume_available = True
        self.writes = []
        self.saves = 0
        self.original_sets = []
        self.logs = []
        self.style_values = []
        self.allocated = set()
        self.next_heap = self.DATA + 0x3000
        self.after_automatic_set = None
        self.after_user_write = None
        self.hooks = {}
        target = next(t for t in LOCK['targets'] if t['name'] == 'libhsl.so')
        receipt = next(t for t in REPORT['targets'] if t['name'] == 'libhsl.so')
        self.symbols = {name: self.bias + receipt['codeVa'] + offset for name, offset in target['symbols'].items()}
        self.symbols['native_temp_mute'] = self.bias + 0xcd86b8
        self._map_elf((DIRECTORY / 'libhsl.so').read_bytes())
        self.uc.mem_map(self.STACK, 0x20000)
        self.uc.mem_map(self.DATA, 0x20000)
        self.uc.mem_map(self.HALT, 0x1000)
        self.uc.mem_write(self.HALT, struct.pack('<I', 0xd503201f))
        self.volume = self.DATA + 0x1000
        self.config = self.DATA + 0x2000
        self.uc.mem_write(self.volume + 0x131, bytes([legacy]))
        self.uc.reg_write(reg.UC_ARM64_REG_TPIDR_EL0, self.DATA + 0x100)
        self.hooks[self.HALT] = lambda: self.uc.emu_stop()
        externals = target['externals']
        functions = {
            'hsl_get_config': lambda: self.ret(self.config if self.config_available else 0),
            'char_to_string16': self.char_to_string,
            'config_get_user_bool': self.read_user,
            'config_set_bool': self.set_user,
            'config_save_data': self.save_user,
            'delete_array': self.delete,
            'android_log_print': self.log,
        }
        for name, callback in functions.items():
            self.hooks[self.bias + int(externals[name], 16)] = callback
        # Original SetMute is executed, including its displaced entry and frame.
        # Its outside effects are substituted at the real PLT addresses.
        self.hooks[self.bias + 0xd2b000] = lambda: self.ret(0)  # I_GetAlcPtr
        self.hooks[self.bias + 0xd347c0] = lambda: self.ret(0)  # PlayStop
        for va in [0xd3b400, 0xd3b410, 0xd3b200, 0xd3b2b0]:
            self.hooks[self.bias + va] = lambda: self.ret(0)
        self.hooks[self.bias + 0xcdd978] = self.original_init_stub
        self.original_set_entry = self.bias + 0xcd84d8
        self.uc.hook_add(UC_HOOK_CODE, self.on_code)

    def _map_elf(self, data):
        phoff = struct.unpack_from('<Q', data, 32)[0]
        phnum = struct.unpack_from('<H', data, 56)[0]
        for i in range(phnum):
            ptype, flags, offset, va, _, size, memory_size, _ = struct.unpack_from('<II6Q', data, phoff + i * 56)
            if ptype != 1:
                continue
            start = (va // 4096) * 4096
            end = ((va + memory_size + 4095) // 4096) * 4096
            self.uc.mem_map(self.bias + start, end - start)
            self.uc.mem_write(self.bias + va, data[offset:offset + size])

    def x(self, index):
        return self.uc.reg_read(getattr(reg, f'UC_ARM64_REG_X{index}'))

    def ret(self, value=0):
        self.uc.reg_write(reg.UC_ARM64_REG_X0, value)
        self.uc.reg_write(reg.UC_ARM64_REG_PC, self.x(30))

    def cstring(self, pointer):
        output = bytearray()
        while True:
            value = self.uc.mem_read(pointer + len(output), 1)[0]
            if not value:
                return output.decode()
            output.append(value)

    def key(self):
        pointer = struct.unpack('<Q', self.uc.mem_read(self.x(1), 8))[0]
        capacity, length = struct.unpack('<QQ', self.uc.mem_read(pointer, 16))
        assert capacity >= length
        return self.uc.mem_read(pointer + 16, length * 2).decode('utf-16-le')

    def char_to_string(self):
        text = self.cstring(self.x(0))
        assert text == KEY
        address = self.next_heap
        self.next_heap += 0x100
        encoded = text.encode('utf-16-le')
        self.uc.mem_write(address, struct.pack('<QQ', len(text), len(text)) + encoded + b'\0\0')
        self.uc.mem_write(self.x(8), struct.pack('<Q', address))
        self.allocated.add(address)
        self.ret(0)

    def read_user(self):
        assert self.x(0) == self.config and self.key() == KEY
        present = self.preference is not None and self.read_found
        value = bool(self.preference) if present else False
        self.uc.mem_write(self.x(2), bytes([value]))
        self.ret(int(present))

    def set_user(self):
        assert self.x(0) == self.config and self.key() == KEY and self.x(3) == 1
        self.writes.append(bool(self.x(2)))
        if self.accept:
            self.preference = bool(self.x(2))
            if self.after_user_write:
                callback = self.after_user_write
                self.after_user_write = None
                callback()
        self.ret(int(self.accept))

    def save_user(self):
        assert self.x(0) == self.config and self.x(1) == 1
        self.saves += 1
        if self.save_ok:
            self.disk = self.preference
        self.ret(int(self.save_ok))

    def delete(self):
        assert self.x(0) in self.allocated, 'invalid/double String16 delete'
        self.allocated.remove(self.x(0))
        self.ret(0)

    def log(self):
        assert self.cstring(self.x(1)) == 'IcarMapMute'
        fmt = self.cstring(self.x(2))
        self.logs.append((fmt, self.x(3), self.cstring(self.x(4)) if '%s' in fmt else None))
        self.ret(0)

    def original_init_stub(self):
        # The actual original prologue sub sp,#0x140 has run. Emulate the rest
        # of initialization so both local and asynchronous-sync defaults can be tested.
        self.uc.mem_write(self.volume + 0x131, bytes([self.legacy]))
        self.uc.reg_write(reg.UC_ARM64_REG_SP, self.uc.reg_read(reg.UC_ARM64_REG_SP) + 0x140)
        self.ret(0x1234)

    def on_code(self, uc, address, size, _):
        assert uc.reg_read(reg.UC_ARM64_REG_SP) % 16 == 0
        if address == self.original_set_entry:
            assert self.x(2) != PRIVATE, 'private observer leaked into original setter'
            self.original_sets.append((bool(self.x(1)), self.x(2)))
            if self.after_automatic_set:
                # Reproduce an older write executing after a newer user choice.
                callback = self.after_automatic_set
                self.after_automatic_set = None
                callback()
        callback = self.hooks.get(address)
        if callback:
            callback()

    @property
    def mute(self):
        return bool(self.uc.mem_read(self.volume + 0x131, 1)[0])

    def call(self, symbol, *arguments):
        saved = {i: 0x102030400000 + i for i in range(18, 30)}
        for i, value in saved.items():
            self.uc.reg_write(getattr(reg, f'UC_ARM64_REG_X{i}'), value)
        vectors = {i: 0x1122334455667788 + i for i in range(8, 16)}
        for i, value in vectors.items():
            self.uc.reg_write(getattr(reg, f'UC_ARM64_REG_D{i}'), value)
        sp = self.STACK + 0x1f000
        self.uc.reg_write(reg.UC_ARM64_REG_SP, sp)
        self.uc.reg_write(reg.UC_ARM64_REG_X30, self.HALT)
        for i, value in enumerate(arguments):
            self.uc.reg_write(getattr(reg, f'UC_ARM64_REG_X{i}'), value)
        self.uc.emu_start(self.symbols[symbol], self.HALT + 4, count=250000)
        assert self.uc.reg_read(reg.UC_ARM64_REG_PC) == self.HALT, 'patch did not return'
        assert self.uc.reg_read(reg.UC_ARM64_REG_SP) == sp, 'stack imbalance'
        for i, value in saved.items():
            assert self.uc.reg_read(getattr(reg, f'UC_ARM64_REG_X{i}')) == value, f'x{i} clobbered'
        for i, value in vectors.items():
            assert self.uc.reg_read(getattr(reg, f'UC_ARM64_REG_D{i}')) == value, f'd{i} clobbered'
        assert not self.allocated, 'String16 allocation leaked'
        return self.x(0)

    def set(self, value, observer):
        return self.call('map_mute_set', self.volume, int(value), observer)

    def init(self):
        return self.call('map_mute_init', self.volume)

    def add_menu(self):
        self.menu_bias = self.bias + 0x02000000
        original_bias = self.bias
        self.bias = self.menu_bias
        self._map_elf((DIRECTORY / 'libautonavi.so').read_bytes())
        self.bias = original_bias
        target = next(t for t in LOCK['targets'] if t['name'] == 'libautonavi.so')
        receipt = next(t for t in REPORT['targets'] if t['name'] == 'libautonavi.so')
        self.symbols['map_mute_select_style'] = self.menu_bias + receipt['codeVa'] + target['symbols']['map_mute_select_style']
        def style():
            self.style_values.append(self.x(2))
            self.ret(0x2468)
        self.hooks[self.menu_bias + 0xd9ddd0] = style
        self.hooks[self.menu_bias + 0xd9e320] = lambda: self.ret(self.volume if self.volume_available else 0)
        self.hooks[self.menu_bias + 0xd9e3d0] = lambda: self.uc.reg_write(reg.UC_ARM64_REG_PC, self.symbols['map_mute_set'])


class NativeMuteTest(unittest.TestCase):
    BIASES = [0x10000000, 0x30000000]

    def test_no_preference_preserves_existing_initialization_and_callbacks(self):
        for bias in self.BIASES:
            for legacy in [False, True]:
                with self.subTest(bias=bias, legacy=legacy):
                    vm = Machine(bias, legacy=legacy)
                    self.assertEqual(vm.init(), 0x1234)
                    self.assertEqual(vm.mute, legacy)
                    vm.set(False, 4)
                    self.assertFalse(vm.mute)
                    self.assertEqual((vm.writes, vm.saves), ([], 0))

    def test_saved_true_restores_and_auto_unmute_is_vetoed(self):
        for bias in self.BIASES:
            vm = Machine(bias, preference=True)
            vm.init()
            self.assertTrue(vm.mute)
            for observer in [2, 4, 6]:
                vm.set(False, observer)
                self.assertTrue(vm.mute)
            self.assertEqual((vm.writes, vm.saves), ([], 0))

    def test_saved_false_keeps_system_zero_volume_behavior(self):
        vm = Machine(self.BIASES[0], preference=False, legacy=True)
        vm.init()
        self.assertFalse(vm.mute)
        vm.set(True, 2)
        self.assertTrue(vm.mute)
        vm.set(False, 2)
        self.assertFalse(vm.mute)
        vm.set(True, 6)
        self.assertFalse(vm.mute)

    def test_unmarked_protocol_override_is_not_persisted_or_undone_by_veto(self):
        vm = Machine(self.BIASES[0], preference=True)
        vm.init()
        vm.set(False, 0)
        vm.set(False, 2)
        vm.set(False, 4)
        self.assertFalse(vm.mute)
        self.assertEqual(vm.preference, True)
        self.assertEqual((vm.writes, vm.saves), ([], 0))
        vm.set(False, 6)
        self.assertTrue(vm.mute)

    def test_user_choice_persists_both_values_across_fresh_processes(self):
        for bias in self.BIASES:
            vm = Machine(bias)
            for value in [True, False, True]:
                vm.set(value, PRIVATE)
                self.assertEqual(vm.mute, value)
                self.assertEqual(vm.disk, value)
                fresh = Machine(bias, preference=vm.disk, legacy=not value)
                fresh.init()
                self.assertEqual(fresh.mute, value)
            self.assertEqual(vm.saves, 3)
            self.assertEqual(vm.original_sets, [(True, 0), (False, 0), (True, 0)])

    def test_repeated_choice_retries_failed_save(self):
        vm = Machine(self.BIASES[0])
        vm.save_ok = False
        vm.set(True, PRIVATE)
        self.assertTrue(vm.mute)
        self.assertIsNone(vm.disk)
        self.assertEqual(vm.logs[-1][2], 'save-failed')
        vm.save_ok = True
        vm.set(True, PRIVATE)
        self.assertTrue(vm.disk)
        self.assertEqual(vm.saves, 2)
        self.assertEqual(vm.logs[-1][2], 'saved')

    def test_rejected_or_unavailable_config_keeps_runtime_action(self):
        for failure in ['unavailable', 'rejected', 'absent-read']:
            with self.subTest(failure=failure):
                vm = Machine(self.BIASES[0])
                if failure == 'unavailable': vm.config_available = False
                elif failure == 'rejected': vm.accept = False
                elif failure == 'absent-read': vm.read_found = False
                vm.set(True, PRIVATE)
                self.assertTrue(vm.mute)
                self.assertEqual(vm.saves, 0)
                self.assertIn(vm.logs[-1][2], ['config-unavailable', 'user-write-rejected'])

    def test_unmarked_observers_never_save(self):
        vm = Machine(self.BIASES[0])
        for observer in [0, 1, 2, 3, 4, 5, 6, 7, 0x302, 0x304]:
            vm.set(True, observer)
            vm.set(False, observer)
        self.assertEqual((vm.writes, vm.saves), ([], 0))
        self.assertIsNone(vm.preference)

    def test_old_config_request_reconciles_concurrent_user_unmute(self):
        vm = Machine(self.BIASES[0], preference=True)
        vm.init()
        def user_unmute():
            vm.preference = False
            vm.disk = False
            vm.uc.mem_write(vm.volume + 0x131, b'\0')
        vm.after_automatic_set = user_unmute
        vm.set(True, 6)
        self.assertFalse(vm.mute)
        self.assertEqual(vm.original_sets[-2:], [(True, 6), (False, 6)])
        self.assertEqual(vm.writes, [])

    def test_user_write_superseded_before_verification_keeps_newer_choice(self):
        for latest in [True, False]:
            vm = Machine(self.BIASES[0], preference=latest, legacy=latest)
            def newer_user_choice():
                vm.preference = vm.disk = latest
                vm.uc.mem_write(vm.volume + 0x131, bytes([latest]))
            vm.after_user_write = newer_user_choice
            vm.set(not latest, PRIVATE)
            self.assertEqual(vm.preference, latest)
            self.assertEqual(vm.disk, latest)
            self.assertEqual(vm.mute, latest)
            self.assertNotIn((not latest, 0), vm.original_sets)
            self.assertEqual(vm.saves, 0)
            self.assertEqual(vm.logs[-1][2], 'superseded')

    def test_failed_io_does_not_disable_latest_choice_reconciliation(self):
        vm = Machine(self.BIASES[0], preference=True, legacy=True)
        vm.save_ok = False
        def newer_user_mute():
            vm.preference = vm.disk = True
            vm.uc.mem_write(vm.volume + 0x131, b'\1')
        vm.after_automatic_set = newer_user_mute
        vm.set(False, PRIVATE)
        self.assertTrue(vm.mute)
        self.assertEqual(vm.logs[-1][2], 'save-failed')

    def test_old_automatic_unmute_reconciles_new_user_mute(self):
        for observer in [2, 4]:
            vm = Machine(self.BIASES[0], preference=False)
            def new_user_mute():
                vm.preference = vm.disk = True
                vm.uc.mem_write(vm.volume + 0x131, b'\1')
            vm.after_automatic_set = new_user_mute
            vm.set(False, observer)
            self.assertTrue(vm.mute)
            self.assertEqual(vm.original_sets, [(False, observer), (True, observer)])

    def test_older_user_unmute_reconciles_newer_saved_true(self):
        vm = Machine(self.BIASES[0], preference=True, legacy=True)
        def newer_user_mute():
            vm.preference = vm.disk = True
            vm.uc.mem_write(vm.volume + 0x131, b'\1')
        vm.after_automatic_set = newer_user_mute
        vm.set(False, PRIVATE)
        self.assertTrue(vm.preference)
        self.assertTrue(vm.mute)
        self.assertEqual(vm.original_sets, [(False, 0), (True, 0)])

    def test_continually_changing_callback_returns_at_bounded_limit(self):
        vm = Machine(self.BIASES[0], preference=True)
        def change_again():
            vm.preference = not vm.preference
            vm.after_automatic_set = change_again
        vm.after_automatic_set = change_again
        vm.set(True, 6)
        self.assertEqual(len(vm.original_sets), 4)
        self.assertIn('reconciliation limit', vm.logs[-1][0])

    def test_four_style_selection_saves_false_even_if_already_unmuted(self):
        for bias in self.BIASES:
            for style in [3, 1, 0, 2]:
                with self.subTest(bias=bias, style=style):
                    vm = Machine(bias, preference=True, legacy=False)
                    vm.add_menu()
                    result = vm.call('map_mute_select_style', vm.config, 0, style, 1)
                    self.assertEqual(result, 0x2468)
                    self.assertEqual(vm.style_values, [style])
                    self.assertFalse(vm.preference)
                    self.assertFalse(vm.disk)
                    self.assertFalse(vm.mute)
                    vm.set(True, 6)
                    self.assertFalse(vm.mute)

    def test_missing_volume_handle_preserves_style_result(self):
        vm = Machine(self.BIASES[0], preference=True)
        vm.add_menu()
        vm.volume_available = False
        self.assertEqual(vm.call('map_mute_select_style', vm.config, 0, 3, 1), 0x2468)
        self.assertEqual(vm.writes, [])

    def test_temporary_mute_never_writes_user_preference(self):
        vm = Machine(self.BIASES[0], preference=False)
        vm.call('native_temp_mute', vm.volume, 1)
        self.assertTrue(vm.uc.mem_read(vm.volume + 0x132, 1)[0])
        vm.call('native_temp_mute', vm.volume, 0)
        self.assertFalse(vm.uc.mem_read(vm.volume + 0x132, 1)[0])
        self.assertEqual((vm.writes, vm.saves), ([], 0))
        vm.set(True, PRIVATE)
        vm.call('native_temp_mute', vm.volume, 0)
        self.assertTrue(vm.mute)
        self.assertEqual(vm.writes, [True])

    def test_private_marker_instruction_has_exact_value(self):
        data = (DIRECTORY / 'libautonavi.so').read_bytes()
        instruction = struct.unpack_from('<I', data, 0xa0cd64)[0]
        self.assertEqual((instruction >> 5) & 0xffff, PRIVATE)
        self.assertEqual(instruction & 31, 2)
        self.assertEqual(instruction & 0xff800000, 0x52800000)


if __name__ == '__main__':
    unittest.main(verbosity=2)
