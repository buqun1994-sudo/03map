.class Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/support/util/CoordUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeCoordOffset"
.end annotation


# static fields
.field static nDaysOfMonthc:[C

.field static nDaysOfMonthl:[C


# instance fields
.field private casm_f:D

.field private casm_rr:D

.field private casm_t1:I

.field private casm_t2:I

.field private casm_x1:D

.field private casm_x2:D

.field private casm_y1:D

.field private casm_y2:D

.field private nDayBase:I

.field private nDefTime:I

.field private nDefWeek:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x34

    .line 3
    new-array v1, v0, [C

    .line 5
    fill-array-data v1, :array_0

    .line 8
    sput-object v1, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->nDaysOfMonthl:[C

    .line 10
    new-array v0, v0, [C

    .line 12
    fill-array-data v0, :array_1

    .line 15
    sput-object v0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->nDaysOfMonthc:[C

    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x1fs
        0x0s
        0x0s
        0x0s
        0x3cs
        0x0s
        0x0s
        0x0s
        0x5bs
        0x0s
        0x0s
        0x0s
        0x79s
        0x0s
        0x0s
        0x0s
        0x98s
        0x0s
        0x0s
        0x0s
        0xb6s
        0x0s
        0x0s
        0x0s
        0xd5s
        0x0s
        0x0s
        0x0s
        0xf4s
        0x0s
        0x0s
        0x0s
        0x12s
        0x1s
        0x0s
        0x0s
        0x31s
        0x1s
        0x0s
        0x0s
        0x4fs
        0x1s
        0x0s
        0x0s
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x1fs
        0x0s
        0x0s
        0x0s
        0x3bs
        0x0s
        0x0s
        0x0s
        0x5as
        0x0s
        0x0s
        0x0s
        0x78s
        0x0s
        0x0s
        0x0s
        0x97s
        0x0s
        0x0s
        0x0s
        0xb5s
        0x0s
        0x0s
        0x0s
        0xd4s
        0x0s
        0x0s
        0x0s
        0xf3s
        0x0s
        0x0s
        0x0s
        0x11s
        0x1s
        0x0s
        0x0s
        0x30s
        0x1s
        0x0s
        0x0s
        0x4es
        0x1s
        0x0s
        0x0s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->ReadConfig()V

    .line 7
    invoke-direct {p0}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->InitWG2China()I

    .line 10
    return-void
.end method

.method private GetDays(III)I
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x3

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    rem-int/lit8 v0, p1, 0x64

    .line 10
    if-nez v0, :cond_1

    .line 12
    rem-int/lit16 v0, p1, 0x190

    .line 14
    if-nez v0, :cond_2

    .line 16
    :cond_1
    const/4 v1, 0x1

    .line 17
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 19
    sget-object v0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->nDaysOfMonthl:[C

    .line 21
    mul-int/lit8 p2, p2, 0x4

    .line 23
    aget-char p2, v0, p2

    .line 25
    goto :goto_1

    .line 26
    :cond_3
    sget-object v0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->nDaysOfMonthc:[C

    .line 28
    mul-int/lit8 p2, p2, 0x4

    .line 30
    aget-char p2, v0, p2

    .line 32
    :goto_1
    add-int/2addr p2, p3

    .line 33
    sub-int/2addr p1, v2

    .line 34
    div-int/lit16 p3, p1, 0x190

    .line 36
    div-int/lit8 v0, p1, 0x4

    .line 38
    add-int/2addr p3, v0

    .line 39
    mul-int/lit16 v0, p1, 0x16d

    .line 41
    add-int/2addr p3, v0

    .line 42
    add-int/2addr p3, p2

    .line 43
    sub-int/2addr p3, v2

    .line 44
    div-int/lit8 p1, p1, 0x64

    .line 46
    sub-int/2addr p3, p1

    .line 47
    return p3
.end method

.method private GetTimeParams([I[I)I
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->IsValidParams([I[I)I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 14
    move-result-wide v1

    .line 15
    const-wide/16 v3, 0x3e8

    .line 17
    div-long/2addr v1, v3

    .line 18
    long-to-int v2, v1

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x2

    .line 25
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x3

    .line 30
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    .line 33
    move-result v0

    .line 34
    add-int/2addr v4, v1

    .line 35
    invoke-direct {p0, v3, v4, v0}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->GetDays(III)I

    .line 38
    move-result v0

    .line 39
    iget v1, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->nDayBase:I

    .line 41
    sub-int/2addr v0, v1

    .line 42
    div-int/lit8 v1, v0, 0x7

    .line 44
    const/4 v3, 0x0

    .line 45
    aput v1, p1, v3

    .line 47
    const p1, 0x15180

    .line 50
    div-int v1, v2, p1

    .line 52
    rem-int/2addr v2, p1

    .line 53
    mul-int v0, v0, p1

    .line 55
    rem-int/lit8 v0, v0, 0x7

    .line 57
    add-int/2addr v2, v0

    .line 58
    mul-int/lit16 v2, v2, 0x3e8

    .line 60
    aput v2, p2, v3

    .line 62
    move v0, v1

    .line 63
    :cond_0
    return v0
.end method

.method private IniCasm(IJJ)J
    .locals 6

    .line 1
    iput p1, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->casm_t1:I

    .line 3
    iput p1, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->casm_t2:I

    .line 5
    int-to-double v0, p1

    .line 6
    const-wide v2, 0x3fd6d916872b020cL    # 0.357

    .line 11
    mul-double v4, v0, v2

    .line 13
    div-double/2addr v4, v2

    .line 14
    sub-double/2addr v0, v4

    .line 15
    iput-wide v0, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->casm_rr:D

    .line 17
    if-nez p1, :cond_0

    .line 19
    const-wide v0, 0x43cfe9999999999aL    # 4.5990759394707507E18

    .line 24
    iput-wide v0, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->casm_rr:D

    .line 26
    :cond_0
    long-to-double p1, p2

    .line 27
    iput-wide p1, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->casm_x1:D

    .line 29
    long-to-double v0, p4

    .line 30
    iput-wide v0, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->casm_y1:D

    .line 32
    iput-wide p1, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->casm_x2:D

    .line 34
    iput-wide v0, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->casm_y2:D

    .line 36
    const-wide p1, 0x43d0020000000000L    # 4.6139378182410732E18

    .line 41
    iput-wide p1, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->casm_f:D

    .line 43
    return-wide p4
.end method

.method private InitTimeParams()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x6

    .line 3
    const/16 v2, 0x7bc

    .line 5
    invoke-direct {p0, v2, v0, v1}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->GetDays(III)I

    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->nDayBase:I

    .line 11
    return v0
.end method

.method private InitWG2China()I
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v10, v0, [D

    .line 4
    new-array v11, v0, [D

    .line 6
    new-array v1, v0, [I

    .line 8
    new-array v0, v0, [I

    .line 10
    invoke-direct {p0, v1, v0}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->GetTimeParams([I[I)I

    .line 13
    const/4 v2, 0x0

    .line 14
    const-wide/32 v3, 0x19938000

    .line 17
    const-wide/32 v5, 0x8c46000

    .line 20
    const/16 v7, 0x32

    .line 22
    const/4 v8, 0x0

    .line 23
    aget v9, v1, v8

    .line 25
    aget v0, v0, v8

    .line 27
    move-object v1, p0

    .line 28
    move v8, v9

    .line 29
    move v9, v0

    .line 30
    invoke-direct/range {v1 .. v11}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->wgtochina_lb(IJJIII[D[D)I

    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method private IsValidParams([I[I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->nDefWeek:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    aput v0, p1, v1

    .line 8
    iget p1, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->nDefTime:I

    .line 10
    aput p1, p2, v1

    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_0
    return v1
.end method

.method private ReadConfig()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->nDefTime:I

    .line 4
    iput v0, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->nDefWeek:I

    .line 6
    iput v0, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->nDayBase:I

    .line 8
    return-void
.end method

.method private Transform_jy5(DD)D
    .locals 6

    .line 1
    const-wide v0, 0x3f91df46a2529d3aL    # 0.0174532925199433

    .line 6
    mul-double p1, p1, v0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 11
    move-result-wide v0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 15
    move-result-wide v2

    .line 16
    const-wide v4, 0x3f7b6a8f3ff96a3aL    # 0.00669342

    .line 21
    mul-double v0, v0, v4

    .line 23
    mul-double v2, v2, v0

    .line 25
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 27
    sub-double/2addr v0, v2

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 31
    move-result-wide v2

    .line 32
    cmpl-double v4, v0, v2

    .line 34
    if-nez v4, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 40
    move-result-wide v2

    .line 41
    :goto_0
    const-wide v0, 0x4066800000000000L    # 180.0

    .line 46
    mul-double p3, p3, v0

    .line 48
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    .line 51
    move-result-wide p1

    .line 52
    const-wide v0, 0x415854c140000000L    # 6378245.0

    .line 57
    div-double/2addr v0, v2

    .line 58
    mul-double p1, p1, v0

    .line 60
    const-wide v0, 0x400921fb4d12d84aL    # 3.1415926

    .line 65
    mul-double p1, p1, v0

    .line 67
    div-double/2addr p3, p1

    .line 68
    return-wide p3
.end method

.method private Transform_jyj5(DD)D
    .locals 4

    .line 1
    const-wide v0, 0x3f91df46a2529d3aL    # 0.0174532925199433

    .line 6
    mul-double p1, p1, v0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 11
    move-result-wide v0

    .line 12
    const-wide v2, 0x3f7b6a8f3ff96a3aL    # 0.00669342

    .line 17
    mul-double v0, v0, v2

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 22
    move-result-wide p1

    .line 23
    mul-double p1, p1, v0

    .line 25
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 27
    sub-double/2addr v0, p1

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 31
    move-result-wide p1

    .line 32
    cmpl-double v2, p1, v0

    .line 34
    if-eqz v2, :cond_0

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 39
    move-result-wide p1

    .line 40
    :cond_0
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 45
    mul-double p3, p3, v2

    .line 47
    const-wide v2, 0x41582b102e8cefd3L    # 6335552.7273521

    .line 52
    mul-double v0, v0, p1

    .line 54
    div-double/2addr v2, v0

    .line 55
    const-wide p1, 0x400921fb4d12d84aL    # 3.1415926

    .line 60
    mul-double v2, v2, p1

    .line 62
    div-double/2addr p3, v2

    .line 63
    return-wide p3
.end method

.method private Transform_yj5(DD)D
    .locals 10

    .line 1
    mul-double v0, p1, p1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 6
    move-result-wide v2

    .line 7
    cmpl-double v4, v0, v2

    .line 9
    if-nez v4, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 15
    move-result-wide v2

    .line 16
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 19
    move-result-wide v4

    .line 20
    cmpl-double v6, v4, v0

    .line 22
    if-nez v6, :cond_1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 28
    move-result-wide v4

    .line 29
    :goto_1
    mul-double v2, p3, p1

    .line 31
    const-wide v6, 0x3fb999999999999aL    # 0.1

    .line 36
    mul-double v2, v2, v6

    .line 38
    mul-double v0, v0, v6

    .line 40
    add-double/2addr v2, v0

    .line 41
    add-double/2addr v2, p3

    .line 42
    add-double/2addr v2, p3

    .line 43
    const-wide p3, 0x4072c00000000000L    # 300.0

    .line 48
    add-double v0, p1, p3

    .line 50
    add-double/2addr v2, v0

    .line 51
    mul-double v4, v4, v6

    .line 53
    add-double/2addr v2, v4

    .line 54
    const-wide v0, 0x4032d97c7f3321d2L    # 18.84955592153876

    .line 59
    mul-double v0, v0, p1

    .line 61
    invoke-direct {p0, v0, v1}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 64
    move-result-wide v0

    .line 65
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    .line 67
    mul-double v0, v0, v4

    .line 69
    const-wide v6, 0x401921fb54442d1aL    # 6.283185307179588

    .line 74
    mul-double v6, v6, p1

    .line 76
    invoke-direct {p0, v6, v7}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 79
    move-result-wide v6

    .line 80
    mul-double v6, v6, v4

    .line 82
    add-double/2addr v6, v0

    .line 83
    const-wide v0, 0x3fe5559b3d07c84bL    # 0.6667

    .line 88
    mul-double v6, v6, v0

    .line 90
    add-double/2addr v6, v2

    .line 91
    const-wide v2, 0x400921fb54442d1aL    # 3.141592653589794

    .line 96
    mul-double v2, v2, p1

    .line 98
    invoke-direct {p0, v2, v3}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 101
    move-result-wide v2

    .line 102
    mul-double v2, v2, v4

    .line 104
    const-wide v4, 0x3ff0c152382d7367L    # 1.047197551196598

    .line 109
    mul-double v4, v4, p1

    .line 111
    invoke-direct {p0, v4, v5}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 114
    move-result-wide v4

    .line 115
    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    .line 117
    mul-double v4, v4, v8

    .line 119
    add-double/2addr v4, v2

    .line 120
    mul-double v4, v4, v0

    .line 122
    add-double/2addr v4, v6

    .line 123
    const-wide v2, 0x3fd0c152382d7367L    # 0.2617993877991495

    .line 128
    mul-double v2, v2, p1

    .line 130
    invoke-direct {p0, v2, v3}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 133
    move-result-wide v2

    .line 134
    const-wide v6, 0x4062c00000000000L    # 150.0

    .line 139
    mul-double v2, v2, v6

    .line 141
    const-wide v6, 0x3fbacee9f37bebd7L    # 0.1047197551196598

    .line 146
    mul-double p1, p1, v6

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 151
    move-result-wide p1

    .line 152
    mul-double p1, p1, p3

    .line 154
    add-double/2addr p1, v2

    .line 155
    mul-double p1, p1, v0

    .line 157
    add-double/2addr p1, v4

    .line 158
    return-wide p1
.end method

.method private random_yj()D
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->casm_rr:D

    .line 3
    const-wide v2, 0x41b2b9b0a5000000L    # 3.14159269E8

    .line 8
    mul-double v0, v0, v2

    .line 10
    const-wide v2, 0x41bb0c88a5000000L    # 4.53806245E8

    .line 15
    add-double/2addr v0, v2

    .line 16
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 18
    mul-double v4, v0, v2

    .line 20
    double-to-int v4, v4

    .line 21
    mul-int/lit8 v4, v4, 0x2

    .line 23
    int-to-double v4, v4

    .line 24
    sub-double/2addr v0, v4

    .line 25
    mul-double v0, v0, v2

    .line 27
    iput-wide v0, p0, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->casm_rr:D

    .line 29
    return-wide v0
.end method

.method private wgtochina_lb(IJJIII[D[D)I
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 3
    move/from16 v0, p6

    .line 5
    move/from16 v1, p8

    .line 7
    move-wide/from16 v2, p2

    .line 9
    long-to-double v7, v2

    .line 10
    const-wide v4, 0x414c200000000000L    # 3686400.0

    .line 15
    div-double v9, v7, v4

    .line 17
    move-wide/from16 v11, p4

    .line 19
    long-to-double v13, v11

    .line 20
    div-double v2, v13, v4

    .line 22
    const/16 v15, 0x1388

    .line 24
    const/16 v16, 0x0

    .line 26
    if-gt v0, v15, :cond_1

    .line 28
    const-wide v17, 0x4052004189374bc7L    # 72.004

    .line 33
    cmpl-double v15, v9, v17

    .line 35
    if-ltz v15, :cond_1

    .line 37
    const-wide v17, 0x40613ab5dcc63f14L    # 137.8347

    .line 42
    cmpg-double v15, v9, v17

    .line 44
    if-gtz v15, :cond_1

    .line 46
    const-wide v17, 0x3fea89a027525461L    # 0.8293

    .line 51
    cmpl-double v15, v2, v17

    .line 53
    if-ltz v15, :cond_1

    .line 55
    const-wide v17, 0x404be9de69ad42c4L    # 55.8271

    .line 60
    cmpg-double v15, v2, v17

    .line 62
    if-gtz v15, :cond_1

    .line 64
    if-eqz p1, :cond_0

    .line 66
    iput v1, v6, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->casm_t2:I

    .line 68
    const-wide v7, 0x4041800000000000L    # 35.0

    .line 73
    sub-double v7, v2, v7

    .line 75
    const-wide v11, 0x405a400000000000L    # 105.0

    .line 80
    sub-double v11, v9, v11

    .line 82
    invoke-direct {v6, v11, v12, v7, v8}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->Transform_yj5(DD)D

    .line 85
    move-result-wide v13

    .line 86
    invoke-virtual {v6, v11, v12, v7, v8}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->Transform_yjy5(DD)D

    .line 89
    move-result-wide v7

    .line 90
    const-wide v11, 0x3f50624dd2f1a9fcL    # 0.001

    .line 95
    int-to-double v4, v0

    .line 96
    mul-double v4, v4, v11

    .line 98
    int-to-double v0, v1

    .line 99
    const-wide v11, 0x3f91df46a2529d3aL    # 0.0174532925199433

    .line 104
    mul-double v0, v0, v11

    .line 106
    invoke-direct {v6, v0, v1}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 109
    move-result-wide v11

    .line 110
    add-double/2addr v13, v4

    .line 111
    add-double/2addr v11, v13

    .line 112
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->random_yj()D

    .line 115
    move-result-wide v13

    .line 116
    add-double/2addr v13, v11

    .line 117
    invoke-direct {v6, v0, v1}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 120
    move-result-wide v0

    .line 121
    add-double/2addr v0, v7

    .line 122
    add-double/2addr v0, v4

    .line 123
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->random_yj()D

    .line 126
    move-result-wide v4

    .line 127
    add-double/2addr v4, v0

    .line 128
    invoke-direct {v6, v2, v3, v13, v14}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->Transform_jy5(DD)D

    .line 131
    move-result-wide v0

    .line 132
    add-double/2addr v0, v9

    .line 133
    const-wide v7, 0x414c200000000000L    # 3686400.0

    .line 138
    mul-double v0, v0, v7

    .line 140
    aput-wide v0, p9, v16

    .line 142
    invoke-direct {v6, v2, v3, v4, v5}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->Transform_jyj5(DD)D

    .line 145
    move-result-wide v0

    .line 146
    add-double/2addr v0, v2

    .line 147
    mul-double v0, v0, v7

    .line 149
    aput-wide v0, p10, v16

    .line 151
    goto :goto_0

    .line 152
    :cond_0
    move-object/from16 v0, p0

    .line 154
    move/from16 v1, p8

    .line 156
    move-wide/from16 v2, p2

    .line 158
    move-wide/from16 v4, p4

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->IniCasm(IJJ)J

    .line 163
    aput-wide v7, p9, v16

    .line 165
    aput-wide v13, p10, v16

    .line 167
    goto :goto_0

    .line 168
    :cond_1
    const-wide/16 v0, 0x0

    .line 170
    aput-wide v0, p9, v16

    .line 172
    aput-wide v0, p10, v16

    .line 174
    const v16, 0x95ff

    .line 177
    :goto_0
    return v16
.end method

.method private yj_sin2(D)D
    .locals 18

    move-wide/from16 v0, p1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpg-double v6, v0, v2

    if-gez v6, :cond_0

    neg-double v0, v0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide v6, 0x401921fb54442d1cL    # 6.28318530717959

    div-double v8, v0, v6

    double-to-int v3, v8

    int-to-double v8, v3

    mul-double v8, v8, v6

    sub-double/2addr v0, v8

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    cmpg-double v3, v0, v6

    if-gtz v3, :cond_2

    :cond_1
    move v5, v2

    goto :goto_1

    :cond_2
    sub-double/2addr v0, v6

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    if-nez v2, :cond_1

    const/4 v5, 0x1

    :goto_1
    mul-double v2, v0, v0

    mul-double v6, v2, v0

    mul-double v8, v6, v2

    mul-double v10, v8, v2

    mul-double v12, v10, v2

    const-wide v14, 0x3ec71de3a556c736L    # 2.75573192239859E-6

    mul-double v14, v14, v12

    const-wide v16, 0x3f8111111111110fL    # 0.00833333333333333

    mul-double v8, v8, v16

    add-double/2addr v14, v8

    add-double/2addr v14, v0

    const-wide v0, 0x3fc5555555555561L    # 0.166666666666667

    mul-double v6, v6, v0

    sub-double/2addr v14, v6

    const-wide v0, 0x3f2a01a01a01a00bL    # 1.98412698412698E-4

    mul-double v10, v10, v0

    sub-double/2addr v14, v10

    mul-double v12, v12, v2

    const-wide v0, 0x3e5ae64567f544deL    # 2.50521083854417E-8

    mul-double v12, v12, v0

    sub-double/2addr v14, v12

    if-ne v5, v4, :cond_4

    neg-double v14, v14

    :cond_4
    return-wide v14
.end method


# virtual methods
.method public Transform_yjy5(DD)D
    .locals 11

    .line 1
    add-double v0, p1, p1

    .line 3
    const-wide/high16 v2, -0x3fa7000000000000L    # -100.0

    .line 5
    add-double/2addr v0, v2

    .line 6
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 8
    mul-double v2, v2, p3

    .line 10
    add-double/2addr v0, v2

    .line 11
    const-wide v2, 0x3fc999999999999aL    # 0.2

    .line 16
    mul-double v4, p3, v2

    .line 18
    mul-double v4, v4, p3

    .line 20
    add-double/2addr v0, v4

    .line 21
    const-wide v4, 0x3fb999999999999aL    # 0.1

    .line 26
    mul-double v4, v4, p1

    .line 28
    mul-double v4, v4, p3

    .line 30
    add-double/2addr v0, v4

    .line 31
    mul-double v4, p1, p1

    .line 33
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 36
    move-result-wide v6

    .line 37
    cmpl-double v8, v6, v4

    .line 39
    if-nez v8, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 45
    move-result-wide v6

    .line 46
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 49
    move-result-wide v8

    .line 50
    cmpl-double v10, v8, v4

    .line 52
    if-nez v10, :cond_1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 58
    move-result-wide v8

    .line 59
    :goto_1
    mul-double v8, v8, v2

    .line 61
    add-double/2addr v0, v8

    .line 62
    const-wide v2, 0x4032d97c7f3321d2L    # 18.84955592153876

    .line 67
    mul-double v2, v2, p1

    .line 69
    invoke-direct {p0, v2, v3}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 72
    move-result-wide v2

    .line 73
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    .line 75
    mul-double v2, v2, v4

    .line 77
    const-wide v6, 0x401921fb54442d1aL    # 6.283185307179588

    .line 82
    mul-double p1, p1, v6

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 87
    move-result-wide p1

    .line 88
    mul-double p1, p1, v4

    .line 90
    add-double/2addr p1, v2

    .line 91
    const-wide v2, 0x3fe5559b3d07c84bL    # 0.6667

    .line 96
    mul-double p1, p1, v2

    .line 98
    add-double/2addr p1, v0

    .line 99
    const-wide v0, 0x400921fb54442d1aL    # 3.141592653589794

    .line 104
    mul-double v0, v0, p3

    .line 106
    invoke-direct {p0, v0, v1}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 109
    move-result-wide v0

    .line 110
    mul-double v0, v0, v4

    .line 112
    const-wide v4, 0x3ff0c152382d7367L    # 1.047197551196598

    .line 117
    mul-double v4, v4, p3

    .line 119
    invoke-direct {p0, v4, v5}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 122
    move-result-wide v4

    .line 123
    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    .line 125
    mul-double v4, v4, v6

    .line 127
    add-double/2addr v4, v0

    .line 128
    mul-double v4, v4, v2

    .line 130
    add-double/2addr v4, p1

    .line 131
    const-wide p1, 0x3fd0c152382d7367L    # 0.2617993877991495

    .line 136
    mul-double p1, p1, p3

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 141
    move-result-wide p1

    .line 142
    const-wide/high16 v0, 0x4064000000000000L    # 160.0

    .line 144
    mul-double p1, p1, v0

    .line 146
    const-wide v0, 0x3fbacee9f37bebd7L    # 0.1047197551196598

    .line 151
    mul-double p3, p3, v0

    .line 153
    invoke-direct {p0, p3, p4}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->yj_sin2(D)D

    .line 156
    move-result-wide p3

    .line 157
    const-wide/high16 v0, 0x4074000000000000L    # 320.0

    .line 159
    mul-double p3, p3, v0

    .line 161
    add-double/2addr p3, p1

    .line 162
    mul-double p3, p3, v2

    .line 164
    add-double/2addr p3, v4

    .line 165
    return-wide p3
.end method

.method public WG2China(JJ[D[D)I
    .locals 15

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 4
    new-array v0, v0, [I

    .line 6
    move-object v13, p0

    .line 7
    invoke-direct {p0, v1, v0}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->GetTimeParams([I[I)I

    .line 10
    const/4 v3, 0x1

    .line 11
    const/16 v8, 0x32

    .line 13
    const/4 v14, 0x0

    .line 14
    aget v9, v1, v14

    .line 16
    aget v10, v0, v14

    .line 18
    move-object v2, p0

    .line 19
    move-wide/from16 v4, p1

    .line 21
    move-wide/from16 v6, p3

    .line 23
    move-object/from16 v11, p5

    .line 25
    move-object/from16 v12, p6

    .line 27
    invoke-direct/range {v2 .. v12}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->wgtochina_lb(IJJIII[D[D)I

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 33
    const-wide v1, 0x41dfffffffc00000L    # 2.147483647E9

    .line 38
    aput-wide v1, p5, v14

    .line 40
    aput-wide v1, p6, v14

    .line 42
    :cond_0
    return v0
.end method

.method public WG2China_f(DD[D[D)I
    .locals 9

    const-wide v0, 0x414c200000000000L    # 3686400.0

    mul-double p1, p1, v0

    double-to-long v3, p1

    mul-double p3, p3, v0

    double-to-long v5, p3

    move-object v2, p0

    move-object v7, p5

    move-object v8, p6

    .line 1
    invoke-virtual/range {v2 .. v8}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->WG2China(JJ[D[D)I

    const/4 p1, 0x0

    .line 2
    aget-wide p2, p5, p1

    div-double/2addr p2, v0

    aput-wide p2, p5, p1

    .line 3
    new-instance p2, Ljava/lang/Double;

    aget-wide p3, p6, p1

    invoke-direct {p2, p3, p4}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result p2

    .line 4
    aget-wide p3, p6, p1

    div-double/2addr p3, v0

    aput-wide p3, p6, p1

    return p2
.end method

.method public WG2China_f(DD[D[DLjava/text/DecimalFormat;)I
    .locals 2

    .line 5
    invoke-virtual/range {p0 .. p6}, Lcom/amap/location/support/util/CoordUtils$NativeCoordOffset;->WG2China_f(DD[D[D)I

    move-result p1

    .line 6
    sget-object p2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {p7, p2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 7
    new-instance p2, Ljava/lang/Double;

    const/4 p3, 0x0

    aget-wide v0, p5, p3

    invoke-virtual {p7, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    aput-wide v0, p5, p3

    .line 8
    new-instance p2, Ljava/lang/Double;

    aget-wide p4, p6, p3

    invoke-virtual {p7, p4, p5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p4

    aput-wide p4, p6, p3

    return p1
.end method
