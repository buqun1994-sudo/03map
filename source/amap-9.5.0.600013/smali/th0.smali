.class public Lth0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "EXTRA_TRAFFIC_CONDITION"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lth0;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "keyword"

    .line 6
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lth0;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ShowTrafficModel;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ShowTrafficModel;->getTrafficText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lth0;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/TrafficInfoModel;

    .line 7
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/TrafficInfoModel;-><init>()V

    .line 10
    iget-boolean v2, p0, Lnc;->c:Z

    .line 12
    if-eqz v2, :cond_1

    .line 14
    if-eqz v0, :cond_1

    .line 16
    iget-boolean v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 18
    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {p0}, Lth0;->x()Lcom/autonavi/amapauto/protocol/model/service/TrafficInfoModel;

    .line 23
    move-result-object v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/TrafficInfoData;

    .line 27
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/TrafficInfoData;->trafficMessage:Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/TrafficInfoModel;->s(Ljava/lang/String;)V

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 35
    if-nez v0, :cond_2

    .line 37
    const/16 v0, 0x2730

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 42
    :goto_0
    invoke-direct {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 45
    :goto_1
    return-object v1
.end method

.method public c()Landroid/content/Intent;
    .locals 14

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 11
    const/4 v2, 0x3

    .line 12
    const/4 v3, 0x4

    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x1

    .line 15
    const-string v6, "EXTRA_TRAFFIC_CONDITION_RESULT_MESSAGE"

    .line 17
    const-string v7, "EXTRA_TRAFFIC_CONDITION_RESULT"

    .line 19
    const/16 v8, 0x2726

    .line 21
    const/16 v9, 0x2725

    .line 23
    const/16 v10, 0x2719

    .line 25
    const/16 v11, 0x2710

    .line 27
    const/4 v12, 0x5

    .line 28
    const/16 v13, 0x3072

    .line 30
    if-eqz v0, :cond_5

    .line 32
    invoke-virtual {p0, v13}, Lnc;->t(I)V

    .line 35
    invoke-virtual {p0}, Lth0;->x()Lcom/autonavi/amapauto/protocol/model/service/TrafficInfoModel;

    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Landroid/content/Intent;

    .line 41
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 44
    iget v13, p0, Lnc;->d:I

    .line 46
    if-eq v13, v11, :cond_3

    .line 48
    if-eq v13, v10, :cond_2

    .line 50
    if-eq v13, v9, :cond_1

    .line 52
    if-eq v13, v8, :cond_4

    .line 54
    const/4 v2, 0x5

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v2, 0x4

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v2, 0x2

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 v2, 0x1

    .line 61
    :cond_4
    :goto_0
    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/TrafficInfoModel;->r()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    return-object v1

    .line 72
    :cond_5
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/TrafficInfoData;

    .line 78
    if-nez v0, :cond_6

    .line 80
    return-object v1

    .line 81
    :cond_6
    invoke-virtual {p0, v13}, Lnc;->t(I)V

    .line 84
    new-instance v1, Landroid/content/Intent;

    .line 86
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 89
    iget v13, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 91
    if-eq v13, v11, :cond_9

    .line 93
    if-eq v13, v10, :cond_8

    .line 95
    if-eq v13, v9, :cond_7

    .line 97
    if-eq v13, v8, :cond_a

    .line 99
    const/4 v2, 0x5

    .line 100
    goto :goto_1

    .line 101
    :cond_7
    const/4 v2, 0x4

    .line 102
    goto :goto_1

    .line 103
    :cond_8
    const/4 v2, 0x2

    .line 104
    goto :goto_1

    .line 105
    :cond_9
    const/4 v2, 0x1

    .line 106
    :cond_a
    :goto_1
    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/TrafficInfoData;->trafficMessage:Ljava/lang/String;

    .line 111
    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    return-object v1
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-static {}, Lib;->h()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ShowTrafficModel;

    .line 9
    iget-object v1, p0, Lth0;->k:Ljava/lang/String;

    .line 11
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ShowTrafficModel;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lth0;->k:Ljava/lang/String;

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSearchTrafficCondition(ILjava/lang/String;I)V

    .line 28
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/TrafficInfoModel;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/TrafficInfoModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/TrafficInfoModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/TrafficInfoModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/TrafficInfoModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    move-object v1, v0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    .line 38
    const-string v4, "TrafficConditionAction"

    .line 40
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method
