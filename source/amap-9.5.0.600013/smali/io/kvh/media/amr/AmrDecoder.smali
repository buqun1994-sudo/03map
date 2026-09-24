.class public Lio/kvh/media/amr/AmrDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "amr-codec"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static native decode(J[B[S)V
.end method

.method public static native exit(J)V
.end method

.method public static native init()J
.end method
