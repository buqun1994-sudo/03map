.class Lcom/amap/location/sdk/fusion/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/fusion/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/fusion/c;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/fusion/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/fusion/c$6;->a:Lcom/amap/location/sdk/fusion/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/c$6;->a:Lcom/amap/location/sdk/fusion/c;

    .line 3
    invoke-static {p1}, Lcom/amap/location/sdk/fusion/c;->m(Lcom/amap/location/sdk/fusion/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/c$6;->a:Lcom/amap/location/sdk/fusion/c;

    .line 15
    invoke-static {p1}, Lcom/amap/location/sdk/fusion/c;->d(Lcom/amap/location/sdk/fusion/c;)Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    const-string v0, "unbind error:"

    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    const-string p2, "mainserviceproxy"

    .line 47
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/c$6;->a:Lcom/amap/location/sdk/fusion/c;

    .line 53
    invoke-static {p1}, Lcom/amap/location/sdk/fusion/c;->i(Lcom/amap/location/sdk/fusion/c;)Landroid/os/Handler;

    .line 56
    move-result-object p1

    .line 57
    new-instance v0, Lcom/amap/location/sdk/fusion/c$6$1;

    .line 59
    invoke-direct {v0, p0, p2}, Lcom/amap/location/sdk/fusion/c$6$1;-><init>(Lcom/amap/location/sdk/fusion/c$6;Landroid/os/IBinder;)V

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/c$6;->a:Lcom/amap/location/sdk/fusion/c;

    .line 67
    invoke-static {p1}, Lcom/amap/location/sdk/fusion/c;->i(Lcom/amap/location/sdk/fusion/c;)Landroid/os/Handler;

    .line 70
    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/amap/location/sdk/fusion/c$6;->a:Lcom/amap/location/sdk/fusion/c;

    .line 73
    invoke-static {p2}, Lcom/amap/location/sdk/fusion/c;->h(Lcom/amap/location/sdk/fusion/c;)Ljava/lang/Runnable;

    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/c$6;->a:Lcom/amap/location/sdk/fusion/c;

    .line 82
    invoke-static {p1}, Lcom/amap/location/sdk/fusion/c;->i(Lcom/amap/location/sdk/fusion/c;)Landroid/os/Handler;

    .line 85
    move-result-object p1

    .line 86
    iget-object p2, p0, Lcom/amap/location/sdk/fusion/c$6;->a:Lcom/amap/location/sdk/fusion/c;

    .line 88
    invoke-static {p2}, Lcom/amap/location/sdk/fusion/c;->h(Lcom/amap/location/sdk/fusion/c;)Ljava/lang/Runnable;

    .line 91
    move-result-object p2

    .line 92
    const-wide/16 v0, 0x2710

    .line 94
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/c$6;->a:Lcom/amap/location/sdk/fusion/c;

    .line 3
    invoke-static {p1}, Lcom/amap/location/sdk/fusion/c;->i(Lcom/amap/location/sdk/fusion/c;)Landroid/os/Handler;

    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/amap/location/sdk/fusion/c$6$2;

    .line 9
    invoke-direct {v0, p0}, Lcom/amap/location/sdk/fusion/c$6$2;-><init>(Lcom/amap/location/sdk/fusion/c$6;)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
.end method
