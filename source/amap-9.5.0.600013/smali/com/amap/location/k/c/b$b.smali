.class Lcom/amap/location/k/c/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/k/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/location/k/c/b$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/location/k/c/b;",
            ">;"
        }
    .end annotation
.end field

.field volatile c:Z

.field d:Ljava/lang/Object;

.field final e:I


# direct methods
.method public constructor <init>(Lcom/amap/location/k/c/b;Lcom/amap/location/k/c/b$a;Ljava/lang/Object;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/amap/location/k/c/b$b;->b:Ljava/lang/ref/WeakReference;

    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object p1, p0, Lcom/amap/location/k/c/b$b;->a:Ljava/lang/ref/WeakReference;

    .line 18
    iput-object p3, p0, Lcom/amap/location/k/c/b$b;->d:Ljava/lang/Object;

    .line 20
    iput p4, p0, Lcom/amap/location/k/c/b$b;->e:I

    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/amap/location/k/c/b$b;->c:Z

    .line 4
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/k/c/b$b;->c:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/amap/location/k/c/b$b;->b:Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/amap/location/k/c/b;

    .line 14
    iget-object v1, p0, Lcom/amap/location/k/c/b$b;->a:Ljava/lang/ref/WeakReference;

    .line 16
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/amap/location/k/c/b$a;

    .line 22
    if-eqz v0, :cond_4

    .line 24
    if-nez v1, :cond_1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getNetworkCoarseType()I

    .line 38
    move-result v2

    .line 39
    iget v3, p0, Lcom/amap/location/k/c/b$b;->e:I

    .line 41
    if-ge v2, v3, :cond_2

    .line 43
    sget-object v1, Lcom/amap/location/k/c/c;->b:Lcom/amap/location/k/c/c;

    .line 45
    invoke-static {v0, p0, v1}, Lcom/amap/location/k/c/b;->a(Lcom/amap/location/k/c/b;Lcom/amap/location/k/c/b$b;Lcom/amap/location/k/c/c;)V

    .line 48
    return-void

    .line 49
    :cond_2
    sget-object v2, Lcom/amap/location/k/c/c;->b:Lcom/amap/location/k/c/c;

    .line 51
    :try_start_0
    iget-object v3, p0, Lcom/amap/location/k/c/b$b;->d:Ljava/lang/Object;

    .line 53
    invoke-interface {v1, v3}, Lcom/amap/location/k/c/b$a;->a(Ljava/lang/Object;)Lcom/amap/location/k/c/c;

    .line 56
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    const-string v3, "UploadController"

    .line 61
    invoke-static {v3, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    :goto_0
    iget-boolean v1, p0, Lcom/amap/location/k/c/b$b;->c:Z

    .line 66
    if-eqz v1, :cond_3

    .line 68
    return-void

    .line 69
    :cond_3
    invoke-static {v0, p0, v2}, Lcom/amap/location/k/c/b;->a(Lcom/amap/location/k/c/b;Lcom/amap/location/k/c/b$b;Lcom/amap/location/k/c/c;)V

    .line 72
    :cond_4
    :goto_1
    return-void
.end method
