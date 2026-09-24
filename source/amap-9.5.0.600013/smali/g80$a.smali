.class public Lg80$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg80;->h(Landroid/content/Context;)V
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
    iput-object p1, p0, Lg80$a;->a:Lg80;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "mqttProcBind"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lg80$a;->a:Lg80;

    .line 12
    invoke-static {v0}, Lg80;->a(Lg80;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 19
    iget-object v0, p0, Lg80$a;->a:Lg80;

    .line 21
    iget-object v0, v0, Lg80;->g:Lct;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    const-string v0, "processBind begin again"

    .line 27
    const/4 v1, 0x0

    .line 28
    new-array v2, v1, [Ljava/lang/Object;

    .line 30
    const-string v3, "MQTT_SDK"

    .line 32
    invoke-static {v3, v0, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Lcom/autonavi/mqtt/PushClient;->d()Lcom/autonavi/mqtt/PushClient;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/autonavi/mqtt/PushClient;->f()V

    .line 42
    const-string v0, "processBind end again"

    .line 44
    new-array v1, v1, [Ljava/lang/Object;

    .line 46
    invoke-static {v3, v0, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lg80$a;->a:Lg80;

    .line 51
    invoke-static {v0}, Lg80;->a(Lg80;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 58
    return-void
.end method
