// Four explicitly selected audible styles must always update the user intent,
// even if another protocol already made the current engine state unmuted.
.section .text.map_mute, "ax", @progbits
.p2align 4
.global map_mute_select_style
map_mute_select_style:
    stp x29, x30, [sp, #-32]!
    mov x29, sp
    stp x19, x20, [sp, #16]
    bl original_set_style
    mov x19, x0
    bl hsl_get_volume
    cbz x0, .Lstyle_done
    mov w1, wzr
    mov w2, #0x303
    bl hsl_set_mute
.Lstyle_done:
    mov x0, x19
    ldp x19, x20, [sp, #16]
    ldp x29, x30, [sp], #32
    ret
