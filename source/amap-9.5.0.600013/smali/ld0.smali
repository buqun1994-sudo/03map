.class public Lld0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;
.implements Lld;


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

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "EXTRA_WIPE_STATE"

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lld0;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;->getWipeState()I

    move-result p1

    iput p1, p0, Lld0;->k:I

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "SetWipeStateAction"

    .line 6
    const-string v3, "[parseToAidlModel]"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 14
    move-result-object v1

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 18
    iget-boolean v4, v1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 20
    if-eqz v4, :cond_1

    .line 22
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 24
    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0}, Lld0;->x()Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;

    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    .line 33
    iget v3, p0, Lnc;->d:I

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v3

    .line 39
    aput-object v3, v1, v0

    .line 41
    const-string v0, "[parseToAidlModel]resultCode:{?}"

    .line 43
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 48
    iget v1, p0, Lnc;->d:I

    .line 50
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 53
    :goto_0
    return-object v0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/autonavi/amapauto/jni/protocol/data/WipeStateData;

    .line 60
    if-eqz v1, :cond_2

    .line 62
    iget-boolean v4, v1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 64
    if-eqz v4, :cond_2

    .line 66
    new-instance v4, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;

    .line 68
    invoke-direct {v4}, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;-><init>()V

    .line 71
    iget v5, v1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 73
    invoke-virtual {v4, v5}, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;->setResultcode(I)V

    .line 76
    iget v5, v1, Lcom/autonavi/amapauto/jni/protocol/data/WipeStateData;->operaSelect:I

    .line 78
    invoke-virtual {v4, v5}, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;->setOperaSelect(I)V

    .line 81
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/WipeStateData;->msg:Ljava/lang/String;

    .line 83
    invoke-virtual {v4, v1}, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;->setMsg(Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x3

    .line 87
    new-array v1, v1, [Ljava/lang/Object;

    .line 89
    invoke-virtual {v4}, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;->getResultcode()I

    .line 92
    move-result v5

    .line 93
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v5

    .line 97
    aput-object v5, v1, v0

    .line 99
    invoke-virtual {v4}, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;->getOperaSelect()I

    .line 102
    move-result v0

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v0

    .line 107
    aput-object v0, v1, v3

    .line 109
    const/4 v0, 0x2

    .line 110
    invoke-virtual {v4}, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;->getMsg()Ljava/lang/String;

    .line 113
    move-result-object v3

    .line 114
    aput-object v3, v1, v0

    .line 116
    const-string v0, "[parseToAidlModel]resultCode:{?};operaSelect:{?};msg:{?}"

    .line 118
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    goto :goto_1

    .line 122
    :cond_2
    new-instance v4, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 124
    iget v1, p0, Lnc;->d:I

    .line 126
    invoke-direct {v4, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 129
    new-array v1, v3, [Ljava/lang/Object;

    .line 131
    iget v3, p0, Lnc;->d:I

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v3

    .line 137
    aput-object v3, v1, v0

    .line 139
    const-string v0, "[parseToAidlModel]ProtocolErrorModel resultCode:{?}"

    .line 141
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :goto_1
    return-object v4
.end method

.method public c()Landroid/content/Intent;
    .locals 10

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
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x1

    .line 13
    const-string v4, "EXTRA_WIPE_STATE"

    .line 15
    const-string v5, "EXTRA_RESPONSE_CODE"

    .line 17
    const/16 v6, 0x2f4f

    .line 19
    const-string v7, "SetWipeStateAction"

    .line 21
    const/4 v8, 0x0

    .line 22
    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {p0, v6}, Lnc;->t(I)V

    .line 27
    invoke-virtual {p0}, Lld0;->x()Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;

    .line 30
    move-result-object v1

    .line 31
    new-instance v6, Landroid/content/Intent;

    .line 33
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 36
    if-nez v1, :cond_1

    .line 38
    const-string v0, "[parseToAidlModel] pareseToIntent setWipeStateModel == null"

    .line 40
    new-array v1, v8, [Ljava/lang/Object;

    .line 42
    invoke-static {v7, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    return-object v6

    .line 46
    :cond_1
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 48
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;->getOperaSelect()I

    .line 51
    move-result v9

    .line 52
    invoke-virtual {v6, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    invoke-virtual {v6, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const/4 v4, 0x3

    .line 59
    new-array v4, v4, [Ljava/lang/Object;

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    move-result-object v0

    .line 65
    aput-object v0, v4, v8

    .line 67
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;->getResultcode()I

    .line 70
    move-result v0

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v0

    .line 75
    aput-object v0, v4, v3

    .line 77
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v0

    .line 81
    aput-object v0, v4, v2

    .line 83
    const-string v0, "[parseToAidlModel]isSuccessed:{?};resultCode:{?};operaSelect:{?};"

    .line 85
    invoke-static {v7, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return-object v6

    .line 89
    :cond_2
    invoke-virtual {p0, v6}, Lnc;->t(I)V

    .line 92
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/WipeStateData;

    .line 98
    new-instance v1, Landroid/content/Intent;

    .line 100
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 103
    if-nez v0, :cond_3

    .line 105
    const-string v6, "[parseToAidlModel] pareseToIntent data == null"

    .line 107
    new-array v9, v8, [Ljava/lang/Object;

    .line 109
    invoke-static {v7, v6, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :cond_3
    if-eqz v0, :cond_4

    .line 114
    iget-boolean v6, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 116
    goto :goto_0

    .line 117
    :cond_4
    const/4 v6, 0x0

    .line 118
    :goto_0
    if-eqz v0, :cond_5

    .line 120
    iget v9, v0, Lcom/autonavi/amapauto/jni/protocol/data/WipeStateData;->operaSelect:I

    .line 122
    goto :goto_1

    .line 123
    :cond_5
    const/4 v9, 0x0

    .line 124
    :goto_1
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    new-array v2, v2, [Ljava/lang/Object;

    .line 132
    if-eqz v0, :cond_6

    .line 134
    iget v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 136
    goto :goto_2

    .line 137
    :cond_6
    const/4 v4, 0x0

    .line 138
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    move-result-object v4

    .line 142
    aput-object v4, v2, v8

    .line 144
    if-eqz v0, :cond_7

    .line 146
    iget v8, v0, Lcom/autonavi/amapauto/jni/protocol/data/WipeStateData;->operaSelect:I

    .line 148
    :cond_7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    move-result-object v0

    .line 152
    aput-object v0, v2, v3

    .line 154
    const-string v0, "[parseToAidlModel]resultCode:{?};operaSelect:{?};"

    .line 156
    invoke-static {v7, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    return-object v1
.end method

.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lld0;->k:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "SetWipeStateAction"

    .line 15
    const-string v2, "[doAction]wipeState:{?}"

    .line 17
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lib;->i()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;

    .line 28
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;-><init>()V

    .line 31
    iget v1, p0, Lld0;->k:I

    .line 33
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;->setWipeState(I)V

    .line 36
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 43
    move-result v0

    .line 44
    iget v1, p0, Lld0;->k:I

    .line 46
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSetWipeState(II)V

    .line 49
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;
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
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;
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
    const-string v4, "SetWipeStateAction"

    .line 40
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method
