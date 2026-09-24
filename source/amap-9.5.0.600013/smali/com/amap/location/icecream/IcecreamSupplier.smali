.class public Lcom/amap/location/icecream/IcecreamSupplier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/icecream/IcecreamSupplier$DownloadCallback;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/amap/location/icecream/IcecreamSupplier;


# instance fields
.field private mFileLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/amap/location/icecream/IcecreamSupplier;->mFileLock:Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public static synthetic access$100(Lcom/amap/location/icecream/IcecreamSupplier;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/icecream/IcecreamSupplier;->mFileLock:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public static getInstance()Lcom/amap/location/icecream/IcecreamSupplier;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/icecream/IcecreamSupplier;->instance:Lcom/amap/location/icecream/IcecreamSupplier;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/amap/location/icecream/IcecreamSupplier;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/amap/location/icecream/IcecreamSupplier;->instance:Lcom/amap/location/icecream/IcecreamSupplier;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/amap/location/icecream/IcecreamSupplier;

    .line 14
    invoke-direct {v1}, Lcom/amap/location/icecream/IcecreamSupplier;-><init>()V

    .line 17
    sput-object v1, Lcom/amap/location/icecream/IcecreamSupplier;->instance:Lcom/amap/location/icecream/IcecreamSupplier;

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
    sget-object v0, Lcom/amap/location/icecream/IcecreamSupplier;->instance:Lcom/amap/location/icecream/IcecreamSupplier;

    .line 26
    return-object v0
.end method


# virtual methods
.method public cancel(Lcom/amap/location/icecream/IcecreamSupplier$DownloadCallback;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/amap/location/icecream/IcecreamSupplier$DownloadCallback;->access$200(Lcom/amap/location/icecream/IcecreamSupplier$DownloadCallback;)V

    .line 6
    :cond_0
    return-void
.end method

.method public downLoad(Lcom/amap/location/support/network/HttpRequest;Ljava/lang/String;Lcom/amap/location/icecream/IcecreamSupplier$DownloadCallback;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 3
    invoke-static {p2}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    if-nez p3, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/amap/location/icecream/IcecreamSupplier$1;

    .line 14
    invoke-direct {v0, p0, p1, p3, p2}, Lcom/amap/location/icecream/IcecreamSupplier$1;-><init>(Lcom/amap/location/icecream/IcecreamSupplier;Lcom/amap/location/support/network/HttpRequest;Lcom/amap/location/icecream/IcecreamSupplier$DownloadCallback;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 20
    :cond_1
    :goto_0
    return-void
.end method
