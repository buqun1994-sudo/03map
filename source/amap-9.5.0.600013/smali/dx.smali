.class public Ldx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile f:Ldx;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ldx;->a:Landroid/content/Context;

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Ldx;->b:Z

    .line 10
    iput-object v0, p0, Ldx;->c:Ljava/lang/String;

    .line 12
    iput-boolean v1, p0, Ldx;->d:Z

    .line 14
    return-void
.end method

.method public static c()Ldx;
    .locals 2

    .line 1
    sget-object v0, Ldx;->f:Ldx;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Ldx;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Ldx;->f:Ldx;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Ldx;

    .line 14
    invoke-direct {v1}, Ldx;-><init>()V

    .line 17
    sput-object v1, Ldx;->f:Ldx;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Ldx;->f:Ldx;

    .line 26
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ldx;->c:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public b()Lzc;
    .locals 1

    .line 1
    iget-object v0, p0, Ldx;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lzc;->o(Landroid/content/Context;)Lzc;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ldx;->d:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    const-string v0, "2.0"

    .line 8
    return-object v0

    .line 9
    :cond_0
    const-string v0, "3.1.000_202109061749"

    .line 11
    return-object v0
.end method

.method public e()Lum0;
    .locals 1

    .line 1
    invoke-static {}, Lum0;->d()Lum0;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public f()Lpd0;
    .locals 1

    .line 1
    invoke-static {}, Lpd0;->s()Lpd0;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public g(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ldx;->b:Z

    .line 6
    iput-object p2, p0, Ldx;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object p2

    .line 12
    iput-object p2, p0, Ldx;->a:Landroid/content/Context;

    .line 14
    invoke-static {}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->e()V

    .line 17
    invoke-static {p3}, Ldz;->g(Z)V

    .line 20
    invoke-static {}, Lpd0;->s()Lpd0;

    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2, p1}, Lpd0;->v(Landroid/content/Context;)V

    .line 27
    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    const-string p2, "Null context is not available.."

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1
.end method

.method public h()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldx;->b:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lpd0;->s()Lpd0;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lpd0;->x()V

    .line 12
    invoke-static {}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->d()Lcom/autonavi/link/transmit/proxy/LinkProxy;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->g()V

    .line 19
    invoke-static {}, Lan0;->a()Lan0;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lan0;->b()Z

    .line 26
    invoke-static {}, Lum0;->d()Lum0;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lum0;->l()Z

    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Ldx;->a:Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Ldx;->b:Z

    .line 39
    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ldx;->d:Z

    .line 3
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "setSoPath: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const-string v2, "LinkSDK"

    .line 23
    invoke-static {v2, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iput-object p1, p0, Ldx;->e:Ljava/lang/String;

    .line 28
    return-void
.end method
