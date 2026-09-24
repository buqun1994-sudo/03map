.class public Lv5;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqGetAreaInfoModel;

.field public l:D

.field public m:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lv5;->l:D

    .line 3
    iput-wide v0, p0, Lv5;->m:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lv5;->l:D

    .line 6
    iput-wide v0, p0, Lv5;->m:D

    const-string v2, "EXTRA_LAT"

    .line 7
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lv5;->l:D

    const-string v2, "EXTRA_LON"

    .line 8
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lv5;->m:D

    .line 9
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetAreaInfoModel;

    iget-wide v0, p0, Lv5;->l:D

    iget-wide v2, p0, Lv5;->m:D

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/client/ReqGetAreaInfoModel;-><init>(DD)V

    iput-object p1, p0, Lv5;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqGetAreaInfoModel;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqGetAreaInfoModel;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lnc;-><init>()V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lv5;->l:D

    .line 12
    iput-wide v0, p0, Lv5;->m:D

    .line 13
    iput-object p1, p0, Lv5;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqGetAreaInfoModel;

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
    const-string v1, "GetAreaInfoAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 14
    move-result-object v0

    .line 15
    iget-boolean v1, p0, Lnc;->c:Z

    .line 17
    if-eqz v1, :cond_0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lv5;->x()Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;

    .line 24
    move-result-object v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 28
    if-nez v0, :cond_1

    .line 30
    const/16 v0, 0x2730

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 35
    :goto_0
    invoke-direct {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 38
    move-object v0, v1

    .line 39
    :goto_1
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 11

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
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 11
    const-string v1, "AREA_NAME"

    .line 13
    const-string v2, "COUNTRY_NAME"

    .line 15
    const-string v3, "DISTRICT_NAME"

    .line 17
    const/16 v4, 0x275d

    .line 19
    const-string v5, "CITY_NAME"

    .line 21
    const-string v6, "PROVINCE_NAME"

    .line 23
    const/16 v7, 0x272d

    .line 25
    const-string v8, "AREA_CODE"

    .line 27
    const/16 v9, 0x272e

    .line 29
    if-eqz v0, :cond_4

    .line 31
    invoke-virtual {p0}, Lv5;->x()Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lnc;->h()I

    .line 38
    move-result v10

    .line 39
    if-ne v7, v10, :cond_1

    .line 41
    invoke-virtual {p0, v9}, Lnc;->t(I)V

    .line 44
    :cond_1
    new-instance v7, Landroid/content/Intent;

    .line 46
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 49
    if-eqz v0, :cond_3

    .line 51
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;->getProvinceName()Ljava/lang/String;

    .line 54
    move-result-object v10

    .line 55
    invoke-virtual {v7, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;->getCityName()Ljava/lang/String;

    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0}, Lnc;->h()I

    .line 68
    move-result v5

    .line 69
    if-ne v4, v5, :cond_2

    .line 71
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;->getDistricyName()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v7, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;->getAreaCode()Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;->getCountryName()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0}, Lnc;->h()I

    .line 96
    move-result v2

    .line 97
    if-ne v9, v2, :cond_3

    .line 99
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;->getDistricyName()Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;->getAreaCode()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    :cond_3
    :goto_0
    return-object v7

    .line 114
    :cond_4
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;

    .line 120
    invoke-virtual {p0}, Lnc;->h()I

    .line 123
    move-result v10

    .line 124
    if-ne v7, v10, :cond_5

    .line 126
    invoke-virtual {p0, v9}, Lnc;->t(I)V

    .line 129
    :cond_5
    new-instance v7, Landroid/content/Intent;

    .line 131
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 134
    if-eqz v0, :cond_7

    .line 136
    iget-object v10, v0, Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;->provice:Ljava/lang/String;

    .line 138
    invoke-virtual {v7, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v6, v0, Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;->city:Ljava/lang/String;

    .line 143
    invoke-virtual {v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lnc;->h()I

    .line 149
    move-result v5

    .line 150
    if-ne v4, v5, :cond_6

    .line 152
    iget-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;->district:Ljava/lang/String;

    .line 154
    invoke-virtual {v7, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;->areaCode:Ljava/lang/String;

    .line 159
    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;->country:Ljava/lang/String;

    .line 164
    invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    goto :goto_1

    .line 168
    :cond_6
    invoke-virtual {p0}, Lnc;->h()I

    .line 171
    move-result v2

    .line 172
    if-ne v9, v2, :cond_7

    .line 174
    iget-object v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;->district:Ljava/lang/String;

    .line 176
    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;->areaCode:Ljava/lang/String;

    .line 181
    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    :cond_7
    :goto_1
    return-object v7
.end method

.method public d()V
    .locals 5

    .line 1
    invoke-static {}, Lib;->j()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lv5;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqGetAreaInfoModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 16
    move-result v0

    .line 17
    iget-wide v1, p0, Lv5;->l:D

    .line 19
    iget-wide v3, p0, Lv5;->m:D

    .line 21
    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->getAreaInfoAction(IDD)V

    .line 24
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;
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
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;
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
    const-string v4, "GetAreaInfoAction"

    .line 40
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method
