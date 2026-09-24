.class public Lcom/amap/location/c/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/location/support/fence/FenceLoader;


# direct methods
.method public constructor <init>(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    :try_start_0
    new-instance v6, Lcom/amap/location/c/f/c$1;

    .line 6
    const-string v2, "hot_area_v1"

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-static {}, Lcom/amap/location/support/util/FileUtils;->getInnerStoragePath()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "/hot_area"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-static {}, Lcom/amap/location/c/b$a;->h()I

    .line 32
    move-result v4

    .line 33
    move-object v0, v6

    .line 34
    move-object v1, p0

    .line 35
    move-object v5, p1

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/amap/location/c/f/c$1;-><init>(Lcom/amap/location/c/f/c;Ljava/lang/String;Ljava/lang/String;ILcom/amap/location/support/handler/AmapLooper;)V

    .line 39
    iput-object v6, p0, Lcom/amap/location/c/f/c;->a:Lcom/amap/location/support/fence/FenceLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    const-string v0, "HotAreaManager"

    .line 45
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/location/support/bean/location/AmapLocation;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 6
    if-eqz p1, :cond_1

    .line 8
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/amap/location/c/f/c;->a:Lcom/amap/location/support/fence/FenceLoader;

    .line 17
    invoke-virtual {v2, p1}, Lcom/amap/location/support/fence/FenceLoader;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 20
    invoke-static {}, Lcom/amap/location/c/f/a;->a()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 26
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 33
    move-result-wide v4

    .line 34
    invoke-static {v1, v2, v3, v4, v5}, Lcom/amap/location/c/f/a;->a(Ljava/lang/String;DD)Z

    .line 37
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    move v0, p1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    return v0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    const-string v1, "HotAreaManager"

    .line 44
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    :cond_2
    :goto_1
    return v0
.end method
