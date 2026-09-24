.class public Lcom/amap/location/fusion/a/c/a/e;
.super Lcom/amap/location/support/location/AbstractLocator;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private final c:Lcom/amap/location/support/signal/gnss/AmapLocationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/location/AbstractLocator;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/amap/location/fusion/a/c/a/e;->a:Ljava/util/Map;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/amap/location/fusion/a/c/a/e;->b:I

    .line 14
    new-instance v0, Lcom/amap/location/fusion/a/c/a/e$1;

    .line 16
    invoke-direct {v0, p0}, Lcom/amap/location/fusion/a/c/a/e$1;-><init>(Lcom/amap/location/fusion/a/c/a/e;)V

    .line 19
    iput-object v0, p0, Lcom/amap/location/fusion/a/c/a/e;->c:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 21
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/fusion/a/c/a/e;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/fusion/a/c/a/e;->a:Ljava/util/Map;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 9

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extras:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Specific_pseudolite_locator"

    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v0, ","

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v2, v0

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    const/4 v2, 0x0

    .line 6
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    .line 7
    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    .line 8
    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    .line 9
    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x4

    .line 10
    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/location/fusion/a/c/a/e;->b:I

    :goto_0
    if-ge v2, v4, :cond_2

    if-nez v3, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/a/e;->a:Ljava/util/Map;

    mul-int v7, v2, v6

    add-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic b(Lcom/amap/location/fusion/a/c/a/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/location/fusion/a/c/a/e;->b:I

    .line 3
    return p0
.end method


# virtual methods
.method public init()V
    .locals 0

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractLocator;->hasStart()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public startLocation()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/amap/location/fusion/a/c/a/e;->b:I

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractLocator;->getExtras()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/amap/location/fusion/a/c/a/e;->a(Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/amap/location/fusion/a/c/a/e;->c:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 22
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/signal/gnss/IGnssManager;->requestPassiveUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 29
    return-void
.end method

.method public stopLocation()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/amap/location/fusion/a/c/a/e;->c:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 11
    invoke-interface {v0, v1}, Lcom/amap/location/support/signal/gnss/IGnssManager;->removePassiveUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Z

    .line 14
    return-void
.end method
