// User intent comes only from CGSceneVolumeBarAdaptor's marked SetMute call.
// Config's user layer owns the preference. Ordinary engine mute is its projection.
// Calls use the existing library ABI and PLT; no absolute runtime pointers.
.section .text.map_mute, "ax", @progbits
.p2align 4
.global map_mute_set, map_mute_init, map_mute_read_user, map_mute_save_user

// x0=UtilVolumeNotify*, w1=mute, w2=observer. A private marker never reaches
// NotifyAllObservers: it is normalized to the original UI observer (0).
map_mute_set:
    stp x29, x30, [sp, #-64]!
    mov x29, sp
    stp x19, x20, [sp, #16]
    stp x21, x22, [sp, #32]
    mov x19, x0
    and w20, w1, #1
    mov w21, w2
    mov w22, #4
    cmp w21, #0x303
    b.ne .Lautomatic
    mov w0, w20
    bl map_mute_save_user
    mov w22, w0
    mov w21, wzr
    cmp w22, #2
    b.ne .Luser_apply
    mov w22, #4
    b .Lread_projection        // The accepted write was replaced by a newer
                               // choice before verification; do not apply it.
.Luser_apply:
    mov x0, x19
    mov w1, w20
    mov w2, w21
    bl map_mute_original_set
    cbz w22, .Lset_done         // Failed persistence must not reject this tap.
    mov w22, #4
    b .Lverify_latest
.Lautomatic:
    cmp w21, #6                 // ConfigKeyMute application
    b.eq .Lread_projection
    cmp w21, #2                 // OnVolumeInfo: system stream volume
    b.eq .Lcheck_unmute
    cmp w21, #4                 // CNaviComponentBase::InitCancelMute
    b.ne .Lapply
.Lcheck_unmute:
    cbnz w20, .Lapply           // Preserve zero-volume mute behavior.
    bl map_mute_read_user
    tbnz w0, #31, .Lauto_unmute
    cbnz w0, .Lset_done         // Veto the request; never write an old snapshot.
.Lauto_unmute:
    mov x0, x19
    mov w1, w20
    mov w2, w21
    bl map_mute_original_set
    b .Lverify_latest          // A user may have muted after the initial read.
.Lread_projection:
    bl map_mute_read_user
    tbnz w0, #31, .Lauto_unmute // Preserve the original default if still absent.
.Lproject_choice:
    mov w20, w0
    mov x0, x19
    mov w1, w20
    mov w2, w21
    bl map_mute_original_set
.Lverify_latest:
    // Re-read after callbacks without holding a lock across GAI/observers.
    // This also handles an older UI write finishing after a newer choice.
    bl map_mute_read_user
    tbnz w0, #31, .Lset_done
    cmp w0, w20
    b.eq .Lset_done
    subs w22, w22, #1
    b.ne .Lproject_choice
    mov w0, #5
    adr x1, map_mute_log_tag
    adr x2, map_mute_busy_format
    bl android_log_print
    b .Lset_done
.Lapply:
    mov x0, x19
    mov w1, w20
    mov w2, w21
    bl map_mute_original_set
.Lset_done:
    ldp x21, x22, [sp, #32]
    ldp x19, x20, [sp, #16]
    ldp x29, x30, [sp], #64
    ret

// Complete the original local/system initialization before restoring a saved
// user choice. Later system callbacks pass through map_mute_set as well.
map_mute_init:
    stp x29, x30, [sp, #-48]!
    mov x29, sp
    stp x19, x20, [sp, #16]
    mov x19, x0
    bl map_mute_original_init
    mov x20, x0
    bl map_mute_read_user
    tbnz w0, #31, .Linit_done
    str w0, [sp, #32]
    mov w1, w0
    mov x0, x19
    mov w2, #6
    bl map_mute_set
    mov w0, #4
    adr x1, map_mute_log_tag
    adr x2, map_mute_restore_format
    ldr w3, [sp, #32]
    bl android_log_print
.Linit_done:
    mov x0, x20
    ldp x19, x20, [sp, #16]
    ldp x29, x30, [sp], #48
    ret

// w0 = -1 if absent/unavailable, otherwise the user-layer boolean.
// Use the library String16 factory (indirect result in x8) and its deleter.
map_mute_read_user:
    stp x29, x30, [sp, #-64]!
    mov x29, sp
    stp x19, x20, [sp, #16]
    mov w20, #-1
    str xzr, [sp, #32]
    strb wzr, [sp, #40]
    bl hsl_get_config
    cbz x0, .Lread_done
    mov x19, x0
    adr x0, map_mute_key
    add x8, sp, #32
    bl char_to_string16
    mov x0, x19
    add x1, sp, #32
    add x2, sp, #40
    bl config_get_user_bool
    tbz w0, #0, .Lread_delete
    ldrb w20, [sp, #40]
    and w20, w20, #1
.Lread_delete:
    ldr x0, [sp, #32]
    cbz x0, .Lread_done
    bl delete_array
.Lread_done:
    mov w0, w20
    ldp x19, x20, [sp, #16]
    ldp x29, x30, [sp], #64
    ret

// w0=mute; returns 0=unavailable/rejected, 1=saved, 2=superseded,
// 3=RAM accepted but disk save failed. Only this explicit user action may
// write the preference. Validate user-layer existence and save native Config.
// Runtime behavior remains available if persistence fails, with a clear log.
map_mute_save_user:
    stp x29, x30, [sp, #-80]!
    mov x29, sp
    stp x19, x20, [sp, #16]
    stp x21, x22, [sp, #32]
    and w19, w0, #1
    mov w21, wzr
    str xzr, [sp, #48]
    strb wzr, [sp, #56]
    bl hsl_get_config
    cbz x0, .Lsave_unavailable
    mov x20, x0
    adr x0, map_mute_key
    add x8, sp, #48
    bl char_to_string16
    mov x0, x20
    add x1, sp, #48
    mov w2, w19
    mov w3, #1
    bl config_set_bool
    tbz w0, #0, .Lsave_rejected
    mov x0, x20
    add x1, sp, #48
    add x2, sp, #56
    bl config_get_user_bool
    tbz w0, #0, .Lsave_rejected
    ldrb w8, [sp, #56]
    cmp w8, w19
    b.ne .Lsave_superseded
    mov x0, x20
    mov w1, #1
    bl config_save_data
    tbz w0, #0, .Lsave_io_failed
    mov w21, #1
    adr x22, map_mute_saved
    b .Lsave_delete
.Lsave_unavailable:
    adr x22, map_mute_unavailable
    b .Lsave_log
.Lsave_rejected:
    adr x22, map_mute_rejected
    b .Lsave_delete
.Lsave_superseded:
    mov w21, #2
    adr x22, map_mute_superseded
    b .Lsave_delete
.Lsave_io_failed:
    mov w21, #3                // RAM accepted: allow post-apply reconciliation,
                               // while logging that disk persistence failed.
    adr x22, map_mute_io_failed
.Lsave_delete:
    ldr x0, [sp, #48]
    cbz x0, .Lsave_log
    bl delete_array
.Lsave_log:
    mov w0, #5
    cbz w21, .Lsave_priority
    cmp w21, #3
    b.eq .Lsave_priority
    mov w0, #4
.Lsave_priority:
    adr x1, map_mute_log_tag
    adr x2, map_mute_save_format
    mov w3, w19
    mov x4, x22
    bl android_log_print
    mov w0, w21
    ldp x21, x22, [sp, #32]
    ldp x19, x20, [sp, #16]
    ldp x29, x30, [sp], #80
    ret

// Displaced instructions have no PC-relative operands. The branch resumes
// immediately after the patched entry, preserving the original unwind frame.
map_mute_original_set:
    sub sp, sp, #0x50
    b original_set_resume
map_mute_original_init:
    sub sp, sp, #0x140
    b original_init_resume

.p2align 3
map_mute_key:             .asciz "icar03_user_mute"
map_mute_log_tag:         .asciz "IcarMapMute"
map_mute_save_format:     .asciz "user mute=%d persistence=%s"
map_mute_restore_format:  .asciz "restored user mute=%d"
map_mute_busy_format:     .asciz "preference kept changing; reconciliation limit reached"
map_mute_saved:           .asciz "saved"
map_mute_superseded:      .asciz "superseded"
map_mute_unavailable:     .asciz "config-unavailable"
map_mute_rejected:        .asciz "user-write-rejected"
map_mute_io_failed:       .asciz "save-failed"
