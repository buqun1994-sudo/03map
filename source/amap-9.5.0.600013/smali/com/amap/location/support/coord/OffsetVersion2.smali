.class public Lcom/amap/location/support/coord/OffsetVersion2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GCJ_2PI:D = 6.283185307179586

.field private static final GCJ_6PI:D = 18.84955592153876

.field private static final GCJ_A:D = 6378245.0

.field private static final GCJ_D2R:D = 0.0174532925199433

.field private static final GCJ_EE:D = 0.00669342

.field private static final GCJ_PI:D = 3.141592653589793

.field private static final GCJ_PI12:D = 0.2617993877991494

.field private static final GCJ_PI3:D = 1.047197551196598

.field private static final GCJ_PI30:D = 0.1047197551196598

.field private static final POLYNOMIAL_PARAM1:D = 13.33333333333333

.field private static final POLYNOMIAL_PARAM2:D = 100.0

.field private static final POLYNOMIAL_PARAM3:D = 106.6666666666667


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wgs84ToGcj02(DD)[D
    .locals 40

    .line 1
    const-wide v0, 0x405a400000000000L    # 105.0

    .line 6
    sub-double v0, p0, v0

    .line 8
    const-wide v2, 0x4041800000000000L    # 35.0

    .line 13
    sub-double v2, p2, v2

    .line 15
    mul-double v4, v0, v0

    .line 17
    mul-double v6, v2, v2

    .line 19
    mul-double v8, v0, v2

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 24
    move-result-wide v10

    .line 25
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 28
    move-result-wide v10

    .line 29
    const-wide v12, 0x4032d97c7f3321d2L    # 18.84955592153876

    .line 34
    mul-double v12, v12, v0

    .line 36
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 39
    move-result-wide v12

    .line 40
    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    .line 45
    mul-double v14, v14, v0

    .line 47
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    .line 50
    move-result-wide v14

    .line 51
    const-wide v16, 0x400921fb54442d18L    # Math.PI

    .line 56
    mul-double v18, v0, v16

    .line 58
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    .line 61
    move-result-wide v18

    .line 62
    const-wide v20, 0x3ff0c152382d7367L    # 1.047197551196598

    .line 67
    mul-double v22, v0, v20

    .line 69
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    .line 72
    move-result-wide v22

    .line 73
    const-wide v24, 0x3fd0c152382d7365L    # 0.2617993877991494

    .line 78
    mul-double v26, v0, v24

    .line 80
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    .line 83
    move-result-wide v26

    .line 84
    const-wide v28, 0x3fbacee9f37bebd7L    # 0.1047197551196598

    .line 89
    mul-double v30, v0, v28

    .line 91
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    .line 94
    move-result-wide v30

    .line 95
    mul-double v16, v16, v2

    .line 97
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    .line 100
    move-result-wide v16

    .line 101
    mul-double v20, v20, v2

    .line 103
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    .line 106
    move-result-wide v20

    .line 107
    mul-double v24, v24, v2

    .line 109
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    .line 112
    move-result-wide v24

    .line 113
    mul-double v28, v28, v2

    .line 115
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    .line 118
    move-result-wide v28

    .line 119
    add-double/2addr v12, v14

    .line 120
    const-wide v14, 0x402aaaaaaaaaaaa9L    # 13.33333333333333

    .line 125
    mul-double v12, v12, v14

    .line 127
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    .line 129
    mul-double v34, v0, v32

    .line 131
    const-wide v36, 0x4072c00000000000L    # 300.0

    .line 136
    add-double v34, v34, v36

    .line 138
    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    .line 140
    mul-double v38, v2, v36

    .line 142
    add-double v34, v34, v38

    .line 144
    const-wide v38, 0x3fb999999999999aL    # 0.1

    .line 149
    mul-double v4, v4, v38

    .line 151
    add-double v34, v34, v4

    .line 153
    mul-double v8, v8, v38

    .line 155
    add-double v34, v34, v8

    .line 157
    mul-double v38, v38, v10

    .line 159
    add-double v34, v34, v38

    .line 161
    const-wide/16 v4, 0x0

    .line 163
    add-double v34, v34, v4

    .line 165
    add-double v34, v34, v12

    .line 167
    mul-double v22, v22, v36

    .line 169
    add-double v18, v18, v22

    .line 171
    mul-double v18, v18, v14

    .line 173
    add-double v34, v34, v18

    .line 175
    mul-double v30, v30, v36

    .line 177
    add-double v26, v26, v30

    .line 179
    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    .line 181
    mul-double v26, v26, v18

    .line 183
    add-double v34, v34, v26

    .line 185
    const-wide/high16 v18, -0x3fa7000000000000L    # -100.0

    .line 187
    mul-double v0, v0, v36

    .line 189
    add-double v0, v0, v18

    .line 191
    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    .line 193
    mul-double v2, v2, v18

    .line 195
    add-double/2addr v0, v2

    .line 196
    const-wide v2, 0x3fc999999999999aL    # 0.2

    .line 201
    mul-double v6, v6, v2

    .line 203
    add-double/2addr v0, v6

    .line 204
    add-double/2addr v0, v8

    .line 205
    mul-double v10, v10, v2

    .line 207
    add-double/2addr v0, v10

    .line 208
    add-double/2addr v0, v4

    .line 209
    add-double/2addr v0, v12

    .line 210
    mul-double v20, v20, v36

    .line 212
    add-double v16, v16, v20

    .line 214
    mul-double v16, v16, v14

    .line 216
    add-double v0, v0, v16

    .line 218
    mul-double v28, v28, v36

    .line 220
    add-double v24, v24, v28

    .line 222
    const-wide v2, 0x405aaaaaaaaaaaadL    # 106.6666666666667

    .line 227
    mul-double v24, v24, v2

    .line 229
    add-double v0, v0, v24

    .line 231
    const-wide v2, 0x3f91df46a2529d3aL    # 0.0174532925199433

    .line 236
    mul-double v4, p2, v2

    .line 238
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 241
    move-result-wide v6

    .line 242
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 245
    move-result-wide v4

    .line 246
    const-wide v8, 0x3f7b6a8f3ff96a3aL    # 0.00669342

    .line 251
    mul-double v8, v8, v6

    .line 253
    mul-double v8, v8, v6

    .line 255
    sub-double v32, v32, v8

    .line 257
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    .line 260
    move-result-wide v6

    .line 261
    mul-double v34, v34, v6

    .line 263
    const-wide v8, 0x415854c140000000L    # 6378245.0

    .line 268
    mul-double v4, v4, v8

    .line 270
    div-double v34, v34, v4

    .line 272
    div-double v34, v34, v2

    .line 274
    mul-double v0, v0, v6

    .line 276
    mul-double v0, v0, v32

    .line 278
    const-wide v4, 0x41582b102e8cefd3L    # 6335552.7273521

    .line 283
    div-double/2addr v0, v4

    .line 284
    div-double/2addr v0, v2

    .line 285
    const/4 v2, 0x2

    .line 286
    new-array v2, v2, [D

    .line 288
    const/4 v3, 0x0

    .line 289
    add-double v34, v34, p0

    .line 291
    aput-wide v34, v2, v3

    .line 293
    const/4 v3, 0x1

    .line 294
    add-double v0, v0, p2

    .line 296
    aput-wide v0, v2, v3

    .line 298
    return-object v2
.end method
