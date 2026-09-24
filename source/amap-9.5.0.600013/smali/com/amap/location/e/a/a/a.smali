.class public Lcom/amap/location/e/a/a/a;
.super Lcom/amap/location/support/fence/RectangleFence;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:[D

.field public d:Z

.field public e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;IDDDD[DI)V
    .locals 10

    .line 1
    move-object v9, p0

    .line 2
    move-object v0, p0

    .line 3
    move-wide v1, p3

    .line 4
    move-wide v3, p5

    .line 5
    move-wide/from16 v5, p7

    .line 7
    move-wide/from16 v7, p9

    .line 9
    invoke-direct/range {v0 .. v8}, Lcom/amap/location/support/fence/RectangleFence;-><init>(DDDD)V

    .line 12
    const-string v0, ""

    .line 14
    iput-object v0, v9, Lcom/amap/location/e/a/a/a;->e:Ljava/lang/String;

    .line 16
    move-object v0, p1

    .line 17
    iput-object v0, v9, Lcom/amap/location/e/a/a/a;->b:Ljava/lang/String;

    .line 19
    move v0, p2

    .line 20
    iput v0, v9, Lcom/amap/location/e/a/a/a;->a:I

    .line 22
    move-object/from16 v0, p11

    .line 24
    iput-object v0, v9, Lcom/amap/location/e/a/a/a;->c:[D

    .line 26
    const/4 v0, 0x1

    .line 27
    move/from16 v1, p12

    .line 29
    if-ne v1, v0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    iput-boolean v0, v9, Lcom/amap/location/e/a/a/a;->d:Z

    .line 35
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/amap/location/e/a/a/a;
    .locals 19

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    const/4 v0, 0x2

    .line 10
    move-object/from16 v2, p0

    .line 12
    :try_start_0
    invoke-static {v2, v0}, Lcom/amap/location/support/security/Base64;->decode(Ljava/lang/String;I)[B

    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Ljava/lang/String;

    .line 18
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 21
    const-string v2, ","

    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    array-length v3, v2

    .line 28
    const/16 v4, 0x8

    .line 30
    if-lt v3, v4, :cond_2

    .line 32
    const/4 v3, 0x0

    .line 33
    aget-object v5, v2, v3

    .line 35
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    move-result-object v7

    .line 39
    const/4 v5, 0x1

    .line 40
    aget-object v6, v2, v5

    .line 42
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 45
    move-result-object v6

    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    move-result v8

    .line 50
    aget-object v6, v2, v0

    .line 52
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 55
    move-result-object v6

    .line 56
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 59
    move-result-wide v9

    .line 60
    const/4 v6, 0x3

    .line 61
    aget-object v6, v2, v6

    .line 63
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 66
    move-result-object v6

    .line 67
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 70
    move-result-wide v13

    .line 71
    const/4 v6, 0x4

    .line 72
    aget-object v6, v2, v6

    .line 74
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 77
    move-result-object v6

    .line 78
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 81
    move-result-wide v11

    .line 82
    const/4 v6, 0x5

    .line 83
    aget-object v6, v2, v6

    .line 85
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 88
    move-result-object v6

    .line 89
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 92
    move-result-wide v15

    .line 93
    new-array v0, v0, [D

    .line 95
    fill-array-data v0, :array_0

    .line 98
    const/4 v6, 0x6

    .line 99
    aget-object v6, v2, v6

    .line 101
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 104
    move-result-object v6

    .line 105
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 108
    move-result-wide v17

    .line 109
    aput-wide v17, v0, v3

    .line 111
    const/4 v6, 0x7

    .line 112
    aget-object v6, v2, v6

    .line 114
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 117
    move-result-object v6

    .line 118
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 121
    move-result-wide v17

    .line 122
    aput-wide v17, v0, v5

    .line 124
    array-length v5, v2

    .line 125
    const/16 v6, 0x9

    .line 127
    if-lt v5, v6, :cond_1

    .line 129
    aget-object v2, v2, v4

    .line 131
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 134
    move-result-object v2

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 138
    move-result v3

    .line 139
    move/from16 v18, v3

    .line 141
    goto :goto_0

    .line 142
    :cond_1
    const/16 v18, 0x0

    .line 144
    :goto_0
    new-instance v2, Lcom/amap/location/e/a/a/a;

    .line 146
    move-object v6, v2

    .line 147
    move-object/from16 v17, v0

    .line 149
    invoke-direct/range {v6 .. v18}, Lcom/amap/location/e/a/a/a;-><init>(Ljava/lang/String;IDDDD[DI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    return-object v2

    .line 153
    :cond_2
    return-object v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    const-string v3, "getLocationFenceFromString"

    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 176
    const-string v2, "gnssalgo"

    .line 178
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-object v1

    .line 182
    nop

    .line 183
    :array_0
    .array-data 8
        -0x4018000000000000L    # -0.75
        0x403e000000000000L    # 30.0
    .end array-data
.end method
