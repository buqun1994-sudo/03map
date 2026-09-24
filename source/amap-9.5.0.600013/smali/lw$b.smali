.class public Llw$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Llw;


# direct methods
.method public constructor <init>(Llw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llw$b;->a:Llw;

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
    const-string v1, "[ALSimulate] JsonProtocolManager"

    .line 6
    const-string v2, "onServiceConnected"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Llw$b;->a:Llw;

    .line 13
    invoke-static {p2}, Lur$a;->t1(Landroid/os/IBinder;)Lur;

    .line 16
    move-result-object v2

    .line 17
    invoke-static {v0, v2}, Llw;->b(Llw;Lur;)Lur;

    .line 20
    :try_start_0
    iget-object v0, p0, Llw$b;->a:Llw;

    .line 22
    invoke-static {v0}, Llw;->a(Llw;)Lur;

    .line 25
    move-result-object v0

    .line 26
    iget-object v2, p0, Llw$b;->a:Llw;

    .line 28
    invoke-static {v2}, Llw;->d(Llw;)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    iget-object v3, p0, Llw$b;->a:Llw;

    .line 34
    invoke-static {v3}, Llw;->e(Llw;)Lwr$a;

    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v0, v2, v3}, Lur;->X(Ljava/lang/String;Lwr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    new-array v3, p1, [Ljava/lang/Object;

    .line 49
    invoke-static {v1, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 52
    :goto_0
    :try_start_1
    iget-object v0, p0, Llw$b;->a:Llw;

    .line 54
    invoke-static {v0}, Llw;->c(Llw;)Landroid/os/IBinder$DeathRecipient;

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
    const/4 v0, 0x1

    .line 64
    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    aput-object p2, v0, p1

    .line 72
    const-string p2, "linkToDeath RemoteException e = {?}"

    .line 74
    invoke-static {v1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :goto_1
    iget-object p2, p0, Llw$b;->a:Llw;

    .line 79
    invoke-static {p2}, Llw;->d(Llw;)Ljava/lang/String;

    .line 82
    move-result-object p2

    .line 83
    invoke-static {p2}, Lpk0;->e(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Llw$b;->a:Llw;

    .line 88
    invoke-static {p2}, Llw;->f(Llw;)Ljava/lang/String;

    .line 91
    move-result-object p2

    .line 92
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    move-result p2

    .line 96
    if-nez p2, :cond_0

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    const-string v0, "start executing waiting protocol,json="

    .line 105
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v0, p0, Llw$b;->a:Llw;

    .line 110
    invoke-static {v0}, Llw;->f(Llw;)Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p2

    .line 121
    new-array v0, p1, [Ljava/lang/Object;

    .line 123
    invoke-static {v1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object p2, p0, Llw$b;->a:Llw;

    .line 128
    invoke-static {p2}, Llw;->f(Llw;)Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p2, v0}, Llw;->n(Ljava/lang/String;)V

    .line 135
    iget-object p2, p0, Llw$b;->a:Llw;

    .line 137
    const/4 v0, 0x0

    .line 138
    invoke-static {p2, v0}, Llw;->g(Llw;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    :cond_0
    const-string p2, "onServiceConnected done"

    .line 143
    new-array p1, p1, [Ljava/lang/Object;

    .line 145
    invoke-static {v1, p2, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    const-string v0, "[ALSimulate] JsonProtocolManager"

    .line 6
    const-string v1, "onServiceDisconnected"

    .line 8
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Llw$b;->a:Llw;

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {p1, v0}, Llw;->b(Llw;Lur;)Lur;

    .line 17
    return-void
.end method
