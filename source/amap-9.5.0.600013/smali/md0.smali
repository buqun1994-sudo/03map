.class public Lmd0;
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

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "KEY_TYPE"

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x2750

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    const/16 v2, 0x2ee6

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "EXTRA_SETTING_TYPE"

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_4

    const/16 v0, 0x14

    .line 10
    iput v0, p0, Lmd0;->k:I

    const-string v0, "EXTRA_SETTING_RESULT"

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lmd0;->l:Z

    xor-int/2addr p1, v3

    const/4 v0, -0x1

    .line 12
    invoke-static {v2, v0, p1}, Lwe0;->c(III)V

    goto :goto_0

    :cond_1
    const-string v0, "EXTRA_TYPE"

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmd0;->k:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    const/16 v0, 0xa

    .line 14
    iput v0, p0, Lmd0;->k:I

    :cond_2
    const-string v0, "EXTRA_OPERA"

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lmd0;->l:Z

    .line 16
    iget p1, p0, Lmd0;->k:I

    xor-int/lit8 v0, v1, 0x1

    invoke-static {v2, p1, v0}, Lwe0;->c(III)V

    :cond_4
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;->getNaviCruiseType()I

    move-result v0

    iput v0, p0, Lmd0;->k:I

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;->getOperaType()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lmd0;->l:Z

    .line 6
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "SettingViewAction"

    .line 8
    if-eqz v0, :cond_2

    .line 10
    const/4 v3, 0x2

    .line 11
    new-array v4, v3, [Ljava/lang/Object;

    .line 13
    iget v5, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v5

    .line 19
    aput-object v5, v4, v1

    .line 21
    iget-boolean v1, p0, Lnc;->c:Z

    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    move-result-object v1

    .line 27
    const/4 v5, 0x1

    .line 28
    aput-object v1, v4, v5

    .line 30
    const-string v1, "ALResponeData resultCode:{?} isSuccessed:{?}"

    .line 32
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 37
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lmd0;->x()Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;

    .line 42
    move-result-object v0

    .line 43
    return-object v0

    .line 44
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;

    .line 46
    iget v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 48
    invoke-direct {v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;-><init>(I)V

    .line 51
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 53
    if-eqz v0, :cond_1

    .line 55
    const/4 v3, 0x1

    .line 56
    :cond_1
    invoke-virtual {v1, v3}, Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;->setIsSuccess(I)V

    .line 59
    return-object v1

    .line 60
    :cond_2
    const-string v0, "ALResponeData null"

    .line 62
    new-array v1, v1, [Ljava/lang/Object;

    .line 64
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const/4 v0, 0x0

    .line 68
    return-object v0
.end method

.method public d()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lmd0;->k:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget-boolean v1, p0, Lmd0;->l:Z

    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 22
    const-string v1, "SettingViewAction"

    .line 24
    const-string v3, "doAction settingType:{?} settingValue:{?}"

    .line 26
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Lib;->h()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;

    .line 37
    iget v1, p0, Lmd0;->k:I

    .line 39
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;-><init>(I)V

    .line 42
    iget-boolean v1, p0, Lmd0;->l:Z

    .line 44
    xor-int/2addr v1, v2

    .line 45
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;->setOperaType(I)V

    .line 48
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 55
    move-result v0

    .line 56
    iget v1, p0, Lmd0;->k:I

    .line 58
    iget-boolean v2, p0, Lmd0;->l:Z

    .line 60
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSetSetting(IIZ)V

    .line 63
    :goto_0
    return-void
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;
    .locals 5

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;-><init>(I)V

    .line 7
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 10
    move-result-object v2

    .line 11
    iget-object v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 13
    invoke-static {v2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 16
    move-result-object v2

    .line 17
    :try_start_0
    const-class v3, Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;

    .line 19
    invoke-static {v2, v3}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    move-object v0, v2

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    const-string v4, "SettingViewAction"

    .line 36
    invoke-static {v4, v3, v2, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 39
    :goto_0
    return-object v0
.end method
