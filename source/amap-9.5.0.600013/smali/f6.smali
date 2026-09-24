.class public Lf6;
.super Lq;
.source "SourceFile"


# instance fields
.field public o:Landroid/os/Handler;

.field public p:Landroid/os/HandlerThread;

.field public q:Landroid/media/MediaCodec$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILz40;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lq;-><init>(Landroid/content/Context;IILz40;)V

    .line 4
    new-instance p1, Lf6$a;

    .line 6
    invoke-direct {p1, p0}, Lf6$a;-><init>(Lf6;)V

    .line 9
    iput-object p1, p0, Lf6;->q:Landroid/media/MediaCodec$Callback;

    .line 11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq;->c:Landroid/media/MediaCodec;

    .line 3
    iget-object v1, p0, Lf6;->q:Landroid/media/MediaCodec$Callback;

    .line 5
    iget-object v2, p0, Lf6;->o:Landroid/os/Handler;

    .line 7
    invoke-static {v0, v1, v2}, Le6;->a(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 10
    iget-object v0, p0, Lq;->c:Landroid/media/MediaCodec;

    .line 12
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 15
    return-void
.end method

.method public b()Landroid/view/Surface;
    .locals 1

    .line 1
    invoke-super {p0}, Lq;->b()Landroid/view/Surface;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-super {p0}, Lq;->c()V

    .line 4
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-super {p0}, Lq;->d()V

    .line 4
    return-void
.end method

.method public e(II)V
    .locals 3

    .line 1
    sget-boolean v0, Lxj0;->b:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v1, "prepareEncodeEenvironment width = "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, " height = "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    new-array v1, v1, [Ljava/lang/Object;

    .line 33
    const-string v2, "AsnycEncodeHandler"

    .line 35
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lf6;->p:Landroid/os/HandlerThread;

    .line 40
    if-nez v0, :cond_1

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    .line 44
    const-string v1, "AsyncVideoEncoder"

    .line 46
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object v0, p0, Lf6;->p:Landroid/os/HandlerThread;

    .line 51
    :cond_1
    iget-object v0, p0, Lf6;->p:Landroid/os/HandlerThread;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    .line 58
    iget-object v1, p0, Lf6;->p:Landroid/os/HandlerThread;

    .line 60
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    iput-object v0, p0, Lf6;->o:Landroid/os/Handler;

    .line 69
    invoke-super {p0, p1, p2}, Lq;->e(II)V

    .line 72
    return-void
.end method
