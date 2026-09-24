.class public Lj2;
.super Ls;
.source "SourceFile"


# instance fields
.field public a:Lkt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ls;-><init>()V

    .line 4
    new-instance v0, Lkw;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Lkw;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lj2;->a:Lkt;

    .line 12
    invoke-static {}, Llw;->l()Llw;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lrv;->H()Lrv;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Llw;->m(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, "[ALSimulate] AidlJsonSimulator"

    .line 9
    const-string v4, "doSimulate protocolContent = {?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 16
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Ls;->b()Z

    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 25
    const-string v4, "doSimulate isNeedAssert"

    .line 27
    new-array v5, v2, [Ljava/lang/Object;

    .line 29
    invoke-static {v3, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lj2;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    move-result p2

    .line 36
    iget-object v4, p0, Lj2;->a:Lkt;

    .line 38
    instance-of v5, v4, Lkw;

    .line 40
    if-eqz v5, :cond_0

    .line 42
    check-cast v4, Lkw;

    .line 44
    invoke-virtual {v4, p2}, Lq70;->k(I)Ls10;

    .line 47
    move-result-object v5

    .line 48
    if-eqz v5, :cond_0

    .line 50
    invoke-virtual {v5}, Ls10;->a()Ljava/lang/Class;

    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v4, v6}, Lq70;->l(Ljava/lang/Class;)V

    .line 57
    invoke-virtual {v5}, Ls10;->b()Ljava/lang/String;

    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v4, v5}, Lq70;->m(Ljava/lang/String;)V

    .line 64
    :cond_0
    iget-object v4, p0, Lj2;->a:Lkt;

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string p2, ""

    .line 76
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p2

    .line 83
    invoke-interface {v4, p1, p2, p3}, Lkt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    iget-object p2, p0, Lj2;->a:Lkt;

    .line 88
    invoke-interface {p2}, Lkt;->b()V

    .line 91
    :cond_1
    const-string p2, "requestAuthor"

    .line 93
    const-string p3, "com.amapauto.autonavi.jsonsimulate.client"

    .line 95
    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 101
    move-result-object p2

    .line 102
    const-string p3, "doSimulate simulateJsonStringAfterUpdateAuthor = {?}"

    .line 104
    new-array v1, v0, [Ljava/lang/Object;

    .line 106
    aput-object p2, v1, v2

    .line 108
    invoke-static {v3, p3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-static {}, Llw;->l()Llw;

    .line 114
    move-result-object p3

    .line 115
    invoke-virtual {p3, p2}, Llw;->n(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 119
    :catch_0
    move-exception p2

    .line 120
    new-array p3, v0, [Ljava/lang/Object;

    .line 122
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 125
    move-result-object p2

    .line 126
    aput-object p2, p3, v2

    .line 128
    const-string p2, "doSimulate JSONException = {?}"

    .line 130
    invoke-static {v3, p2, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-static {}, Llw;->l()Llw;

    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p2, p1}, Llw;->n(Ljava/lang/String;)V

    .line 140
    :goto_0
    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string p3, "protocolId"

    .line 3
    const-string v0, "[ALSimulate] AidlJsonSimulator"

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 11
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    .line 13
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {v3, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 25
    move-result p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    const-string p3, "getSimulateProtocolId protocolIdFromJson = {?}, protocolIdInt = {?}"

    .line 30
    const/4 v3, 0x2

    .line 31
    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v4

    .line 37
    aput-object v4, v3, v2

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v4

    .line 43
    aput-object v4, v3, v1

    .line 45
    invoke-static {v0, p3, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    if-ne p1, p2, :cond_1

    .line 50
    if-eqz p1, :cond_1

    .line 52
    return p1

    .line 53
    :cond_1
    const-string p3, "getSimulateProtocolId protocolIdFromJson != protocolIdInt"

    .line 55
    new-array v3, v2, [Ljava/lang/Object;

    .line 57
    invoke-static {v0, p3, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    return p1

    .line 61
    :catch_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :catch_1
    move-exception p1

    .line 64
    goto :goto_2

    .line 65
    :catch_2
    move-exception p1

    .line 66
    const/4 p2, 0x0

    .line 67
    :goto_1
    new-array p3, v1, [Ljava/lang/Object;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    aput-object p1, p3, v2

    .line 75
    const-string p1, "getSimulateProtocolId Exception = {?}"

    .line 77
    invoke-static {v0, p1, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    goto :goto_3

    .line 81
    :catch_3
    move-exception p1

    .line 82
    const/4 p2, 0x0

    .line 83
    :goto_2
    new-array p3, v1, [Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    aput-object p1, p3, v2

    .line 91
    const-string p1, "getSimulateProtocolId JSONException = {?}"

    .line 93
    invoke-static {v0, p1, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :goto_3
    return p2
.end method
