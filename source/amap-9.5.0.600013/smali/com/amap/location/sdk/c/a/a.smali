.class public Lcom/amap/location/sdk/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/k/b/a;


# instance fields
.field private volatile a:Lorg/json/JSONObject;

.field private volatile b:Lorg/json/JSONObject;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/amap/location/sdk/c/a/a;->c:Ljava/lang/Object;

    .line 11
    if-nez p1, :cond_0

    .line 13
    new-instance p1, Lorg/json/JSONObject;

    .line 15
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/amap/location/sdk/c/a/a;->a:Lorg/json/JSONObject;

    .line 20
    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 9

    .line 11
    iget-object v0, p0, Lcom/amap/location/sdk/c/a/a;->a:Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sizeOfPerRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const-string p1, "Wifi"

    goto :goto_0

    :cond_0
    const-string p1, "Mobile"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/32 v1, 0x61a80

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    const-wide/32 v7, 0x989680

    invoke-static/range {v3 .. v8}, Lcom/amap/location/support/util/DataTypeUtils;->boundaryProtect(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/c/a/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/sdk/c/a/a;->b:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/amap/location/sdk/c/a/a;->b:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v3, p0, Lcom/amap/location/sdk/c/a/a;->a:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/amap/location/sdk/c/a/a;->b:Lorg/json/JSONObject;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 8
    :try_start_2
    invoke-static {v2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/amap/location/sdk/c/a/a;->b:Lorg/json/JSONObject;

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public b()J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/c/a/a;->a:Lorg/json/JSONObject;

    const-string v1, "timeGapOfAutoMerge"

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fffffffffffffffL

    invoke-static/range {v4 .. v9}, Lcom/amap/location/support/util/DataTypeUtils;->boundaryProtect(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(I)J
    .locals 9

    const/4 v0, 0x2

    const-wide/32 v1, 0x1e8480

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/amap/location/sdk/c/a/a;->a:Lorg/json/JSONObject;

    const-string v0, "maxUploadSizePerDayWifi"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-wide/32 v7, 0x2faf080

    invoke-static/range {v3 .. v8}, Lcom/amap/location/support/util/DataTypeUtils;->boundaryProtect(JJJ)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/amap/location/sdk/c/a/a;->a:Lorg/json/JSONObject;

    const-string v0, "maxUploadSizePerDayMobile"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-wide/32 v7, 0x2faf080

    invoke-static/range {v3 .. v8}, Lcom/amap/location/support/util/DataTypeUtils;->boundaryProtect(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/c/a/a;->a:Lorg/json/JSONObject;

    const-string v1, "bufferSize"

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide/32 v8, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/amap/location/support/util/DataTypeUtils;->boundaryProtect(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(I)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/amap/location/sdk/c/a/a;->a:Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUpload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const-string p1, "Wifi"

    goto :goto_0

    :cond_0
    const-string p1, "Mobile"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public d()J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/c/a/a;->a:Lorg/json/JSONObject;

    .line 3
    const-string v1, "timeGapOfAutoUpload"

    .line 5
    const-wide/32 v2, 0xdbba0

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 11
    move-result-wide v4

    .line 12
    const-wide/32 v6, 0xea60

    .line 15
    const-wide/32 v8, 0x5265c00

    .line 18
    invoke-static/range {v4 .. v9}, Lcom/amap/location/support/util/DataTypeUtils;->boundaryProtect(JJJ)J

    .line 21
    move-result-wide v0

    .line 22
    return-wide v0
.end method

.method public e()J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/c/a/a;->a:Lorg/json/JSONObject;

    .line 3
    const-string v1, "storePeriod"

    .line 5
    const-wide/32 v2, 0xea60

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 11
    move-result-wide v4

    .line 12
    const-wide/16 v6, 0x3e8

    .line 14
    const-wide/32 v8, 0x36ee80

    .line 17
    invoke-static/range {v4 .. v9}, Lcom/amap/location/support/util/DataTypeUtils;->boundaryProtect(JJJ)J

    .line 20
    move-result-wide v0

    .line 21
    return-wide v0
.end method

.method public f()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/c/a/a;->a:Lorg/json/JSONObject;

    .line 3
    const-string v1, "uploadTimeout"

    .line 5
    const v2, 0x1d4c0

    .line 8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x3e8

    .line 14
    const v2, 0x927c0

    .line 17
    invoke-static {v0, v1, v2}, Lcom/amap/location/support/util/DataTypeUtils;->boundaryProtect(III)I

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public g()J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/c/a/a;->a:Lorg/json/JSONObject;

    .line 3
    const-string v1, "maxSizeInDB"

    .line 5
    const-wide/32 v2, 0x7a120

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 11
    move-result-wide v4

    .line 12
    const-wide/16 v6, 0x0

    .line 14
    const-wide/32 v8, 0x2faf080

    .line 17
    invoke-static/range {v4 .. v9}, Lcom/amap/location/support/util/DataTypeUtils;->boundaryProtect(JJJ)J

    .line 20
    move-result-wide v0

    .line 21
    return-wide v0
.end method

.method public h()J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/c/a/a;->a:Lorg/json/JSONObject;

    .line 3
    const-string v1, "validityTimeInDB"

    .line 5
    const-wide/32 v2, 0x337f9800

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 11
    move-result-wide v4

    .line 12
    const-wide/16 v6, 0x0

    .line 14
    const-wide v8, 0x7fffffffffffffffL

    .line 19
    invoke-static/range {v4 .. v9}, Lcom/amap/location/support/util/DataTypeUtils;->boundaryProtect(JJJ)J

    .line 22
    move-result-wide v0

    .line 23
    return-wide v0
.end method

.method public i()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/sdk/c/a/c;->e()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public j()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/location/sdk/c/a/c;->f()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public k()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/sdk/c/a/c;->g()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method
