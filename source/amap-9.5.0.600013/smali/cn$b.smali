.class public Lcn$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn;


# direct methods
.method public constructor <init>(Lcn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn$b;->a:Lcn;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    const-string p1, "com.autonavi.amapauto"

    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    const-string v2, "GDCamera"

    .line 8
    const-string v3, "onServiceConnected"

    .line 10
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object v1, p0, Lcn$b;->a:Lcn;

    .line 15
    invoke-static {p2}, Lmr$a;->t1(Landroid/os/IBinder;)Lmr;

    .line 18
    move-result-object p2

    .line 19
    invoke-static {v1, p2}, Lcn;->u(Lcn;Lmr;)Lmr;

    .line 22
    const/4 p2, 0x1

    .line 23
    :try_start_0
    iget-object v1, p0, Lcn$b;->a:Lcn;

    .line 25
    invoke-static {v1}, Lcn;->v(Lcn;)Z

    .line 28
    iget-object v1, p0, Lcn$b;->a:Lcn;

    .line 30
    invoke-static {v1}, Lcn;->t(Lcn;)Lmr;

    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v3, p1}, Lmr;->j0(Ljava/lang/String;)Z

    .line 37
    move-result v3

    .line 38
    invoke-static {v1, v3}, Lcn;->n(Lcn;Z)Z

    .line 41
    const-string v1, "onServiceConnected isCameraConnected = {?}"

    .line 43
    new-array v3, p2, [Ljava/lang/Object;

    .line 45
    iget-object v4, p0, Lcn$b;->a:Lcn;

    .line 47
    invoke-static {v4}, Lcn;->m(Lcn;)Z

    .line 50
    move-result v4

    .line 51
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    move-result-object v4

    .line 55
    aput-object v4, v3, v0

    .line 57
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lcn$b;->a:Lcn;

    .line 62
    invoke-static {v1}, Lcn;->t(Lcn;)Lmr;

    .line 65
    move-result-object v1

    .line 66
    iget-object v3, p0, Lcn$b;->a:Lcn;

    .line 68
    invoke-static {v3}, Lcn;->w(Lcn;)Lnr$a;

    .line 71
    move-result-object v3

    .line 72
    invoke-interface {v1, p1, v3}, Lmr;->i1(Ljava/lang/String;Lnr;)Z

    .line 75
    iget-object p1, p0, Lcn$b;->a:Lcn;

    .line 77
    invoke-virtual {p1, v0}, Lcn;->b(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p1

    .line 82
    new-array p2, p2, [Ljava/lang/Object;

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    aput-object p1, p2, v0

    .line 90
    const-string p1, "onServiceConnected e = {?}"

    .line 92
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array v0, p1, [Ljava/lang/Object;

    .line 4
    const-string v1, "GDCamera"

    .line 6
    const-string v2, "onServiceDisconnected"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    iget-object v0, p0, Lcn$b;->a:Lcn;

    .line 13
    invoke-static {v0}, Lcn;->t(Lcn;)Lmr;

    .line 16
    move-result-object v0

    .line 17
    const-string v2, "com.autonavi.amapauto"

    .line 19
    iget-object v3, p0, Lcn$b;->a:Lcn;

    .line 21
    invoke-static {v3}, Lcn;->w(Lcn;)Lnr$a;

    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v0, v2, v3}, Lmr;->f0(Ljava/lang/String;Lnr;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const/4 v2, 0x1

    .line 31
    new-array v2, v2, [Ljava/lang/Object;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    aput-object v0, v2, p1

    .line 39
    const-string p1, "onServiceDisconnected RemoteException = {?}"

    .line 41
    invoke-static {v1, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :goto_0
    iget-object p1, p0, Lcn$b;->a:Lcn;

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-static {p1, v0}, Lcn;->u(Lcn;Lmr;)Lmr;

    .line 50
    return-void
.end method
