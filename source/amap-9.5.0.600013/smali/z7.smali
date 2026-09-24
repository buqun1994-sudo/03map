.class public Lz7;
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
    const-string v2, "AutoLiteBanMaImpl"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public static g(Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    move-result-object p0

    .line 9
    if-eqz p1, :cond_0

    .line 11
    const/16 p1, 0x1706

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 16
    new-instance p1, Lz7$a;

    .line 18
    invoke-direct {p1, p0}, Lz7$a;-><init>(Landroid/view/View;)V

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public createRealChannelImpl()Leq;
    .locals 1

    .line 1
    const/16 v0, 0x3b07

    .line 3
    invoke-virtual {p0, v0}, Lz7;->getStringValue(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p0}, Lre;->a(Ljava/lang/String;Leq;)Leq;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final f(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v1

    .line 12
    aput-object v1, v0, p1

    .line 14
    const-string p1, "DefaultAutoLiteImpl"

    .line 16
    const-string v1, "setFullScreenState activity:{?}, isFullScreen:{?}"

    .line 18
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    if-eqz p2, :cond_0

    .line 23
    const-string p1, "true"

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p1, "false"

    .line 28
    :goto_0
    const-string p2, "sys.force_full_screen"

    .line 30
    invoke-static {p2, p1}, Luf0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
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
    const-string v0, "ro.yunos.model"

    .line 8
    invoke-static {v0}, Luf0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v0, v1, v2

    .line 18
    const-string v2, "AutoLiteBanMaImpl"

    .line 20
    const-string v3, "model={?}"

    .line 22
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lrv;->H()Lrv;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 37
    const-string v2, "banma_lite.properties"

    .line 39
    invoke-virtual {p0, v2, v1}, Lac;->initProperties(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Properties;

    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 45
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 57
    return-object v0

    .line 58
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lac;->getStringValue(I)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method public onActivityLifecycleChanged(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lbc;->onActivityLifecycleChanged(Landroid/app/Activity;I)V

    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p2, v0, :cond_2

    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p2, v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lsk;->c()Lsk;

    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lsk;->b()Lrk;

    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lrk;->f()Z

    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_1

    .line 25
    invoke-virtual {p0}, Lz7;->e()Z

    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_4

    .line 31
    :cond_1
    const/4 p2, 0x0

    .line 32
    invoke-virtual {p0, p1, p2}, Lz7;->f(Landroid/app/Activity;Z)V

    .line 35
    invoke-static {p1, p2}, Lz7;->g(Landroid/app/Activity;Z)V

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {}, Lsk;->c()Lsk;

    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2}, Lsk;->b()Lrk;

    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Lrk;->f()Z

    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_3

    .line 53
    invoke-virtual {p0}, Lz7;->e()Z

    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_4

    .line 59
    :cond_3
    const/4 p2, 0x1

    .line 60
    invoke-virtual {p0, p1, p2}, Lz7;->f(Landroid/app/Activity;Z)V

    .line 63
    invoke-static {p1, p2}, Lz7;->g(Landroid/app/Activity;Z)V

    .line 66
    :cond_4
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lbc;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    .line 4
    invoke-static {}, Lsk;->c()Lsk;

    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lsk;->b()Lrk;

    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lrk;->f()Z

    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 18
    invoke-virtual {p0}, Lz7;->e()Z

    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_1

    .line 24
    :cond_0
    const/4 p2, 0x1

    .line 25
    invoke-static {p1, p2}, Lz7;->g(Landroid/app/Activity;Z)V

    .line 28
    :cond_1
    return-void
.end method
