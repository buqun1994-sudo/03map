.class public Lg80$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/os/IBinder$DeathRecipient;

.field public final synthetic b:Lg80;


# direct methods
.method public constructor <init>(Lg80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg80$c;->b:Lg80;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Lg80$c$a;

    .line 8
    invoke-direct {p1, p0}, Lg80$c$a;-><init>(Lg80$c;)V

    .line 11
    iput-object p1, p0, Lg80$c;->a:Landroid/os/IBinder$DeathRecipient;

    .line 13
    return-void
.end method

.method public static synthetic a(Lg80$c;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 1
    iget-object p0, p0, Lg80$c;->a:Landroid/os/IBinder$DeathRecipient;

    .line 3
    return-object p0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array v0, p1, [Ljava/lang/Object;

    .line 4
    const-string v1, "MQTT_SDK"

    .line 6
    const-string v2, "onServiceConnected entry"

    .line 8
    invoke-static {v1, v2, v0}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lg80$c;->b:Lg80;

    .line 13
    invoke-static {p2}, Lct$a;->t1(Landroid/os/IBinder;)Lct;

    .line 16
    move-result-object v2

    .line 17
    iput-object v2, v0, Lg80;->g:Lct;

    .line 19
    iget-object v0, p0, Lg80$c;->b:Lg80;

    .line 21
    iget-object v0, v0, Lg80;->g:Lct;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    const-string v0, "new Thread(new Runnable()"

    .line 27
    new-array v2, p1, [Ljava/lang/Object;

    .line 29
    invoke-static {v1, v0, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    new-instance v0, Ljava/lang/Thread;

    .line 34
    new-instance v2, Lg80$c$b;

    .line 36
    invoke-direct {v2, p0}, Lg80$c$b;-><init>(Lg80$c;)V

    .line 39
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 45
    :try_start_0
    const-string v0, "linkToDeath"

    .line 47
    new-array v2, p1, [Ljava/lang/Object;

    .line 49
    invoke-static {v1, v0, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lg80$c;->a:Landroid/os/IBinder$DeathRecipient;

    .line 54
    invoke-interface {p2, v0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p2

    .line 59
    sget-object v0, Lg80;->k:Ljava/lang/String;

    .line 61
    const-string v1, "linkToDeath RemoteException"

    .line 63
    new-array p1, p1, [Ljava/lang/Object;

    .line 65
    invoke-static {v0, v1, p2, p1}, Lez;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 68
    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array v0, p1, [Ljava/lang/Object;

    .line 4
    const-string v1, "MQTT_SDK"

    .line 6
    const-string v2, "onServiceDisconnected"

    .line 8
    invoke-static {v1, v2, v0}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lg80$c;->b:Lg80;

    .line 13
    invoke-static {v0, p1}, Lg80;->e(Lg80;Z)Z

    .line 16
    invoke-static {}, Lcom/autonavi/mqtt/PushClient;->d()Lcom/autonavi/mqtt/PushClient;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/autonavi/mqtt/PushClient;->g()V

    .line 23
    return-void
.end method
