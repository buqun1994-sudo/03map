.class public Lx1;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public k:Ljava/lang/String;

.field public l:D

.field public m:D

.field public n:D

.field public o:D

.field public p:Ljava/lang/String;

.field public q:I

.field public r:I

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lx1;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 6

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lx1;->r:I

    const-string v1, "POINAME"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lx1;->k:Ljava/lang/String;

    const-string v1, "LAT"

    const-wide/16 v2, 0x0

    .line 6
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lx1;->l:D

    const-string v1, "LON"

    .line 7
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lx1;->m:D

    const-string v1, "ENTRY_LAT"

    .line 8
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lx1;->n:D

    const-string v1, "ENTRY_LON"

    .line 9
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lx1;->o:D

    const-string v1, "ADDRESS"

    .line 10
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lx1;->p:Ljava/lang/String;

    const-string v1, "EXTRA_TYPE"

    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lx1;->q:I

    const-string v1, "DEV"

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lx1;->r:I

    const-string v0, "EXTRA_POITYPE"

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1;->s:Ljava/lang/String;

    const-string v0, "POIID"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx1;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lx1;->r:I

    .line 17
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getPoiName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1;->k:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lx1;->l:D

    .line 19
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lx1;->m:D

    .line 20
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getEntryLat()D

    move-result-wide v0

    iput-wide v0, p0, Lx1;->n:D

    .line 21
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getEntryLon()D

    move-result-wide v0

    iput-wide v0, p0, Lx1;->o:D

    .line 22
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getPoiAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1;->p:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getFavoriteType()I

    move-result v0

    iput v0, p0, Lx1;->q:I

    .line 24
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getPoiType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1;->s:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getPoiId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1;->t:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->isDev()Z

    move-result p1

    iput p1, p0, Lx1;->r:I

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
    const/16 v1, 0x2730

    .line 7
    const/16 v2, 0x2711

    .line 9
    if-eqz v0, :cond_2

    .line 11
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 13
    if-eqz v0, :cond_2

    .line 15
    iget-boolean v0, p0, Lnc;->c:Z

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lx1;->x()Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiResponseModel;

    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget v0, p0, Lnc;->d:I

    .line 26
    if-eq v0, v2, :cond_1

    .line 28
    iput v1, p0, Lnc;->d:I

    .line 30
    :cond_1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 32
    iget v1, p0, Lnc;->d:I

    .line 34
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 37
    :goto_0
    return-object v0

    .line 38
    :cond_2
    iget-boolean v0, p0, Lnc;->c:Z

    .line 40
    if-eqz v0, :cond_6

    .line 42
    iget v0, p0, Lx1;->q:I

    .line 44
    if-eqz v0, :cond_5

    .line 46
    const/4 v1, 0x1

    .line 47
    if-eq v0, v1, :cond_4

    .line 49
    const/4 v1, 0x2

    .line 50
    if-eq v0, v1, :cond_3

    .line 52
    const/16 v0, 0x2710

    .line 54
    iput v0, p0, Lnc;->d:I

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    const/16 v0, 0x2734

    .line 59
    iput v0, p0, Lnc;->d:I

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    const/16 v0, 0x2733

    .line 64
    iput v0, p0, Lnc;->d:I

    .line 66
    goto :goto_1

    .line 67
    :cond_5
    const/16 v0, 0x2735

    .line 69
    iput v0, p0, Lnc;->d:I

    .line 71
    :goto_1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiResponseModel;

    .line 73
    iget v1, p0, Lnc;->d:I

    .line 75
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiResponseModel;-><init>(I)V

    .line 78
    goto :goto_2

    .line 79
    :cond_6
    iget v0, p0, Lnc;->d:I

    .line 81
    if-eq v0, v2, :cond_7

    .line 83
    iput v1, p0, Lnc;->d:I

    .line 85
    :cond_7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 87
    iget v1, p0, Lnc;->d:I

    .line 89
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 92
    :goto_2
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
    return-object v0

    .line 9
    :cond_0
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "result="

    .line 14
    const-class v4, Lx1;

    .line 16
    const-string v5, "EXTRA_RESPONSE_CODE"

    .line 18
    const-string v6, "CATEGORY"

    .line 20
    const/16 v7, 0x274b

    .line 22
    if-eqz v1, :cond_3

    .line 24
    invoke-virtual {p0, v7}, Lnc;->t(I)V

    .line 27
    new-instance v1, Landroid/content/Intent;

    .line 29
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 32
    invoke-virtual {p0}, Lx1;->x()Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiResponseModel;

    .line 35
    move-result-object v7

    .line 36
    if-eqz v7, :cond_1

    .line 38
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiResponseModel;->getType()I

    .line 41
    move-result v7

    .line 42
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 47
    xor-int/lit8 v0, v0, 0x1

    .line 49
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    new-array v2, v2, [Ljava/lang/Object;

    .line 87
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_2
    return-object v1

    .line 91
    :cond_3
    invoke-virtual {p0, v7}, Lnc;->t(I)V

    .line 94
    new-instance v0, Landroid/content/Intent;

    .line 96
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lcom/autonavi/amapauto/jni/protocol/data/SetHomeOrCompanyResponseData;

    .line 105
    if-eqz v1, :cond_4

    .line 107
    iget v7, v1, Lcom/autonavi/amapauto/jni/protocol/data/SetHomeOrCompanyResponseData;->type:I

    .line 109
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 114
    xor-int/lit8 v1, v1, 0x1

    .line 116
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    :cond_4
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_5

    .line 125
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 128
    move-result-object v1

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v3

    .line 152
    new-array v2, v2, [Ljava/lang/Object;

    .line 154
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_5
    return-object v0
.end method

.method public d()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-static {}, Lib;->i()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 9
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;

    .line 11
    iget v3, v0, Lx1;->q:I

    .line 13
    iget-wide v4, v0, Lx1;->m:D

    .line 15
    iget-wide v6, v0, Lx1;->l:D

    .line 17
    move-object v2, v1

    .line 18
    invoke-direct/range {v2 .. v7}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;-><init>(IDD)V

    .line 21
    iget-object v2, v0, Lx1;->p:Ljava/lang/String;

    .line 23
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->setPoiAddress(Ljava/lang/String;)V

    .line 26
    iget-object v2, v0, Lx1;->k:Ljava/lang/String;

    .line 28
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->setPoiName(Ljava/lang/String;)V

    .line 31
    iget-wide v2, v0, Lx1;->n:D

    .line 33
    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->setEntryLat(D)V

    .line 36
    iget-wide v2, v0, Lx1;->o:D

    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->setEntryLon(D)V

    .line 41
    iget-object v2, v0, Lx1;->s:Ljava/lang/String;

    .line 43
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->setPoiType(Ljava/lang/String;)V

    .line 46
    iget-object v2, v0, Lx1;->t:Ljava/lang/String;

    .line 48
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->setPoiId(Ljava/lang/String;)V

    .line 51
    iget v2, v0, Lx1;->r:I

    .line 53
    const/4 v3, 0x1

    .line 54
    if-ne v2, v3, :cond_0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v3, 0x0

    .line 58
    :goto_0
    invoke-virtual {v1, v3}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->setDev(Z)V

    .line 61
    invoke-virtual {v0, v1}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lx1;->m()Z

    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 71
    iget v1, v0, Lx1;->q:I

    .line 73
    if-ltz v1, :cond_2

    .line 75
    const/4 v2, 0x2

    .line 76
    if-le v1, v2, :cond_3

    .line 78
    :cond_2
    const/16 v1, 0x2711

    .line 80
    invoke-virtual {v0, v1}, Lnc;->e(I)V

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lnc;->i()I

    .line 87
    move-result v2

    .line 88
    iget-object v3, v0, Lx1;->k:Ljava/lang/String;

    .line 90
    iget-wide v4, v0, Lx1;->l:D

    .line 92
    iget-wide v6, v0, Lx1;->m:D

    .line 94
    iget-wide v8, v0, Lx1;->n:D

    .line 96
    iget-wide v10, v0, Lx1;->o:D

    .line 98
    iget-object v12, v0, Lx1;->p:Ljava/lang/String;

    .line 100
    iget v13, v0, Lx1;->q:I

    .line 102
    iget v14, v0, Lx1;->r:I

    .line 104
    iget-object v15, v0, Lx1;->s:Ljava/lang/String;

    .line 106
    iget-object v1, v0, Lx1;->t:Ljava/lang/String;

    .line 108
    move-object/from16 v16, v1

    .line 110
    invoke-static/range {v2 .. v16}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSetHomeOrCompany(ILjava/lang/String;DDDDLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_1
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiResponseModel;
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
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiResponseModel;

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiResponseModel;-><init>(I)V

    .line 15
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 17
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 20
    move-result-object v0

    .line 21
    :try_start_0
    const-class v3, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiResponseModel;

    .line 23
    invoke-static {v0, v3}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    move-object v1, v0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const-class v3, Lx1;

    .line 34
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    invoke-static {v3, v4, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 47
    :goto_0
    return-object v1
.end method
