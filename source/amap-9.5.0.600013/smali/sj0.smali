.class public Lsj0;
.super Lnc;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "VRShowMyLocAction"

    .line 6
    const-string v3, "nativeBackToMap doAction"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/16 v1, 0x13a1

    .line 13
    invoke-static {v1, v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeShowMyLocation(II)V

    .line 16
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
