.class public Lo60;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public final k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:D

.field public o:D

.field public p:I

.field public q:I

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:D

.field public u:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "PoiLabelAction"

    .line 29
    iput-object v0, p0, Lo60;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lo60;->l:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lo60;->m:Ljava/lang/String;

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lo60;->q:I

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "PoiLabelAction"

    .line 2
    iput-object v0, p0, Lo60;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lo60;->l:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lo60;->m:Ljava/lang/String;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lo60;->q:I

    const-string v0, "EXTRA_NAME"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo60;->l:Ljava/lang/String;

    const-string v0, "EXTRA_ADDRESS"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo60;->m:Ljava/lang/String;

    const-string v0, "EXTRA_LAT"

    const-wide/16 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lo60;->n:D

    const-string v0, "EXTRA_LON"

    .line 9
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lo60;->o:D

    const-string v0, "EXTRA_DEV"

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo60;->p:I

    const-string v0, "SOURCE_APP"

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo60;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "PoiLabelAction"

    .line 13
    iput-object v0, p0, Lo60;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lo60;->l:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lo60;->m:Ljava/lang/String;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lo60;->q:I

    .line 17
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->getType()I

    move-result v0

    iput v0, p0, Lo60;->q:I

    .line 18
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->getPoiName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo60;->l:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo60;->m:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lo60;->n:D

    .line 21
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lo60;->o:D

    .line 22
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->getEncryptType()I

    move-result v0

    iput v0, p0, Lo60;->p:I

    .line 23
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo60;->r:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->getPoiid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo60;->s:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->getEntryLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lo60;->u:D

    .line 26
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->getEntryLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lo60;->t:D

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

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
    if-eqz v0, :cond_0

    .line 7
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    const-string v1, "PoiLabelAction"

    .line 16
    const-string v2, "[parseToAidlModel] isSuccessed"

    .line 18
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;

    .line 23
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;-><init>()V

    .line 26
    iget v1, p0, Lo60;->q:I

    .line 28
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setType(I)V

    .line 31
    iget-object v1, p0, Lo60;->l:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setPoiName(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lo60;->m:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setAddress(Ljava/lang/String;)V

    .line 41
    iget-wide v1, p0, Lo60;->n:D

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setLatitude(D)V

    .line 46
    iget-wide v1, p0, Lo60;->o:D

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setLongitude(D)V

    .line 51
    iget v1, p0, Lo60;->p:I

    .line 53
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setEncryptType(I)V

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 59
    iget v1, p0, Lnc;->d:I

    .line 61
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 64
    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-static {}, Lib;->h()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;-><init>()V

    .line 14
    iget v2, v0, Lo60;->q:I

    .line 16
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setType(I)V

    .line 19
    iget-object v2, v0, Lo60;->l:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setPoiName(Ljava/lang/String;)V

    .line 24
    iget-object v2, v0, Lo60;->m:Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setAddress(Ljava/lang/String;)V

    .line 29
    iget-wide v2, v0, Lo60;->n:D

    .line 31
    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setLatitude(D)V

    .line 34
    iget-wide v2, v0, Lo60;->o:D

    .line 36
    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setLongitude(D)V

    .line 39
    iget v2, v0, Lo60;->p:I

    .line 41
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setEncryptType(I)V

    .line 44
    iget-object v2, v0, Lo60;->r:Ljava/lang/String;

    .line 46
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 49
    iget-object v2, v0, Lo60;->s:Ljava/lang/String;

    .line 51
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setPoiid(Ljava/lang/String;)V

    .line 54
    iget-wide v2, v0, Lo60;->u:D

    .line 56
    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setEntryLatitude(D)V

    .line 59
    iget-wide v2, v0, Lo60;->t:D

    .line 61
    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setEntryLongitude(D)V

    .line 64
    invoke-virtual {v0, v1}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget v11, v0, Lo60;->q:I

    .line 70
    const/4 v1, -0x1

    .line 71
    if-ne v11, v1, :cond_2

    .line 73
    iget-object v1, v0, Lo60;->m:Ljava/lang/String;

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_1

    .line 81
    const/4 v2, 0x0

    .line 82
    iget-object v3, v0, Lo60;->m:Ljava/lang/String;

    .line 84
    const-wide/16 v4, 0x0

    .line 86
    const-wide/16 v6, 0x0

    .line 88
    const/4 v8, 0x0

    .line 89
    const/4 v9, -0x1

    .line 90
    const/4 v10, 0x0

    .line 91
    invoke-static/range {v2 .. v10}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeMapLabel(Ljava/lang/String;Ljava/lang/String;DDIII)V

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    iget-object v11, v0, Lo60;->l:Ljava/lang/String;

    .line 97
    const/4 v12, 0x0

    .line 98
    iget-wide v13, v0, Lo60;->n:D

    .line 100
    iget-wide v1, v0, Lo60;->o:D

    .line 102
    iget v3, v0, Lo60;->p:I

    .line 104
    const/16 v18, -0x1

    .line 106
    const/16 v19, 0x0

    .line 108
    move-wide v15, v1

    .line 109
    move/from16 v17, v3

    .line 111
    invoke-static/range {v11 .. v19}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeMapLabel(Ljava/lang/String;Ljava/lang/String;DDIII)V

    .line 114
    goto :goto_0

    .line 115
    :cond_2
    iget-object v4, v0, Lo60;->l:Ljava/lang/String;

    .line 117
    iget-object v5, v0, Lo60;->m:Ljava/lang/String;

    .line 119
    iget-wide v6, v0, Lo60;->n:D

    .line 121
    iget-wide v8, v0, Lo60;->o:D

    .line 123
    iget v10, v0, Lo60;->p:I

    .line 125
    invoke-virtual/range {p0 .. p0}, Lnc;->i()I

    .line 128
    move-result v12

    .line 129
    invoke-static/range {v4 .. v12}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeMapLabel(Ljava/lang/String;Ljava/lang/String;DDIII)V

    .line 132
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
