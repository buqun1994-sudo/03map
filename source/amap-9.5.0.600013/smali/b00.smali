.class public Lb00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Ljava/lang/Runnable;


# instance fields
.field public a:I

.field public b:Lmx;

.field public c:Landroid/os/Handler;

.field public d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SurfaceViewManagerMCb2"

    .line 3
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public b()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lb00;->c:Landroid/os/Handler;

    .line 3
    return-object v0
.end method

.method public c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb00;->d:Ljava/lang/Runnable;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v1, "post DrawingFinished in "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lb00;->a(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lb00;->b()Landroid/os/Handler;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    invoke-virtual {p0}, Lb00;->b()Landroid/os/Handler;

    .line 35
    move-result-object v0

    .line 36
    int-to-long v1, p1

    .line 37
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb00;->e()V

    .line 4
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    const-string v0, "resetDrawingFinishedCb"

    .line 3
    invoke-virtual {p0, v0}, Lb00;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lb00;->b()Landroid/os/Handler;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lb00;->d:Ljava/lang/Runnable;

    .line 16
    return-void
.end method

.method public f(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "set drawingFinished "

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v0, ", "

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget v0, p0, Lb00;->a:I

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lb00;->a(Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lb00;->d:Ljava/lang/Runnable;

    .line 37
    invoke-virtual {p0}, Lb00;->b()Landroid/os/Handler;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    invoke-virtual {p0}, Lb00;->b()Landroid/os/Handler;

    .line 47
    move-result-object p1

    .line 48
    iget v0, p0, Lb00;->a:I

    .line 50
    int-to-long v0, v0

    .line 51
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    return-void
.end method

.method public g(Landroid/os/Handler;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "setHandler "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lb00;->a(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lb00;->c:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method public h(Lmx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb00;->b:Lmx;

    .line 3
    sget-object p1, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->mapCb2MaxWait:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->d()I

    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lb00;->a:I

    .line 11
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb00;->d:Ljava/lang/Runnable;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v2, "call drawingFinished "

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lb00;->a(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lb00;->d:Ljava/lang/Runnable;

    .line 31
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lb00;->d:Ljava/lang/Runnable;

    .line 37
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string p2, "surfaceChanged wh="

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string p2, ","

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lb00;->a(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lb00;->d:Ljava/lang/Runnable;

    .line 3
    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lb00;->run()V

    .line 8
    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "surfaceRedrawNeeded view="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lb00;->b:Lmx;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lb00;->a(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lb00;->b:Lmx;

    .line 30
    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0, p1}, Lmx;->y(Landroid/view/SurfaceHolder;)V

    .line 35
    :cond_1
    return-void
.end method

.method public surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb00;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 4
    iget-object p1, p0, Lb00;->d:Ljava/lang/Runnable;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    if-eq p1, p2, :cond_0

    .line 10
    const-string p1, "new drawingFinished coming, run pre one"

    .line 12
    invoke-virtual {p0, p1}, Lb00;->a(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lb00;->run()V

    .line 18
    :cond_0
    invoke-virtual {p0, p2}, Lb00;->f(Ljava/lang/Runnable;)V

    .line 21
    return-void
.end method
