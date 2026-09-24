.class public Lcom/autonavi/mqtt/PushClient$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/mqtt/PushClient$PushCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/mqtt/PushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/mqtt/PushClient;


# direct methods
.method public constructor <init>(Lcom/autonavi/mqtt/PushClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/mqtt/PushClient$a;->a:Lcom/autonavi/mqtt/PushClient;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bindService(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-static {}, Lg80;->i()Lg80;

    .line 4
    move-result-object v0

    .line 5
    check-cast p1, Landroid/content/Context;

    .line 7
    invoke-virtual {v0, p1}, Lg80;->h(Landroid/content/Context;)V

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1
.end method

.method public mqttInit([B[B[B[B)Z
    .locals 3

    .line 1
    const-string v0, "utf-8"

    .line 3
    iget-object v1, p0, Lcom/autonavi/mqtt/PushClient$a;->a:Lcom/autonavi/mqtt/PushClient;

    .line 5
    invoke-static {v1}, Lcom/autonavi/mqtt/PushClient;->a(Lcom/autonavi/mqtt/PushClient;)Ldt;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 12
    return v2

    .line 13
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 15
    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 18
    new-instance p1, Ljava/lang/String;

    .line 20
    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 23
    new-instance p2, Ljava/lang/String;

    .line 25
    invoke-direct {p2, p3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 28
    new-instance p3, Ljava/lang/String;

    .line 30
    invoke-direct {p3, p4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 33
    iget-object p4, p0, Lcom/autonavi/mqtt/PushClient$a;->a:Lcom/autonavi/mqtt/PushClient;

    .line 35
    invoke-static {p4}, Lcom/autonavi/mqtt/PushClient;->a(Lcom/autonavi/mqtt/PushClient;)Ldt;

    .line 38
    move-result-object p4

    .line 39
    invoke-interface {p4, v1, p1, p2, p3}, Ldt;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    move-result p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return p1

    .line 44
    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    return v2
.end method

.method public mqttPublishMessage([B[B)I
    .locals 3

    .line 1
    const-string v0, "utf-8"

    .line 3
    iget-object v1, p0, Lcom/autonavi/mqtt/PushClient$a;->a:Lcom/autonavi/mqtt/PushClient;

    .line 5
    invoke-static {v1}, Lcom/autonavi/mqtt/PushClient;->a(Lcom/autonavi/mqtt/PushClient;)Ldt;

    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 11
    const/16 p1, -0x3e8

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .line 17
    invoke-direct {v2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    :try_start_1
    new-instance p1, Ljava/lang/String;

    .line 22
    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    move-object v1, p1

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :catch_1
    move-exception p1

    .line 30
    move-object v2, v1

    .line 31
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    :goto_1
    iget-object p1, p0, Lcom/autonavi/mqtt/PushClient$a;->a:Lcom/autonavi/mqtt/PushClient;

    .line 36
    invoke-static {p1}, Lcom/autonavi/mqtt/PushClient;->a(Lcom/autonavi/mqtt/PushClient;)Ldt;

    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1, v2, v1}, Ldt;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method public mqttStart()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/PushClient;->e:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, " mainProc mqttStart begin()"

    .line 8
    invoke-static {v0, v3, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v2, p0, Lcom/autonavi/mqtt/PushClient$a;->a:Lcom/autonavi/mqtt/PushClient;

    .line 13
    invoke-static {v2}, Lcom/autonavi/mqtt/PushClient;->a(Lcom/autonavi/mqtt/PushClient;)Ldt;

    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 19
    const-string v2, " mainProc mqttStart error!()"

    .line 21
    new-array v3, v1, [Ljava/lang/Object;

    .line 23
    invoke-static {v0, v2, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    return v1

    .line 27
    :cond_0
    iget-object v2, p0, Lcom/autonavi/mqtt/PushClient$a;->a:Lcom/autonavi/mqtt/PushClient;

    .line 29
    invoke-static {v2}, Lcom/autonavi/mqtt/PushClient;->a(Lcom/autonavi/mqtt/PushClient;)Ldt;

    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2}, Ldt;->mqttStart()Z

    .line 36
    const-string v2, " mainProc mqttStart end()"

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 40
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    const/4 v0, 0x1

    .line 44
    return v0
.end method

.method public mqttUninit()V
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/PushClient;->e:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, " mainProc mqttUninit begin()"

    .line 8
    invoke-static {v0, v3, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v2, p0, Lcom/autonavi/mqtt/PushClient$a;->a:Lcom/autonavi/mqtt/PushClient;

    .line 13
    invoke-static {v2}, Lcom/autonavi/mqtt/PushClient;->a(Lcom/autonavi/mqtt/PushClient;)Ldt;

    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 19
    const-string v2, " mainProc mqttUninit error!()"

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v2, p0, Lcom/autonavi/mqtt/PushClient$a;->a:Lcom/autonavi/mqtt/PushClient;

    .line 29
    invoke-static {v2}, Lcom/autonavi/mqtt/PushClient;->a(Lcom/autonavi/mqtt/PushClient;)Ldt;

    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2}, Ldt;->mqttUninit()V

    .line 36
    const-string v2, " mainProc mqttUninit end()"

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 40
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public setOptInt(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/mqtt/PushClient$a;->a:Lcom/autonavi/mqtt/PushClient;

    .line 3
    invoke-static {v0}, Lcom/autonavi/mqtt/PushClient;->a(Lcom/autonavi/mqtt/PushClient;)Ldt;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/autonavi/mqtt/PushClient$a;->a:Lcom/autonavi/mqtt/PushClient;

    .line 11
    invoke-static {v0}, Lcom/autonavi/mqtt/PushClient;->a(Lcom/autonavi/mqtt/PushClient;)Ldt;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Ldt;->setOptInt(II)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public setOptString(I[B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/mqtt/PushClient$a;->a:Lcom/autonavi/mqtt/PushClient;

    .line 3
    invoke-static {v0}, Lcom/autonavi/mqtt/PushClient;->a(Lcom/autonavi/mqtt/PushClient;)Ldt;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 12
    const-string v2, "utf-8"

    .line 14
    invoke-direct {v0, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/autonavi/mqtt/PushClient$a;->a:Lcom/autonavi/mqtt/PushClient;

    .line 19
    invoke-static {p2}, Lcom/autonavi/mqtt/PushClient;->a(Lcom/autonavi/mqtt/PushClient;)Ldt;

    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p2, p1, v0}, Ldt;->b(ILjava/lang/String;)Z

    .line 26
    move-result v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    :cond_0
    :goto_0
    return v1
.end method

.method public unbindService()Z
    .locals 1

    .line 1
    invoke-static {}, Lg80;->i()Lg80;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lg80;->l()V

    .line 8
    const/4 v0, 0x1

    .line 9
    return v0
.end method
