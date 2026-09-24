.class public Lg7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {}, Lr50;->l()Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lcom/autonavi/eaglet/startup/EagletStart;->handleStartUp(ILjava/lang/String;)I

    .line 9
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "Eaglet"

    .line 6
    const-string v2, "onEagletApplicationInited"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->n()V

    .line 14
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const-string p1, "Eaglet"

    .line 13
    const-string v1, "onEagletActivityDestroyed, before:{?}"

    .line 15
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "Eaglet"

    .line 6
    const-string v2, "onEagletSurfaceCreated"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const-string p1, "Eaglet"

    .line 13
    const-string v1, "onEagletActivityCreated, before:{?}"

    .line 15
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public f(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "Eaglet"

    .line 13
    const-string v4, "onEagletActivityStarted, before:{?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-eqz p1, :cond_0

    .line 20
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, v0, v3}, Lcom/autonavi/amapauto/framework/AutoLoader;->v(II)V

    .line 27
    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const-string p1, "Eaglet"

    .line 13
    const-string v1, "onEagletActivityResumed, before:{?}"

    .line 15
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "Eaglet"

    .line 6
    const-string v2, "onEagletApplicationInitStarted"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    invoke-static {}, Lbi;->n()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Ltk;->d()Ltk;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lg7$a;

    .line 13
    invoke-direct {v1, p0}, Lg7$a;-><init>(Lg7;)V

    .line 16
    const-wide/32 v2, 0xea60

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Ltk;->a(Ljava/lang/Runnable;J)V

    .line 22
    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const-string p1, "Eaglet"

    .line 13
    const-string v1, "onEagletActivityPaused, before:{?}"

    .line 15
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public k()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "Eaglet"

    .line 6
    const-string v2, "onEagletSurfaceChanged"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "Eaglet"

    .line 6
    const-string v2, "onEagletSurfaceDestroyed"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public m(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v3

    .line 9
    aput-object v3, v1, v2

    .line 11
    const-string v2, "Eaglet"

    .line 13
    const-string v3, "onEagletActivityStoped, before:{?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-eqz p1, :cond_0

    .line 20
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, v0, v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->v(II)V

    .line 27
    :cond_0
    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "Eaglet"

    .line 6
    const-string v2, "onEagletBackgroundServiceStarted"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-static {}, Lr50;->l()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lcom/autonavi/eaglet/startup/EagletStart;->handleStartUp(ILjava/lang/String;)I

    .line 19
    return-void
.end method

.method public o(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 8
    move-result p2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v1, "getBoolFunConfig"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string p1, " : "

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    const/4 v0, 0x0

    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    const-string v1, "Eaglet"

    .line 39
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    return p2
.end method
