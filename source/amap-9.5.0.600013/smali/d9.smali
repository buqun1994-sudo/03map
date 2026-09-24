.class public Ld9;
.super Lfi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfi;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public e()Lfi;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Ldi;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4
    if-nez p2, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    const-string v0, "com.stcloud.drive.EVT_ACC_STATUS"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_2

    .line 19
    const-string p1, "acc"

    .line 21
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    const/4 v1, 0x3

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    const/4 v2, 0x0

    .line 29
    aput-object v0, v1, v2

    .line 31
    const/4 v0, 0x1

    .line 32
    aput-object p1, v1, v0

    .line 34
    const/4 p1, 0x2

    .line 35
    aput-object p2, v1, p1

    .line 37
    const-string p1, "AutoLiteWeiShiTeImpl"

    .line 39
    const-string v3, "recv broadcast action = {?}, {?}={?}"

    .line 41
    invoke-static {p1, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    const-string p1, "1"

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 52
    invoke-static {v2, v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeAccOn(IZ)V

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-string p1, "0"

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 64
    invoke-static {v2, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeAccOn(IZ)V

    .line 67
    :cond_2
    :goto_0
    return-void
.end method
