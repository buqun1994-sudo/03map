.class public Lga;
.super Lfi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lfi;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    const-string v1, "DefaultAutoLiteImpl"

    .line 9
    const-string v2, "AutoLiteYunZhiYiLianImpl"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method public createRealChannelImpl()Leq;
    .locals 1

    .line 1
    const/16 v0, 0x3b07

    .line 3
    invoke-virtual {p0, v0}, Lga;->getStringValue(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p0}, Lre;->a(Ljava/lang/String;Leq;)Leq;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getBooleanValue(I)Z
    .locals 2

    .line 1
    const/16 v0, 0x2711

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lac;->getBooleanValue(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 12
    const-string v0, "com.spt.carengine.VOICE.OFFLINE.COMMAND"

    .line 14
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v0, "com.spt.carengine.VOICE.OFFLINE.COMMAND.VALUE"

    .line 19
    const/16 v1, 0x16

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    invoke-static {}, Lrv;->H()Lrv;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 35
    const/4 p1, 0x1

    .line 36
    return p1
.end method

.method public getIntValue(I)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lac;->getIntValue(I)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x3b07

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 8
    const/16 v1, 0x5f

    .line 10
    const-string v2, "yunzhiyilian.properties"

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0, v0, v1, v3, v2}, Lac;->getDeviceCustomer(Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    aput-object v0, v1, v3

    .line 22
    const-string v2, "DefaultAutoLiteImpl"

    .line 24
    const-string v3, "customer:{?}"

    .line 26
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 35
    return-object v0

    .line 36
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lac;->getStringValue(I)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method
