.class public Lcom/amap/location/fusion/a/c/d;
.super Lcom/amap/location/fusion/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/fusion/a/c/d$b;,
        Lcom/amap/location/fusion/a/c/d$a;,
        Lcom/amap/location/fusion/a/c/d$c;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Lcom/amap/location/support/icecream/PluginClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/location/support/icecream/PluginClassLoader<",
            "Lcom/amap/location/support/location/IPluginLocator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;

.field private final d:Lcom/amap/location/support/handler/AmapLooper;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amap/location/fusion/a/c/d$c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/amap/location/fusion/a/c/d$b;

.field private g:Lcom/amap/location/fusion/a/c/d$a;

.field private volatile h:Lcom/amap/location/support/bean/location/AmapLocation;

.field private i:J

.field private j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLcom/amap/location/support/handler/AmapLooper;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/amap/location/fusion/a/a;-><init>()V

    .line 4
    const-string v0, "https://gnss-eph.oss-cn-hangzhou.aliyuncs.com/specific-fence_v3/"

    .line 6
    iput-object v0, p0, Lcom/amap/location/fusion/a/c/d;->c:Ljava/lang/String;

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
    const-string v1, "/specific"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v5

    .line 29
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 35
    iput-object p1, p0, Lcom/amap/location/fusion/a/c/d;->c:Ljava/lang/String;

    .line 37
    :cond_0
    iput-object p3, p0, Lcom/amap/location/fusion/a/c/d;->d:Lcom/amap/location/support/handler/AmapLooper;

    .line 39
    new-instance p1, Ljava/util/HashMap;

    .line 41
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amap/location/fusion/a/c/d;->e:Ljava/util/Map;

    .line 46
    new-instance p1, Lcom/amap/location/fusion/a/c/d$b;

    .line 48
    const-string v4, "specific"

    .line 50
    move-object v2, p1

    .line 51
    move-object v3, p0

    .line 52
    move-object v6, p3

    .line 53
    move v7, p2

    .line 54
    invoke-direct/range {v2 .. v7}, Lcom/amap/location/fusion/a/c/d$b;-><init>(Lcom/amap/location/fusion/a/c/d;Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;Z)V

    .line 57
    iput-object p1, p0, Lcom/amap/location/fusion/a/c/d;->f:Lcom/amap/location/fusion/a/c/d$b;

    .line 59
    new-instance p1, Lcom/amap/location/fusion/a/c/d$a;

    .line 61
    invoke-direct {p1, p0, p3}, Lcom/amap/location/fusion/a/c/d$a;-><init>(Lcom/amap/location/fusion/a/c/d;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 64
    iput-object p1, p0, Lcom/amap/location/fusion/a/c/d;->g:Lcom/amap/location/fusion/a/c/d$a;

    .line 66
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/fusion/a/c/d;J)J
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/amap/location/fusion/a/c/d;->i:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/amap/location/fusion/a/c/d;)Lcom/amap/location/fusion/a/c/d$a;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/amap/location/fusion/a/c/d;->g:Lcom/amap/location/fusion/a/c/d$a;

    return-object p0
.end method

.method public static a(Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/fusion/a/c/d;
    .locals 12

    const-string v0, "locator"

    const-string v1, ""

    const-string v2, "SpecificFenceManager"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    .line 6
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object v6

    const-string v7, "specific"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v7, "enable"

    const/4 v8, 0x0

    .line 7
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v9, "url"

    .line 8
    invoke-virtual {v6, v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-static {v9}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 10
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHonor()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 11
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "honor"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 13
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "hw"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 14
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "other"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_2
    :goto_0
    const-string v10, "city"

    .line 15
    invoke-virtual {v6, v10, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v7, :cond_a

    .line 16
    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "_2_"

    .line 17
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 18
    invoke-static {}, Lcom/amap/location/support/location/LocatorFactory;->getInstance()Lcom/amap/location/support/location/LocatorFactory;

    move-result-object v7

    const-string v11, "2"

    invoke-virtual {v7, v11}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sput-boolean v8, Lcom/amap/location/fusion/a/c/d;->a:Z

    :cond_3
    const-string v7, "_3_"

    .line 20
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 21
    invoke-static {}, Lcom/amap/location/support/location/LocatorFactory;->getInstance()Lcom/amap/location/support/location/LocatorFactory;

    move-result-object v7

    const-string v8, "3"

    const-class v11, Lcom/amap/location/fusion/a/c/a/b;

    invoke-virtual {v7, v8, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v7, "_5_"

    .line 22
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 23
    invoke-static {}, Lcom/amap/location/support/location/LocatorFactory;->getInstance()Lcom/amap/location/support/location/LocatorFactory;

    move-result-object v7

    const-string v8, "5"

    const-class v11, Lcom/amap/location/fusion/a/c/a/d;

    invoke-virtual {v7, v8, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v7, "_6_"

    .line 24
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 25
    invoke-static {}, Lcom/amap/location/support/location/LocatorFactory;->getInstance()Lcom/amap/location/support/location/LocatorFactory;

    move-result-object v7

    const-string v8, "6"

    const-class v11, Lcom/amap/location/fusion/a/c/a/c;

    invoke-virtual {v7, v8, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v7, "_13_"

    .line 26
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 27
    invoke-static {}, Lcom/amap/location/support/location/LocatorFactory;->getInstance()Lcom/amap/location/support/location/LocatorFactory;

    move-result-object v1

    const-string v7, "13"

    const-class v8, Lcom/amap/location/fusion/a/c/a/e;

    invoke-virtual {v1, v7, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    :cond_7
    :try_start_2
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v7

    .line 29
    sget-object v1, Lcom/amap/location/fusion/a/c/d;->b:Lcom/amap/location/support/icecream/PluginClassLoader;

    if-nez v1, :cond_8

    .line 30
    new-instance v1, Lcom/amap/location/support/icecream/PluginClassLoader;

    invoke-direct {v1, v0}, Lcom/amap/location/support/icecream/PluginClassLoader;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/amap/location/fusion/a/c/d;->b:Lcom/amap/location/support/icecream/PluginClassLoader;

    .line 31
    :cond_8
    sget-object v0, Lcom/amap/location/fusion/a/c/d;->b:Lcom/amap/location/support/icecream/PluginClassLoader;

    const-string v1, "indoor"

    invoke-virtual {v0, v1}, Lcom/amap/location/support/icecream/PluginClassLoader;->getPluginLoader(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/location/support/location/IPluginLocator;

    if-eqz v0, :cond_9

    .line 32
    invoke-interface {v0}, Lcom/amap/location/support/location/IPluginLocator;->init()Z

    .line 33
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v4, v0, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 34
    :try_start_3
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :cond_9
    :goto_1
    new-instance v0, Lcom/amap/location/fusion/a/c/d;

    invoke-direct {v0, v9, v10, p0}, Lcom/amap/location/fusion/a/c/d;-><init>(Ljava/lang/String;ZLcom/amap/location/support/handler/AmapLooper;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v3, v0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v6, v3

    .line 36
    :goto_2
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 37
    :cond_a
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init, plugin cost:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",cloud:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_b

    const-string v0, "null"

    goto :goto_4

    :cond_b
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", dic:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private a(Lcom/amap/location/support/bean/location/AmapLocation;Z)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/amap/location/fusion/a/c/d;->h:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 46
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/d;->f:Lcom/amap/location/fusion/a/c/d$b;

    invoke-virtual {v0, p1}, Lcom/amap/location/support/fence/FenceLoader;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 47
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/d;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/location/fusion/a/c/d$c;

    if-eqz p2, :cond_2

    .line 48
    invoke-static {v1}, Lcom/amap/location/fusion/a/c/d$c;->a(Lcom/amap/location/fusion/a/c/d$c;)Lcom/amap/location/support/fence/FenceState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/location/support/fence/FenceState;->setEasyEnter()V

    .line 49
    :cond_2
    invoke-static {v1}, Lcom/amap/location/fusion/a/c/d$c;->a(Lcom/amap/location/fusion/a/c/d$c;)Lcom/amap/location/support/fence/FenceState;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/amap/location/support/fence/FenceState;->getState(DD)I

    move-result v2

    const/4 v3, 0x2

    const-string v4, "SpecificFenceManager"

    if-ne v2, v3, :cond_4

    .line 50
    invoke-static {v1}, Lcom/amap/location/fusion/a/c/d$c;->a(Lcom/amap/location/fusion/a/c/d$c;)Lcom/amap/location/support/fence/FenceState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/location/support/fence/FenceState;->getCurrentFence()Lcom/amap/location/support/fence/RectangleFence;

    move-result-object v3

    check-cast v3, Lcom/amap/location/fusion/a/c/c;

    if-eqz v3, :cond_3

    .line 51
    invoke-static {}, Lcom/amap/location/fusion/util/d;->a()Lcom/amap/location/fusion/util/d;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/amap/location/fusion/util/d;->a(Z)V

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/amap/location/fusion/a/c/d$c;->c(Lcom/amap/location/fusion/a/c/d$c;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " come in fence:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/amap/location/fusion/a/c/c;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/amap/location/fusion/a/c/c;->c:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {v1}, Lcom/amap/location/fusion/a/c/d$c;->b(Lcom/amap/location/fusion/a/c/d$c;)Lcom/amap/location/fusion/a/c/a;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/amap/location/fusion/a/c/a;->a(Lcom/amap/location/fusion/a/c/c;)V

    goto :goto_1

    .line 54
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/amap/location/fusion/a/c/d$c;->c(Lcom/amap/location/fusion/a/c/d$c;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " come in fence?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 55
    invoke-static {}, Lcom/amap/location/fusion/util/d;->a()Lcom/amap/location/fusion/util/d;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/amap/location/fusion/util/d;->a(Z)V

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/amap/location/fusion/a/c/d$c;->c(Lcom/amap/location/fusion/a/c/d$c;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " come out of fence"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {v1}, Lcom/amap/location/fusion/a/c/d$c;->b(Lcom/amap/location/fusion/a/c/d$c;)Lcom/amap/location/fusion/a/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/location/fusion/a/c/a;->a()V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static synthetic b(Lcom/amap/location/fusion/a/c/d;)Lcom/amap/location/support/handler/AmapLooper;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/amap/location/fusion/a/c/d;->d:Lcom/amap/location/support/handler/AmapLooper;

    return-object p0
.end method

.method public static synthetic c(Lcom/amap/location/fusion/a/c/d;)Lcom/amap/location/support/bean/location/AmapLocation;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/amap/location/fusion/a/c/d;->h:Lcom/amap/location/support/bean/location/AmapLocation;

    return-object p0
.end method

.method public static synthetic d(Lcom/amap/location/fusion/a/c/d;)Ljava/util/Map;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/amap/location/fusion/a/c/d;->e:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic d()Z
    .locals 1

    .line 3
    sget-boolean v0, Lcom/amap/location/fusion/a/c/d;->a:Z

    return v0
.end method

.method public static synthetic e(Lcom/amap/location/fusion/a/c/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/fusion/a/c/d;->c:Ljava/lang/String;

    .line 3
    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 4

    monitor-enter p0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/location/fusion/a/c/d;->isRunning()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 39
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 40
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/amap/location/fusion/a/c/d;->a(Lcom/amap/location/support/bean/location/AmapLocation;Z)V

    .line 41
    iget-wide v0, p0, Lcom/amap/location/fusion/a/c/d;->i:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/location/fusion/a/c/d;->i:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const-string p1, "SpecificFenceManager"

    const-string v0, "force load fence"

    .line 42
    invoke-static {p1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/amap/location/fusion/a/c/d;->f:Lcom/amap/location/fusion/a/c/d$b;

    invoke-virtual {p1}, Lcom/amap/location/support/fence/FenceLoader;->loadFence()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    return-void
.end method

.method public b()V
    .locals 5

    .line 3
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/location/fusion/a/c/d;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-string v0, "SpecificFenceManager"

    const-string v1, "foregroud notice load fence"

    .line 4
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/d;->f:Lcom/amap/location/fusion/a/c/d$b;

    invoke-virtual {v0}, Lcom/amap/location/support/fence/FenceLoader;->loadFence()V

    .line 6
    :cond_0
    invoke-static {}, Lcom/amap/location/fusion/a/c/b;->a()Lcom/amap/location/fusion/a/c/b;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/location/support/location/AbstractLocator;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/amap/location/support/location/AbstractLocator;->hasStart()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/amap/location/support/app/IModule;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/amap/location/support/location/AbstractLocator;->stopLocation()V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/fusion/a/c/d;->j:Z

    .line 3
    return v0
.end method

.method public release()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractLocator;->stop()V

    .line 4
    return-void
.end method

.method public declared-synchronized startLocation()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "SpecificFenceManager"

    .line 4
    const-string v1, "req spe loc"

    .line 6
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/d;->h:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 21
    move-result-wide v2

    .line 22
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/d;->h:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 24
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 27
    move-result-wide v4

    .line 28
    sub-long/2addr v2, v4

    .line 29
    const-wide/16 v4, 0x4e20

    .line 31
    cmp-long v0, v2, v4

    .line 33
    if-gez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/d;->h:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 37
    invoke-direct {p0, v0, v1}, Lcom/amap/location/fusion/a/c/d;->a(Lcom/amap/location/support/bean/location/AmapLocation;Z)V

    .line 40
    :cond_0
    iput-boolean v1, p0, Lcom/amap/location/fusion/a/c/d;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    monitor-exit p0

    .line 46
    throw v0
.end method

.method public declared-synchronized stopLocation()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "SpecificFenceManager"

    .line 4
    const-string v1, "remove spe loc"

    .line 6
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/amap/location/fusion/a/c/d;->j:Z

    .line 12
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/d;->e:Ljava/util/Map;

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/amap/location/fusion/a/c/d$c;

    .line 34
    invoke-static {v1}, Lcom/amap/location/fusion/a/c/d$c;->a(Lcom/amap/location/fusion/a/c/d$c;)Lcom/amap/location/support/fence/FenceState;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/amap/location/support/fence/FenceState;->clear()V

    .line 41
    invoke-static {v1}, Lcom/amap/location/fusion/a/c/d$c;->b(Lcom/amap/location/fusion/a/c/d$c;)Lcom/amap/location/fusion/a/c/a;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/amap/location/fusion/a/c/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    monitor-exit p0

    .line 53
    throw v0
.end method
