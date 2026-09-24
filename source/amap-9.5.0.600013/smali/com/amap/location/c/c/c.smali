.class public Lcom/amap/location/c/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I[B)Lcom/amap/location/c/g/b/d;
    .locals 7

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    sget-object p0, Lcom/amap/location/c/g/b/d;->a:Lcom/amap/location/c/g/b/d;

    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object v0, Lcom/amap/location/c/g/b/d;->b:Lcom/amap/location/c/g/b/d;

    .line 14
    if-eqz p1, :cond_9

    .line 16
    if-nez p0, :cond_1

    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    :goto_0
    :try_start_0
    new-instance v1, Lcom/amap/location/support/network/HttpRequest;

    .line 23
    invoke-direct {v1}, Lcom/amap/location/support/network/HttpRequest;-><init>()V

    .line 26
    iget-object v2, v1, Lcom/amap/location/support/network/HttpRequest;->headers:Ljava/util/Map;

    .line 28
    const-string v3, "Content-Type"

    .line 30
    const-string v4, "application/octet-stream"

    .line 32
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v2, v1, Lcom/amap/location/support/network/HttpRequest;->headers:Ljava/util/Map;

    .line 37
    const-string v3, "aps_c_src"

    .line 39
    invoke-static {}, Lcom/amap/location/support/network/HttpRequest;->getHeaderProductType()Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 46
    move-result-object v4

    .line 47
    const/4 v5, 0x2

    .line 48
    invoke-static {v4, v5}, Lcom/amap/location/support/security/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v2, v1, Lcom/amap/location/support/network/HttpRequest;->headers:Ljava/util/Map;

    .line 57
    const-string v3, "aps_c_key"

    .line 59
    invoke-static {}, Lcom/amap/location/support/network/HttpRequest;->getHeaderProductInfo()Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 66
    move-result-object v4

    .line 67
    invoke-static {v4, v5}, Lcom/amap/location/support/security/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iput-object p1, v1, Lcom/amap/location/support/network/HttpRequest;->body:[B

    .line 76
    sget-boolean p1, Lcom/amap/location/c/b;->a:Z

    .line 78
    if-eqz p1, :cond_3

    .line 80
    if-eqz p0, :cond_2

    .line 82
    const-string p0, "http://aps.testing.amap.com/collection/collectData?src=baseCol&ver=v75&"

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const-string p0, "http://aps.testing.amap.com/collection/collectData?src=extCol&ver=v75&"

    .line 87
    :goto_1
    iput-object p0, v1, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 89
    goto :goto_5

    .line 90
    :cond_3
    sget-boolean p1, Lcom/amap/location/c/b;->b:Z

    .line 92
    if-eqz p1, :cond_4

    .line 94
    const-string p1, "https://"

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    const-string p1, "http://"

    .line 99
    :goto_2
    if-eqz p0, :cond_5

    .line 101
    const-string v2, "cgicol.amap.com/collection/collectData?src=baseCol&ver=v75&"

    .line 103
    goto :goto_3

    .line 104
    :cond_5
    const-string v2, "cgicol.amap.com/collection/collectData?src=extCol&ver=v75&"

    .line 106
    :goto_3
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 109
    move-result v3

    .line 110
    const/16 v4, 0xf

    .line 112
    if-ne v3, v4, :cond_7

    .line 114
    if-eqz p0, :cond_6

    .line 116
    const-string p0, "cgicol.aimap.com/collection/collectData?src=baseCol&ver=v75&"

    .line 118
    goto :goto_4

    .line 119
    :cond_6
    const-string p0, "cgicol.aimap.com/collection/collectData?src=extCol&ver=v75&"

    .line 121
    :goto_4
    move-object v2, p0

    .line 122
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    iput-object p0, v1, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 139
    :goto_5
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetwork()Lcom/amap/location/support/network/INetwork;

    .line 142
    move-result-object p0

    .line 143
    invoke-interface {p0, v1}, Lcom/amap/location/support/network/INetwork;->post(Lcom/amap/location/support/network/HttpRequest;)Lcom/amap/location/support/network/HttpResponse;

    .line 146
    move-result-object p0

    .line 147
    if-eqz p0, :cond_8

    .line 149
    iget p1, p0, Lcom/amap/location/support/network/HttpResponse;->statusCode:I

    .line 151
    const/16 v1, 0xc8

    .line 153
    if-ne p1, v1, :cond_8

    .line 155
    iget-object p0, p0, Lcom/amap/location/support/network/HttpResponse;->body:[B

    .line 157
    if-eqz p0, :cond_9

    .line 159
    const-string p1, "true"

    .line 161
    new-instance v1, Ljava/lang/String;

    .line 163
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 165
    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result p0

    .line 172
    if-eqz p0, :cond_9

    .line 174
    sget-object p0, Lcom/amap/location/c/g/b/d;->a:Lcom/amap/location/c/g/b/d;

    .line 176
    move-object v0, p0

    .line 177
    goto :goto_6

    .line 178
    :cond_8
    instance-of p1, p0, Lcom/amap/location/support/network/gateway/LocalHttpResponse;

    .line 180
    if-eqz p1, :cond_9

    .line 182
    new-instance p1, Lcom/amap/location/c/g/b/d;

    .line 184
    const/4 v2, -0x1

    .line 185
    move-object v1, p0

    .line 186
    check-cast v1, Lcom/amap/location/support/network/gateway/LocalHttpResponse;

    .line 188
    iget v1, v1, Lcom/amap/location/support/network/gateway/LocalHttpResponse;->reason:I

    .line 190
    int-to-long v3, v1

    .line 191
    check-cast p0, Lcom/amap/location/support/network/gateway/LocalHttpResponse;

    .line 193
    iget-wide v5, p0, Lcom/amap/location/support/network/gateway/LocalHttpResponse;->arg1:J

    .line 195
    move-object v1, p1

    .line 196
    invoke-direct/range {v1 .. v6}, Lcom/amap/location/c/g/b/d;-><init>(IJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    move-object v0, p1

    .line 200
    goto :goto_6

    .line 201
    :catch_0
    move-exception p0

    .line 202
    const-string p1, "colup"

    .line 204
    invoke-static {p1, p0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    :cond_9
    :goto_6
    return-object v0
.end method
