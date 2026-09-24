.class public Lp50;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqPathConfigInfoModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lnc;-><init>()V

    .line 9
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqPathConfigInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqPathConfigInfoModel;-><init>()V

    iput-object v0, p0, Lp50;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqPathConfigInfoModel;

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/ReqPathConfigInfoModel;

    invoke-direct {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqPathConfigInfoModel;-><init>()V

    iput-object p1, p0, Lp50;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqPathConfigInfoModel;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqPathConfigInfoModel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqPathConfigInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqPathConfigInfoModel;-><init>()V

    iput-object v0, p0, Lp50;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqPathConfigInfoModel;

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 7
    iput-object p1, p0, Lp50;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqPathConfigInfoModel;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "PathConfigInfoAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_5

    .line 17
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/PathConfigData;

    .line 19
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/RspPathConfigInfoModel;

    .line 21
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspPathConfigInfoModel;-><init>()V

    .line 24
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/PathConfigData;->vecPath:Ljava/util/List;

    .line 26
    if-eqz v0, :cond_6

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    move-result v2

    .line 32
    if-lez v2, :cond_6

    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v0

    .line 38
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_6

    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;

    .line 50
    iget-object v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->name:Ljava/lang/String;

    .line 52
    const-string v4, "activatePath"

    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_1

    .line 60
    iget-object v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->data:Ljava/lang/String;

    .line 62
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RspPathConfigInfoModel;->setActivatePath(Ljava/lang/String;)V

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const-string v3, "audioPath"

    .line 68
    iget-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->name:Ljava/lang/String;

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_2

    .line 76
    iget-object v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->data:Ljava/lang/String;

    .line 78
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RspPathConfigInfoModel;->setAudioPath(Ljava/lang/String;)V

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const-string v3, "logPath"

    .line 84
    iget-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->name:Ljava/lang/String;

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_3

    .line 92
    iget-object v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->data:Ljava/lang/String;

    .line 94
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RspPathConfigInfoModel;->setLogPath(Ljava/lang/String;)V

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    const-string v3, "mapDataPath"

    .line 100
    iget-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->name:Ljava/lang/String;

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_4

    .line 108
    iget-object v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->data:Ljava/lang/String;

    .line 110
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RspPathConfigInfoModel;->setMapDataPath(Ljava/lang/String;)V

    .line 113
    goto :goto_0

    .line 114
    :cond_4
    const-string v3, "userDataPath"

    .line 116
    iget-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->name:Ljava/lang/String;

    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_0

    .line 124
    iget-object v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->data:Ljava/lang/String;

    .line 126
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RspPathConfigInfoModel;->setUserDataPath(Ljava/lang/String;)V

    .line 129
    goto :goto_0

    .line 130
    :cond_5
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 132
    const/16 v0, 0x2730

    .line 134
    invoke-direct {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 137
    :cond_6
    return-object v1
.end method

.method public c()Landroid/content/Intent;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "PathConfigInfoAction"

    .line 6
    const-string v2, "pareseToIntent"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 13
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 16
    const-string v1, "KEY_TYPE"

    .line 18
    const v2, 0xea82

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_5

    .line 30
    check-cast v1, Lcom/autonavi/amapauto/jni/protocol/data/PathConfigData;

    .line 32
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/PathConfigData;->vecPath:Ljava/util/List;

    .line 34
    if-eqz v1, :cond_5

    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 39
    move-result v2

    .line 40
    if-lez v2, :cond_5

    .line 42
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v1

    .line 46
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_5

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;

    .line 58
    iget-object v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->name:Ljava/lang/String;

    .line 60
    const-string v4, "activatePath"

    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_1

    .line 68
    iget-object v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->data:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->name:Ljava/lang/String;

    .line 76
    const-string v4, "audioPath"

    .line 78
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_2

    .line 84
    iget-object v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->data:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-object v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->name:Ljava/lang/String;

    .line 92
    const-string v4, "logPath"

    .line 94
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_3

    .line 100
    iget-object v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->data:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    goto :goto_0

    .line 106
    :cond_3
    iget-object v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->name:Ljava/lang/String;

    .line 108
    const-string v4, "mapDataPath"

    .line 110
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_4

    .line 116
    iget-object v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->data:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    iget-object v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->name:Ljava/lang/String;

    .line 124
    const-string v4, "userDataPath"

    .line 126
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_0

    .line 132
    iget-object v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;->data:Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    goto :goto_0

    .line 138
    :cond_5
    return-object v0
.end method

.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "PathConfigInfoAction"

    .line 6
    const-string v2, "doAction"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lnc;->i()I

    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeGetPathConfigInfo(I)V

    .line 18
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
