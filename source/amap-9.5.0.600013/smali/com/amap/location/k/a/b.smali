.class public Lcom/amap/location/k/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/json/JSONObject;)Lcom/amap/location/k/a/a;
    .locals 3

    .line 1
    const-string v0, "commandType"

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    new-instance v0, Lcom/amap/location/k/a/c;

    .line 14
    invoke-direct {v0, p0}, Lcom/amap/location/k/a/c;-><init>(Lorg/json/JSONObject;)V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v2

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/amap/location/k/a/a;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_1

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 29
    :goto_1
    invoke-virtual {v0}, Lcom/amap/location/k/a/a;->b()Z

    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 35
    return-object v0

    .line 36
    :cond_1
    return-object v2
.end method
