.class Lcom/amap/location/sdk/d/a/a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/sdk/d/a/a;->a(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/support/handler/AmapLooper;

.field final synthetic b:Lcom/amap/location/sdk/d/a/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/d/a/a;Landroid/os/Looper;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/d/a/a$1;->b:Lcom/amap/location/sdk/d/a/a;

    .line 3
    iput-object p3, p0, Lcom/amap/location/sdk/d/a/a$1;->a:Lcom/amap/location/support/handler/AmapLooper;

    .line 5
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/amap/location/sdk/d/a/a$1;->b:Lcom/amap/location/sdk/d/a/a;

    .line 12
    iget-object p1, p1, Lcom/amap/location/sdk/d/a/a;->a:Lcom/amap/location/support/app/MessageCenterListener;

    .line 14
    invoke-static {p1}, Lcom/amap/location/support/app/MessageCenter;->removeStatListener(Lcom/amap/location/support/app/MessageCenterListener;)V

    .line 17
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/amap/location/sdk/d/a/a$1;->b:Lcom/amap/location/sdk/d/a/a;

    .line 27
    invoke-static {v0}, Lcom/amap/location/sdk/d/a/a;->a(Lcom/amap/location/sdk/d/a/a;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p1, v0}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->removeStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;)Z

    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 51
    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/amap/location/sdk/d/a/a$1;->b:Lcom/amap/location/sdk/d/a/a;

    .line 54
    invoke-static {v0}, Lcom/amap/location/sdk/d/a/a;->a(Lcom/amap/location/sdk/d/a/a;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/amap/location/sdk/d/a/a$1;->a:Lcom/amap/location/support/handler/AmapLooper;

    .line 60
    invoke-interface {p1, v0, v1}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->addStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 63
    iget-object p1, p0, Lcom/amap/location/sdk/d/a/a$1;->b:Lcom/amap/location/sdk/d/a/a;

    .line 65
    iget-object p1, p1, Lcom/amap/location/sdk/d/a/a;->a:Lcom/amap/location/support/app/MessageCenterListener;

    .line 67
    invoke-static {p1}, Lcom/amap/location/support/app/MessageCenter;->addStatListener(Lcom/amap/location/support/app/MessageCenterListener;)V

    .line 70
    iget-object p1, p0, Lcom/amap/location/sdk/d/a/a$1;->b:Lcom/amap/location/sdk/d/a/a;

    .line 72
    const-wide/16 v0, -0x1

    .line 74
    invoke-static {p1, v0, v1}, Lcom/amap/location/sdk/d/a/a;->a(Lcom/amap/location/sdk/d/a/a;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    goto :goto_0

    .line 78
    :catch_1
    move-exception p1

    .line 79
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 82
    :goto_0
    return-void
.end method
