.class public Lcom/amap/location/protocol/b;
.super Lcom/amap/location/protocol/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/protocol/c;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/location/protocol/i;ZZ)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->a()Lcom/amap/location/support/bean/AmapFps;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/support/bean/cell/AmapCell;->getMccInt()I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/amap/location/support/util/GeoUtils;->mccOutOfCN(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/amap/location/protocol/b/a;->q:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->l()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/amap/location/protocol/b/a;->p:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->l()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/amap/location/protocol/b/a;->o:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->l()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 10
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "http://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/amap/location/protocol/b/a;->o:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->l()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string p2, "&rt=pb"

    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {}, Lcom/amap/location/support/network/HttpRequestHelper;->getCommonParams()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&csid="

    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amap/location/protocol/i;)[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "et"

    const-string v1, "111"

    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/amap/location/support/network/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->e()Z

    move-result v9

    .line 17
    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->f()Z

    move-result v10

    .line 18
    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->g()Z

    move-result v11

    .line 19
    new-instance v0, Ljp0;

    invoke-direct {v0}, Ljp0;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lvq0;->b(Ljava/lang/String;)Lvq0;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljp0;->I(Lvq0;)V

    .line 22
    new-instance v2, Lrp0$a;

    invoke-direct {v2}, Lrp0$a;-><init>()V

    const/4 v3, 0x0

    .line 23
    invoke-virtual {v2, v3}, Lrp0$a;->e(Z)Lrp0$a;

    const/4 v4, 0x1

    .line 24
    invoke-virtual {v2, v4}, Lrp0$a;->d(Z)Lrp0$a;

    .line 25
    invoke-virtual {v2, v3}, Lrp0$a;->c(Z)Lrp0$a;

    .line 26
    invoke-virtual {v2, v3}, Lrp0$a;->a(Z)Lrp0$a;

    .line 27
    invoke-virtual {v0, v2}, Ljp0;->C(Lrp0$a;)V

    .line 28
    new-instance v2, Lrp0$b;

    invoke-direct {v2}, Lrp0$b;-><init>()V

    .line 29
    invoke-virtual {v2, v1}, Lrp0$b;->b(Lvq0;)Lrp0$b;

    .line 30
    sget-object v1, Lxp0;->e:Lxp0;

    invoke-virtual {v2, v1}, Lrp0$b;->a(Lxp0;)Lrp0$b;

    .line 31
    invoke-virtual {v0, v2}, Ljp0;->D(Lrp0$b;)V

    .line 32
    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->a()Lcom/amap/location/support/bean/AmapFps;

    move-result-object v3

    .line 33
    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->b()[B

    move-result-object v4

    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->c()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->j()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/amap/location/protocol/b/a;->g:Ljava/lang/String;

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdiu()Ljava/lang/String;

    move-result-object v8

    .line 34
    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->h()I

    move-result v12

    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->m()I

    move-result v13

    move-object v2, v0

    .line 35
    invoke-static/range {v2 .. v13}, Lcom/amap/location/protocol/request/a;->a(Ljp0;Lcom/amap/location/support/bean/AmapFps;[BLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZII)V

    .line 36
    invoke-static {}, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->getInstance()Lcom/amap/location/protocol/request/ApsProtocolClientUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->encodeApsRequestProtocol(Ljp0;)Lrp0;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lrp0;->f()[B

    move-result-object p1

    return-object p1
.end method
