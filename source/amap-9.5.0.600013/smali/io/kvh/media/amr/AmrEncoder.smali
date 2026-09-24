.class public Lio/kvh/media/amr/AmrEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/kvh/media/amr/AmrEncoder$a;
    }
.end annotation


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

.method public static native encode(I[S[B)I
.end method

.method public static native exit()V
.end method

.method public static native init(I)V
.end method

.method public static native reset()V
.end method
