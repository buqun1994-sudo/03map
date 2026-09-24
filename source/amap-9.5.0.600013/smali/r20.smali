.class public Lr20;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:D

.field public o:D

.field public p:D

.field public q:D

.field public r:Ljava/lang/String;

.field public s:I

.field public t:Ljava/lang/String;

.field public u:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lr20;->u:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 6

    .line 24
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lr20;->u:I

    const-string v0, "EXTRA_NAVI_VIA_MODIFY"

    const/4 v1, -0x1

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lr20;->k:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    const-string v0, "EXTRA_MIDNAME"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr20;->m:Ljava/lang/String;

    const-string v0, "EXTRA_MIDLAT"

    const-wide/16 v2, 0x0

    .line 28
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lr20;->n:D

    const-string v0, "EXTRA_MIDLON"

    .line 29
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lr20;->o:D

    :cond_1
    const/16 p1, 0x2f48

    .line 30
    iget v0, p0, Lr20;->k:I

    invoke-static {p1, v1, v0}, Lwe0;->c(III)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lr20;->u:I

    const/4 v1, 0x1

    .line 33
    iput v1, p0, Lr20;->k:I

    const-string v1, "parameters"

    .line 34
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 36
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "NaviViaModifyAction"

    invoke-static {v2, v1, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string p1, "name"

    .line 38
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lr20;->m:Ljava/lang/String;

    const-string p1, "latitude"

    .line 39
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lr20;->n:D

    const-string p1, "longitude"

    .line 40
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lr20;->o:D

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;)V
    .locals 8

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lr20;->u:I

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v1}, Lnc;->r(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->getViaProtocolPoi()Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLatitude()D

    move-result-wide v3

    iput-wide v3, p0, Lr20;->n:D

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-nez v7, :cond_0

    .line 8
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLatitude()D

    move-result-wide v3

    iput-wide v3, p0, Lr20;->n:D

    .line 9
    :cond_0
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLongitude()D

    move-result-wide v3

    iput-wide v3, p0, Lr20;->o:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1

    .line 10
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLongitude()D

    move-result-wide v3

    iput-wide v3, p0, Lr20;->o:D

    .line 11
    :cond_1
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getPoiName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lr20;->m:Ljava/lang/String;

    .line 12
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->u()I

    move-result v3

    iput v3, p0, Lr20;->s:I

    .line 13
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lr20;->t:Ljava/lang/String;

    .line 14
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->v()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lr20;->r:Ljava/lang/String;

    .line 15
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getPoiId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lr20;->l:Ljava/lang/String;

    .line 16
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLatitude()D

    move-result-wide v3

    iput-wide v3, p0, Lr20;->q:D

    .line 17
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lr20;->p:D

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->getAction()I

    move-result v2

    .line 19
    iput v1, p0, Lr20;->k:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 20
    iput v0, p0, Lr20;->k:I

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 21
    iput v1, p0, Lr20;->k:I

    goto :goto_0

    :cond_4
    if-ne v2, v1, :cond_5

    const/4 v0, 0x2

    .line 22
    iput v0, p0, Lr20;->k:I

    .line 23
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->getDev()I

    move-result p1

    iput p1, p0, Lr20;->u:I

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lnc;->c:Z

    .line 3
    if-eqz v0, :cond_3

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;-><init>()V

    .line 10
    iget v1, p0, Lr20;->k:I

    .line 12
    if-eqz v1, :cond_2

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eq v1, v3, :cond_1

    .line 18
    const/4 v4, 0x2

    .line 19
    if-eq v1, v4, :cond_0

    .line 21
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->setAction(I)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0, v3}, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->setAction(I)V

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->setAction(I)V

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 v1, -0x1

    .line 34
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->setAction(I)V

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 40
    iget v1, p0, Lnc;->d:I

    .line 42
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 45
    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lnc;->m()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->getReadyStatus()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    const/16 v0, 0x2722

    .line 15
    invoke-virtual {p0, v0}, Lnc;->e(I)V

    .line 18
    goto/16 :goto_1

    .line 20
    :cond_0
    invoke-static {}, Lib;->i()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_4

    .line 26
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;

    .line 28
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;-><init>()V

    .line 31
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 33
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;-><init>()V

    .line 36
    iget-object v2, p0, Lr20;->m:Ljava/lang/String;

    .line 38
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setPoiName(Ljava/lang/String;)V

    .line 41
    iget v2, p0, Lr20;->s:I

    .line 43
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->y(I)V

    .line 46
    iget-wide v2, p0, Lr20;->n:D

    .line 48
    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setLatitude(D)V

    .line 51
    iget-wide v2, p0, Lr20;->o:D

    .line 53
    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setLongitude(D)V

    .line 56
    iget-object v2, p0, Lr20;->t:Ljava/lang/String;

    .line 58
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setAddress(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lr20;->r:Ljava/lang/String;

    .line 63
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->z(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lr20;->l:Ljava/lang/String;

    .line 68
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setPoiId(Ljava/lang/String;)V

    .line 71
    iget-wide v2, p0, Lr20;->q:D

    .line 73
    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setEntryLatitude(D)V

    .line 76
    iget-wide v2, p0, Lr20;->p:D

    .line 78
    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setEntryLongitude(D)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->setViaProtocolPoi(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)V

    .line 84
    iget v1, p0, Lr20;->u:I

    .line 86
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->setDev(I)V

    .line 89
    iget v1, p0, Lr20;->k:I

    .line 91
    if-eqz v1, :cond_3

    .line 93
    const/4 v2, 0x0

    .line 94
    const/4 v3, 0x1

    .line 95
    if-eq v1, v3, :cond_2

    .line 97
    const/4 v4, 0x2

    .line 98
    if-eq v1, v4, :cond_1

    .line 100
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->setAction(I)V

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v0, v3}, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->setAction(I)V

    .line 107
    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->setAction(I)V

    .line 111
    goto :goto_0

    .line 112
    :cond_3
    const/4 v1, -0x1

    .line 113
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->setAction(I)V

    .line 116
    :goto_0
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 119
    goto :goto_1

    .line 120
    :cond_4
    invoke-virtual {p0}, Lnc;->i()I

    .line 123
    move-result v2

    .line 124
    iget v3, p0, Lr20;->k:I

    .line 126
    iget-object v4, p0, Lr20;->m:Ljava/lang/String;

    .line 128
    iget v5, p0, Lr20;->s:I

    .line 130
    iget-wide v6, p0, Lr20;->n:D

    .line 132
    iget-wide v8, p0, Lr20;->o:D

    .line 134
    iget v10, p0, Lr20;->u:I

    .line 136
    invoke-static/range {v2 .. v10}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeNaviViaModify(IILjava/lang/String;IDDI)V

    .line 139
    :goto_1
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
