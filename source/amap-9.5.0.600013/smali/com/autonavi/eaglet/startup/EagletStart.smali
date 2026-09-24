.class public Lcom/autonavi/eaglet/startup/EagletStart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final autoBootFramework:I = 0x5

.field public static final autoBootType:I = 0x4

.field public static final launcherType:I = 0x1

.field public static final protocolType:I = 0x2

.field public static final thirdPartSearchType:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native handleStartUp(ILjava/lang/String;)I
.end method

.method public static native setStartUpCallback(Lcom/autonavi/eaglet/startup/IStartUpCallback;)V
.end method

.method public static native startBackgroundServiceReg(J)V
.end method
