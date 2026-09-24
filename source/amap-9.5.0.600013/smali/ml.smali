.class public Lml;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/16 v0, 0x63

    .line 2
    iput v0, p0, Lml;->o:I

    .line 3
    iput v0, p0, Lml;->t:I

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;-><init>()V

    iput-object v0, p0, Lml;->u:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Lnc;-><init>()V

    const/16 v0, 0x63

    .line 12
    iput v0, p0, Lml;->o:I

    .line 13
    iput v0, p0, Lml;->t:I

    .line 14
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;-><init>()V

    iput-object v1, p0, Lml;->u:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    const-string v1, "EXTRA_EXTERNAL_ENGINE_ID"

    const/4 v2, -0x1

    .line 15
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lml;->k:I

    const-string v1, "EXTRA_EXTERNAL_MAP_LEVEL"

    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lml;->l:I

    const-string v1, "EXTRA_EXTERNAL_MAP_MODE"

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lml;->m:I

    const-string v1, "EXTRA_EXTERNAL_CROSS_CONTROL"

    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lml;->n:I

    const-string v1, "EXTRA_EXTERNAL_MINI_MAP"

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lml;->p:I

    const-string v1, "EXTRA_EXTERNAL_FULL_VIEW"

    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lml;->q:I

    const-string v1, "EXTRA_EXTERNAL_CONFIG_MODE"

    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lml;->r:I

    const-string v1, "EXTRA_EXTERNAL_DAY_NIGHT_MODE"

    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lml;->s:I

    .line 23
    iget-object p1, p0, Lml;->u:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    iget v0, p0, Lml;->k:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->setExternalEngineId(I)V

    .line 24
    iget-object p1, p0, Lml;->u:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    iget v0, p0, Lml;->l:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->setExternalMapLevel(I)V

    .line 25
    iget-object p1, p0, Lml;->u:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    iget v0, p0, Lml;->m:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->setExternalMapMode(I)V

    .line 26
    iget-object p1, p0, Lml;->u:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    iget v0, p0, Lml;->n:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->setExternalCrossControl(I)V

    .line 27
    iget-object p1, p0, Lml;->u:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    iget v0, p0, Lml;->p:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->setExternalMiniMap(I)V

    .line 28
    iget-object p1, p0, Lml;->u:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    iget v0, p0, Lml;->q:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->setExternalFullView(I)V

    .line 29
    iget-object p1, p0, Lml;->u:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    iget v0, p0, Lml;->r:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->setExternalConfigMode(I)V

    .line 30
    iget-object p1, p0, Lml;->u:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    iget v0, p0, Lml;->s:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->setExternalDayNightMode(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    const/16 v0, 0x63

    .line 6
    iput v0, p0, Lml;->o:I

    .line 7
    iput v0, p0, Lml;->t:I

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;-><init>()V

    iput-object v0, p0, Lml;->u:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 10
    iput-object p1, p0, Lml;->u:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    iget v1, p0, Lml;->k:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 14
    iget v1, p0, Lml;->l:I

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 20
    const/4 v3, 0x1

    .line 21
    aput-object v1, v0, v3

    .line 23
    iget v1, p0, Lml;->m:I

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v1

    .line 29
    const/4 v4, 0x2

    .line 30
    aput-object v1, v0, v4

    .line 32
    iget v1, p0, Lml;->n:I

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v1

    .line 38
    const/4 v4, 0x3

    .line 39
    aput-object v1, v0, v4

    .line 41
    iget v1, p0, Lml;->p:I

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v1

    .line 47
    const/4 v4, 0x4

    .line 48
    aput-object v1, v0, v4

    .line 50
    iget v1, p0, Lml;->q:I

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v1

    .line 56
    const/4 v4, 0x5

    .line 57
    aput-object v1, v0, v4

    .line 59
    iget v1, p0, Lml;->r:I

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v1

    .line 65
    const/4 v4, 0x6

    .line 66
    aput-object v1, v0, v4

    .line 68
    iget v1, p0, Lml;->s:I

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v1

    .line 74
    const/4 v4, 0x7

    .line 75
    aput-object v1, v0, v4

    .line 77
    const-string v1, "ExternalScreenControlAction"

    .line 79
    const-string v4, "doAction. windowId={?},level={?},mode={?},crossControl={?},miniMap={?},mFullView={?},mConfigMode={?},mDayNightMode={?}"

    .line 81
    invoke-static {v1, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Lib;->l()Z

    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lml;->u:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    .line 92
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 95
    goto :goto_1

    .line 96
    :cond_0
    iget v0, p0, Lml;->n:I

    .line 98
    if-ne v0, v3, :cond_1

    .line 100
    iget v0, p0, Lml;->k:I

    .line 102
    invoke-static {v0, v3}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setExternalScreenCrossControl(IZ)V

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    if-nez v0, :cond_2

    .line 108
    iget v0, p0, Lml;->k:I

    .line 110
    invoke-static {v0, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setExternalScreenCrossControl(IZ)V

    .line 113
    :cond_2
    :goto_0
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;

    .line 115
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;-><init>()V

    .line 118
    iget v1, p0, Lml;->k:I

    .line 120
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->setWindowId(I)V

    .line 123
    iget v1, p0, Lml;->l:I

    .line 125
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->setLevel(I)V

    .line 128
    iget v1, p0, Lml;->m:I

    .line 130
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->setViewMode(I)V

    .line 133
    iget v1, p0, Lml;->n:I

    .line 135
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->setCrossControl(I)V

    .line 138
    iget v1, p0, Lml;->p:I

    .line 140
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->setMiniMap(I)V

    .line 143
    iget v1, p0, Lml;->q:I

    .line 145
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->setFullView(I)V

    .line 148
    iget v1, p0, Lml;->r:I

    .line 150
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->setConfigMode(I)V

    .line 153
    iget v1, p0, Lml;->s:I

    .line 155
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->setDayNightMode(I)V

    .line 158
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setExtScreenMapStatus(Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;)V

    .line 161
    :goto_1
    return-void
.end method
