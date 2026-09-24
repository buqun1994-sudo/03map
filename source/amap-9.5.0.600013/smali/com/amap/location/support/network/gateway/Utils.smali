.class public Lcom/amap/location/support/network/gateway/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SP_KEY_PREFIX:Ljava/lang/String; = "GATEWAY_STRATEGY_"

.field private static sSp:Lcom/amap/location/support/storage/KeyValueStorer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllKey()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/amap/location/support/network/gateway/Utils;->getKeyValueStorer()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/storage/KeyValueStorer;->getAll()Ljava/util/Map;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private static getKeyValueStorer()Lcom/amap/location/support/storage/KeyValueStorer;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/support/network/gateway/Utils;->sSp:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 3
    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getKeyValueStorerManager()Lcom/amap/location/support/storage/IKeyValueStorerManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->isMainProcess()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const-string v1, "sp_gateway_setting_main"

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v1, "sp_gateway_setting"

    .line 20
    :goto_0
    invoke-interface {v0, v1}, Lcom/amap/location/support/storage/IKeyValueStorerManager;->create(Ljava/lang/String;)Lcom/amap/location/support/storage/KeyValueStorer;

    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/amap/location/support/network/gateway/Utils;->sSp:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 26
    :cond_1
    sget-object v0, Lcom/amap/location/support/network/gateway/Utils;->sSp:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 28
    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/support/network/gateway/Utils;->getKeyValueStorer()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0, p1}, Lcom/amap/location/support/storage/KeyValueStorer;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getUrlHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 3
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 15
    const-string p0, ""

    .line 17
    return-object p0
.end method

.method public static getUrlKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 3
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 34
    const-string p0, ""

    .line 36
    return-object p0
.end method

.method public static removeString(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/support/network/gateway/Utils;->getKeyValueStorer()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lcom/amap/location/support/storage/KeyValueStorer;->remove(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public static saveString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/support/network/gateway/Utils;->getKeyValueStorer()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0, p1}, Lcom/amap/location/support/storage/KeyValueStorer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/amap/location/support/network/gateway/Utils;->getKeyValueStorer()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Lcom/amap/location/support/storage/KeyValueStorer;->save()V

    .line 15
    return-void
.end method
