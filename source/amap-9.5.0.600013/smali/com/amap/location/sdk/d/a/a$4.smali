.class Lcom/amap/location/sdk/d/a/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/sdk/d/a/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/d/a/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/d/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/d/a/a$4;->a:Lcom/amap/location/sdk/d/a/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lxo0;->a(Landroid/location/LocationManager;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 24
    move-result-object v0

    .line 25
    const v1, 0x18ef5

    .line 28
    invoke-static {v1, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V

    .line 31
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 33
    const-string v1, "/proc/cpuinfo"

    .line 35
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {v0}, Lcom/amap/location/support/util/FileUtils;->readLines(Ljava/io/File;)Ljava/util/List;

    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_1

    .line 44
    return-void

    .line 45
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 48
    move-result v1

    .line 49
    add-int/lit8 v1, v1, -0x1

    .line 51
    :goto_0
    if-ltz v1, :cond_3

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ljava/lang/String;

    .line 59
    const-string v3, "Hardware"

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 70
    move-result-object v0

    .line 71
    const v1, 0x18ef6

    .line 74
    invoke-static {v1, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 85
    :cond_3
    :goto_1
    return-void
.end method
