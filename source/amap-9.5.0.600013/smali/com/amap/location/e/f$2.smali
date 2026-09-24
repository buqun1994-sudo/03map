.class Lcom/amap/location/e/f$2;
.super Lcom/amap/location/support/fence/FenceLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/e/f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/e/f;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/f;Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/f$2;->a:Lcom/amap/location/e/f;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/amap/location/support/fence/FenceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/f$2;->a:Lcom/amap/location/e/f;

    .line 3
    invoke-static {v0}, Lcom/amap/location/e/f;->b(Lcom/amap/location/e/f;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isCityFence()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parseFence(Ljava/io/File;)V
    .locals 8

    .line 1
    const-string v0, ","

    .line 3
    if-nez p1, :cond_0

    .line 5
    const-string p1, "file is null"

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 10
    move-result-object p1

    .line 11
    const v0, 0x1ae49

    .line 14
    invoke-static {v0, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {p1}, Lcom/amap/location/support/util/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 25
    move-result v1

    .line 26
    const-string v2, "110153"

    .line 28
    if-eqz v1, :cond_1

    .line 30
    const-string p1, "file read is null"

    .line 32
    invoke-static {v2, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void

    .line 36
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    .line 38
    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 p1, 0x0

    .line 42
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 45
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    if-ge p1, v3, :cond_3

    .line 48
    :try_start_1
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lorg/json/JSONObject;

    .line 54
    const-string v4, "gps"

    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    invoke-static {v4}, Lcom/amap/location/e/f$a;->a(Ljava/lang/String;)Lcom/amap/location/e/f$a;

    .line 64
    move-result-object v4

    .line 65
    const-string v6, "net"

    .line 67
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v5

    .line 71
    invoke-static {v5}, Lcom/amap/location/e/f$a;->a(Ljava/lang/String;)Lcom/amap/location/e/f$a;

    .line 74
    move-result-object v5

    .line 75
    const-string v6, "md5id"

    .line 77
    const-string v7, ""

    .line 79
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v3

    .line 83
    iput-object v3, v5, Lcom/amap/location/e/f$a;->a:Ljava/lang/String;

    .line 85
    if-eqz v4, :cond_2

    .line 87
    iget-object v3, p0, Lcom/amap/location/e/f$2;->a:Lcom/amap/location/e/f;

    .line 89
    invoke-static {v3}, Lcom/amap/location/e/f;->d(Lcom/amap/location/e/f;)Ljava/util/List;

    .line 92
    move-result-object v3

    .line 93
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v3, p0, Lcom/amap/location/e/f$2;->a:Lcom/amap/location/e/f;

    .line 98
    invoke-static {v3}, Lcom/amap/location/e/f;->e(Lcom/amap/location/e/f;)Ljava/util/List;

    .line 101
    move-result-object v3

    .line 102
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    goto :goto_1

    .line 106
    :catch_0
    move-exception v3

    .line 107
    :try_start_2
    invoke-static {v3}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 110
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    iget-object p1, p0, Lcom/amap/location/e/f$2;->a:Lcom/amap/location/e/f;

    .line 115
    invoke-static {p1}, Lcom/amap/location/e/f;->d(Lcom/amap/location/e/f;)Ljava/util/List;

    .line 118
    move-result-object p1

    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 122
    move-result p1

    .line 123
    if-lez p1, :cond_4

    .line 125
    iget-object p1, p0, Lcom/amap/location/e/f$2;->a:Lcom/amap/location/e/f;

    .line 127
    invoke-static {p1}, Lcom/amap/location/e/f;->d(Lcom/amap/location/e/f;)Ljava/util/List;

    .line 130
    move-result-object p1

    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 134
    move-result p1

    .line 135
    iget-object v1, p0, Lcom/amap/location/e/f$2;->a:Lcom/amap/location/e/f;

    .line 137
    invoke-static {v1}, Lcom/amap/location/e/f;->e(Lcom/amap/location/e/f;)Ljava/util/List;

    .line 140
    move-result-object v1

    .line 141
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 144
    move-result v1

    .line 145
    if-ne p1, v1, :cond_4

    .line 147
    iget-object p1, p0, Lcom/amap/location/e/f$2;->a:Lcom/amap/location/e/f;

    .line 149
    const/4 v1, 0x1

    .line 150
    invoke-static {p1, v1}, Lcom/amap/location/e/f;->b(Lcom/amap/location/e/f;Z)Z

    .line 153
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    const-string v1, "is ready: "

    .line 160
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v1, p0, Lcom/amap/location/e/f$2;->a:Lcom/amap/location/e/f;

    .line 165
    invoke-static {v1}, Lcom/amap/location/e/f;->f(Lcom/amap/location/e/f;)Z

    .line 168
    move-result v1

    .line 169
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v1, p0, Lcom/amap/location/e/f$2;->a:Lcom/amap/location/e/f;

    .line 177
    invoke-static {v1}, Lcom/amap/location/e/f;->d(Lcom/amap/location/e/f;)Ljava/util/List;

    .line 180
    move-result-object v1

    .line 181
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 184
    move-result v1

    .line 185
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object p1

    .line 202
    invoke-static {v2, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 205
    goto :goto_2

    .line 206
    :catch_1
    move-exception p1

    .line 207
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 210
    :goto_2
    return-void
.end method
