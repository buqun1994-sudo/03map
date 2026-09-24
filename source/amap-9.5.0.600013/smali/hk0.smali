.class public Lhk0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:D

.field public p:D

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 2
    iput-wide v0, p0, Lhk0;->o:D

    .line 3
    iput-wide v0, p0, Lhk0;->p:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 5

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 5
    iput-wide v0, p0, Lhk0;->o:D

    .line 6
    iput-wide v0, p0, Lhk0;->p:D

    const-string v0, "VEHICLE_WEIGHT"

    const-wide/16 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lhk0;->o:D

    const-string v0, "MAX_BATT_ENERGY"

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lhk0;->p:D

    const-string v0, "EXTRA_BRAND"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhk0;->k:Ljava/lang/String;

    const-string v0, "EXTRA_MODEL"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhk0;->l:Ljava/lang/String;

    const-string v0, "EXTRA_ENGINENO"

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhk0;->m:Ljava/lang/String;

    const-string v0, "EXTRA_VIN"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhk0;->n:Ljava/lang/String;

    const-string v0, "ENERGY_UNIT"

    const/4 v1, 0x1

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lhk0;->q:I

    const-string v0, "ENERGY_POWER_TYPE"

    const/4 v1, -0x1

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lhk0;->r:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Lnc;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 16
    iput-wide v0, p0, Lhk0;->o:D

    .line 17
    iput-wide v0, p0, Lhk0;->p:D

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->getmBrand()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhk0;->k:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->getmModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhk0;->l:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->getmEnergyUnit()I

    move-result v0

    iput v0, p0, Lhk0;->q:I

    .line 21
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->getmMaxBatteryEnerygy()D

    move-result-wide v0

    iput-wide v0, p0, Lhk0;->p:D

    .line 22
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->getmPowerType()I

    move-result v0

    iput v0, p0, Lhk0;->r:I

    .line 23
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->getmVin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhk0;->n:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->getmEngineNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhk0;->m:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->getmWeight()D

    move-result-wide v0

    iput-wide v0, p0, Lhk0;->o:D

    :cond_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-static {}, Lse;->c()Lse;

    .line 6
    move-result-object v1

    .line 7
    const v2, 0xea61

    .line 10
    invoke-virtual {v1, v2}, Lse;->getOptionalValue(I)Leq$a;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Leq$a;->b()Z

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x7

    .line 19
    const/4 v3, 0x6

    .line 20
    const/4 v4, 0x5

    .line 21
    const/4 v5, 0x4

    .line 22
    const/4 v6, 0x3

    .line 23
    const/4 v7, 0x2

    .line 24
    const/4 v8, 0x1

    .line 25
    const/4 v9, 0x0

    .line 26
    const/16 v10, 0x8

    .line 28
    const-string v11, "mBrand:{?} ,mModel:{?} ,mEngineNo:{?}, mVin:{?} ,mWeight:{?}, mMaxBatteryEnerygy:{?}, mEnergyUnit:{?}, mPowerType:{?}"

    .line 30
    const-string v12, "VehiclecInfoAction"

    .line 32
    if-eqz v1, :cond_0

    .line 34
    new-array v1, v10, [Ljava/lang/Object;

    .line 36
    iget-object v13, v0, Lhk0;->k:Ljava/lang/String;

    .line 38
    aput-object v13, v1, v9

    .line 40
    iget-object v13, v0, Lhk0;->l:Ljava/lang/String;

    .line 42
    aput-object v13, v1, v8

    .line 44
    iget-object v13, v0, Lhk0;->m:Ljava/lang/String;

    .line 46
    aput-object v13, v1, v7

    .line 48
    iget-object v13, v0, Lhk0;->n:Ljava/lang/String;

    .line 50
    aput-object v13, v1, v6

    .line 52
    iget-wide v13, v0, Lhk0;->o:D

    .line 54
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 57
    move-result-object v13

    .line 58
    aput-object v13, v1, v5

    .line 60
    iget-wide v13, v0, Lhk0;->p:D

    .line 62
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 65
    move-result-object v13

    .line 66
    aput-object v13, v1, v4

    .line 68
    iget v13, v0, Lhk0;->q:I

    .line 70
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v13

    .line 74
    aput-object v13, v1, v3

    .line 76
    iget v13, v0, Lhk0;->r:I

    .line 78
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v13

    .line 82
    aput-object v13, v1, v2

    .line 84
    invoke-static {v12, v11, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v14, v0, Lhk0;->k:Ljava/lang/String;

    .line 89
    iget-object v15, v0, Lhk0;->l:Ljava/lang/String;

    .line 91
    iget-object v1, v0, Lhk0;->m:Ljava/lang/String;

    .line 93
    iget-object v13, v0, Lhk0;->n:Ljava/lang/String;

    .line 95
    iget-wide v2, v0, Lhk0;->o:D

    .line 97
    iget-wide v4, v0, Lhk0;->p:D

    .line 99
    iget v6, v0, Lhk0;->q:I

    .line 101
    iget v7, v0, Lhk0;->r:I

    .line 103
    move-object/from16 v16, v1

    .line 105
    move-object/from16 v17, v13

    .line 107
    move-wide/from16 v18, v2

    .line 109
    move-wide/from16 v20, v4

    .line 111
    move/from16 v22, v6

    .line 113
    move/from16 v23, v7

    .line 115
    invoke-static/range {v14 .. v23}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setVehicleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDII)V

    .line 118
    :cond_0
    invoke-static {}, Lib;->i()Z

    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_1

    .line 124
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;

    .line 126
    iget-object v14, v0, Lhk0;->k:Ljava/lang/String;

    .line 128
    iget-object v15, v0, Lhk0;->l:Ljava/lang/String;

    .line 130
    iget-object v2, v0, Lhk0;->m:Ljava/lang/String;

    .line 132
    iget-object v3, v0, Lhk0;->n:Ljava/lang/String;

    .line 134
    iget-wide v4, v0, Lhk0;->o:D

    .line 136
    iget-wide v6, v0, Lhk0;->p:D

    .line 138
    iget v8, v0, Lhk0;->q:I

    .line 140
    iget v9, v0, Lhk0;->r:I

    .line 142
    move-object v13, v1

    .line 143
    move-object/from16 v16, v2

    .line 145
    move-object/from16 v17, v3

    .line 147
    move-wide/from16 v18, v4

    .line 149
    move-wide/from16 v20, v6

    .line 151
    move/from16 v22, v8

    .line 153
    move/from16 v23, v9

    .line 155
    invoke-direct/range {v13 .. v23}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDII)V

    .line 158
    invoke-virtual {v0, v1}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 161
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/RspVehicleEnergyInfoModel;

    .line 163
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspVehicleEnergyInfoModel;-><init>()V

    .line 166
    iget v2, v0, Lhk0;->r:I

    .line 168
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RspVehicleEnergyInfoModel;->setPowerType(I)V

    .line 171
    new-instance v2, Lck0;

    .line 173
    invoke-direct {v2, v1}, Lck0;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspVehicleEnergyInfoModel;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lnc;->i()I

    .line 179
    move-result v1

    .line 180
    iput v1, v2, Lec;->c:I

    .line 182
    invoke-static {}, Ll30;->g()Ll30;

    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1, v2}, Ll30;->a(Lec;)V

    .line 189
    goto :goto_0

    .line 190
    :cond_1
    new-array v1, v10, [Ljava/lang/Object;

    .line 192
    iget-object v2, v0, Lhk0;->k:Ljava/lang/String;

    .line 194
    aput-object v2, v1, v9

    .line 196
    iget-object v2, v0, Lhk0;->l:Ljava/lang/String;

    .line 198
    aput-object v2, v1, v8

    .line 200
    iget-object v2, v0, Lhk0;->m:Ljava/lang/String;

    .line 202
    const/4 v3, 0x2

    .line 203
    aput-object v2, v1, v3

    .line 205
    iget-object v2, v0, Lhk0;->n:Ljava/lang/String;

    .line 207
    const/4 v3, 0x3

    .line 208
    aput-object v2, v1, v3

    .line 210
    iget-wide v2, v0, Lhk0;->o:D

    .line 212
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 215
    move-result-object v2

    .line 216
    const/4 v3, 0x4

    .line 217
    aput-object v2, v1, v3

    .line 219
    iget-wide v2, v0, Lhk0;->p:D

    .line 221
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 224
    move-result-object v2

    .line 225
    const/4 v3, 0x5

    .line 226
    aput-object v2, v1, v3

    .line 228
    iget v2, v0, Lhk0;->q:I

    .line 230
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    move-result-object v2

    .line 234
    const/4 v3, 0x6

    .line 235
    aput-object v2, v1, v3

    .line 237
    iget v2, v0, Lhk0;->r:I

    .line 239
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    move-result-object v2

    .line 243
    const/4 v3, 0x7

    .line 244
    aput-object v2, v1, v3

    .line 246
    invoke-static {v12, v11, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v13, v0, Lhk0;->k:Ljava/lang/String;

    .line 251
    iget-object v14, v0, Lhk0;->l:Ljava/lang/String;

    .line 253
    iget-object v15, v0, Lhk0;->m:Ljava/lang/String;

    .line 255
    iget-object v1, v0, Lhk0;->n:Ljava/lang/String;

    .line 257
    iget-wide v2, v0, Lhk0;->o:D

    .line 259
    iget-wide v4, v0, Lhk0;->p:D

    .line 261
    iget v6, v0, Lhk0;->q:I

    .line 263
    iget v7, v0, Lhk0;->r:I

    .line 265
    move-object/from16 v16, v1

    .line 267
    move-wide/from16 v17, v2

    .line 269
    move-wide/from16 v19, v4

    .line 271
    move/from16 v21, v6

    .line 273
    move/from16 v22, v7

    .line 275
    invoke-static/range {v13 .. v22}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setVehicleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDII)V

    .line 278
    :goto_0
    return-void
.end method
