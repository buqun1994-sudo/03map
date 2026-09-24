.class public Lg80$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldt;


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
    iput-object p1, p0, Lg80$b;->a:Lg80;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lg80;->k:Ljava/lang/String;

    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 9
    const/4 v3, 0x1

    .line 10
    aput-object p2, v1, v3

    .line 12
    const/4 v4, 0x2

    .line 13
    aput-object p3, v1, v4

    .line 15
    const/4 v4, 0x3

    .line 16
    aput-object p4, v1, v4

    .line 18
    const-string v4, "MQTT_SDK PushManager::mqttInit tid ={?},password ={?},address ={?},extraInfo ={?}"

    .line 20
    invoke-static {v0, v4, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    :try_start_0
    iget-object v0, p0, Lg80$b;->a:Lg80;

    .line 25
    iget-object v1, v0, Lg80;->g:Lct;

    .line 27
    if-eqz v1, :cond_0

    .line 29
    iget-object v0, v0, Lg80;->j:Lps;

    .line 31
    invoke-interface {v1, v0}, Lct;->R0(Lps;)V

    .line 34
    iget-object v0, p0, Lg80$b;->a:Lg80;

    .line 36
    iget-object v0, v0, Lg80;->g:Lct;

    .line 38
    invoke-interface {v0, p1, p2, p3, p4}, Lct;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    move v2, p1

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    sget-object p2, Lg80;->k:Ljava/lang/String;

    .line 47
    new-array p3, v3, [Ljava/lang/Object;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    aput-object p1, p3, v2

    .line 55
    const-string p1, "MQTT_SDK PushManager::mqttInit exception {?}"

    .line 57
    invoke-static {p2, p1, p3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_0
    :goto_0
    return v2
.end method

.method public b(ILjava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lg80;->k:Ljava/lang/String;

    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    const/4 v2, 0x1

    .line 14
    aput-object p2, v1, v2

    .line 16
    const-string v4, "MQTT_SDK PushManager::setOptString key ={?},value ={?}"

    .line 18
    invoke-static {v0, v4, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :try_start_0
    iget-object v0, p0, Lg80$b;->a:Lg80;

    .line 23
    iget-object v0, v0, Lg80;->g:Lct;

    .line 25
    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1, p2}, Lct;->b(ILjava/lang/String;)Z

    .line 30
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return p1

    .line 32
    :catch_0
    move-exception p1

    .line 33
    sget-object p2, Lg80;->k:Ljava/lang/String;

    .line 35
    new-array v0, v2, [Ljava/lang/Object;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    aput-object p1, v0, v3

    .line 43
    const-string p1, "MQTT_SDK PushManager::setOptString exception {?}"

    .line 45
    invoke-static {p2, p1, v0}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_0
    return v3
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 1
    sget-object v0, Lg80;->k:Ljava/lang/String;

    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 9
    const/4 v3, 0x1

    .line 10
    aput-object p2, v1, v3

    .line 12
    const-string v4, "MQTT_SDK PushManager::mqttPublishMessage topicName ={?},message ={?}"

    .line 14
    invoke-static {v0, v4, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :try_start_0
    iget-object v0, p0, Lg80$b;->a:Lg80;

    .line 19
    iget-object v0, v0, Lg80;->g:Lct;

    .line 21
    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0, p1, p2}, Lct;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    move v2, p1

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    sget-object p2, Lg80;->k:Ljava/lang/String;

    .line 32
    new-array v0, v3, [Ljava/lang/Object;

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    aput-object p1, v0, v2

    .line 40
    const-string p1, "MQTT_SDK PushManager::mqttPublishMessage exception {?}"

    .line 42
    invoke-static {p2, p1, v0}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_0
    :goto_0
    return v2
.end method

.method public mqttStart()Z
    .locals 4

    .line 1
    sget-object v0, Lg80;->k:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "MQTT_SDK PushManager::mqttStart"

    .line 8
    invoke-static {v0, v3, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    iget-object v0, p0, Lg80$b;->a:Lg80;

    .line 13
    iget-object v0, v0, Lg80;->g:Lct;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0}, Lct;->mqttStart()Z

    .line 20
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    move v1, v0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    sget-object v2, Lg80;->k:Ljava/lang/String;

    .line 26
    const/4 v3, 0x1

    .line 27
    new-array v3, v3, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    aput-object v0, v3, v1

    .line 35
    const-string v0, "MQTT_SDK PushManager::mqttStart exception {?}"

    .line 37
    invoke-static {v2, v0, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :cond_0
    :goto_0
    return v1
.end method

.method public mqttUninit()V
    .locals 6

    .line 1
    sget-object v0, Lg80;->k:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "MQTT_SDK PushManager::mqttUninit begin"

    .line 8
    invoke-static {v0, v3, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    iget-object v2, p0, Lg80$b;->a:Lg80;

    .line 13
    invoke-static {v2}, Lg80;->a(Lg80;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 20
    iget-object v2, p0, Lg80$b;->a:Lg80;

    .line 22
    iget-object v2, v2, Lg80;->g:Lct;

    .line 24
    if-eqz v2, :cond_0

    .line 26
    const-string v2, "MQTT_SDK PushManager::CALL mPushService.mqttUninit() begin"

    .line 28
    new-array v3, v1, [Ljava/lang/Object;

    .line 30
    invoke-static {v0, v2, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v2, p0, Lg80$b;->a:Lg80;

    .line 35
    iget-object v2, v2, Lg80;->g:Lct;

    .line 37
    invoke-interface {v2}, Lct;->mqttUninit()V

    .line 40
    const-string v2, "MQTT_SDK PushManager::CALL mPushService.mqttUninit() end"

    .line 42
    new-array v3, v1, [Ljava/lang/Object;

    .line 44
    invoke-static {v0, v2, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lg80$b;->a:Lg80;

    .line 49
    invoke-static {v0}, Lg80;->a(Lg80;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    sget-object v2, Lg80;->k:Ljava/lang/String;

    .line 60
    const/4 v3, 0x3

    .line 61
    new-array v3, v3, [Ljava/lang/Object;

    .line 63
    aput-object v0, v3, v1

    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    aput-object v5, v3, v4

    .line 72
    const/4 v4, 0x2

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    aput-object v0, v3, v4

    .line 79
    const-string v0, "MQTT_SDK PushManager::mqttUninit exception e:{?} getMessage:{?} toString:{?}"

    .line 81
    invoke-static {v2, v0, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lg80$b;->a:Lg80;

    .line 86
    invoke-static {v0}, Lg80;->a(Lg80;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 93
    :goto_0
    sget-object v0, Lg80;->k:Ljava/lang/String;

    .line 95
    const-string v2, "MQTT_SDK PushManager::mqttUninit end"

    .line 97
    new-array v1, v1, [Ljava/lang/Object;

    .line 99
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public setOptInt(II)Z
    .locals 5

    .line 1
    sget-object v0, Lg80;->k:Ljava/lang/String;

    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v2

    .line 17
    const/4 v4, 0x1

    .line 18
    aput-object v2, v1, v4

    .line 20
    const-string v2, "MQTT_SDK PushManager::setOptInt key ={?},value ={?}"

    .line 22
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :try_start_0
    iget-object v0, p0, Lg80$b;->a:Lg80;

    .line 27
    iget-object v0, v0, Lg80;->g:Lct;

    .line 29
    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0, p1, p2}, Lct;->setOptInt(II)Z

    .line 34
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return p1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    sget-object p2, Lg80;->k:Ljava/lang/String;

    .line 39
    new-array v0, v4, [Ljava/lang/Object;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    aput-object p1, v0, v3

    .line 47
    const-string p1, "MQTT_SDK PushManager::setOptInt exception {?}"

    .line 49
    invoke-static {p2, p1, v0}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_0
    return v3
.end method
