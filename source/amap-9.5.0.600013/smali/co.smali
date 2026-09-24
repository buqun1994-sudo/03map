.class public abstract Lco;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/List;

.field public static b:I

.field public static c:I

.field public static d:J

.field public static e:Landroid/graphics/Bitmap;

.field public static f:Landroid/graphics/Bitmap;

.field public static g:[I

.field public static h:[I

.field public static i:[I

.field public static j:[Z

.field public static k:Landroid/graphics/Bitmap;

.field public static l:Landroid/graphics/Bitmap;

.field public static m:Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;

.field public static n:Ljava/util/List;

.field public static o:Ljava/util/List;

.field public static p:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

.field public static q:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    sput-object v0, Lco;->q:Landroid/os/Handler;

    .line 12
    return-void
.end method

.method public static a()V
    .locals 0

    .line 1
    invoke-static {}, Lco;->e()V

    .line 4
    invoke-static {}, Lco;->c()V

    .line 7
    return-void
.end method

.method public static declared-synchronized b()V
    .locals 2

    .line 1
    const-class v0, Lco;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-object v1, Lco;->e:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    .line 11
    throw v1
.end method

.method public static declared-synchronized c()V
    .locals 2

    .line 1
    const-class v0, Lco;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lco;->b()V

    .line 7
    sget-object v1, Lco;->f:Landroid/graphics/Bitmap;

    .line 9
    sput-object v1, Lco;->e:Landroid/graphics/Bitmap;

    .line 11
    const/4 v1, 0x0

    .line 12
    sput-object v1, Lco;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0

    .line 18
    throw v1
.end method

.method public static declared-synchronized d()V
    .locals 4

    .line 1
    const-class v0, Lco;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lco;->k:Landroid/graphics/Bitmap;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 14
    const-string v1, "GlobalInfos"

    .line 16
    const-string v2, "destroyNaviRecyleRoadLineBitmap naviRoadRecyleLineBitmap!=null"

    .line 18
    const/4 v3, 0x0

    .line 19
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    sget-object v1, Lco;->k:Landroid/graphics/Bitmap;

    .line 26
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    sput-object v1, Lco;->k:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0

    .line 36
    throw v1
.end method

.method public static e()V
    .locals 1

    .line 1
    invoke-static {}, Lco;->d()V

    .line 4
    sget-object v0, Lco;->l:Landroid/graphics/Bitmap;

    .line 6
    sput-object v0, Lco;->k:Landroid/graphics/Bitmap;

    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lco;->l:Landroid/graphics/Bitmap;

    .line 11
    return-void
.end method
