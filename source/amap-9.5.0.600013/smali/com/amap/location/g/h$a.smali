.class Lcom/amap/location/g/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnHandleMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/g/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/g/h;

.field private b:Lcom/amap/location/g/h$b;

.field private c:Lcom/amap/location/g/h$c;


# direct methods
.method private constructor <init>(Lcom/amap/location/g/h;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/amap/location/g/h$b;

    invoke-direct {v0, p1}, Lcom/amap/location/g/h$b;-><init>(Lcom/amap/location/g/h;)V

    iput-object v0, p0, Lcom/amap/location/g/h$a;->b:Lcom/amap/location/g/h$b;

    .line 3
    new-instance v0, Lcom/amap/location/g/h$c;

    invoke-direct {v0, p1}, Lcom/amap/location/g/h$c;-><init>(Lcom/amap/location/g/h;)V

    iput-object v0, p0, Lcom/amap/location/g/h$a;->c:Lcom/amap/location/g/h$c;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amap/location/g/h;Lcom/amap/location/g/h$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/amap/location/g/h$a;-><init>(Lcom/amap/location/g/h;)V

    return-void
.end method

.method private a(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 6

    .line 6
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const-string v0, "nl_request_offline_count"

    .line 7
    invoke-static {v0}, Lcom/amap/location/support/util/CloudSdkUtils;->addCount(Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->p(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocation;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 10
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->p(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    return-object p1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->p(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    move-result-wide v2

    .line 12
    sget v0, Lcom/amap/location/g/a;->m:F

    float-to-double v4, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_3

    .line 13
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/amap/location/g/e;->a(Z)V

    const/4 p1, 0x0

    .line 14
    :cond_3
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v0

    if-ne v0, v1, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "nl_offline_count"

    .line 15
    invoke-static {v0}, Lcom/amap/location/support/util/CloudSdkUtils;->addCount(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-object p1
.end method

.method private a(Lcom/amap/location/support/bean/AmapFps;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p1, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p1, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 3
    iget-object v4, p1, Lcom/amap/location/support/bean/AmapFps;->mainWifi:Lcom/amap/location/support/bean/wifi/AmapWifi;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_1
    iget-object p1, p1, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method private a(Lcom/amap/location/protocol/i;Lcom/amap/location/support/bean/AmapFps;)V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->n(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/g/d;->a()V

    const-string p1, "nlmgr"

    const-string p2, "locing-online had reported"

    .line 81
    invoke-static {p1, p2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v0}, Lcom/amap/location/g/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-direct {p0, p2}, Lcom/amap/location/g/h$a;->c(Lcom/amap/location/support/bean/AmapFps;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    move-result v3

    if-nez v3, :cond_4

    .line 86
    :cond_2
    iget-object v3, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v3}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v3}, Lcom/amap/location/g/e;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v3}, Lcom/amap/location/g/h;->h(Lcom/amap/location/g/h;)Lcom/amap/location/i/e;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 87
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->h(Lcom/amap/location/g/h;)Lcom/amap/location/i/e;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v3}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/location/g/b;->n:Lcom/amap/location/g/b$a;

    iget-boolean v3, v3, Lcom/amap/location/g/b$a;->b:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v3}, Lcom/amap/location/g/h;->f(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    invoke-virtual {v0, p2, v2, v3}, Lcom/amap/location/i/e;->a(Lcom/amap/location/support/bean/AmapFps;ZLcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v0

    .line 88
    invoke-direct {p0, v0}, Lcom/amap/location/g/h$a;->a(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v0

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v0, :cond_6

    .line 89
    invoke-virtual {v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 90
    invoke-virtual {v0, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLast(Z)V

    if-eqz v3, :cond_5

    .line 91
    iget-object v1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    new-instance v2, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-direct {v2, v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;-><init>(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V

    invoke-static {v1, v2}, Lcom/amap/location/g/h;->b(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 92
    iget-object v1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v1}, Lcom/amap/location/g/h;->f(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v1

    const-string v2, "mem"

    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCacheType(Ljava/lang/String;)V

    goto :goto_3

    .line 93
    :cond_5
    iget-object v1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v1, v0}, Lcom/amap/location/g/h;->b(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 94
    :goto_3
    iget-object v1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v1, p2}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/AmapFps;)Lcom/amap/location/support/bean/AmapFps;

    goto :goto_4

    .line 95
    :cond_6
    iget-object v2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2, v1}, Lcom/amap/location/g/h;->b(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 96
    iget-object v2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2, v1}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/AmapFps;)Lcom/amap/location/support/bean/AmapFps;

    .line 97
    :goto_4
    iget-object v1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v1, p1, v0, p2}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/protocol/i;Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V

    const-string p1, "OnlineRequestFail"

    .line 98
    invoke-virtual {p0, p1}, Lcom/amap/location/g/h$a;->a(Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/g/d;->a()V

    return-void
.end method

.method private a(Lcom/amap/location/support/bean/AmapFps;ZZ)V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_7

    .line 16
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v3

    .line 17
    iget-object v5, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v5}, Lcom/amap/location/g/h;->j(Lcom/amap/location/g/h;)J

    move-result-wide v5

    sub-long v5, v3, v5

    sget-wide v7, Lcom/amap/location/g/a;->h:J

    const/4 v9, 0x0

    cmp-long v10, v5, v7

    if-gez v10, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-string v6, ""

    if-eqz v5, :cond_1

    .line 18
    iget-object v7, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const v8, 0x186fb

    invoke-static {v7, v8}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    if-eqz p1, :cond_1

    .line 19
    iget-object v7, p1, Lcom/amap/location/support/bean/AmapFps;->locResultInfo:Lcom/amap/location/support/nl/NetworkLocationResultInfo;

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v6}, Lcom/amap/location/support/nl/NetworkLocationResultInfo;->onFail(ILjava/lang/String;)V

    .line 20
    :cond_1
    iget-object v7, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v7}, Lcom/amap/location/g/h;->q(Lcom/amap/location/g/h;)J

    move-result-wide v7

    cmp-long v10, v3, v7

    if-ltz v10, :cond_2

    iget-object v7, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v7}, Lcom/amap/location/g/h;->r(Lcom/amap/location/g/h;)J

    move-result-wide v7

    cmp-long v10, v3, v7

    if-gez v10, :cond_3

    :cond_2
    const/4 v9, 0x1

    .line 21
    :cond_3
    iget-object v7, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v7}, Lcom/amap/location/g/h;->q(Lcom/amap/location/g/h;)J

    move-result-wide v7

    cmp-long v10, v3, v7

    if-gez v10, :cond_4

    if-eqz p1, :cond_4

    .line 22
    iget-object v7, p1, Lcom/amap/location/support/bean/AmapFps;->locResultInfo:Lcom/amap/location/support/nl/NetworkLocationResultInfo;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v6}, Lcom/amap/location/support/nl/NetworkLocationResultInfo;->onFail(ILjava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_4
    iget-object v7, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v7}, Lcom/amap/location/g/h;->r(Lcom/amap/location/g/h;)J

    move-result-wide v7

    cmp-long v10, v3, v7

    if-gez v10, :cond_5

    if-eqz p1, :cond_5

    .line 24
    iget-object v7, p1, Lcom/amap/location/support/bean/AmapFps;->locResultInfo:Lcom/amap/location/support/nl/NetworkLocationResultInfo;

    invoke-virtual {v7, v0, v6}, Lcom/amap/location/support/nl/NetworkLocationResultInfo;->onFail(ILjava/lang/String;)V

    :cond_5
    :goto_1
    if-nez v5, :cond_6

    if-eqz v9, :cond_7

    .line 25
    :cond_6
    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const p3, 0x186fa

    invoke-static {p2, p3}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "locing-final failed as online cut:, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 27
    invoke-static {v0}, Lcom/amap/location/g/h;->j(Lcom/amap/location/g/h;)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/amap/location/g/a;->h:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 28
    invoke-static {v0}, Lcom/amap/location/g/h;->r(Lcom/amap/location/g/h;)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p3}, Lcom/amap/location/g/h;->q(Lcom/amap/location/g/h;)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "nlmgr"

    .line 29
    invoke-static {p3, p2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p2, v1}, Lcom/amap/location/g/h;->b(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 31
    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p2, v1}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/AmapFps;)Lcom/amap/location/support/bean/AmapFps;

    .line 32
    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object p3

    invoke-interface {p3}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;J)J

    .line 33
    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p2, v1, v1, p1}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/protocol/i;Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V

    .line 34
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/g/d;->a()V

    return-void

    .line 35
    :cond_7
    iget-object v3, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {}, Lcom/amap/location/g/c/d;->b()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Z)Z

    .line 36
    iget-object v3, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-virtual {p0}, Lcom/amap/location/g/h$a;->a()I

    move-result v4

    invoke-static {v3, v4}, Lcom/amap/location/g/h;->b(Lcom/amap/location/g/h;I)I

    .line 37
    iget-object v3, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v3}, Lcom/amap/location/g/h;->d(Lcom/amap/location/g/h;)I

    move-result v3

    if-ne v3, v0, :cond_8

    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 38
    invoke-static {v0}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v0}, Lcom/amap/location/g/e;->n()J

    move-result-wide v3

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v0}, Lcom/amap/location/g/e;->m()J

    move-result-wide v3

    .line 39
    :goto_2
    invoke-static {}, Lcom/amap/location/g/c/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/location/protocol/b/a;->f:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v5

    invoke-interface {v5}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/amap/location/g/h;->d(Lcom/amap/location/g/h;J)J

    .line 41
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/location/g/b;->m:Lcom/amap/location/g/b$b;

    const/16 v5, 0x8

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/location/g/b;->m:Lcom/amap/location/g/b$b;

    iget-object v0, v0, Lcom/amap/location/g/b$b;->a:Lcom/amap/location/protocol/e;

    if-eqz v0, :cond_c

    .line 42
    invoke-static {p2}, Lcom/amap/location/g/c/b;->a(Z)[B

    move-result-object p2

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v1}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/location/g/d;->c()I

    move-result v1

    and-int/2addr v1, v2

    if-ne v2, v1, :cond_9

    .line 45
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->s(Lcom/amap/location/g/h;)Lcom/amap/location/g/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/location/g/a/a;->a(Lcom/amap/location/support/bean/AmapFps;)Ljava/util/List;

    move-result-object v0

    .line 46
    :cond_9
    iget-object v1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    new-instance v6, Lcom/amap/location/protocol/i;

    invoke-static {v1}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v7

    iget-object v7, v7, Lcom/amap/location/g/b;->m:Lcom/amap/location/g/b$b;

    iget-object v7, v7, Lcom/amap/location/g/b$b;->a:Lcom/amap/location/protocol/e;

    invoke-direct {v6, p1, p2, v0, v7}, Lcom/amap/location/protocol/i;-><init>(Lcom/amap/location/support/bean/AmapFps;[BLjava/util/List;Lcom/amap/location/protocol/e;)V

    invoke-static {v1, v6}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/protocol/i;)Lcom/amap/location/protocol/i;

    .line 47
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p2}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object p2

    iget-object p2, p2, Lcom/amap/location/g/b;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amap/location/protocol/i;->a(Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    invoke-static {}, Lcom/amap/location/g/c/b;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amap/location/protocol/i;->a(I)V

    .line 49
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p2}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object p2

    iget-object p2, p2, Lcom/amap/location/g/b;->n:Lcom/amap/location/g/b$a;

    iget-boolean p2, p2, Lcom/amap/location/g/b$a;->a:Z

    invoke-virtual {p1, p2}, Lcom/amap/location/protocol/i;->a(Z)V

    .line 50
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p2}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object p2

    iget-object p2, p2, Lcom/amap/location/g/b;->n:Lcom/amap/location/g/b$a;

    iget-boolean p2, p2, Lcom/amap/location/g/b$a;->b:Z

    invoke-virtual {p1, p2}, Lcom/amap/location/protocol/i;->b(Z)V

    .line 51
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p2}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object p2

    iget-object p2, p2, Lcom/amap/location/g/b;->n:Lcom/amap/location/g/b$a;

    iget-boolean p2, p2, Lcom/amap/location/g/b$a;->c:Z

    invoke-virtual {p1, p2}, Lcom/amap/location/protocol/i;->c(Z)V

    .line 52
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    long-to-int p2, v3

    iput p2, p1, Lcom/amap/location/support/network/HttpRequest;->timeout:I

    .line 53
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/amap/location/protocol/i;->d(Z)V

    .line 54
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    sget-object p2, Lcom/amap/location/g/a;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amap/location/protocol/i;->b(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    sget-boolean p2, Lcom/amap/location/g/a;->l:Z

    invoke-virtual {p1, p2}, Lcom/amap/location/protocol/i;->e(Z)V

    .line 56
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p2}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object p2

    invoke-interface {p2}, Lcom/amap/location/g/d;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amap/location/protocol/i;->b(I)V

    .line 57
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    iget p2, p2, Lcom/amap/location/g/h;->a:I

    invoke-virtual {p1, p2}, Lcom/amap/location/protocol/i;->c(I)V

    .line 58
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    sget-boolean p2, Lcom/amap/location/g/a;->j:Z

    invoke-virtual {p1, p2}, Lcom/amap/location/protocol/i;->f(Z)V

    .line 59
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result p1

    if-ne p1, v5, :cond_a

    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/g/d;->c()I

    move-result p1

    if-ne p1, v2, :cond_a

    const-string p1, "nl_request_online_count"

    .line 60
    invoke-static {p1}, Lcom/amap/location/support/util/CloudSdkUtils;->addCount(Ljava/lang/String;)V

    .line 61
    :cond_a
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->l(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/k;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p2}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p2

    iget-object p3, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p3}, Lcom/amap/location/g/h;->t(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/h;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/amap/location/protocol/k;->b(Lcom/amap/location/protocol/i;Lcom/amap/location/protocol/h;)V

    .line 62
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/g/d;->c()I

    move-result p1

    and-int/2addr p1, v2

    if-ne v2, p1, :cond_b

    .line 63
    iget-object p1, p0, Lcom/amap/location/g/h$a;->c:Lcom/amap/location/g/h$c;

    invoke-virtual {p1}, Lcom/amap/location/g/h$c;->a()V

    .line 64
    :cond_b
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/g/d;->c()I

    move-result p1

    const p2, 0x188d7

    add-int/2addr p1, p2

    .line 65
    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p2, p1, v2}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;IZ)V

    goto/16 :goto_3

    .line 66
    :cond_c
    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    new-instance v0, Lcom/amap/location/protocol/i;

    invoke-static {p2}, Lcom/amap/location/g/h;->s(Lcom/amap/location/g/h;)Lcom/amap/location/g/a/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/amap/location/g/a/a;->a(Lcom/amap/location/support/bean/AmapFps;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/amap/location/protocol/i;-><init>(Lcom/amap/location/support/bean/AmapFps;[BLjava/util/List;Lcom/amap/location/protocol/e;)V

    invoke-static {p2, v0}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/protocol/i;)Lcom/amap/location/protocol/i;

    .line 67
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p2}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object p2

    iget-object p2, p2, Lcom/amap/location/g/b;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amap/location/protocol/i;->a(Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p2}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object p2

    iget-object p2, p2, Lcom/amap/location/g/b;->n:Lcom/amap/location/g/b$a;

    iget-boolean p2, p2, Lcom/amap/location/g/b$a;->a:Z

    invoke-virtual {p1, p2}, Lcom/amap/location/protocol/i;->a(Z)V

    .line 69
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p2}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object p2

    iget-object p2, p2, Lcom/amap/location/g/b;->n:Lcom/amap/location/g/b$a;

    iget-boolean p2, p2, Lcom/amap/location/g/b$a;->b:Z

    invoke-virtual {p1, p2}, Lcom/amap/location/protocol/i;->b(Z)V

    .line 70
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p2}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object p2

    iget-object p2, p2, Lcom/amap/location/g/b;->n:Lcom/amap/location/g/b$a;

    iget-boolean p2, p2, Lcom/amap/location/g/b$a;->c:Z

    invoke-virtual {p1, p2}, Lcom/amap/location/protocol/i;->c(Z)V

    .line 71
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    long-to-int p2, v3

    iput p2, p1, Lcom/amap/location/support/network/HttpRequest;->timeout:I

    .line 72
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/amap/location/protocol/i;->d(Z)V

    .line 73
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p1

    sget-object p2, Lcom/amap/location/g/a;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amap/location/protocol/i;->b(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->l(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/k;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p2}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object p2

    iget-object p3, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p3}, Lcom/amap/location/g/h;->t(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/h;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/amap/location/protocol/k;->a(Lcom/amap/location/protocol/i;Lcom/amap/location/protocol/h;)V

    .line 75
    :goto_3
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result p1

    if-ne p1, v5, :cond_d

    const-string p1, "nl_request_aos_count"

    .line 76
    invoke-static {p1}, Lcom/amap/location/support/util/CloudSdkUtils;->addCount(Ljava/lang/String;)V

    .line 77
    :cond_d
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const p2, 0x18706

    invoke-static {p1, p2}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    .line 78
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->k(Lcom/amap/location/g/h;)Lcom/amap/location/g/c/a;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/amap/location/g/c/a;->a(J)V

    return-void
.end method

.method private b(Lcom/amap/location/support/bean/AmapFps;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object v0

    const-string v1, "nlmgr"

    if-eqz v0, :cond_0

    const-string p1, "first ignore: on reuqest"

    .line 2
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v0}, Lcom/amap/location/g/e;->h()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v0}, Lcom/amap/location/g/e;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    invoke-direct {p0, p1}, Lcom/amap/location/g/h$a;->c(Lcom/amap/location/support/bean/AmapFps;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-object v2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2, v1, v0, p1}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/protocol/i;Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V

    .line 7
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/g/d;->a()V

    goto/16 :goto_1

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v3}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v3}, Lcom/amap/location/g/e;->u()Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/amap/location/support/bean/AmapFps;->clone()Lcom/amap/location/support/bean/AmapFps;

    move-result-object v3

    invoke-direct {p0, v3, v2, v2}, Lcom/amap/location/g/h$a;->a(Lcom/amap/location/support/bean/AmapFps;ZZ)V

    .line 10
    :cond_2
    iget-object v3, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v3}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v3}, Lcom/amap/location/g/e;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v3}, Lcom/amap/location/g/h;->h(Lcom/amap/location/g/h;)Lcom/amap/location/i/e;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 11
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->h(Lcom/amap/location/g/h;)Lcom/amap/location/i/e;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v3}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/location/g/b;->n:Lcom/amap/location/g/b$a;

    iget-boolean v3, v3, Lcom/amap/location/g/b$a;->b:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v3}, Lcom/amap/location/g/h;->f(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v1

    :goto_0
    invoke-virtual {v0, p1, v2, v3}, Lcom/amap/location/i/e;->a(Lcom/amap/location/support/bean/AmapFps;ZLcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v0

    .line 12
    invoke-direct {p0, v0}, Lcom/amap/location/g/h$a;->a(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    iget-object v2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2, v1, v0, p1}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/protocol/i;Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V

    .line 15
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1, v0}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 16
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {p1}, Lcom/amap/location/g/e;->u()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {p1}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/g/d;->a()V

    goto :goto_1

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v0}, Lcom/amap/location/g/e;->u()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {p1}, Lcom/amap/location/support/bean/AmapFps;->clone()Lcom/amap/location/support/bean/AmapFps;

    move-result-object p1

    invoke-direct {p0, p1, v2, v2}, Lcom/amap/location/g/h$a;->a(Lcom/amap/location/support/bean/AmapFps;ZZ)V

    goto :goto_1

    :cond_6
    const-string v0, "first direct online"

    .line 20
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/amap/location/support/bean/AmapFps;->clone()Lcom/amap/location/support/bean/AmapFps;

    move-result-object p1

    invoke-direct {p0, p1, v2, v2}, Lcom/amap/location/g/h$a;->a(Lcom/amap/location/support/bean/AmapFps;ZZ)V

    :cond_7
    :goto_1
    return-void
.end method

.method private b()Z
    .locals 9

    .line 22
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/g/d;->c()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/g/d;->b()J

    move-result-wide v3

    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v0}, Lcom/amap/location/g/e;->l()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/g/d;->b()J

    move-result-wide v3

    .line 24
    :goto_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v5

    .line 25
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->u(Lcom/amap/location/g/h;)J

    move-result-wide v7

    sub-long v7, v5, v7

    cmp-long v0, v7, v3

    if-ltz v0, :cond_3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u65f6\u95f4\u5df2\u5230\uff0c\u5f3a\u5236\u8d70\u5728\u7ebf, \u95f4\u9694:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v3}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/location/g/d;->b()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",locationWorkType:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v3}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/location/g/d;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "nlmgr"

    invoke-static {v3, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v0}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v0}, Lcom/amap/location/g/e;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amap/location/g/a;->n:[[I

    invoke-static {v5, v6, v0}, Lcom/amap/location/support/util/PeakTimesHelper;->hitPeakTimes(J[[I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5f3a\u5236\u5728\u7ebf\u547d\u4e2d\u9ad8\u5cf0\u7b56\u7565"

    .line 28
    invoke-static {v3, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method private c(Lcom/amap/location/support/bean/AmapFps;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 6
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 13
    move-result-wide v2

    .line 14
    iget-object v0, p1, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    .line 16
    iget-wide v4, v0, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateUtcMills:J

    .line 18
    sub-long/2addr v2, v4

    .line 19
    const-wide/16 v4, 0x7530

    .line 21
    cmp-long v0, v2, v4

    .line 23
    if-lez v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 28
    const v2, 0x186cd

    .line 31
    invoke-static {v0, v2}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    .line 34
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 37
    move-result v0

    .line 38
    const/16 v2, 0x8

    .line 40
    if-ne v0, v2, :cond_1

    .line 42
    const-string v0, "nl_request_cache_count"

    .line 44
    invoke-static {v0}, Lcom/amap/location/support/util/CloudSdkUtils;->addCount(Ljava/lang/String;)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 49
    invoke-static {v0}, Lcom/amap/location/g/h;->o(Lcom/amap/location/g/h;)Lcom/amap/location/h/a/c;

    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 57
    invoke-static {v0}, Lcom/amap/location/g/h;->o(Lcom/amap/location/g/h;)Lcom/amap/location/h/a/c;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lcom/amap/location/h/a/c;->a(Lcom/amap/location/support/bean/AmapFps;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 64
    move-result-object v1

    .line 65
    :cond_2
    if-eqz v1, :cond_3

    .line 67
    invoke-virtual {v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 73
    invoke-static {}, Lcom/amap/location/support/log/StartTimeConsumingLog;->getInstance()Lcom/amap/location/support/log/StartTimeConsumingLog;

    .line 76
    move-result-object p1

    .line 77
    const-string v0, "nllc"

    .line 79
    invoke-virtual {p1, v0}, Lcom/amap/location/support/log/StartTimeConsumingLog;->put(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 84
    const v0, 0x186ce

    .line 87
    invoke-static {p1, v0}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    .line 90
    const/4 p1, 0x0

    .line 91
    invoke-virtual {v1, p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLast(Z)V

    .line 94
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 97
    move-result p1

    .line 98
    if-ne p1, v2, :cond_3

    .line 100
    const-string p1, "nl_cache_count"

    .line 102
    invoke-static {p1}, Lcom/amap/location/support/util/CloudSdkUtils;->addCount(Ljava/lang/String;)V

    .line 105
    :cond_3
    return-object v1

    .line 106
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    const-string v2, "request cache: failed as no main cell or cell info too old:"

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object p1, p1, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object p1

    .line 125
    const-string v0, "nlmgr"

    .line 127
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-object v1
.end method

.method private d(Lcom/amap/location/support/bean/AmapFps;)Z
    .locals 11

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    const-string v0, "nl_request_last_count"

    .line 11
    invoke-static {v0}, Lcom/amap/location/support/util/CloudSdkUtils;->addCount(Ljava/lang/String;)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 16
    invoke-static {v0}, Lcom/amap/location/g/h;->v(Lcom/amap/location/g/h;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 24
    invoke-static {v0}, Lcom/amap/location/g/h;->w(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 31
    invoke-static {v0}, Lcom/amap/location/g/h;->f(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 34
    move-result-object v0

    .line 35
    :goto_0
    iget-object v2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 37
    invoke-static {v2}, Lcom/amap/location/g/h;->v(Lcom/amap/location/g/h;)Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 43
    iget-object v2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 45
    invoke-static {v2}, Lcom/amap/location/g/h;->x(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/AmapFps;

    .line 48
    move-result-object v2

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 52
    invoke-static {v2}, Lcom/amap/location/g/h;->y(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/AmapFps;

    .line 55
    move-result-object v2

    .line 56
    :goto_1
    const/4 v3, 0x0

    .line 57
    const-string v4, "nlmgr"

    .line 59
    if-eqz v0, :cond_8

    .line 61
    invoke-virtual {v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_8

    .line 67
    if-eqz v2, :cond_8

    .line 69
    if-eqz p1, :cond_8

    .line 71
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 73
    invoke-static {v0}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    .line 76
    move-result-object v0

    .line 77
    iget-object v0, v0, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    .line 79
    invoke-interface {v0}, Lcom/amap/location/g/e;->c()Z

    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_3

    .line 85
    goto/16 :goto_3

    .line 87
    :cond_3
    invoke-static {v2, p1}, Lcom/amap/location/h/a/f;->a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/support/bean/AmapFps;)Z

    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_4

    .line 93
    const-string p1, "locing-different cell"

    .line 95
    invoke-static {v4, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return v3

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 101
    invoke-static {v0}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    .line 104
    move-result-object v0

    .line 105
    iget-object v0, v0, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    .line 107
    invoke-interface {v0}, Lcom/amap/location/g/e;->q()D

    .line 110
    move-result-wide v5

    .line 111
    invoke-static {v2, p1, v5, v6}, Lcom/amap/location/h/a/f;->a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/support/bean/AmapFps;D)Z

    .line 114
    move-result p1

    .line 115
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 118
    move-result-object v0

    .line 119
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 122
    move-result-wide v5

    .line 123
    const/4 v0, 0x1

    .line 124
    const-wide/16 v7, 0x0

    .line 126
    if-eqz p1, :cond_5

    .line 128
    iget-object v2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 130
    invoke-static {v2, v7, v8}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;J)J

    .line 133
    goto :goto_2

    .line 134
    :cond_5
    iget-object v2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 136
    invoke-static {v2}, Lcom/amap/location/g/h;->z(Lcom/amap/location/g/h;)J

    .line 139
    move-result-wide v9

    .line 140
    cmp-long v2, v9, v7

    .line 142
    if-eqz v2, :cond_6

    .line 144
    iget-object v2, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 146
    invoke-static {v2}, Lcom/amap/location/g/h;->z(Lcom/amap/location/g/h;)J

    .line 149
    move-result-wide v7

    .line 150
    sub-long v7, v5, v7

    .line 152
    const-wide/16 v9, 0xbb8

    .line 154
    cmp-long v2, v7, v9

    .line 156
    if-gez v2, :cond_6

    .line 158
    const/4 v3, 0x1

    .line 159
    :cond_6
    iget-object v0, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 161
    invoke-static {v0, v5, v6}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;J)J

    .line 164
    move v0, v3

    .line 165
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    const-string v3, "locing-judge simi:"

    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 178
    const-string p1, ", thres:"

    .line 180
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 185
    invoke-static {p1}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    .line 188
    move-result-object p1

    .line 189
    iget-object p1, p1, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    .line 191
    invoke-interface {p1}, Lcom/amap/location/g/e;->q()D

    .line 194
    move-result-wide v5

    .line 195
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 198
    const-string p1, ", last:"

    .line 200
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object p1

    .line 210
    invoke-static {v4, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 216
    move-result p1

    .line 217
    if-ne p1, v1, :cond_7

    .line 219
    const-string p1, "nl_last_count"

    .line 221
    invoke-static {p1}, Lcom/amap/location/support/util/CloudSdkUtils;->addCount(Ljava/lang/String;)V

    .line 224
    :cond_7
    return v0

    .line 225
    :cond_8
    :goto_3
    const-string p1, "locing-no vaild info"

    .line 227
    invoke-static {v4, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return v3
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 100
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getNetworkFineType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 102
    invoke-static {p1}, Lcom/amap/location/g/h;->m(Lcom/amap/location/g/h;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 103
    invoke-static {p1}, Lcom/amap/location/g/h;->d(Lcom/amap/location/g/h;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nlmgr"

    .line 104
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(IIILjava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    const-string v3, "mem"

    const/4 v4, 0x7

    const-string v5, "nlmgr"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v1, v6, :cond_19

    const/4 v8, 0x2

    if-eq v1, v8, :cond_16

    const/4 v8, 0x3

    if-eq v1, v8, :cond_0

    goto/16 :goto_16

    .line 1
    :cond_0
    move-object/from16 v1, p4

    check-cast v1, [Ljava/lang/Object;

    .line 2
    aget-object v8, v1, v7

    check-cast v8, Lcom/amap/location/protocol/i;

    .line 3
    aget-object v1, v1, v6

    check-cast v1, Lcom/amap/location/protocol/j;

    .line 4
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    invoke-virtual {v8}, Lcom/amap/location/protocol/i;->m()I

    move-result v9

    if-ne v9, v6, :cond_1

    const-string v9, "nl_online_count"

    .line 5
    invoke-static {v9}, Lcom/amap/location/support/util/CloudSdkUtils;->addCount(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v9, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v9}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object v9

    if-eqz v9, :cond_2f

    iget-object v9, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v9}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object v9

    if-eq v9, v8, :cond_2

    goto/16 :goto_16

    .line 7
    :cond_2
    iget-object v9, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v9}, Lcom/amap/location/g/h;->k(Lcom/amap/location/g/h;)Lcom/amap/location/g/c/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amap/location/g/c/a;->a()V

    .line 8
    iget-object v9, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v9}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amap/location/protocol/i;->a()Lcom/amap/location/support/bean/AmapFps;

    move-result-object v9

    .line 9
    iget-object v11, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v11}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object v11

    .line 10
    iget-object v12, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v12, v2}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/protocol/i;)Lcom/amap/location/protocol/i;

    .line 11
    invoke-virtual {v1}, Lcom/amap/location/protocol/j;->a()Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRdesc()Ljava/lang/String;

    move-result-object v2

    const-string v12, "85"

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v12

    invoke-interface {v12}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v12

    const-wide/32 v14, 0xea60

    add-long/2addr v12, v14

    invoke-static {v2, v12, v13}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;J)J

    .line 15
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const v12, 0x186fd

    invoke-static {v2, v12}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    .line 16
    :cond_3
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const v12, 0x18704

    invoke-static {v2, v12}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    :cond_4
    if-eqz v1, :cond_12

    .line 18
    invoke-virtual {v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 19
    iget-object v2, v0, Lcom/amap/location/g/h$a;->b:Lcom/amap/location/g/h$b;

    invoke-virtual {v2}, Lcom/amap/location/g/h$b;->b()V

    .line 20
    invoke-virtual {v8}, Lcom/amap/location/protocol/i;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 21
    invoke-virtual {v8}, Lcom/amap/location/protocol/i;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setServerTraceId(Ljava/lang/String;)V

    .line 22
    :cond_5
    invoke-virtual {v1, v7}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLast(Z)V

    .line 23
    iget-object v2, v9, Lcom/amap/location/support/bean/AmapFps;->mainWifi:Lcom/amap/location/support/bean/wifi/AmapWifi;

    if-nez v2, :cond_7

    iget-object v2, v9, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v2, 0x1

    .line 24
    :goto_1
    iget-object v4, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v4}, Lcom/amap/location/g/h;->m(Lcom/amap/location/g/h;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v2, :cond_9

    .line 25
    iget-object v4, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const v8, 0x1877e

    invoke-static {v4, v8}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    goto :goto_2

    .line 26
    :cond_8
    iget-object v4, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const v8, 0x1877d

    invoke-static {v4, v8}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    :cond_9
    :goto_2
    if-nez v2, :cond_a

    const-string v2, "result cell only"

    .line 27
    invoke-virtual {v0, v2}, Lcom/amap/location/g/h$a;->a(Ljava/lang/String;)V

    .line 28
    :cond_a
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const v4, 0x18707

    invoke-static {v2, v4}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locing-onlineloc report\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->getLocationLog(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->n(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v2

    if-nez v2, :cond_b

    .line 31
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2, v11, v1, v9}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/protocol/i;Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V

    goto :goto_3

    .line 32
    :cond_b
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->n(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    move-result-wide v4

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    cmpl-double v2, v4, v12

    if-lez v2, :cond_c

    .line 33
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2, v11, v1, v9}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/protocol/i;Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V

    goto :goto_3

    :cond_c
    const/4 v6, 0x0

    .line 34
    :goto_3
    invoke-virtual {v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isHDBluetoothLocation()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 35
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/amap/location/g/h;->b(Lcom/amap/location/g/h;J)J

    :cond_d
    if-eqz v6, :cond_e

    .line 36
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->h(Lcom/amap/location/g/h;)Lcom/amap/location/i/e;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 37
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->h(Lcom/amap/location/g/h;)Lcom/amap/location/i/e;

    move-result-object v2

    invoke-virtual {v11}, Lcom/amap/location/protocol/i;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v9, v1, v4}, Lcom/amap/location/i/e;->a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/support/bean/location/AmapLocationNetwork;Ljava/lang/String;)V

    .line 38
    :cond_e
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->i(Lcom/amap/location/g/h;)Lcom/amap/location/f/a/c;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 39
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->i(Lcom/amap/location/g/h;)Lcom/amap/location/f/a/c;

    move-result-object v2

    invoke-virtual {v2, v9, v1}, Lcom/amap/location/f/a/c;->a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V

    .line 40
    :cond_f
    sget-boolean v2, Lcom/amap/location/g/a;->p:Z

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getSemantics()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 41
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v2, v7}, Lcom/amap/location/g/e;->a(Z)V

    .line 42
    :cond_10
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v4

    invoke-interface {v4}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;J)J

    .line 43
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->o(Lcom/amap/location/g/h;)Lcom/amap/location/h/a/c;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 44
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->o(Lcom/amap/location/g/h;)Lcom/amap/location/h/a/c;

    move-result-object v2

    invoke-virtual {v2, v9, v1}, Lcom/amap/location/h/a/c;->a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Z

    .line 45
    :cond_11
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    new-instance v4, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-direct {v4, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;-><init>(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V

    invoke-static {v2, v4}, Lcom/amap/location/g/h;->b(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 46
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->f(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCacheType(Ljava/lang/String;)V

    .line 47
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2, v9}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/AmapFps;)Lcom/amap/location/support/bean/AmapFps;

    .line 48
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/g/d;->a()V

    .line 49
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2, v1}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/location/AmapLocation;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 50
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2, v1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 51
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2, v9}, Lcom/amap/location/g/h;->b(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/AmapFps;)Lcom/amap/location/support/bean/AmapFps;

    goto :goto_6

    :cond_12
    const-string v2, ""

    if-eqz v1, :cond_13

    .line 52
    invoke-virtual {v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRetype()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_13
    move-object v3, v2

    :goto_4
    const-string v5, "8"

    .line 53
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 54
    iget-object v3, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const v4, 0x18705

    invoke-static {v3, v4}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    if-eqz v9, :cond_15

    .line 55
    iget-object v3, v9, Lcom/amap/location/support/bean/AmapFps;->locResultInfo:Lcom/amap/location/support/nl/NetworkLocationResultInfo;

    invoke-virtual {v3, v10, v2}, Lcom/amap/location/support/nl/NetworkLocationResultInfo;->onFail(ILjava/lang/String;)V

    goto :goto_5

    .line 56
    :cond_14
    iget-object v3, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const v5, 0x18770

    invoke-static {v3, v5}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    if-eqz v9, :cond_15

    .line 57
    iget-object v3, v9, Lcom/amap/location/support/bean/AmapFps;->locResultInfo:Lcom/amap/location/support/nl/NetworkLocationResultInfo;

    invoke-virtual {v3, v4, v2}, Lcom/amap/location/support/nl/NetworkLocationResultInfo;->onFail(ILjava/lang/String;)V

    .line 58
    :cond_15
    :goto_5
    invoke-direct {v0, v11, v9}, Lcom/amap/location/g/h$a;->a(Lcom/amap/location/protocol/i;Lcom/amap/location/support/bean/AmapFps;)V

    .line 59
    iget-object v2, v0, Lcom/amap/location/g/h$a;->b:Lcom/amap/location/g/h$b;

    invoke-virtual {v2}, Lcom/amap/location/g/h$b;->a()V

    :goto_6
    if-eqz v1, :cond_2f

    .line 60
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-virtual {v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getControlType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 61
    invoke-static {v1}, Lcom/amap/location/g/c/b;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_16

    .line 62
    :cond_16
    move-object/from16 v1, p4

    check-cast v1, Lcom/amap/location/protocol/i;

    .line 63
    iget-object v3, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v3}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object v3

    if-eqz v3, :cond_2f

    if-eqz v1, :cond_17

    iget-object v3, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v3}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object v3

    if-eq v3, v1, :cond_17

    goto/16 :goto_16

    .line 64
    :cond_17
    iget-object v1, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v1}, Lcom/amap/location/g/h;->d(Lcom/amap/location/g/h;)I

    move-result v1

    if-nez v1, :cond_18

    .line 65
    iget-object v1, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const v3, 0x18703

    invoke-static {v1, v3}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    .line 66
    :cond_18
    iget-object v1, v0, Lcom/amap/location/g/h$a;->b:Lcom/amap/location/g/h$b;

    invoke-virtual {v1}, Lcom/amap/location/g/h$b;->a()V

    .line 67
    iget-object v1, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v1}, Lcom/amap/location/g/h;->k(Lcom/amap/location/g/h;)Lcom/amap/location/g/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/location/g/c/a;->a()V

    .line 68
    iget-object v1, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v1}, Lcom/amap/location/g/h;->l(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/k;

    move-result-object v1

    iget-object v3, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v3}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amap/location/protocol/k;->a(Lcom/amap/location/protocol/i;)V

    .line 69
    iget-object v1, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/location/protocol/i;->a()Lcom/amap/location/support/bean/AmapFps;

    move-result-object v1

    .line 70
    iget-object v3, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v3}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object v3

    .line 71
    iget-object v4, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v4, v2}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/protocol/i;)Lcom/amap/location/protocol/i;

    .line 72
    invoke-direct {v0, v3, v1}, Lcom/amap/location/g/h$a;->a(Lcom/amap/location/protocol/i;Lcom/amap/location/support/bean/AmapFps;)V

    goto/16 :goto_16

    .line 73
    :cond_19
    iget-object v1, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v1, v2}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 74
    iget-object v1, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v1}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    move-result-object v1

    if-eqz v1, :cond_1a

    const-string v1, "locing-onrequest"

    .line 75
    invoke-static {v5, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 76
    :cond_1a
    move-object/from16 v1, p4

    check-cast v1, Lcom/amap/location/support/bean/AmapFps;

    if-eqz v1, :cond_1b

    .line 77
    iget-object v8, v1, Lcom/amap/location/support/bean/AmapFps;->locResultInfo:Lcom/amap/location/support/nl/NetworkLocationResultInfo;

    invoke-virtual {v8}, Lcom/amap/location/support/nl/NetworkLocationResultInfo;->clear()V

    .line 78
    :cond_1b
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v8

    if-ne v8, v4, :cond_1c

    iget-object v4, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v4}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object v4

    invoke-interface {v4}, Lcom/amap/location/g/d;->d()I

    move-result v4

    goto :goto_7

    :cond_1c
    const/4 v4, 0x0

    .line 79
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/g/h$a;->b()Z

    move-result v8

    const-string v9, " fps:"

    const-string v10, " cacheenable:"

    const-string v11, " offenable:"

    const-string v12, " querycache:"

    const/16 v13, 0x3e8

    if-eqz v8, :cond_1e

    if-lt v4, v13, :cond_1d

    goto :goto_8

    .line 80
    :cond_1d
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const v3, 0x1889d

    invoke-static {v2, v3}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    const/4 v3, 0x0

    goto/16 :goto_15

    .line 81
    :cond_1e
    :goto_8
    invoke-direct {v0, v1}, Lcom/amap/location/g/h$a;->d(Lcom/amap/location/support/bean/AmapFps;)Z

    move-result v14

    if-eqz v14, :cond_21

    .line 82
    iget-object v4, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v4}, Lcom/amap/location/g/h;->f(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v4

    .line 83
    invoke-virtual {v4, v6}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLast(Z)V

    .line 84
    sget-boolean v6, Lcom/amap/location/g/a;->q:Z

    if-eqz v6, :cond_1f

    .line 85
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v6

    move-object/from16 p3, v3

    invoke-interface {v6}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/amap/location/type/location/Location;->setLocationUtcTime(J)V

    .line 86
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v2

    const-wide/32 v15, 0xf4240

    mul-long v2, v2, v15

    invoke-virtual {v4, v2, v3}, Lcom/amap/location/type/location/Location;->setLocationTickTime(J)V

    goto :goto_9

    :cond_1f
    move-object/from16 p3, v3

    .line 87
    :goto_9
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const v3, 0x1889e

    invoke-static {v2, v3}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    :goto_a
    const/4 v3, 0x0

    :cond_20
    :goto_b
    const/4 v6, 0x0

    goto/16 :goto_13

    :cond_21
    move-object/from16 p3, v3

    .line 88
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v2}, Lcom/amap/location/g/e;->a()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->h(Lcom/amap/location/g/h;)Lcom/amap/location/i/e;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 89
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->h(Lcom/amap/location/g/h;)Lcom/amap/location/i/e;

    move-result-object v2

    if-lt v4, v13, :cond_22

    const/4 v3, 0x0

    goto :goto_c

    :cond_22
    const/4 v3, 0x1

    :goto_c
    iget-object v15, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v15}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v15

    iget-object v15, v15, Lcom/amap/location/g/b;->n:Lcom/amap/location/g/b$a;

    iget-boolean v15, v15, Lcom/amap/location/g/b$a;->b:Z

    if-eqz v15, :cond_23

    iget-object v15, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v15}, Lcom/amap/location/g/h;->f(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v15

    goto :goto_d

    :cond_23
    const/4 v15, 0x0

    :goto_d
    invoke-virtual {v2, v1, v3, v15}, Lcom/amap/location/i/e;->a(Lcom/amap/location/support/bean/AmapFps;ZLcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v2

    .line 90
    invoke-direct {v0, v2}, Lcom/amap/location/g/h$a;->a(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v2

    goto :goto_e

    :cond_24
    const/4 v2, 0x0

    :goto_e
    if-eqz v2, :cond_26

    .line 91
    invoke-virtual {v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_f

    .line 92
    :cond_25
    iget-object v3, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const v4, 0x1889f

    invoke-static {v3, v4}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    move-object v4, v2

    goto :goto_a

    .line 93
    :cond_26
    :goto_f
    iget-object v3, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v3}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v3}, Lcom/amap/location/g/e;->b()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 94
    invoke-direct {v0, v1}, Lcom/amap/location/g/h$a;->c(Lcom/amap/location/support/bean/AmapFps;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v2

    const/4 v3, 0x1

    goto :goto_10

    :cond_27
    const/4 v3, 0x0

    :goto_10
    if-eqz v2, :cond_28

    .line 95
    invoke-virtual {v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    move-result v15

    if-eqz v15, :cond_28

    .line 96
    iget-object v4, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const v6, 0x188a0

    invoke-static {v4, v6}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    goto :goto_12

    :cond_28
    if-lt v4, v13, :cond_2a

    .line 97
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const v13, 0x189c6

    invoke-static {v2, v13}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    .line 98
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->i(Lcom/amap/location/g/h;)Lcom/amap/location/f/a/c;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->i(Lcom/amap/location/g/h;)Lcom/amap/location/f/a/c;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcom/amap/location/f/a/c;->a(Lcom/amap/location/support/bean/AmapFps;I)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v2

    move-object v4, v2

    goto :goto_11

    :cond_29
    const/4 v4, 0x0

    :goto_11
    if-eqz v4, :cond_20

    .line 99
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const v13, 0x189c5

    invoke-static {v2, v13}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    goto :goto_13

    :cond_2a
    :goto_12
    move-object v4, v2

    goto/16 :goto_b

    :goto_13
    if-eqz v4, :cond_2d

    .line 100
    invoke-virtual {v4}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    move-result v2

    if-eqz v2, :cond_2d

    if-nez v14, :cond_2c

    if-nez v6, :cond_2c

    .line 101
    invoke-virtual {v4, v7}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLast(Z)V

    if-nez v3, :cond_2b

    .line 102
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    new-instance v6, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-direct {v6, v4}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;-><init>(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V

    invoke-static {v2, v6}, Lcom/amap/location/g/h;->b(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 103
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->f(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v2

    move-object/from16 v6, p3

    invoke-virtual {v2, v6}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCacheType(Ljava/lang/String;)V

    goto :goto_14

    .line 104
    :cond_2b
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2, v4}, Lcom/amap/location/g/h;->b(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 105
    :goto_14
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-virtual {v1}, Lcom/amap/location/support/bean/AmapFps;->clone()Lcom/amap/location/support/bean/AmapFps;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/AmapFps;)Lcom/amap/location/support/bean/AmapFps;

    .line 106
    :cond_2c
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v1}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/protocol/i;Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V

    .line 107
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/g/d;->a()V

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locing-noonline last:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 109
    invoke-static {v3}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v3}, Lcom/amap/location/g/e;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 110
    invoke-static {v3}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v3}, Lcom/amap/location/g/e;->b()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Lcom/amap/location/g/h$a;->a(Lcom/amap/location/support/bean/AmapFps;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v5, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 112
    :cond_2d
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const v4, 0x188a1

    invoke-static {v2, v4}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    .line 113
    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locing-online force:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 114
    invoke-static {v4}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v4

    iget-object v4, v4, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v4}, Lcom/amap/location/g/e;->a()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    .line 115
    invoke-static {v4}, Lcom/amap/location/g/h;->g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;

    move-result-object v4

    iget-object v4, v4, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    invoke-interface {v4}, Lcom/amap/location/g/e;->b()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " lasttime:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v4}, Lcom/amap/location/g/h;->j(Lcom/amap/location/g/h;)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Lcom/amap/location/g/h$a;->a(Lcom/amap/location/support/bean/AmapFps;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v5, v2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/amap/location/support/log/StartTimeConsumingLog;->getInstance()Lcom/amap/location/support/log/StartTimeConsumingLog;

    move-result-object v2

    const-string v4, "nrcl"

    invoke-virtual {v2, v4}, Lcom/amap/location/support/log/StartTimeConsumingLog;->put(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Lcom/amap/location/support/bean/AmapFps;->clone()Lcom/amap/location/support/bean/AmapFps;

    move-result-object v2

    invoke-direct {v0, v2, v7, v3}, Lcom/amap/location/g/h$a;->a(Lcom/amap/location/support/bean/AmapFps;ZZ)V

    if-eqz v8, :cond_2f

    .line 119
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->h(Lcom/amap/location/g/h;)Lcom/amap/location/i/e;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 120
    iget-object v2, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    invoke-static {v2}, Lcom/amap/location/g/h;->h(Lcom/amap/location/g/h;)Lcom/amap/location/i/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/location/i/e;->a(Lcom/amap/location/support/bean/AmapFps;)V

    goto :goto_16

    .line 121
    :cond_2e
    iget-object v1, v0, Lcom/amap/location/g/h$a;->a:Lcom/amap/location/g/h;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 122
    move-object/from16 v1, p4

    check-cast v1, Lcom/amap/location/support/bean/AmapFps;

    invoke-direct {v0, v1}, Lcom/amap/location/g/h$a;->b(Lcom/amap/location/support/bean/AmapFps;)V

    .line 123
    invoke-static {}, Lcom/amap/location/support/log/StartTimeConsumingLog;->getInstance()Lcom/amap/location/support/log/StartTimeConsumingLog;

    move-result-object v1

    const-string v2, "nrfl"

    invoke-virtual {v1, v2}, Lcom/amap/location/support/log/StartTimeConsumingLog;->put(Ljava/lang/String;)V

    :cond_2f
    :goto_16
    return-void
.end method
