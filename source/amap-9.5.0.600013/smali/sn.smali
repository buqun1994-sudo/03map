.class public Lsn;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
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
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/MuteStateData;

    .line 7
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;

    .line 13
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;-><init>()V

    .line 16
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/MuteStateData;->muteStateType:I

    .line 18
    if-eqz v0, :cond_3

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq v0, v2, :cond_2

    .line 23
    const/4 v2, 0x2

    .line 24
    if-eq v0, v2, :cond_1

    .line 26
    const/4 v2, 0x3

    .line 27
    if-eq v0, v2, :cond_2

    .line 29
    const/4 v2, 0x5

    .line 30
    if-eq v0, v2, :cond_2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/16 v0, 0x2a

    .line 35
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;->t(I)V

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/16 v0, 0x29

    .line 41
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;->t(I)V

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/16 v0, 0x28

    .line 47
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;->t(I)V

    .line 50
    :goto_0
    return-object v1
.end method

.method public c()Landroid/content/Intent;
    .locals 6

    .line 1
    const/16 v0, 0x2758

    .line 3
    invoke-virtual {p0, v0}, Lnc;->t(I)V

    .line 6
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/MuteStateData;

    .line 12
    if-nez v0, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    new-array v2, v1, [Ljava/lang/Object;

    .line 19
    iget v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/MuteStateData;->muteStateType:I

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x0

    .line 26
    aput-object v3, v2, v4

    .line 28
    const-string v3, "MuteStateAction"

    .line 30
    const-string v5, "MuteStateData muteStateType={?}"

    .line 32
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    new-instance v2, Landroid/content/Intent;

    .line 37
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 40
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/MuteStateData;->muteStateType:I

    .line 42
    const-string v3, "EXTRA_MUTE"

    .line 44
    if-eqz v0, :cond_4

    .line 46
    if-eq v0, v1, :cond_3

    .line 48
    const/4 v3, 0x2

    .line 49
    const-string v5, "EXTRA_CASUAL_MUTE"

    .line 51
    if-eq v0, v3, :cond_2

    .line 53
    const/4 v1, 0x3

    .line 54
    if-eq v0, v1, :cond_1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    :goto_0
    return-object v2
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnc;->i()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeGetMuteState(I)V

    .line 8
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
