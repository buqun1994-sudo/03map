.class public Lg80$d;
.super Lps$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg80;


# direct methods
.method public constructor <init>(Lg80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg80$d;->a:Lg80;

    .line 3
    invoke-direct {p0}, Lps$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public T0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    const-string p2, "MQTT_SDK Server"

    .line 6
    const-string p3, "onSendNotify"

    .line 8
    invoke-static {p2, p3, p1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lg80$d;->a:Lg80;

    .line 13
    invoke-static {p1}, Lg80;->f(Lg80;)Lg80$e;

    .line 16
    return-void
.end method

.method public U()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "MQTT_SDK Server"

    .line 6
    const-string v3, "isInternetConnect"

    .line 8
    invoke-static {v2, v3, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lg80$d;->a:Lg80;

    .line 13
    invoke-static {v1}, Lg80;->f(Lg80;)Lg80$e;

    .line 16
    return v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public connectionLost()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "MQTT_SDK Server"

    .line 6
    const-string v2, "connectionLost"

    .line 8
    invoke-static {v1, v2, v0}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lg80$d;->a:Lg80;

    .line 13
    invoke-static {v0}, Lg80;->g(Lg80;)Lcom/autonavi/mqtt/PushClient;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lg80$d;->a:Lg80;

    .line 21
    invoke-static {v0}, Lg80;->g(Lg80;)Lcom/autonavi/mqtt/PushClient;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/autonavi/mqtt/PushClient;->b()V

    .line 28
    :cond_0
    return-void
.end method

.method public connectionSuccess()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "MQTT_SDK Server"

    .line 6
    const-string v2, "connectionSuccess"

    .line 8
    invoke-static {v1, v2, v0}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lg80$d;->a:Lg80;

    .line 13
    invoke-static {v0}, Lg80;->g(Lg80;)Lcom/autonavi/mqtt/PushClient;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lg80$d;->a:Lg80;

    .line 21
    invoke-static {v0}, Lg80;->g(Lg80;)Lcom/autonavi/mqtt/PushClient;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/autonavi/mqtt/PushClient;->c()V

    .line 28
    :cond_0
    return-void
.end method

.method public y()I
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "mainProc isRunningBackGround begin pid:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v2, v1, [Ljava/lang/Object;

    .line 25
    const-string v3, "MQTT_SDK Server"

    .line 27
    invoke-static {v3, v0, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lg80$d;->a:Lg80;

    .line 32
    iget-object v0, v0, Lg80;->d:Lcs;

    .line 34
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Lcs;->a()Z

    .line 39
    move-result v0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const-string v4, "mainProc isRunningBackGround return:"

    .line 47
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    new-array v1, v1, [Ljava/lang/Object;

    .line 59
    invoke-static {v3, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v0, 0x2

    .line 67
    :goto_0
    return v0

    .line 68
    :cond_1
    return v1
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "MQTT_SDK Server"

    .line 6
    const-string v3, "messageArrived"

    .line 8
    invoke-static {v2, v3, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lg80$d;->a:Lg80;

    .line 13
    invoke-static {v1}, Lg80;->g(Lg80;)Lcom/autonavi/mqtt/PushClient;

    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 19
    iget-object v0, p0, Lg80$d;->a:Lg80;

    .line 21
    invoke-static {v0}, Lg80;->g(Lg80;)Lcom/autonavi/mqtt/PushClient;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/mqtt/PushClient;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    move-result v0

    .line 29
    :cond_0
    return v0
.end method
