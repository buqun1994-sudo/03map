.class public Lw40;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:F

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "EXTRA_OIL_PCT"

    const/high16 v1, -0x40800000    # -1.0f

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lw40;->l:F

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "OilStatusAction"

    const-string v3, "float mPercent:{?}"

    invoke-static {v0, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "EXTRA_OIL_STATE"

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lw40;->n:I

    const-string v0, "EXTRA_OIL_MILEAGE"

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lw40;->m:I

    const-string v0, "EXTRA_OIL_CUSTOM_STATE"

    .line 7
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lw40;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lnc;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->w()F

    move-result v0

    iput v0, p0, Lw40;->l:F

    .line 10
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->v()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lw40;->m:I

    .line 11
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->x()I

    move-result v0

    iput v0, p0, Lw40;->n:I

    .line 12
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->s()I

    move-result p1

    iput p1, p0, Lw40;->k:I

    return-void
.end method


# virtual methods
.method public d()V
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lw40;->l:F

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget v1, p0, Lw40;->n:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x1

    .line 20
    aput-object v1, v0, v3

    .line 22
    iget v1, p0, Lw40;->m:I

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v1

    .line 28
    const/4 v4, 0x2

    .line 29
    aput-object v1, v0, v4

    .line 31
    iget v1, p0, Lw40;->k:I

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v1

    .line 37
    const/4 v5, 0x3

    .line 38
    aput-object v1, v0, v5

    .line 40
    const-string v1, "OilStatusAction"

    .line 42
    const-string v6, "mPercent={?},mState={?}, mMileage={?}, mCustomState={?}"

    .line 44
    invoke-static {v1, v6, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Lib;->j()Z

    .line 50
    move-result v0

    .line 51
    const-string v6, "oilAlarmMileage={?}"

    .line 53
    const/16 v7, 0x754e

    .line 55
    const/4 v8, -0x1

    .line 56
    const/high16 v9, -0x40800000    # -1.0f

    .line 58
    if-eqz v0, :cond_2

    .line 60
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;

    .line 62
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;-><init>()V

    .line 65
    invoke-static {}, Lse;->c()Lse;

    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v4, v7}, Lse;->getIntValue(I)I

    .line 72
    move-result v4

    .line 73
    new-array v5, v3, [Ljava/lang/Object;

    .line 75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v7

    .line 79
    aput-object v7, v5, v2

    .line 81
    invoke-static {v1, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    if-le v4, v8, :cond_1

    .line 86
    iget v1, p0, Lw40;->m:I

    .line 88
    if-le v1, v8, :cond_0

    .line 90
    if-ge v1, v4, :cond_0

    .line 92
    invoke-virtual {v0, v3}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->E(I)V

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->E(I)V

    .line 99
    :goto_0
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->z(I)V

    .line 102
    invoke-virtual {v0, v9}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->D(F)V

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    iget v1, p0, Lw40;->k:I

    .line 108
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->z(I)V

    .line 111
    iget v1, p0, Lw40;->l:F

    .line 113
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->D(F)V

    .line 116
    iget v1, p0, Lw40;->n:I

    .line 118
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->E(I)V

    .line 121
    :goto_1
    iget v1, p0, Lw40;->m:I

    .line 123
    int-to-float v1, v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->C(F)V

    .line 127
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 130
    goto :goto_3

    .line 131
    :cond_2
    iget v0, p0, Lw40;->k:I

    .line 133
    const/4 v10, 0x7

    .line 134
    if-ne v0, v3, :cond_3

    .line 136
    invoke-static {v10, v9, v9}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeOilStatusNotify(IFF)V

    .line 139
    goto :goto_3

    .line 140
    :cond_3
    if-ne v0, v4, :cond_4

    .line 142
    const/4 v0, 0x6

    .line 143
    invoke-static {v0, v9, v9}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeOilStatusNotify(IFF)V

    .line 146
    goto :goto_3

    .line 147
    :cond_4
    invoke-static {}, Lse;->c()Lse;

    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0, v7}, Lse;->getIntValue(I)I

    .line 154
    move-result v0

    .line 155
    new-array v7, v3, [Ljava/lang/Object;

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    move-result-object v11

    .line 161
    aput-object v11, v7, v2

    .line 163
    invoke-static {v1, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    if-le v0, v8, :cond_6

    .line 168
    iget v1, p0, Lw40;->m:I

    .line 170
    if-le v1, v8, :cond_5

    .line 172
    if-ge v1, v0, :cond_5

    .line 174
    const/4 v2, 0x7

    .line 175
    :cond_5
    iput v9, p0, Lw40;->l:F

    .line 177
    goto :goto_2

    .line 178
    :cond_6
    iget v0, p0, Lw40;->l:F

    .line 180
    const/high16 v1, 0x42c80000    # 100.0f

    .line 182
    div-float/2addr v0, v1

    .line 183
    iput v0, p0, Lw40;->l:F

    .line 185
    iget v0, p0, Lw40;->n:I

    .line 187
    const/4 v1, 0x0

    .line 188
    if-lez v0, :cond_7

    .line 190
    iput v1, p0, Lw40;->l:F

    .line 192
    :cond_7
    iget v0, p0, Lw40;->l:F

    .line 194
    const/high16 v6, 0x3e800000    # 0.25f

    .line 196
    cmpl-float v6, v0, v6

    .line 198
    if-lez v6, :cond_8

    .line 200
    goto :goto_2

    .line 201
    :cond_8
    const/high16 v6, 0x3e000000    # 0.125f

    .line 203
    cmpl-float v6, v0, v6

    .line 205
    if-lez v6, :cond_9

    .line 207
    const/4 v2, 0x1

    .line 208
    goto :goto_2

    .line 209
    :cond_9
    const v3, 0x3dcccccd    # 0.1f

    .line 212
    cmpl-float v3, v0, v3

    .line 214
    if-lez v3, :cond_a

    .line 216
    const/4 v2, 0x2

    .line 217
    goto :goto_2

    .line 218
    :cond_a
    cmpl-float v0, v0, v1

    .line 220
    if-ltz v0, :cond_b

    .line 222
    const/4 v2, 0x3

    .line 223
    :cond_b
    :goto_2
    iget v0, p0, Lw40;->m:I

    .line 225
    int-to-float v0, v0

    .line 226
    iget v1, p0, Lw40;->l:F

    .line 228
    invoke-static {v2, v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeOilStatusNotify(IFF)V

    .line 231
    :goto_3
    return-void
.end method
