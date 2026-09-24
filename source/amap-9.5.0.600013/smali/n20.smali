.class public Ln20;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:I

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Ln20;->k:I

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ln20;->k:I

    const-string v0, "EXTRA_MUTE"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4
    iput v3, p0, Ln20;->k:I

    .line 5
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 6
    :goto_0
    iput-boolean v3, p0, Ln20;->l:Z

    goto :goto_2

    :cond_1
    const-string v0, "EXTRA_CASUAL_MUTE"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iput v2, p0, Ln20;->k:I

    .line 9
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    .line 10
    :goto_1
    iput-boolean v3, p0, Ln20;->l:Z

    .line 11
    :cond_3
    :goto_2
    iget p1, p0, Ln20;->k:I

    iget-boolean v0, p0, Ln20;->l:Z

    xor-int/2addr v0, v2

    const/16 v1, 0x273f

    invoke-static {v1, p1, v0}, Lwe0;->c(III)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/user/SetNaviMuteModel;)V
    .locals 7

    .line 12
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Ln20;->k:I

    .line 14
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/SetNaviMuteModel;->getActionType()I

    move-result v1

    .line 15
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/SetNaviMuteModel;->getOperaType()I

    move-result p1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const-string v1, "NaviMuteAction"

    const-string v6, " init getActionType:{?} getOperaType:{?}"

    invoke-static {v1, v6, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq p1, v5, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 17
    iput v0, p0, Ln20;->k:I

    goto :goto_0

    .line 18
    :cond_0
    iput v5, p0, Ln20;->k:I

    .line 19
    iput-boolean v4, p0, Ln20;->l:Z

    goto :goto_0

    .line 20
    :cond_1
    iput v4, p0, Ln20;->k:I

    .line 21
    iput-boolean v4, p0, Ln20;->l:Z

    goto :goto_0

    .line 22
    :cond_2
    iput v5, p0, Ln20;->k:I

    .line 23
    iput-boolean v5, p0, Ln20;->l:Z

    goto :goto_0

    .line 24
    :cond_3
    iput v4, p0, Ln20;->k:I

    .line 25
    iput-boolean v5, p0, Ln20;->l:Z

    .line 26
    :goto_0
    invoke-virtual {p0, v5}, Lnc;->r(Z)V

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
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 11
    if-eqz v0, :cond_4

    .line 13
    iget v0, p0, Ln20;->k:I

    .line 15
    const/4 v1, 0x3

    .line 16
    if-nez v0, :cond_2

    .line 18
    iget-boolean v0, p0, Ln20;->l:Z

    .line 20
    if-eqz v0, :cond_1

    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x3

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-boolean v0, p0, Ln20;->l:Z

    .line 28
    if-eqz v0, :cond_3

    .line 30
    const/4 v0, 0x2

    .line 31
    goto :goto_0

    .line 32
    :cond_3
    const/4 v0, 0x4

    .line 33
    :goto_0
    new-instance v2, Lcom/autonavi/amapauto/protocol/model/client/user/SetNaviMuteModel;

    .line 35
    invoke-direct {v2, v1, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/SetNaviMuteModel;-><init>(II)V

    .line 38
    goto :goto_1

    .line 39
    :cond_4
    new-instance v2, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 41
    iget v0, p0, Lnc;->d:I

    .line 43
    invoke-direct {v2, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 46
    :goto_1
    return-object v2
.end method

.method public d()V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget v2, p0, Ln20;->k:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    iget-boolean v2, p0, Ln20;->l:Z

    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object v2

    .line 19
    const/4 v4, 0x1

    .line 20
    aput-object v2, v1, v4

    .line 22
    const-string v2, "NaviMuteAction"

    .line 24
    const-string v5, "doAction operaType:{?} muteStatus:{?}"

    .line 26
    invoke-static {v2, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Lib;->h()Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_3

    .line 35
    iget v1, p0, Ln20;->k:I

    .line 37
    const/4 v2, 0x3

    .line 38
    if-nez v1, :cond_1

    .line 40
    iget-boolean v0, p0, Ln20;->l:Z

    .line 42
    if-eqz v0, :cond_0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const/4 v4, 0x3

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-boolean v1, p0, Ln20;->l:Z

    .line 49
    if-eqz v1, :cond_2

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x4

    .line 53
    :goto_0
    move v4, v0

    .line 54
    :goto_1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/SetNaviMuteModel;

    .line 56
    invoke-direct {v0, v2, v4}, Lcom/autonavi/amapauto/protocol/model/client/user/SetNaviMuteModel;-><init>(II)V

    .line 59
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    iget v0, p0, Ln20;->k:I

    .line 65
    const/4 v1, -0x1

    .line 66
    if-ne v0, v1, :cond_4

    .line 68
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 70
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;-><init>()V

    .line 73
    iput-boolean v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 75
    invoke-virtual {p0}, Lnc;->i()I

    .line 78
    move-result v1

    .line 79
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->requestALId:I

    .line 81
    const/16 v1, 0x2711

    .line 83
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 85
    invoke-static {}, Ll30;->g()Ll30;

    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1, v0}, Ll30;->n(Ljava/lang/Object;)V

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    invoke-virtual {p0}, Lnc;->i()I

    .line 96
    move-result v0

    .line 97
    iget v1, p0, Ln20;->k:I

    .line 99
    iget-boolean v2, p0, Ln20;->l:Z

    .line 101
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setNaviMuteModel(IIZ)V

    .line 104
    :goto_2
    return-void
.end method
