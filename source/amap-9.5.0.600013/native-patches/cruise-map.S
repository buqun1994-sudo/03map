// Display DTO raw capture; no color/seconds inference. Wire header32 LE:
// magic=0x43534d31, version=2, pid, count, CLOCK_MONOTONIC ns, lightCount, sdType;
// count*16 raw ints: showType/crossManeuverID/lightCountdown/status.
.section .text.map_mute, "ax", @progbits
.p2align 4
.global map_mute_cruise_capture
map_mute_cruise_capture:
    sub sp, sp, #768
    stp x0, x1, [sp, #0]
    stp x2, x3, [sp, #16]
    stp x4, x5, [sp, #32]
    stp x6, x7, [sp, #48]
    stp x8, x9, [sp, #64]
    stp x10, x11, [sp, #80]
    stp x12, x13, [sp, #96]
    stp x14, x15, [sp, #112]
    stp x16, x17, [sp, #128]
    stp x18, x19, [sp, #144]
    stp x20, x21, [sp, #160]
    stp x22, x23, [sp, #176]
    stp x24, x25, [sp, #192]
    stp x26, x27, [sp, #208]
    stp x28, x29, [sp, #224]
    str x30, [sp, #240]
    stp q0, q1, [sp, #256]
    stp q2, q3, [sp, #288]
    stp q4, q5, [sp, #320]
    stp q6, q7, [sp, #352]
    mrs x9, nzcv
    str x9, [sp, #384]
    cbz x0, .Lrestore
    ldp x22, x23, [x0, #72]
    cmp x23, x22
    b.lo .Lrestore
    sub x21, x23, x22
    tst x21, #15
    b.ne .Lrestore
    lsr x21, x21, #4
    cmp x21, #16
    b.hi .Lrestore
    cbz x21, .Lvalid
    cbz x22, .Lrestore
.Lvalid:
    mov x0, #-100
    adr x1, map_mute_cruise_lock
    mov w2, #0x42
    movk w2, #0xa, lsl #16
    mov w3, #0x180
    mov x8, #56
    svc #0
    tbnz x0, #63, .Lrestore
    mov x19, x0
    mov w1, #6
    mov x8, #32
    svc #0
    cbnz x0, .Lclose_lock
    mov w0, #1
    add x1, sp, #688
    mov x8, #113
    svc #0
    cbnz x0, .Lclose_lock
    add x12, sp, #688
    ldp x9, x10, [x12]
    mov x11, #0xca00
    movk x11, #0x3b9a, lsl #16
    madd x24, x9, x11, x10
    mov x8, #172
    svc #0
    add x23, sp, #400
    mov w9, #0x4d31
    movk w9, #0x4353, lsl #16
    mov w10, #2
    stp w9, w10, [x23]
    stp w0, w21, [x23, #8]
    str x24, [x23, #16]
    ldr x9, [sp, #0]
    ldr w10, [x9, #64]
    ldrb w11, [x9, #168]
    stp w10, w11, [x23, #24]
    add x10, x23, #32
    mov x11, x21
.Lcopy:
    cbz x11, .Lopen_temp
    ldr q0, [x22], #16
    str q0, [x10], #16
    sub x11, x11, #1
    b .Lcopy
.Lopen_temp:
    mov x0, #-100
    adr x1, map_mute_cruise_temp
    mov w2, #0x241
    movk w2, #0xa, lsl #16
    mov w3, #0x180
    mov x8, #56
    svc #0
    tbnz x0, #63, .Lclose_lock
    mov x20, x0
    lsl x24, x21, #4
    add x24, x24, #32
.Lwrite:
    mov x0, x20
    mov x1, x23
    mov x2, x24
    mov x8, #64
    svc #0
    cmp x0, #0
    b.le .Lclose_temp
    add x23, x23, x0
    subs x24, x24, x0
    b.ne .Lwrite
    mov x0, x20
    mov x8, #57
    svc #0
    mov x0, #-100
    adr x1, map_mute_cruise_temp
    mov x2, #-100
    adr x3, map_mute_cruise_output
    mov x8, #38
    svc #0
    b .Lclose_lock
.Lclose_temp:
    mov x0, x20
    mov x8, #57
    svc #0
.Lclose_lock:
    mov x0, x19
    mov x8, #57
    svc #0
.Lrestore:
    ldr x9, [sp, #384]
    msr nzcv, x9
    ldp q0, q1, [sp, #256]
    ldp q2, q3, [sp, #288]
    ldp q4, q5, [sp, #320]
    ldp q6, q7, [sp, #352]
    ldp x0, x1, [sp, #0]
    ldp x2, x3, [sp, #16]
    ldp x4, x5, [sp, #32]
    ldp x6, x7, [sp, #48]
    ldp x8, x9, [sp, #64]
    ldp x10, x11, [sp, #80]
    ldp x12, x13, [sp, #96]
    ldp x14, x15, [sp, #112]
    ldp x16, x17, [sp, #128]
    ldp x18, x19, [sp, #144]
    ldp x20, x21, [sp, #160]
    ldp x22, x23, [sp, #176]
    ldp x24, x25, [sp, #192]
    ldp x26, x27, [sp, #208]
    ldp x28, x29, [sp, #224]
    ldr x30, [sp, #240]
    add sp, sp, #768
    sub sp, sp, #0xf0
    b cruise_converter_resume
map_mute_cruise_lock: .asciz "/data/user/0/com.autonavi.amapautolite/files/content-cruise-map.lock"
map_mute_cruise_temp: .asciz "/data/user/0/com.autonavi.amapautolite/files/content-cruise-map.tmp"
map_mute_cruise_output: .asciz "/data/user/0/com.autonavi.amapautolite/files/content-cruise-map.bin"
