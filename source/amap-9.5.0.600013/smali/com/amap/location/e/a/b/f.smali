.class public Lcom/amap/location/e/a/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:J

.field private static final b:J

.field private static final g:[I


# instance fields
.field private c:Ljava/lang/String;

.field private d:F

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 3
    const-wide/16 v1, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 8
    move-result-wide v1

    .line 9
    sput-wide v1, Lcom/amap/location/e/a/b/f;->a:J

    .line 11
    const-wide/16 v1, 0x7

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/amap/location/e/a/b/f;->b:J

    .line 19
    const/16 v0, 0x18

    .line 21
    new-array v0, v0, [I

    .line 23
    fill-array-data v0, :array_0

    .line 26
    sput-object v0, Lcom/amap/location/e/a/b/f;->g:[I

    .line 28
    return-void

    .line 29
    :array_0
    .array-data 4
        0x1
        -0x4
        0x5
        0x6
        0x1
        -0x4
        0x5
        0x6
        -0x2
        -0x7
        0x0
        -0x1
        -0x2
        -0x7
        0x0
        -0x1
        0x4
        -0x3
        0x3
        0x2
        0x4
        -0x3
        0x3
        0x2
    .end array-data
.end method

.method public constructor <init>(IFLjava/lang/String;IJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "null"

    .line 6
    iput-object v0, p0, Lcom/amap/location/e/a/b/f;->c:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/amap/location/e/a/b/f;->d:F

    .line 11
    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lcom/amap/location/e/a/b/f;->f:J

    .line 15
    invoke-virtual/range {p0 .. p6}, Lcom/amap/location/e/a/b/f;->a(IFLjava/lang/String;IJ)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/amap/location/e/a/b/f;->c:Ljava/lang/String;

    .line 21
    sub-float p1, p2, v0

    .line 23
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 26
    move-result p1

    .line 27
    float-to-double p3, p1

    .line 28
    const-wide p5, 0x412e848000000000L    # 1000000.0

    .line 33
    cmpl-double p1, p3, p5

    .line 35
    if-ltz p1, :cond_0

    .line 37
    iput p2, p0, Lcom/amap/location/e/a/b/f;->d:F

    .line 39
    :cond_0
    return-void
.end method

.method public static a(JJ)J
    .locals 7

    .line 23
    div-long v0, p0, p2

    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    mul-long p2, p2, v0

    cmp-long v2, p2, p0

    if-eqz v2, :cond_0

    const-wide/16 p0, 0x1

    sub-long/2addr v0, p0

    :cond_0
    return-wide v0
.end method

.method public static b(JJ)J
    .locals 2

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/amap/location/e/a/b/f;->a(JJ)J

    move-result-wide v0

    mul-long v0, v0, p2

    sub-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/a/b/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(FLjava/lang/String;I)Ljava/lang/String;
    .locals 6

    const p3, 0x4ebbce01

    sub-float v0, p1, p3

    .line 24
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "1C"

    const-wide v3, 0x412e848000000000L    # 1000000.0

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    return-object v2

    :cond_0
    const v0, 0x4e8c3e68

    sub-float v0, p1, v0

    .line 25
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v5, v0, v3

    if-gez v5, :cond_2

    const-string p1, "Q"

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "5Q"

    return-object p1

    :cond_1
    const-string p1, "5I"

    return-object p1

    :cond_2
    const/4 p2, 0x0

    sub-float/2addr p1, p2

    .line 27
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    cmpg-double v0, p1, v3

    if-gez v0, :cond_3

    .line 28
    iput p3, p0, Lcom/amap/location/e/a/b/f;->d:F

    return-object v2

    :cond_3
    const-string p1, "null"

    return-object p1
.end method

.method public a(IFLjava/lang/String;IJ)Ljava/lang/String;
    .locals 2

    const-string v0, "null"

    if-gtz p4, :cond_0

    return-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    return-object v0

    .line 2
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "I"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/location/e/a/b/f;->e:Ljava/lang/String;

    .line 3
    sget-wide v0, Lcom/amap/location/e/a/b/f;->b:J

    invoke-static {p5, p6, v0, v1}, Lcom/amap/location/e/a/b/f;->b(JJ)J

    move-result-wide p5

    iput-wide p5, p0, Lcom/amap/location/e/a/b/f;->f:J

    .line 4
    invoke-virtual {p0, p2, p3, p4}, Lcom/amap/location/e/a/b/f;->g(FLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "E"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/location/e/a/b/f;->e:Ljava/lang/String;

    .line 6
    sget-wide v0, Lcom/amap/location/e/a/b/f;->b:J

    invoke-static {p5, p6, v0, v1}, Lcom/amap/location/e/a/b/f;->b(JJ)J

    move-result-wide p5

    iput-wide p5, p0, Lcom/amap/location/e/a/b/f;->f:J

    .line 7
    invoke-virtual {p0, p2, p3, p4}, Lcom/amap/location/e/a/b/f;->c(FLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "C"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/location/e/a/b/f;->e:Ljava/lang/String;

    .line 9
    sget-wide v0, Lcom/amap/location/e/a/b/f;->b:J

    invoke-static {p5, p6, v0, v1}, Lcom/amap/location/e/a/b/f;->b(JJ)J

    move-result-wide p5

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sub-long/2addr p5, v0

    iput-wide p5, p0, Lcom/amap/location/e/a/b/f;->f:J

    .line 10
    invoke-virtual {p0, p2, p3, p4}, Lcom/amap/location/e/a/b/f;->f(FLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/16 p1, 0xc1

    if-lt p4, p1, :cond_1

    add-int/lit16 p4, p4, -0xc0

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "J"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/location/e/a/b/f;->e:Ljava/lang/String;

    .line 12
    sget-wide v0, Lcom/amap/location/e/a/b/f;->b:J

    invoke-static {p5, p6, v0, v1}, Lcom/amap/location/e/a/b/f;->b(JJ)J

    move-result-wide p5

    iput-wide p5, p0, Lcom/amap/location/e/a/b/f;->f:J

    .line 13
    invoke-virtual {p0, p2, p3, p4}, Lcom/amap/location/e/a/b/f;->d(FLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "R"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/location/e/a/b/f;->e:Ljava/lang/String;

    .line 15
    sget-wide v0, Lcom/amap/location/e/a/b/f;->a:J

    invoke-static {p5, p6, v0, v1}, Lcom/amap/location/e/a/b/f;->b(JJ)J

    move-result-wide p5

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x2a1e

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    add-long/2addr p5, v0

    iput-wide p5, p0, Lcom/amap/location/e/a/b/f;->f:J

    .line 16
    invoke-virtual {p0, p2, p3, p4}, Lcom/amap/location/e/a/b/f;->b(FLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    const/16 p1, 0x78

    if-lt p4, p1, :cond_2

    add-int/lit8 p4, p4, -0x64

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/location/e/a/b/f;->e:Ljava/lang/String;

    .line 18
    sget-wide v0, Lcom/amap/location/e/a/b/f;->b:J

    invoke-static {p5, p6, v0, v1}, Lcom/amap/location/e/a/b/f;->b(JJ)J

    move-result-wide p5

    iput-wide p5, p0, Lcom/amap/location/e/a/b/f;->f:J

    .line 19
    invoke-virtual {p0, p2, p3, p4}, Lcom/amap/location/e/a/b/f;->e(FLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "G"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/location/e/a/b/f;->e:Ljava/lang/String;

    .line 21
    sget-wide v0, Lcom/amap/location/e/a/b/f;->b:J

    invoke-static {p5, p6, v0, v1}, Lcom/amap/location/e/a/b/f;->b(JJ)J

    move-result-wide p5

    iput-wide p5, p0, Lcom/amap/location/e/a/b/f;->f:J

    .line 22
    invoke-virtual {p0, p2, p3, p4}, Lcom/amap/location/e/a/b/f;->a(FLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/e/a/b/f;->d:F

    return v0
.end method

.method public b(FLjava/lang/String;I)Ljava/lang/String;
    .locals 5

    float-to-double v0, p1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    double-to-int p2, v0

    const/16 v0, 0x63e

    const-string v1, "1C"

    const/4 v4, 0x0

    if-gt v0, p2, :cond_1

    const/16 v0, 0x645

    if-gt p2, v0, :cond_1

    const/16 p1, 0x18

    if-gt p3, p1, :cond_0

    .line 3
    sget-object p1, Lcom/amap/location/e/a/b/f;->g:[I

    add-int/lit8 p3, p3, -0x1

    aget p1, p1, p3

    int-to-float p1, p1

    const p2, 0x49095440    # 562500.0f

    mul-float p1, p1, p2

    const p2, 0x4ebef929    # 1.602E9f

    add-float/2addr p1, p2

    iput p1, p0, Lcom/amap/location/e/a/b/f;->d:F

    goto :goto_0

    .line 4
    :cond_0
    iput v4, p0, Lcom/amap/location/e/a/b/f;->d:F

    :goto_0
    return-object v1

    :cond_1
    sub-float/2addr p1, v4

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    cmpg-double p3, p1, v2

    if-gez p3, :cond_2

    const p1, 0x4ebbce01

    .line 6
    iput p1, p0, Lcom/amap/location/e/a/b/f;->d:F

    return-object v1

    :cond_2
    const-string p1, "null"

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/a/b/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(FLjava/lang/String;I)Ljava/lang/String;
    .locals 6

    const p3, 0x4ebbce01

    sub-float v0, p1, p3

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "1C"

    const-wide v3, 0x412e848000000000L    # 1000000.0

    cmpg-double v5, v0, v3

    if-gez v5, :cond_1

    const-string p1, "A"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1A"

    return-object p1

    :cond_0
    return-object v2

    :cond_1
    const v0, 0x4e8fe6fd

    sub-float v0, p1, v0

    .line 4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v5, v0, v3

    if-gez v5, :cond_2

    const-string p1, "7X"

    return-object p1

    :cond_2
    const v0, 0x4e8c3e68

    sub-float v0, p1, v0

    .line 5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v5, v0, v3

    if-gez v5, :cond_4

    const-string p1, "Q"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "5Q"

    return-object p1

    :cond_3
    const-string p1, "5I"

    return-object p1

    :cond_4
    const/4 p2, 0x0

    sub-float/2addr p1, p2

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    cmpg-double v0, p1, v3

    if-gez v0, :cond_5

    .line 8
    iput p3, p0, Lcom/amap/location/e/a/b/f;->d:F

    return-object v2

    :cond_5
    const-string p1, "null"

    return-object p1
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/e/a/b/f;->f:J

    return-wide v0
.end method

.method public d(FLjava/lang/String;I)Ljava/lang/String;
    .locals 6

    const p3, 0x4ebbce01

    sub-float v0, p1, p3

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "1C"

    const-wide v3, 0x412e848000000000L    # 1000000.0

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    return-object v2

    :cond_0
    const v0, 0x4e8c3e68

    sub-float v0, p1, v0

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v5, v0, v3

    if-gez v5, :cond_2

    const-string p1, "Q"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "5Q"

    return-object p1

    :cond_1
    const-string p1, "5I"

    return-object p1

    :cond_2
    const/4 p2, 0x0

    sub-float/2addr p1, p2

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    cmpg-double v0, p1, v3

    if-gez v0, :cond_3

    .line 6
    iput p3, p0, Lcom/amap/location/e/a/b/f;->d:F

    return-object v2

    :cond_3
    const-string p1, "null"

    return-object p1
.end method

.method public e(FLjava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 1
    const p2, 0x4ebbce01

    .line 4
    sub-float p3, p1, p2

    .line 6
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 9
    move-result p3

    .line 10
    float-to-double v0, p3

    .line 11
    const-string p3, "1C"

    .line 13
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 18
    cmpg-double v4, v0, v2

    .line 20
    if-gez v4, :cond_0

    .line 22
    return-object p3

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    sub-float/2addr p1, v0

    .line 25
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 28
    move-result p1

    .line 29
    float-to-double v0, p1

    .line 30
    cmpg-double p1, v0, v2

    .line 32
    if-gez p1, :cond_1

    .line 34
    iput p2, p0, Lcom/amap/location/e/a/b/f;->d:F

    .line 36
    return-object p3

    .line 37
    :cond_1
    const-string p1, "null"

    .line 39
    return-object p1
.end method

.method public f(FLjava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 1
    const p2, 0x4ebbce01

    .line 4
    sub-float p2, p1, p2

    .line 6
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 9
    move-result p2

    .line 10
    float-to-double p2, p2

    .line 11
    const-wide v0, 0x412e848000000000L    # 1000000.0

    .line 16
    cmpg-double v2, p2, v0

    .line 18
    if-gez v2, :cond_0

    .line 20
    const-string p1, "1D"

    .line 22
    return-object p1

    .line 23
    :cond_0
    const p2, 0x4eba18ee

    .line 26
    sub-float p3, p1, p2

    .line 28
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 31
    move-result p3

    .line 32
    float-to-double v2, p3

    .line 33
    const-string p3, "2I"

    .line 35
    cmpg-double v4, v2, v0

    .line 37
    if-gez v4, :cond_1

    .line 39
    return-object p3

    .line 40
    :cond_1
    const v2, 0x4e8c3e68

    .line 43
    sub-float v2, p1, v2

    .line 45
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 48
    move-result v2

    .line 49
    float-to-double v2, v2

    .line 50
    cmpg-double v4, v2, v0

    .line 52
    if-gez v4, :cond_2

    .line 54
    const-string p1, "5D"

    .line 56
    return-object p1

    .line 57
    :cond_2
    const/4 v2, 0x0

    .line 58
    sub-float/2addr p1, v2

    .line 59
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 62
    move-result p1

    .line 63
    float-to-double v2, p1

    .line 64
    cmpg-double p1, v2, v0

    .line 66
    if-gez p1, :cond_3

    .line 68
    iput p2, p0, Lcom/amap/location/e/a/b/f;->d:F

    .line 70
    return-object p3

    .line 71
    :cond_3
    const-string p1, "null"

    .line 73
    return-object p1
.end method

.method public g(FLjava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 1
    const p2, 0x4e8c3e68

    .line 4
    sub-float p3, p1, p2

    .line 6
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 9
    move-result p3

    .line 10
    float-to-double v0, p3

    .line 11
    const-string p3, "5C"

    .line 13
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 18
    cmpg-double v4, v0, v2

    .line 20
    if-gez v4, :cond_0

    .line 22
    return-object p3

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    sub-float/2addr p1, v0

    .line 25
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 28
    move-result p1

    .line 29
    float-to-double v0, p1

    .line 30
    cmpg-double p1, v0, v2

    .line 32
    if-gez p1, :cond_1

    .line 34
    iput p2, p0, Lcom/amap/location/e/a/b/f;->d:F

    .line 36
    return-object p3

    .line 37
    :cond_1
    const-string p1, "null"

    .line 39
    return-object p1
.end method
