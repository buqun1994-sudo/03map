.class public Lrv$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrv;


# direct methods
.method public constructor <init>(Lrv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrv$a;->a:Lrv;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrv$a;->a:Lrv;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lrv;->b(Lrv;Z)Z

    .line 7
    iget-object v0, p0, Lrv$a;->a:Lrv;

    .line 9
    invoke-static {v0}, Lrv;->i(Lrv;)Loy;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lrv$a;->a:Lrv;

    .line 17
    invoke-static {v0}, Lrv;->i(Lrv;)Loy;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Loy;->D()V

    .line 24
    :cond_0
    iget-object v0, p0, Lrv$a;->a:Lrv;

    .line 26
    invoke-static {v0}, Lrv;->k(Lrv;)Lfo;

    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lrv$a;->a:Lrv;

    .line 34
    invoke-static {v0}, Lrv;->k(Lrv;)Lfo;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lfo;->e()V

    .line 41
    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lrv$a;->a:Lrv;

    .line 3
    invoke-static {v0}, Lrv;->a(Lrv;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 11
    new-array v0, v2, [Ljava/lang/Object;

    .line 13
    iget-object v2, p0, Lrv$a;->a:Lrv;

    .line 15
    invoke-static {v2}, Lrv;->a(Lrv;)Z

    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v0, v1

    .line 25
    const-string v1, "JNIContext"

    .line 27
    const-string v2, "onLocationServiceStart\uff0cisStartLocation ={?}"

    .line 29
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lrv$a;->a:Lrv;

    .line 35
    invoke-static {v0}, Lrv;->c(Lrv;)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lrv$a;->a:Lrv;

    .line 43
    invoke-static {v0, v1}, Lrv;->d(Lrv;Z)Z

    .line 46
    :cond_1
    iget-object v0, p0, Lrv$a;->a:Lrv;

    .line 48
    invoke-static {v0}, Lrv;->e(Lrv;)Landroid/os/Handler;

    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_2

    .line 54
    iget-object v0, p0, Lrv$a;->a:Lrv;

    .line 56
    new-instance v1, Landroid/os/HandlerThread;

    .line 58
    const-string v3, "ALLocationHandler"

    .line 60
    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {v0, v1}, Lrv;->h(Lrv;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 66
    iget-object v0, p0, Lrv$a;->a:Lrv;

    .line 68
    invoke-static {v0}, Lrv;->g(Lrv;)Landroid/os/HandlerThread;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    iget-object v0, p0, Lrv$a;->a:Lrv;

    .line 77
    new-instance v1, Landroid/os/Handler;

    .line 79
    iget-object v3, p0, Lrv$a;->a:Lrv;

    .line 81
    invoke-static {v3}, Lrv;->g(Lrv;)Landroid/os/HandlerThread;

    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 88
    move-result-object v3

    .line 89
    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 92
    invoke-static {v0, v1}, Lrv;->f(Lrv;Landroid/os/Handler;)Landroid/os/Handler;

    .line 95
    :cond_2
    invoke-static {}, Lzm;->d()Lzm;

    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lzm;->g()I

    .line 102
    move-result v0

    .line 103
    iget-object v1, p0, Lrv$a;->a:Lrv;

    .line 105
    invoke-static {v1}, Lrv;->e(Lrv;)Landroid/os/Handler;

    .line 108
    move-result-object v1

    .line 109
    new-instance v3, Lrv$a$a;

    .line 111
    invoke-direct {v3, p0, v0}, Lrv$a$a;-><init>(Lrv$a;I)V

    .line 114
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    new-instance v0, Lab;

    .line 119
    const/16 v1, 0x76

    .line 121
    invoke-direct {v0, v1}, Lab;-><init>(I)V

    .line 124
    invoke-static {}, Ll30;->g()Ll30;

    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1, v0}, Ll30;->a(Lec;)V

    .line 131
    iget-object v0, p0, Lrv$a;->a:Lrv;

    .line 133
    const/4 v1, 0x2

    .line 134
    invoke-virtual {v0, v1}, Lrv;->k0(I)V

    .line 137
    iget-object v0, p0, Lrv$a;->a:Lrv;

    .line 139
    invoke-static {v0, v2}, Lrv;->b(Lrv;Z)Z

    .line 142
    return-void
.end method
