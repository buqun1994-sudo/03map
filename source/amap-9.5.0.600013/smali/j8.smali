.class public Lj8;
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
.method public createRealChannelImpl()Leq;
    .locals 1

    .line 1
    const/16 v0, 0x3b07

    .line 3
    invoke-virtual {p0, v0}, Lj8;->getStringValue(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p0}, Lre;->a(Ljava/lang/String;Leq;)Leq;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    invoke-static {}, Lsk;->c()Lsk;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lsk;->b()Lrk;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lrk;->f()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final f(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.hebu.shownavibar"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    xor-int/lit8 p1, p1, 0x1

    .line 10
    const-string v1, "show"

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    invoke-static {}, Lrv;->H()Lrv;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lrv;->y()Landroid/app/Application;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 26
    return-void
.end method

.method public getBooleanValue(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x2712

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
    invoke-virtual {p0}, Lj8;->e()Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public getSatelliteType(I)I
    .locals 1

    .line 1
    const/16 v0, 0xc8

    .line 3
    if-le p1, v0, :cond_0

    .line 5
    const/16 v0, 0x12c

    .line 7
    if-ge p1, v0, :cond_0

    .line 9
    sget p1, Luy;->b:I

    .line 11
    return p1

    .line 12
    :cond_0
    sget p1, Luy;->a:I

    .line 14
    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 6

    .line 1
    const/16 v0, 0x3b07

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "ro.unistep.model"

    .line 8
    invoke-static {v0}, Luf0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v2, v1, [Ljava/lang/Object;

    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v0, v2, v3

    .line 18
    const-string v4, "AutoLiteHeBuImpl"

    .line 20
    const-string v5, "[GET_EXTENAL_CUSTOM_ID]model={?}"

    .line 22
    invoke-static {v4, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lrv;->H()Lrv;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lrv;->y()Landroid/app/Application;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    move-result-object v2

    .line 37
    const-string v5, "hebu_lite.properties"

    .line 39
    invoke-virtual {p0, v5, v2}, Lac;->initProperties(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Properties;

    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_1

    .line 45
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    aput-object v0, v1, v3

    .line 55
    const-string v2, "[GET_EXTENAL_CUSTOM_ID]customId:{?}"

    .line 57
    invoke-static {v4, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_1

    .line 66
    return-object v0

    .line 67
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lac;->getStringValue(I)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    return-object p1
.end method

.method public onActivityLifecycleChanged(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lbc;->onActivityLifecycleChanged(Landroid/app/Activity;I)V

    .line 4
    invoke-virtual {p0}, Lj8;->e()Z

    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_2

    .line 10
    const/4 p1, 0x3

    .line 11
    if-eq p2, p1, :cond_1

    .line 13
    const/4 p1, 0x4

    .line 14
    if-eq p2, p1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lj8;->f(Z)V

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lj8;->f(Z)V

    .line 26
    :cond_2
    :goto_0
    return-void
.end method
