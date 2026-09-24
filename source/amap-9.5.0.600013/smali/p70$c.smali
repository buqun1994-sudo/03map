.class public Lp70$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp70;


# direct methods
.method public constructor <init>(Lp70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp70$c;->a:Lp70;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array v0, p1, [Ljava/lang/Object;

    .line 4
    const-string v1, "[ALSimulate] ProtocolAidlControl"

    .line 6
    const-string v2, "onServiceConnected"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lp70$c;->a:Lp70;

    .line 13
    invoke-static {p2}, Lvs$a;->t1(Landroid/os/IBinder;)Lvs;

    .line 16
    move-result-object v2

    .line 17
    invoke-static {v0, v2}, Lp70;->b(Lp70;Lvs;)Lvs;

    .line 20
    iget-object v0, p0, Lp70$c;->a:Lp70;

    .line 22
    invoke-virtual {v0}, Lp70;->v()Z

    .line 25
    iget-object v0, p0, Lp70$c;->a:Lp70;

    .line 27
    invoke-static {v0}, Lp70;->e(Lp70;)Z

    .line 30
    :try_start_0
    iget-object v0, p0, Lp70$c;->a:Lp70;

    .line 32
    invoke-static {v0}, Lp70;->a(Lp70;)Lvs;

    .line 35
    move-result-object v0

    .line 36
    iget-object v2, p0, Lp70$c;->a:Lp70;

    .line 38
    iget-object v2, v2, Lp70;->i:Lws;

    .line 40
    invoke-interface {v0, v2}, Lvs;->X0(Lws;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string v2, "setAutoGetter RemoteException"

    .line 47
    new-array v3, p1, [Ljava/lang/Object;

    .line 49
    invoke-static {v1, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 52
    :goto_0
    :try_start_1
    iget-object v0, p0, Lp70$c;->a:Lp70;

    .line 54
    invoke-static {v0}, Lp70;->c(Lp70;)Landroid/os/IBinder$DeathRecipient;

    .line 57
    move-result-object v0

    .line 58
    invoke-interface {p2, v0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    goto :goto_1

    .line 62
    :catch_1
    move-exception p2

    .line 63
    const-string v0, "linkToDeath RemoteException"

    .line 65
    new-array p1, p1, [Ljava/lang/Object;

    .line 67
    invoke-static {v1, v0, p2, p1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 70
    :goto_1
    new-instance p1, Lp70$c$a;

    .line 72
    invoke-direct {p1, p0}, Lp70$c$a;-><init>(Lp70$c;)V

    .line 75
    invoke-static {p1}, Lok0;->g(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array v0, p1, [Ljava/lang/Object;

    .line 4
    const-string v1, "[ALSimulate] ProtocolAidlControl"

    .line 6
    const-string v2, "onServiceDisconnected"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lp70$c;->a:Lp70;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Lp70;->b(Lp70;Lvs;)Lvs;

    .line 17
    invoke-static {p1}, Lp70;->f(Z)Z

    .line 20
    return-void
.end method
