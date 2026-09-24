.class public Lfd0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;
.implements Lld;


# instance fields
.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "EXTRA_NAVI_TYPE"

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfd0;->k:I

    const-string v0, "EXTRA_CRUISE_TYPE"

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfd0;->l:I

    const-string v0, "exitAR"

    const/4 v1, -0x1

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lfd0;->m:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;->getNaviType()I

    move-result v0

    iput v0, p0, Lfd0;->k:I

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;->getCruiseType()I

    move-result v0

    iput v0, p0, Lfd0;->l:I

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;->getExitAR()I

    move-result p1

    iput p1, p0, Lfd0;->m:I

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
    const/4 v1, 0x0

    .line 6
    const-string v2, "SetNaviTypeAction"

    .line 8
    if-eqz v0, :cond_1

    .line 10
    iget-boolean v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 12
    if-eqz v3, :cond_1

    .line 14
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lfd0;->x()Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;

    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    iget v3, p0, Lnc;->d:I

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v3

    .line 32
    aput-object v3, v0, v1

    .line 34
    const-string v1, "[parseToAidlModel]resultCode:{?}"

    .line 36
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 41
    iget v1, p0, Lnc;->d:I

    .line 43
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 46
    :goto_0
    return-object v0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviTypeData;

    .line 53
    if-eqz v0, :cond_2

    .line 55
    iget-boolean v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 57
    if-eqz v3, :cond_2

    .line 59
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;

    .line 61
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;-><init>()V

    .line 64
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviTypeData;->naviType:I

    .line 66
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;->setNaviType(I)V

    .line 69
    return-object v1

    .line 70
    :cond_2
    const-string v0, "[parseToAidlModel]error"

    .line 72
    new-array v1, v1, [Ljava/lang/Object;

    .line 74
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 79
    iget v1, p0, Lnc;->d:I

    .line 81
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 84
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 12

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
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 11
    const-string v2, "exitAR"

    .line 13
    const-string v3, "EXTRA_NAVI_TYPE"

    .line 15
    const-string v4, "EXTRA_RESPONSE_CODE"

    .line 17
    const/16 v5, 0x2f50

    .line 19
    const/4 v6, 0x2

    .line 20
    const-string v7, "SetNaviTypeAction"

    .line 22
    const/4 v8, 0x1

    .line 23
    const/4 v9, 0x0

    .line 24
    if-eqz v1, :cond_3

    .line 26
    invoke-virtual {p0, v5}, Lnc;->t(I)V

    .line 29
    invoke-virtual {p0}, Lfd0;->x()Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;

    .line 32
    move-result-object v1

    .line 33
    new-instance v5, Landroid/content/Intent;

    .line 35
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 38
    if-nez v1, :cond_1

    .line 40
    const-string v0, "[parseToAidlModel] pareseToIntent setNaviTypeModel == null"

    .line 42
    new-array v1, v9, [Ljava/lang/Object;

    .line 44
    invoke-static {v7, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-object v5

    .line 48
    :cond_1
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 50
    const/4 v10, 0x3

    .line 51
    new-array v10, v10, [Ljava/lang/Object;

    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    move-result-object v11

    .line 57
    aput-object v11, v10, v9

    .line 59
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;->getNaviType()I

    .line 62
    move-result v9

    .line 63
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v9

    .line 67
    aput-object v9, v10, v8

    .line 69
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;->getCruiseType()I

    .line 72
    move-result v9

    .line 73
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v9

    .line 77
    aput-object v9, v10, v6

    .line 79
    const-string v9, "[pareseToIntent] isSuccessed:{?} naviType:{?} cruiseType:{?}"

    .line 81
    invoke-static {v7, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    if-eqz v0, :cond_2

    .line 86
    const/4 v6, 0x1

    .line 87
    :cond_2
    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;->getNaviType()I

    .line 93
    move-result v0

    .line 94
    invoke-virtual {v5, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string v0, "EXTRA_CRUISE_TYPE"

    .line 99
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;->getCruiseType()I

    .line 102
    move-result v3

    .line 103
    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;->getExitAR()I

    .line 109
    move-result v0

    .line 110
    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    return-object v5

    .line 114
    :cond_3
    invoke-virtual {p0, v5}, Lnc;->t(I)V

    .line 117
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_4

    .line 123
    new-array v1, v8, [Ljava/lang/Object;

    .line 125
    iget-boolean v5, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 127
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 130
    move-result-object v5

    .line 131
    aput-object v5, v1, v9

    .line 133
    const-string v5, "[pareseToIntent]isSuccessed:{?}"

    .line 135
    invoke-static {v7, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-boolean v9, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 140
    :cond_4
    new-instance v0, Landroid/content/Intent;

    .line 142
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 145
    if-eqz v9, :cond_5

    .line 147
    const/4 v6, 0x1

    .line 148
    :cond_5
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    iget v1, p0, Lfd0;->k:I

    .line 153
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    iget v1, p0, Lfd0;->m:I

    .line 158
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    return-object v0
.end method

.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lfd0;->k:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget v1, p0, Lfd0;->l:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 22
    const-string v1, "SetNaviTypeAction"

    .line 24
    const-string v2, "[doAction]naviType:{?},cruiseType:{?}"

    .line 26
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Lib;->h()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;

    .line 37
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;-><init>()V

    .line 40
    iget v1, p0, Lfd0;->k:I

    .line 42
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;->setNaviType(I)V

    .line 45
    iget v1, p0, Lfd0;->l:I

    .line 47
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;->setCruiseType(I)V

    .line 50
    iget v1, p0, Lfd0;->m:I

    .line 52
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;->setExitAR(I)V

    .line 55
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 62
    move-result v0

    .line 63
    iget v1, p0, Lfd0;->k:I

    .line 65
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSetNaviType(II)V

    .line 68
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;
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
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;
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
    const-string v4, "SetNaviTypeAction"

    .line 40
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method
