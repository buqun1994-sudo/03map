.class Lcom/amap/location/e/a/a/d$1;
.super Lcom/amap/location/support/fence/FenceLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/e/a/a/d;-><init>(Lcom/amap/location/support/handler/AmapLooper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/e/a/a/d;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/a/a/d;Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/a/a/d$1;->a:Lcom/amap/location/e/a/a/d;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/amap/location/support/fence/FenceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/e/a/d;->j:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public isCityFence()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/location/e/a/d;->c:Z

    .line 3
    return v0
.end method

.method public parseFence(Ljava/io/File;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/amap/location/support/util/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 14
    return-void

    .line 15
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 17
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 29
    move-result v2

    .line 30
    if-ge v1, v2, :cond_2

    .line 32
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lorg/json/JSONObject;

    .line 38
    const-string v3, "fence"

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3}, Lcom/amap/location/e/a/a/a;->a(Ljava/lang/String;)Lcom/amap/location/e/a/a/a;

    .line 48
    move-result-object v3

    .line 49
    const-string v4, "md5id"

    .line 51
    const-string v5, ""

    .line 53
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    iput-object v2, v3, Lcom/amap/location/e/a/a/a;->e:Ljava/lang/String;

    .line 59
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/amap/location/e/a/a/d$1;->a:Lcom/amap/location/e/a/a/d;

    .line 67
    invoke-static {v0}, Lcom/amap/location/e/a/a/d;->a(Lcom/amap/location/e/a/a/d;)Lcom/amap/location/support/fence/FenceState;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, p1}, Lcom/amap/location/support/fence/FenceState;->updateFenceList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception p1

    .line 76
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 79
    :goto_1
    return-void
.end method
