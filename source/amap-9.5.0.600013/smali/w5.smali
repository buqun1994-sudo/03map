.class public Lw5;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;

.field public e:Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    iput-object p1, p0, Lw5;->e:Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput-object p1, p0, Lw5;->d:Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lw5;->d:Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;

    .line 3
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x272e

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0}, Lec;->d()Z

    .line 16
    move-result v1

    .line 17
    const-string v2, "AREA_CODE"

    .line 19
    const-string v3, "AREA_NAME"

    .line 21
    const-string v4, "CITY_NAME"

    .line 23
    const-string v5, "PROVINCE_NAME"

    .line 25
    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lw5;->d:Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;

    .line 29
    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;->getProvinceName()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lw5;->d:Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;

    .line 40
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;->getCityName()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Lw5;->d:Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;

    .line 49
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;->getDistricyName()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget-object v1, p0, Lw5;->d:Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;

    .line 58
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;->getAreaCode()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lw5;->e:Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;

    .line 68
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;->provice:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lw5;->e:Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;

    .line 75
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;->city:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lw5;->e:Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;

    .line 82
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;->district:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lw5;->e:Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;

    .line 89
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;->areaCode:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :cond_1
    :goto_0
    return-object v0
.end method
