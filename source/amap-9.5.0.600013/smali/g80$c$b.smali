.class public Lg80$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg80$c;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg80$c;


# direct methods
.method public constructor <init>(Lg80$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg80$c$b;->a:Lg80$c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const-string v0, "MQTT_SDK"

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "mqttProcBind2"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lg80$c$b;->a:Lg80$c;

    .line 14
    iget-object v1, v1, Lg80$c;->b:Lg80;

    .line 16
    invoke-static {v1}, Lg80;->a(Lg80;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 23
    iget-object v1, p0, Lg80$c$b;->a:Lg80$c;

    .line 25
    iget-object v1, v1, Lg80$c;->b:Lg80;

    .line 27
    iget-object v1, v1, Lg80;->g:Lct;

    .line 29
    if-eqz v1, :cond_0

    .line 31
    const/4 v1, 0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    :try_start_0
    const-string v3, "setOptString(MQTT_SO_PATH)"

    .line 35
    new-array v4, v2, [Ljava/lang/Object;

    .line 37
    invoke-static {v0, v3, v4}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v3, p0, Lg80$c$b;->a:Lg80$c;

    .line 42
    iget-object v3, v3, Lg80$c;->b:Lg80;

    .line 44
    iget-object v4, v3, Lg80;->g:Lct;

    .line 46
    iget-object v3, v3, Lg80;->a:Ljava/lang/String;

    .line 48
    const/16 v5, 0x8

    .line 50
    invoke-interface {v4, v5, v3}, Lct;->b(ILjava/lang/String;)Z

    .line 53
    iget-object v3, p0, Lg80$c$b;->a:Lg80$c;

    .line 55
    iget-object v3, v3, Lg80$c;->b:Lg80;

    .line 57
    invoke-static {v3, v1}, Lg80;->e(Lg80;Z)Z

    .line 60
    const-string v3, "processBind begin"

    .line 62
    new-array v4, v2, [Ljava/lang/Object;

    .line 64
    invoke-static {v0, v3, v4}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Lcom/autonavi/mqtt/PushClient;->d()Lcom/autonavi/mqtt/PushClient;

    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/autonavi/mqtt/PushClient;->f()V

    .line 74
    const-string v3, "processBind end"

    .line 76
    new-array v4, v2, [Ljava/lang/Object;

    .line 78
    invoke-static {v0, v3, v4}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v3, p0, Lg80$c$b;->a:Lg80$c;

    .line 83
    iget-object v3, v3, Lg80$c;->b:Lg80;

    .line 85
    invoke-static {v3}, Lg80;->f(Lg80;)Lg80$e;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v3

    .line 90
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    new-array v1, v1, [Ljava/lang/Object;

    .line 95
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    aput-object v3, v1, v2

    .line 101
    const-string v2, "onServiceConnected exception {?}"

    .line 103
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Lg80$c$b;->a:Lg80$c;

    .line 108
    iget-object v0, v0, Lg80$c;->b:Lg80;

    .line 110
    invoke-static {v0}, Lg80;->a(Lg80;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 117
    return-void
.end method
