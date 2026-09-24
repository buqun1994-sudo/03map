.class public Llw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llw$d;
    }
.end annotation


# instance fields
.field public a:Lur;

.field public b:Landroid/content/Context;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Landroid/os/IBinder$DeathRecipient;

.field public g:Landroid/content/ServiceConnection;

.field public h:Lwr$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Llw;->c:Z

    .line 7
    const-string v0, "com.amapauto.autonavi.jsonsimulate.client"

    .line 9
    iput-object v0, p0, Llw;->d:Ljava/lang/String;

    .line 11
    new-instance v0, Llw$a;

    .line 13
    invoke-direct {v0, p0}, Llw$a;-><init>(Llw;)V

    .line 16
    iput-object v0, p0, Llw;->f:Landroid/os/IBinder$DeathRecipient;

    .line 18
    new-instance v0, Llw$b;

    .line 20
    invoke-direct {v0, p0}, Llw$b;-><init>(Llw;)V

    .line 23
    iput-object v0, p0, Llw;->g:Landroid/content/ServiceConnection;

    .line 25
    new-instance v0, Llw$c;

    .line 27
    invoke-direct {v0, p0}, Llw$c;-><init>(Llw;)V

    .line 30
    iput-object v0, p0, Llw;->h:Lwr$a;

    .line 32
    return-void
.end method

.method public static synthetic a(Llw;)Lur;
    .locals 0

    .line 1
    iget-object p0, p0, Llw;->a:Lur;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Llw;Lur;)Lur;
    .locals 0

    .line 1
    iput-object p1, p0, Llw;->a:Lur;

    .line 3
    return-object p1
.end method

.method public static synthetic c(Llw;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 1
    iget-object p0, p0, Llw;->f:Landroid/os/IBinder$DeathRecipient;

    .line 3
    return-object p0
.end method

.method public static synthetic d(Llw;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Llw;->d:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic e(Llw;)Lwr$a;
    .locals 0

    .line 1
    iget-object p0, p0, Llw;->h:Lwr$a;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Llw;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Llw;->e:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic g(Llw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Llw;->e:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic h(Llw;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Llw;->k(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic i(Llw;)Lvr;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public static l()Llw;
    .locals 1

    .line 1
    invoke-static {}, Llw$d;->a()Llw;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public j()Z
    .locals 7

    .line 1
    iget-object v0, p0, Llw;->b:Landroid/content/Context;

    .line 3
    const-string v1, "[ALSimulate] JsonProtocolManager"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string v0, "bindService mContext is null"

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return v2

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    .line 19
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 22
    const-string v4, "com.autonavi.amapauto.aidl.json_protocol_service"

    .line 24
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    new-instance v4, Landroid/content/ComponentName;

    .line 29
    const-string v5, "com.autonavi.amapauto"

    .line 31
    const-string v6, "com.autonavi.amapauto.protocol.service.JsonProtocolService"

    .line 33
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 39
    iget-object v4, p0, Llw;->b:Landroid/content/Context;

    .line 41
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 44
    move-result-object v4

    .line 45
    iget-object v5, p0, Llw;->g:Landroid/content/ServiceConnection;

    .line 47
    invoke-virtual {v4, v3, v5, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 50
    move-result v3

    .line 51
    iput-boolean v3, p0, Llw;->c:Z

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v4, "bindService = "

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-boolean v4, p0, Llw;->c:Z

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    new-array v4, v2, [Ljava/lang/Object;

    .line 74
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v3

    .line 79
    new-array v0, v0, [Ljava/lang/Object;

    .line 81
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    aput-object v3, v0, v2

    .line 87
    const-string v2, "bindService Exception e = {?}"

    .line 89
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :goto_0
    iget-boolean v0, p0, Llw;->c:Z

    .line 94
    return v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lpk0;->c()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 14
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    const-string p1, "protocolId"

    .line 19
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 22
    move-result p1

    .line 23
    const v2, 0x1869f

    .line 26
    if-ne p1, v2, :cond_0

    .line 28
    iget-object p1, p0, Llw;->b:Landroid/content/Context;

    .line 30
    invoke-static {v1, p1}, Lpk0;->a(Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    const/4 v1, 0x1

    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    aput-object p1, v1, v0

    .line 44
    const-string p1, "[ALSimulate] JsonProtocolManager"

    .line 46
    const-string v0, "checkVersion fail e = {?}"

    .line 48
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_0
    :goto_0
    return-void
.end method

.method public m(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "[ALSimulate] JsonProtocolManager"

    .line 6
    const-string v3, "init start"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Llw;->b:Landroid/content/Context;

    .line 13
    iget-object p1, p0, Llw;->d:Ljava/lang/String;

    .line 15
    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 23
    :cond_0
    iget-object p1, p0, Llw;->b:Landroid/content/Context;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Llw;->d:Ljava/lang/String;

    .line 31
    :cond_1
    invoke-virtual {p0}, Llw;->j()Z

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string v1, "JsonClient version = 3.2.0.20190521 package = "

    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Llw;->b:Landroid/content/Context;

    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    new-array v1, v0, [Ljava/lang/Object;

    .line 59
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Llw;->e:Ljava/lang/String;

    .line 65
    const-string p1, "init end"

    .line 67
    new-array v0, v0, [Ljava/lang/Object;

    .line 69
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Llw;->a:Lur;

    .line 3
    const-string v1, "SdkClient"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string v0, "jsonProtocolManager.getJsonProtocolInterface() is null"

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iput-object p1, p0, Llw;->e:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Llw;->j()Z

    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v3, "request jsonData:"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    new-array v3, v2, [Ljava/lang/Object;

    .line 40
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :try_start_0
    iget-object v0, p0, Llw;->a:Lur;

    .line 45
    iget-object v1, p0, Llw;->d:Ljava/lang/String;

    .line 47
    invoke-interface {v0, v1, p1}, Lur;->h1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p1

    .line 52
    const/4 v0, 0x1

    .line 53
    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    aput-object v1, v0, v2

    .line 61
    const-string v1, "[ALSimulate] JsonProtocolManager"

    .line 63
    const-string v2, "request RemoteException e = {?}"

    .line 65
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    :goto_0
    return-void
.end method
