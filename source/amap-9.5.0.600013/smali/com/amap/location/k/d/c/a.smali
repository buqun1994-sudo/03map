.class public Lcom/amap/location/k/d/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;[BI)Lcom/amap/location/k/c/c;
    .locals 7

    .line 1
    const-string v0, "upnethelper"

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/amap/location/support/util/GZipUtils;->compress([B)[B

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_7

    .line 9
    array-length v1, p1

    .line 10
    if-nez v1, :cond_0

    .line 12
    goto/16 :goto_2

    .line 14
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-interface {v1, p1, v2}, Lcom/amap/location/support/security/INativeAbility;->xxt([BI)[B

    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_6

    .line 25
    array-length v1, p1

    .line 26
    if-nez v1, :cond_1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    new-instance v1, Lcom/amap/location/support/network/HttpRequest;

    .line 31
    invoke-direct {v1}, Lcom/amap/location/support/network/HttpRequest;-><init>()V

    .line 34
    iput-object p0, v1, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 36
    invoke-virtual {v1}, Lcom/amap/location/support/network/HttpRequest;->addProductHeader()V

    .line 39
    const-string p0, "ext"

    .line 41
    const-string v2, "120"

    .line 43
    invoke-virtual {v1, p0, v2}, Lcom/amap/location/support/network/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-object p1, v1, Lcom/amap/location/support/network/HttpRequest;->body:[B

    .line 48
    iput p2, v1, Lcom/amap/location/support/network/HttpRequest;->timeout:I

    .line 50
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetwork()Lcom/amap/location/support/network/INetwork;

    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p0, v1}, Lcom/amap/location/support/network/INetwork;->post(Lcom/amap/location/support/network/HttpRequest;)Lcom/amap/location/support/network/HttpResponse;

    .line 57
    move-result-object p0

    .line 58
    if-eqz p0, :cond_5

    .line 60
    iget-object p1, p0, Lcom/amap/location/support/network/HttpResponse;->body:[B

    .line 62
    if-nez p1, :cond_2

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget p2, p0, Lcom/amap/location/support/network/HttpResponse;->statusCode:I

    .line 67
    new-instance v1, Ljava/lang/String;

    .line 69
    const-string v2, "UTF-8"

    .line 71
    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 74
    const/16 p1, 0xc8

    .line 76
    if-ne p2, p1, :cond_3

    .line 78
    const-string p1, "true"

    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_3

    .line 86
    sget-object p0, Lcom/amap/location/k/c/c;->a:Lcom/amap/location/k/c/c;

    .line 88
    return-object p0

    .line 89
    :cond_3
    instance-of p1, p0, Lcom/amap/location/support/network/gateway/LocalHttpResponse;

    .line 91
    if-eqz p1, :cond_4

    .line 93
    new-instance p1, Lcom/amap/location/k/c/c;

    .line 95
    const/4 v2, -0x1

    .line 96
    move-object p2, p0

    .line 97
    check-cast p2, Lcom/amap/location/support/network/gateway/LocalHttpResponse;

    .line 99
    iget p2, p2, Lcom/amap/location/support/network/gateway/LocalHttpResponse;->reason:I

    .line 101
    int-to-long v3, p2

    .line 102
    check-cast p0, Lcom/amap/location/support/network/gateway/LocalHttpResponse;

    .line 104
    iget-wide v5, p0, Lcom/amap/location/support/network/gateway/LocalHttpResponse;->arg1:J

    .line 106
    move-object v1, p1

    .line 107
    invoke-direct/range {v1 .. v6}, Lcom/amap/location/k/c/c;-><init>(IJJ)V

    .line 110
    return-object p1

    .line 111
    :cond_4
    sget-object p0, Lcom/amap/location/k/c/c;->b:Lcom/amap/location/k/c/c;

    .line 113
    return-object p0

    .line 114
    :cond_5
    :goto_0
    const-string p0, "httpPost-\u7f51\u7edc\u8fd4\u56de\u7ed3\u679c\u4e3a null"

    .line 116
    invoke-static {v0, p0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object p0, Lcom/amap/location/k/c/c;->b:Lcom/amap/location/k/c/c;

    .line 121
    return-object p0

    .line 122
    :cond_6
    :goto_1
    const-string p0, "xxt is null"

    .line 124
    invoke-static {v0, p0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object p0, Lcom/amap/location/k/c/c;->b:Lcom/amap/location/k/c/c;

    .line 129
    return-object p0

    .line 130
    :cond_7
    :goto_2
    const-string p0, "gzip is null"

    .line 132
    invoke-static {v0, p0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object p0, Lcom/amap/location/k/c/c;->b:Lcom/amap/location/k/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    return-object p0

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    invoke-static {v0, p0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    sget-object p0, Lcom/amap/location/k/c/c;->b:Lcom/amap/location/k/c/c;

    .line 144
    return-object p0
.end method
