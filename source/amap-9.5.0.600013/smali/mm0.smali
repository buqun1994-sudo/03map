.class public final Lmm0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lec0;

.field public b:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x2bc

    .line 6
    invoke-static {v0}, Lib;->u(I)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-static {}, Lhm0;->l()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    .line 21
    const-string v1, "ScreenShotHandlerThread"

    .line 23
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object v0, p0, Lmm0;->b:Landroid/os/HandlerThread;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    new-instance v0, Lec0;

    .line 33
    iget-object v1, p0, Lmm0;->b:Landroid/os/HandlerThread;

    .line 35
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Lec0;-><init>(Landroid/os/Looper;)V

    .line 42
    iput-object v0, p0, Lmm0;->a:Lec0;

    .line 44
    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v0, "\u622a\u56fe\uff1aMapListener onScreenShotFinished Bitmap bitmap="

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x0

    .line 23
    new-array v1, v0, [Ljava/lang/Object;

    .line 25
    const-string v2, "WidgetScreenShotListener"

    .line 27
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lmm0;->a:Lec0;

    .line 32
    if-nez p1, :cond_0

    .line 34
    const-string p1, "Widget \u7ebf\u7a0b\u4f18\u5316\uff0c\u5f53\u524d\u672a\u6dfb\u52a0widget\u4e0d\u652f\u6301"

    .line 36
    new-array p2, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-static {p1, p2, v1, v0}, Lec0;->f(Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lwc;->a(Landroid/graphics/Bitmap;)V

    .line 51
    iget-object p1, p0, Lmm0;->a:Lec0;

    .line 53
    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 62
    :cond_1
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    invoke-static {}, Lhm0;->l()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object v3

    .line 13
    aput-object v3, v1, v2

    .line 15
    const-string v2, "WidgetScreenShotListener"

    .line 17
    const-string v3, "onWidgetDisable isWidgetAdded:{?}"

    .line 19
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    const/16 v1, 0x2bc

    .line 24
    invoke-static {v1}, Lib;->u(I)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 30
    if-eqz v0, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lmm0;->d()V

    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lmm0;->a:Lec0;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const-string v1, "WidgetScreenShotListener"

    .line 11
    const-string v2, "onWidgetEnable mServiceHandler:{?}"

    .line 13
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lmm0;->a:Lec0;

    .line 18
    if-nez v0, :cond_0

    .line 20
    new-instance v0, Landroid/os/HandlerThread;

    .line 22
    const-string v1, "ScreenShotHandlerThread"

    .line 24
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object v0, p0, Lmm0;->b:Landroid/os/HandlerThread;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    new-instance v0, Lec0;

    .line 34
    iget-object v1, p0, Lmm0;->b:Landroid/os/HandlerThread;

    .line 36
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v0, v1}, Lec0;-><init>(Landroid/os/Looper;)V

    .line 43
    iput-object v0, p0, Lmm0;->a:Lec0;

    .line 45
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmm0;->b:Landroid/os/HandlerThread;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 8
    :cond_0
    const/16 v0, 0x2bc

    .line 10
    invoke-static {v0}, Lib;->u(I)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lmm0;->a:Lec0;

    .line 19
    iput-object v0, p0, Lmm0;->b:Landroid/os/HandlerThread;

    .line 21
    :cond_1
    return-void
.end method
