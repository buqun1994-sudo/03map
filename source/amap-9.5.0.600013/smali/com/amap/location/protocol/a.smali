.class public Lcom/amap/location/protocol/a;
.super Lcom/amap/location/protocol/c;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/amap/location/protocol/c;-><init>()V

    .line 4
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "aos_country"

    .line 10
    iget-boolean v2, p0, Lcom/amap/location/protocol/a;->b:Z

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Z)Z

    .line 15
    move-result v0

    .line 16
    iput-boolean v0, p0, Lcom/amap/location/protocol/a;->b:Z

    .line 18
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Lcom/amap/location/protocol/i;ZZ)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/amap/location/protocol/a;->a:Z

    .line 40
    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->a()Lcom/amap/location/support/bean/AmapFps;

    move-result-object v1

    .line 41
    iget-object v1, v1, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1}, Lcom/amap/location/support/bean/cell/AmapCell;->getMccInt()I

    move-result v0

    .line 43
    invoke-static {v0}, Lcom/amap/location/support/util/GeoUtils;->mccOutOfCN(I)Z

    move-result v0

    :cond_0
    const-string v1, "&csid="

    if-eqz v0, :cond_1

    .line 44
    sget-boolean v0, Lcom/amap/location/protocol/b/a;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amap/location/protocol/b/a;->q:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->d()Lcom/amap/location/protocol/e;

    move-result-object v0

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2

    .line 51
    sget-object p2, Lcom/amap/location/protocol/b/a;->n:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->n()Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Lcom/amap/location/protocol/b/a;->l:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object p3, Lcom/amap/location/protocol/b/a;->m:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 53
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "http://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->n()Z

    move-result p3

    if-eqz p3, :cond_5

    sget-object p3, Lcom/amap/location/protocol/b/a;->l:Ljava/lang/String;

    goto :goto_1

    :cond_5
    sget-object p3, Lcom/amap/location/protocol/b/a;->m:Ljava/lang/String;

    :goto_1
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string p2, "?"

    .line 54
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dip="

    .line 56
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&div="

    .line 57
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-interface {v0}, Lcom/amap/location/protocol/e;->u()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "&autodiv="

    .line 59
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->u()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string p3, "&adiu="

    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->t()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&dibv="

    .line 61
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&die="

    .line 62
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->f()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&did="

    .line 63
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->g()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&dic="

    .line 64
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&diu="

    .line 65
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->i()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&diu2="

    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->j()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&diu3="

    .line 67
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->k()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&channel="

    .line 68
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->l()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&cifa="

    .line 69
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->m()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&from="

    .line 70
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->n()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&session="

    .line 71
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&spm="

    .line 72
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&piv="

    .line 73
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getPiv()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-interface {v0}, Lcom/amap/location/protocol/e;->o()Ljava/lang/String;

    move-result-object p3

    .line 75
    invoke-static {p3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "&tid="

    .line 76
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "utf-8"

    invoke-static {p3, v3}, Lcom/amap/location/support/network/UriHelper;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v3, "&stepid="

    .line 77
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&client_network_class="

    .line 78
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amap/location/support/util/NetTypeUtil;->getAosNetType()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-interface {v0}, Lcom/amap/location/protocol/e;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/location/protocol/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    move-result-object v4

    invoke-interface {v0}, Lcom/amap/location/protocol/e;->l()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p3, v3}, Lcom/amap/location/support/security/INativeAbility;->saos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v3, "&sign="

    .line 81
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-interface {v0}, Lcom/amap/location/protocol/e;->s()Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 83
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const-string v4, "&"

    .line 84
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/amap/location/support/network/UriHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 87
    :cond_8
    invoke-interface {v0}, Lcom/amap/location/protocol/e;->r()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_9

    .line 88
    invoke-interface {v0}, Lcom/amap/location/protocol/e;->r()Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    :cond_9
    const-string p3, "0"

    :goto_4
    const-string v3, "&loc_scene="

    .line 89
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&ver="

    .line 90
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->l()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&rt=pb"

    .line 91
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&locationWorkType="

    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->m()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "&locType="

    .line 93
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->o()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/amap/location/protocol/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 95
    iget-boolean v3, p0, Lcom/amap/location/protocol/a;->b:Z

    if-eqz v3, :cond_a

    invoke-static {p3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "&i18n_zone="

    .line 96
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const/4 p3, 0x0

    .line 97
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/amap/location/protocol/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/amap/location/protocol/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v3, "aosloc"

    const-string v4, "aos url error"

    .line 99
    invoke-static {v3, v4, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    :goto_5
    invoke-static {p3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 101
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 102
    :cond_b
    invoke-static {p3}, Lcom/amap/location/support/network/UriHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "in="

    .line 103
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&ent=2"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&is_bin=1"

    .line 104
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/location/protocol/i;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_c

    const-string p1, "&sourcefrom=loadrunner_test"

    .line 107
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amap/location/protocol/i;)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v1, "aosloc"

    const-string v0, "et"

    const-string v2, "101"

    move-object/from16 v3, p1

    .line 2
    invoke-virtual {v3, v0, v2}, Lcom/amap/location/support/network/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/protocol/i;->e()Z

    move-result v10

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/protocol/i;->f()Z

    move-result v11

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/protocol/i;->g()Z

    move-result v12

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/protocol/i;->d()Lcom/amap/location/protocol/e;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Lcom/amap/location/protocol/e;->o()Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-interface {v2}, Lcom/amap/location/protocol/e;->t()Ljava/lang/String;

    move-result-object v9

    .line 9
    new-instance v15, Ljp0;

    invoke-direct {v15}, Ljp0;-><init>()V

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/protocol/i;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvq0;->b(Ljava/lang/String;)Lvq0;

    move-result-object v0

    .line 11
    invoke-virtual {v15, v0}, Ljp0;->I(Lvq0;)V

    .line 12
    new-instance v4, Lrp0$a;

    invoke-direct {v4}, Lrp0$a;-><init>()V

    const/4 v5, 0x0

    .line 13
    invoke-virtual {v4, v5}, Lrp0$a;->e(Z)Lrp0$a;

    const/4 v6, 0x1

    .line 14
    invoke-virtual {v4, v6}, Lrp0$a;->d(Z)Lrp0$a;

    .line 15
    invoke-virtual {v4, v5}, Lrp0$a;->c(Z)Lrp0$a;

    .line 16
    invoke-virtual {v4, v5}, Lrp0$a;->a(Z)Lrp0$a;

    .line 17
    invoke-virtual {v15, v4}, Ljp0;->C(Lrp0$a;)V

    .line 18
    new-instance v4, Lrp0$b;

    invoke-direct {v4}, Lrp0$b;-><init>()V

    .line 19
    invoke-virtual {v4, v0}, Lrp0$b;->b(Lvq0;)Lrp0$b;

    .line 20
    sget-object v0, Lxp0;->e:Lxp0;

    invoke-virtual {v4, v0}, Lrp0$b;->a(Lxp0;)Lrp0$b;

    .line 21
    invoke-virtual {v15, v4}, Ljp0;->D(Lrp0$b;)V

    .line 22
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/protocol/i;->a()Lcom/amap/location/support/bean/AmapFps;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/protocol/i;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lpp0;

    invoke-direct {v0}, Lpp0;-><init>()V

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/protocol/i;->a()Lcom/amap/location/support/bean/AmapFps;

    move-result-object v4

    iget v4, v4, Lcom/amap/location/support/bean/AmapFps;->lightSensorValue:F

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v4, v7

    float-to-int v4, v4

    const v13, 0x186a0

    mul-int v4, v4, v13

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/protocol/i;->a()Lcom/amap/location/support/bean/AmapFps;

    move-result-object v13

    iget v13, v13, Lcom/amap/location/support/bean/AmapFps;->pressureSensorValue:F

    mul-float v13, v13, v7

    float-to-int v7, v13

    add-int/2addr v4, v7

    .line 25
    invoke-virtual {v0, v4}, Lpp0;->b(I)V

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/protocol/i;->a()Lcom/amap/location/support/bean/AmapFps;

    move-result-object v4

    iget-object v4, v4, Lcom/amap/location/support/bean/AmapFps;->cn0Count:[I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Lpp0;->d(I)V

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/protocol/i;->a()Lcom/amap/location/support/bean/AmapFps;

    move-result-object v4

    iget-object v4, v4, Lcom/amap/location/support/bean/AmapFps;->cn0Count:[I

    aget v4, v4, v6

    invoke-virtual {v0, v4}, Lpp0;->f(I)V

    .line 28
    invoke-virtual {v15, v0}, Ljp0;->A(Lpp0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 29
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/protocol/i;->a()Lcom/amap/location/support/bean/AmapFps;

    move-result-object v4

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/protocol/i;->b()[B

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/protocol/i;->c()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/protocol/i;->j()Ljava/lang/String;

    move-result-object v7

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/protocol/i;->h()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/protocol/i;->m()I

    move-result v14

    move-object v3, v15

    .line 33
    invoke-static/range {v3 .. v14}, Lcom/amap/location/protocol/request/a;->a(Ljp0;Lcom/amap/location/support/bean/AmapFps;[BLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZII)V

    .line 34
    invoke-static {}, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->getInstance()Lcom/amap/location/protocol/request/ApsProtocolClientUtil;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->encodeApsRequestProtocol(Ljp0;)Lrp0;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lrp0;->f()[B

    move-result-object v3

    move-object/from16 v4, p0

    .line 36
    iget-boolean v0, v4, Lcom/amap/location/protocol/a;->a:Z

    if-eqz v0, :cond_1

    .line 37
    :try_start_1
    invoke-interface {v2, v3}, Lcom/amap/location/protocol/e;->a([B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v0

    const-string v0, "aos body error"

    .line 38
    invoke-static {v1, v0, v2}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    move-object v3, v0

    :cond_1
    return-object v3
.end method
