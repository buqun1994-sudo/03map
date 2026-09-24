.class public Lj20;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "EXIT_INFO_TYPE"

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lj20;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RequestHighwayExitModel;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RequestHighwayExitModel;->isAnyExit()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput p1, p0, Lj20;->k:I

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const-string v1, "NaviExitInfoAction"

    .line 12
    const-string v2, "NaviExitInfoData == NULL"

    .line 14
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    :cond_0
    iget v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 21
    const/4 v2, -0x2

    .line 22
    if-eq v1, v2, :cond_3

    .line 24
    const/4 v2, -0x1

    .line 25
    if-eq v1, v2, :cond_2

    .line 27
    const/4 v2, 0x1

    .line 28
    if-eq v1, v2, :cond_1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/16 v1, 0x2710

    .line 33
    iput v1, p0, Lnc;->d:I

    .line 35
    iput-boolean v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/16 v1, 0x2714

    .line 40
    iput v1, p0, Lnc;->d:I

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/16 v1, 0x2727

    .line 45
    iput v1, p0, Lnc;->d:I

    .line 47
    :goto_0
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 49
    if-eqz v1, :cond_5

    .line 51
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 53
    if-eqz v1, :cond_4

    .line 55
    invoke-virtual {p0}, Lj20;->x()Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;

    .line 58
    move-result-object v0

    .line 59
    goto :goto_1

    .line 60
    :cond_4
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviExitInfoData;

    .line 62
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;

    .line 64
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;-><init>()V

    .line 67
    iget-object v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviExitInfoData;->exitSerialNumber:Ljava/lang/String;

    .line 69
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;->A(Ljava/lang/String;)V

    .line 72
    iget v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviExitInfoData;->exitNumber:I

    .line 74
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;->z(I)V

    .line 77
    iget-wide v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviExitInfoData;->distance:J

    .line 79
    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;->w(J)V

    .line 82
    iget-wide v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviExitInfoData;->time:J

    .line 84
    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;->x(J)V

    .line 87
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviExitInfoData;->exitDirection:Ljava/lang/String;

    .line 89
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;->y(Ljava/lang/String;)V

    .line 92
    move-object v0, v1

    .line 93
    goto :goto_1

    .line 94
    :cond_5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 96
    iget v1, p0, Lnc;->d:I

    .line 98
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 101
    :goto_1
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const-string v1, "NaviExitInfoAction"

    .line 12
    const-string v2, "NaviExitInfoData == NULL"

    .line 14
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 21
    const-string v2, "EXIT_INFO_TIME"

    .line 23
    const-string v3, "EXIT_INFO_DISTANCE"

    .line 25
    const-string v4, "EXIT_INFO_DIRECTION"

    .line 27
    const-string v5, "EXIT_INFO_EXIT_NAME_NUM"

    .line 29
    const-string v6, "EXIT_INFO_RESULT_STATE"

    .line 31
    if-eqz v1, :cond_4

    .line 33
    invoke-virtual {p0}, Lj20;->x()Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;

    .line 36
    move-result-object v1

    .line 37
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 39
    const/16 v7, 0x2710

    .line 41
    if-eq v0, v7, :cond_3

    .line 43
    const/16 v7, 0x2714

    .line 45
    if-eq v0, v7, :cond_2

    .line 47
    const/16 v7, 0x2727

    .line 49
    if-eq v0, v7, :cond_1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, -0x2

    .line 53
    iput v0, p0, Lnc;->d:I

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lnc;->d:I

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 v0, 0x1

    .line 61
    iput v0, p0, Lnc;->d:I

    .line 63
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 65
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    iget v7, p0, Lnc;->d:I

    .line 70
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;->u()I

    .line 76
    move-result v6

    .line 77
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;->t()Ljava/lang/String;

    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;->r()J

    .line 90
    move-result-wide v4

    .line 91
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 94
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;->s()J

    .line 97
    move-result-wide v3

    .line 98
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 101
    return-object v0

    .line 102
    :cond_4
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviExitInfoData;

    .line 104
    new-instance v1, Landroid/content/Intent;

    .line 106
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 109
    iget v7, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 111
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    iget v6, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviExitInfoData;->exitNumber:I

    .line 116
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    iget-object v5, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviExitInfoData;->exitDirection:Ljava/lang/String;

    .line 121
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviExitInfoData;->distance:J

    .line 126
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 129
    iget-wide v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviExitInfoData;->time:J

    .line 131
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 134
    return-object v1
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->getReadyStatus()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/16 v0, 0x2722

    .line 9
    invoke-virtual {p0, v0}, Lnc;->e(I)V

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-static {}, Lib;->i()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 19
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RequestHighwayExitModel;

    .line 21
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RequestHighwayExitModel;-><init>()V

    .line 24
    iget v1, p0, Lj20;->k:I

    .line 26
    if-nez v1, :cond_1

    .line 28
    const/4 v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RequestHighwayExitModel;->setAnyExit(Z)V

    .line 34
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {p0}, Lnc;->i()I

    .line 41
    move-result v0

    .line 42
    iget v1, p0, Lj20;->k:I

    .line 44
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeRequestNaviExitInfo(II)V

    .line 47
    :goto_1
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;

    .line 7
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;-><init>()V

    .line 10
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 15
    move-result-object v0

    .line 16
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;

    .line 18
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/HighwayExitModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    move-object v1, v0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    .line 34
    const-string v4, "NaviExitInfoAction"

    .line 36
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 39
    :goto_0
    return-object v1
.end method
