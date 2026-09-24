.class public Lc60;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:I

.field public e:Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lec;-><init>()V

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;-><init>()V

    iput-object v0, p0, Lc60;->e:Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;

    .line 6
    iput p1, p0, Lc60;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;-><init>()V

    .line 3
    iput-object p1, p0, Lc60;->e:Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "PlaySettingStatusDisAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lc60;->e:Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;

    .line 13
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "PlaySettingStatusDisAction"

    .line 6
    const-string v3, "pareseToIntent"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 13
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 16
    const-string v3, "KEY_TYPE"

    .line 18
    const/16 v4, 0x2723

    .line 20
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    const-string v3, "EXTRA_STATE"

    .line 25
    const/16 v4, 0xc9

    .line 27
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0}, Lec;->d()Z

    .line 33
    move-result v3

    .line 34
    const-string v4, "EXTRA_SETTING_RESULT_WARN"

    .line 36
    const-string v5, "EXTRA_SETTING_RESULT_ROAD"

    .line 38
    const-string v6, "EXTRA_SETTING_RESULT_BACKGROUND_DOG"

    .line 40
    const-string v7, "EXTRA_SETTING_RESULT_CROSS_AREA"

    .line 42
    const-string v8, "EXTRA_SETTING_RESULT_DOG"

    .line 44
    if-eqz v3, :cond_0

    .line 46
    iget-object v0, p0, Lc60;->e:Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;

    .line 48
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->getSettingResultDog()Z

    .line 51
    move-result v0

    .line 52
    invoke-virtual {v1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    iget-object v0, p0, Lc60;->e:Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;

    .line 57
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->getSettingResultCrossArea()Z

    .line 60
    move-result v0

    .line 61
    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    iget-object v0, p0, Lc60;->e:Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;

    .line 66
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->getSettingResultBackgroundDog()Z

    .line 69
    move-result v0

    .line 70
    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    iget-object v0, p0, Lc60;->e:Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;

    .line 75
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->getSettingResultRoad()Z

    .line 78
    move-result v0

    .line 79
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    iget-object v0, p0, Lc60;->e:Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;

    .line 84
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->getSettingResultWarn()Z

    .line 87
    move-result v0

    .line 88
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    goto :goto_5

    .line 92
    :cond_0
    const/4 v3, 0x1

    .line 93
    new-array v9, v3, [Ljava/lang/Object;

    .line 95
    iget v10, p0, Lc60;->d:I

    .line 97
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v10

    .line 101
    aput-object v10, v9, v0

    .line 103
    const-string v10, "state = {?}"

    .line 105
    invoke-static {v2, v10, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget v9, p0, Lc60;->d:I

    .line 110
    and-int/2addr v9, v3

    .line 111
    if-ne v9, v3, :cond_1

    .line 113
    const/4 v9, 0x1

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    const/4 v9, 0x0

    .line 116
    :goto_0
    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    iget v5, p0, Lc60;->d:I

    .line 121
    const/4 v9, 0x2

    .line 122
    and-int/2addr v5, v9

    .line 123
    if-ne v5, v9, :cond_2

    .line 125
    const/4 v5, 0x1

    .line 126
    goto :goto_1

    .line 127
    :cond_2
    const/4 v5, 0x0

    .line 128
    :goto_1
    invoke-virtual {v1, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    iget v5, p0, Lc60;->d:I

    .line 133
    const/4 v8, 0x4

    .line 134
    and-int/2addr v5, v8

    .line 135
    if-ne v5, v8, :cond_3

    .line 137
    const/4 v5, 0x1

    .line 138
    goto :goto_2

    .line 139
    :cond_3
    const/4 v5, 0x0

    .line 140
    :goto_2
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    iget v4, p0, Lc60;->d:I

    .line 145
    const/16 v5, 0x8

    .line 147
    and-int/2addr v4, v5

    .line 148
    if-ne v4, v5, :cond_4

    .line 150
    const/4 v4, 0x1

    .line 151
    goto :goto_3

    .line 152
    :cond_4
    const/4 v4, 0x0

    .line 153
    :goto_3
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    iget v4, p0, Lc60;->d:I

    .line 158
    const/16 v5, 0x10

    .line 160
    and-int/2addr v4, v5

    .line 161
    if-ne v4, v5, :cond_5

    .line 163
    const/4 v4, 0x1

    .line 164
    goto :goto_4

    .line 165
    :cond_5
    const/4 v4, 0x0

    .line 166
    :goto_4
    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    new-array v3, v3, [Ljava/lang/Object;

    .line 171
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 174
    move-result-object v4

    .line 175
    aput-object v4, v3, v0

    .line 177
    const-string v0, "isOpenCrossAreaPlay = {?}"

    .line 179
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :goto_5
    return-object v1
.end method
