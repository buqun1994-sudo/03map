.class Lcom/amap/location/e/a$2;
.super Lcom/amap/location/support/fence/FenceLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/e/a;-><init>(Lcom/amap/location/support/handler/AmapLooper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/e/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/a;Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/a$2;->a:Lcom/amap/location/e/a;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/amap/location/support/fence/FenceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    const-string v0, "https://shanjing.cn-hangzhou.oss-pub.aliyun-inc.com/gnss-3fence"

    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lcom/amap/location/e/a/d;->H:Ljava/lang/String;

    .line 14
    return-object v0
.end method

.method public isCityFence()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parseFence(Ljava/io/File;)V
    .locals 5

    .line 1
    const-string v0, ""

    .line 3
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x8

    .line 9
    const-string v3, "GnssAlgo3DMADetector"

    .line 11
    if-ne v1, v2, :cond_0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v2, "mFenceLoader parseFile, file"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v3, v1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    if-nez p1, :cond_1

    .line 39
    const-string p1, "file is null"

    .line 41
    invoke-static {v3, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void

    .line 45
    :cond_1
    invoke-static {p1}, Lcom/amap/location/support/util/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 55
    const-string p1, "file read is null"

    .line 57
    invoke-static {v3, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void

    .line 61
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    .line 63
    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 66
    const/4 p1, 0x0

    .line 67
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 70
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    if-ge p1, v2, :cond_4

    .line 73
    :try_start_1
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lorg/json/JSONObject;

    .line 79
    const-string v3, "fence"

    .line 81
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    invoke-static {v3}, Lcom/amap/location/e/a$a;->a(Ljava/lang/String;)Lcom/amap/location/e/a$a;

    .line 88
    move-result-object v3

    .line 89
    if-eqz v3, :cond_3

    .line 91
    const-string v4, "md5id"

    .line 93
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    iput-object v2, v3, Lcom/amap/location/e/a$a;->a:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/amap/location/e/a$2;->a:Lcom/amap/location/e/a;

    .line 101
    invoke-static {v2}, Lcom/amap/location/e/a;->e(Lcom/amap/location/e/a;)Ljava/util/List;

    .line 104
    move-result-object v2

    .line 105
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    goto :goto_1

    .line 109
    :catch_0
    move-exception v2

    .line 110
    :try_start_2
    invoke-static {v2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 113
    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 115
    goto :goto_0

    .line 116
    :cond_4
    iget-object p1, p0, Lcom/amap/location/e/a$2;->a:Lcom/amap/location/e/a;

    .line 118
    invoke-static {p1}, Lcom/amap/location/e/a;->e(Lcom/amap/location/e/a;)Ljava/util/List;

    .line 121
    move-result-object p1

    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 125
    move-result p1

    .line 126
    if-lez p1, :cond_5

    .line 128
    iget-object p1, p0, Lcom/amap/location/e/a$2;->a:Lcom/amap/location/e/a;

    .line 130
    const/4 v0, 0x1

    .line 131
    invoke-static {p1, v0}, Lcom/amap/location/e/a;->b(Lcom/amap/location/e/a;Z)Z

    .line 134
    :cond_5
    iget-object p1, p0, Lcom/amap/location/e/a$2;->a:Lcom/amap/location/e/a;

    .line 136
    invoke-static {p1}, Lcom/amap/location/e/a;->f(Lcom/amap/location/e/a;)Lcom/amap/location/support/fence/FenceState;

    .line 139
    move-result-object p1

    .line 140
    iget-object v0, p0, Lcom/amap/location/e/a$2;->a:Lcom/amap/location/e/a;

    .line 142
    invoke-static {v0}, Lcom/amap/location/e/a;->e(Lcom/amap/location/e/a;)Ljava/util/List;

    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p1, v0}, Lcom/amap/location/support/fence/FenceState;->updateFenceList(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 149
    goto :goto_2

    .line 150
    :catch_1
    move-exception p1

    .line 151
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 154
    :goto_2
    return-void
.end method
