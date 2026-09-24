.class public Lcom/amap/location/d/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/AmapLooper;


# instance fields
.field public a:Landroid/os/Looper;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/amap/location/d/b/d;->a:Landroid/os/Looper;

    .line 6
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/d/b/d;->a:Landroid/os/Looper;

    .line 3
    return-object v0
.end method

.method public getAndroidLooperObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/d/b/d;->a:Landroid/os/Looper;

    .line 3
    return-object v0
.end method

.method public isQuit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/d/b/d;->b:Z

    .line 3
    return v0
.end method

.method public quit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/d/b/d;->a:Landroid/os/Looper;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/amap/location/d/b/d;->b:Z

    .line 8
    iget-object v0, p0, Lcom/amap/location/d/b/d;->a:Landroid/os/Looper;

    .line 10
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 13
    :cond_0
    return-void
.end method

.method public quitSafely()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/d/b/d;->a:Landroid/os/Looper;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/amap/location/d/b/d;->b:Z

    .line 8
    iget-object v0, p0, Lcom/amap/location/d/b/d;->a:Landroid/os/Looper;

    .line 10
    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 13
    :cond_0
    return-void
.end method
