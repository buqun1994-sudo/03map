.class public Lzx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzx$e;,
        Lzx$d;,
        Lzx$c;
    }
.end annotation


# static fields
.field public static final o:Ljava/lang/String; = "zx"

.field public static p:Lxy;

.field public static final q:Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/util/List;

.field public c:Landroid/location/GnssStatus$Callback;

.field public d:Z

.field public e:I

.field public f:J

.field public g:I

.field public h:I

.field public i:Z

.field public j:Landroid/os/Handler;

.field public k:Ljava/lang/Runnable;

.field public l:Landroid/os/Handler;

.field public m:Ljava/lang/Runnable;

.field public n:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lzx;->q:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lzx;->d:Z

    .line 7
    iput v0, p0, Lzx;->e:I

    .line 9
    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lzx;->f:J

    .line 13
    iput v0, p0, Lzx;->g:I

    .line 15
    iput v0, p0, Lzx;->h:I

    .line 17
    iput-boolean v0, p0, Lzx;->i:Z

    .line 19
    new-instance v0, Landroid/os/Handler;

    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    iput-object v0, p0, Lzx;->j:Landroid/os/Handler;

    .line 30
    new-instance v0, Lzx$a;

    .line 32
    invoke-direct {v0, p0}, Lzx$a;-><init>(Lzx;)V

    .line 35
    iput-object v0, p0, Lzx;->k:Ljava/lang/Runnable;

    .line 37
    new-instance v0, Landroid/os/Handler;

    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    iput-object v0, p0, Lzx;->l:Landroid/os/Handler;

    .line 48
    new-instance v0, Lzx$b;

    .line 50
    invoke-direct {v0, p0}, Lzx$b;-><init>(Lzx;)V

    .line 53
    iput-object v0, p0, Lzx;->m:Ljava/lang/Runnable;

    .line 55
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lzx;->o:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static h()Lzx;
    .locals 1

    .line 1
    invoke-static {}, Lzx$e;->a()Lzx;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DDD)V
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    const/4 v1, 0x0

    .line 6
    aput-object p1, v0, v1

    .line 8
    const/4 p1, 0x1

    .line 9
    aput-object p2, v0, p1

    .line 11
    const/16 p1, 0x36a

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x2

    .line 18
    aput-object p1, v0, p2

    .line 20
    const/4 p1, 0x3

    .line 21
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p2

    .line 25
    aput-object p2, v0, p1

    .line 27
    const/4 p1, 0x4

    .line 28
    aput-object p4, v0, p1

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    move-result-wide p1

    .line 34
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    move-result-object p1

    .line 38
    const/4 p2, 0x5

    .line 39
    aput-object p1, v0, p2

    .line 41
    const/4 p1, 0x6

    .line 42
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 45
    move-result-object p2

    .line 46
    aput-object p2, v0, p1

    .line 48
    const/4 p1, 0x7

    .line 49
    invoke-static {p7, p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 52
    move-result-object p2

    .line 53
    aput-object p2, v0, p1

    .line 55
    const/16 p1, 0x8

    .line 57
    invoke-static {p9, p10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 60
    move-result-object p2

    .line 61
    aput-object p2, v0, p1

    .line 63
    const-string p1, "DR_GNSS_VISUAL_LOG method:{?}, annotation:{?}, lineNumbers:{?}, indrsensortype:{?}, params:{?},realtime:{?} $$$[{?}, {?}, {?}]"

    .line 65
    invoke-static {p0, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lzx;->i:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_2

    .line 7
    iget v0, p0, Lzx;->e:I

    .line 9
    const v3, 0x1d4c0

    .line 12
    const v4, 0x2bf20

    .line 15
    if-ne v0, v3, :cond_0

    .line 17
    iput v4, p0, Lzx;->e:I

    .line 19
    iget-object v0, p0, Lzx;->l:Landroid/os/Handler;

    .line 21
    iget-object v3, p0, Lzx;->m:Ljava/lang/Runnable;

    .line 23
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    iget-object v0, p0, Lzx;->l:Landroid/os/Handler;

    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lzx;->l:Landroid/os/Handler;

    .line 33
    iget-object v1, p0, Lzx;->m:Ljava/lang/Runnable;

    .line 35
    iget v3, p0, Lzx;->e:I

    .line 37
    int-to-long v3, v3

    .line 38
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    const/4 v0, 0x2

    .line 42
    invoke-virtual {p0, v2, v0}, Lzx;->d(II)V

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const v3, 0x493e0

    .line 49
    if-ne v0, v4, :cond_1

    .line 51
    iput v3, p0, Lzx;->e:I

    .line 53
    iget-object v0, p0, Lzx;->l:Landroid/os/Handler;

    .line 55
    iget-object v3, p0, Lzx;->m:Ljava/lang/Runnable;

    .line 57
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    iget-object v0, p0, Lzx;->l:Landroid/os/Handler;

    .line 62
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lzx;->l:Landroid/os/Handler;

    .line 67
    iget-object v1, p0, Lzx;->m:Ljava/lang/Runnable;

    .line 69
    iget v3, p0, Lzx;->e:I

    .line 71
    int-to-long v3, v3

    .line 72
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    const/4 v0, 0x5

    .line 76
    invoke-virtual {p0, v2, v0}, Lzx;->d(II)V

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    if-ne v0, v3, :cond_3

    .line 82
    iget-object v0, p0, Lzx;->l:Landroid/os/Handler;

    .line 84
    iget-object v3, p0, Lzx;->m:Ljava/lang/Runnable;

    .line 86
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    iget-object v0, p0, Lzx;->l:Landroid/os/Handler;

    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 94
    const/16 v0, 0xa

    .line 96
    invoke-virtual {p0, v2, v0}, Lzx;->d(II)V

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    sget-object v0, Lzx;->o:Ljava/lang/String;

    .line 102
    const-string v3, "checkLocate hasLocated"

    .line 104
    new-array v2, v2, [Ljava/lang/Object;

    .line 106
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lzx;->l:Landroid/os/Handler;

    .line 111
    iget-object v2, p0, Lzx;->m:Ljava/lang/Runnable;

    .line 113
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    iget-object v0, p0, Lzx;->l:Landroid/os/Handler;

    .line 118
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 121
    const-string v0, "hasLocated=1"

    .line 123
    invoke-virtual {p0, v0}, Lzx;->f(Ljava/lang/String;)V

    .line 126
    :cond_3
    :goto_0
    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocSignData;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocSignData;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    iput v1, v0, Lcom/autonavi/amapauto/location/model/LocSignData;->dataType:I

    .line 9
    new-instance v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/location/model/LocGpgsv;-><init>()V

    .line 14
    iput-object v1, v0, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 16
    const/16 v2, 0x40

    .line 18
    iput v2, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->dataType:I

    .line 20
    const/4 v3, 0x0

    .line 21
    iput v3, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->type:I

    .line 23
    new-array v4, v2, [I

    .line 25
    iput-object v4, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->prn:[I

    .line 27
    new-array v4, v2, [I

    .line 29
    iput-object v4, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->prnLocType:[I

    .line 31
    new-array v4, v2, [I

    .line 33
    iput-object v4, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->elevation:[I

    .line 35
    new-array v4, v2, [I

    .line 37
    iput-object v4, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->azimuth:[I

    .line 39
    new-array v4, v2, [I

    .line 41
    iput-object v4, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->snr:[I

    .line 43
    new-array v2, v2, [I

    .line 45
    iput-object v2, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->isUsed:[I

    .line 47
    iput v3, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->num:I

    .line 49
    iput v3, p0, Lzx;->h:I

    .line 51
    iput v3, p0, Lzx;->g:I

    .line 53
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/PosService;->setSignInfo(Lcom/autonavi/amapauto/location/model/LocSignData;)V

    .line 56
    return-void
.end method

.method public d(II)V
    .locals 6

    .line 1
    iget v3, p0, Lzx;->g:I

    .line 3
    iget v4, p0, Lzx;->h:I

    .line 5
    const-string v5, ""

    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    move v2, p2

    .line 10
    invoke-virtual/range {v0 .. v5}, Lzx;->e(IIIILjava/lang/String;)V

    .line 13
    return-void
.end method

.method public e(IIIILjava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const v1, 0x5f5e1c1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v2, v0, v3

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p1

    .line 18
    const/4 v2, 0x1

    .line 19
    aput-object p1, v0, v2

    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p2

    .line 26
    aput-object p2, v0, p1

    .line 28
    const/4 p1, 0x3

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object p2

    .line 33
    aput-object p2, v0, p1

    .line 35
    const/4 p1, 0x4

    .line 36
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p2

    .line 40
    aput-object p2, v0, p1

    .line 42
    const/4 p1, 0x5

    .line 43
    aput-object p5, v0, p1

    .line 45
    const-string p1, "[%d][5][%d][%d][%d][%d][%s]"

    .line 47
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    sget-object p2, Lzx;->o:Ljava/lang/String;

    .line 53
    new-array p3, v2, [Ljava/lang/Object;

    .line 55
    aput-object p1, p3, v3

    .line 57
    const-string p4, "collectLocateData format={?}"

    .line 59
    invoke-static {p2, p4, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const-string p2, "AUTO_AL"

    .line 64
    const/16 p3, 0x32

    .line 66
    invoke-static {p2, v1, p1, p3}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 69
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    iget v3, p0, Lzx;->g:I

    .line 5
    iget v4, p0, Lzx;->h:I

    .line 7
    move-object v0, p0

    .line 8
    move-object v5, p1

    .line 9
    invoke-virtual/range {v0 .. v5}, Lzx;->e(IIIILjava/lang/String;)V

    .line 12
    return-void
.end method

.method public g(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_3

    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_2

    .line 7
    const/4 v0, 0x5

    .line 8
    if-eq p1, v0, :cond_1

    .line 10
    const/4 v0, 0x6

    .line 11
    if-eq p1, v0, :cond_0

    .line 13
    sget p1, Luy;->e:I

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget p1, Luy;->d:I

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget p1, Luy;->b:I

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    sget p1, Luy;->c:I

    .line 24
    goto :goto_0

    .line 25
    :cond_3
    sget p1, Luy;->a:I

    .line 27
    :goto_0
    return p1
.end method

.method public i(Lxy;)V
    .locals 3

    .line 1
    sput-object p1, Lzx;->p:Lxy;

    .line 3
    new-instance p1, Lcom/autonavi/amapauto/location/model/LocModeType;

    .line 5
    invoke-direct {p1}, Lcom/autonavi/amapauto/location/model/LocModeType;-><init>()V

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/location/model/PosWorkPath;

    .line 10
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/PosWorkPath;-><init>()V

    .line 13
    invoke-static {v0, p1}, Lcom/autonavi/amapauto/jni/PosService;->init(Lcom/autonavi/amapauto/location/model/PosWorkPath;Lcom/autonavi/amapauto/location/model/LocModeType;)J

    .line 16
    invoke-static {}, Lzm;->d()Lzm;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lzm;->k()Z

    .line 23
    move-result p1

    .line 24
    iput-boolean p1, p0, Lzx;->d:Z

    .line 26
    iget-object p1, p0, Lzx;->l:Landroid/os/Handler;

    .line 28
    if-eqz p1, :cond_0

    .line 30
    const v0, 0x1d4c0

    .line 33
    iput v0, p0, Lzx;->e:I

    .line 35
    iget-object v0, p0, Lzx;->m:Ljava/lang/Runnable;

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    iget-object p1, p0, Lzx;->l:Landroid/os/Handler;

    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lzx;->l:Landroid/os/Handler;

    .line 48
    iget-object v0, p0, Lzx;->m:Ljava/lang/Runnable;

    .line 50
    iget v1, p0, Lzx;->e:I

    .line 52
    int-to-long v1, v1

    .line 53
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    :cond_0
    return-void
.end method

.method public k(Lzx$d;)V
    .locals 6

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lse;->getGnssStatusCallbackType()I

    .line 8
    move-result v0

    .line 9
    sget-object v1, Lzx;->o:Ljava/lang/String;

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v3, v2, [Ljava/lang/Object;

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v5

    .line 19
    aput-object v5, v3, v4

    .line 21
    const-string v4, "registerGnssStatus(). type = {?}"

    .line 23
    invoke-static {v1, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    if-ne v2, v0, :cond_1

    .line 28
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Lzx$d;->c()V

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lrv;->I()Lxy;

    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Lxy;->e()V

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x2

    .line 47
    if-ne v1, v0, :cond_2

    .line 49
    invoke-virtual {p0}, Lzx;->l()V

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    const/16 v1, 0x18

    .line 57
    if-lt v0, v1, :cond_3

    .line 59
    invoke-virtual {p0}, Lzx;->l()V

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    if-eqz p1, :cond_4

    .line 65
    invoke-virtual {p1}, Lzx$d;->c()V

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    invoke-static {}, Lrv;->H()Lrv;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lrv;->I()Lxy;

    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p1}, Lxy;->e()V

    .line 80
    :goto_0
    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    const-string v0, "Location&DR"

    .line 3
    const-string v1, "registerGnssStatusCallback"

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v0, Lzx;->q:Ljava/lang/Object;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lzx;->c:Landroid/location/GnssStatus$Callback;

    .line 16
    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lzx$c;

    .line 20
    invoke-direct {v1}, Lzx$c;-><init>()V

    .line 23
    iput-object v1, p0, Lzx;->c:Landroid/location/GnssStatus$Callback;

    .line 25
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sget-object v0, Lzx;->p:Lxy;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    iget-object v1, p0, Lzx;->c:Landroid/location/GnssStatus$Callback;

    .line 32
    invoke-interface {v0, v1}, Lxy;->d(Landroid/location/GnssStatus$Callback;)V

    .line 35
    :cond_1
    return-void

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw v1
.end method

.method public m(Lcom/autonavi/amapauto/location/model/LocGpgsv;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocSignData;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocSignData;-><init>()V

    .line 6
    const/16 v1, 0x40

    .line 8
    iput v1, v0, Lcom/autonavi/amapauto/location/model/LocSignData;->dataType:I

    .line 10
    iput-object p1, v0, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 12
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/PosService;->setSignInfo(Lcom/autonavi/amapauto/location/model/LocSignData;)V

    .line 15
    return-void
.end method

.method public n(DJ[D[D[D)V
    .locals 2

    .line 1
    new-instance v0, Lwx;

    .line 3
    invoke-direct {v0}, Lwx;-><init>()V

    .line 6
    const/16 v1, 0x1000

    .line 8
    iput v1, v0, Lwx;->a:I

    .line 10
    iput-wide p1, v0, Lwx;->b:D

    .line 12
    long-to-double p1, p3

    .line 13
    iput-wide p1, v0, Lwx;->c:D

    .line 15
    iput-object p5, v0, Lwx;->d:[D

    .line 17
    iput-object p6, v0, Lwx;->e:[D

    .line 19
    iput-object p7, v0, Lwx;->f:[D

    .line 21
    new-instance p1, Lcom/autonavi/amapauto/location/model/LocSignData;

    .line 23
    invoke-direct {p1}, Lcom/autonavi/amapauto/location/model/LocSignData;-><init>()V

    .line 26
    iput v1, p1, Lcom/autonavi/amapauto/location/model/LocSignData;->dataType:I

    .line 28
    iput-object v0, p1, Lcom/autonavi/amapauto/location/model/LocSignData;->driveSig:Lwx;

    .line 30
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/PosService;->setSignInfo(Lcom/autonavi/amapauto/location/model/LocSignData;)V

    .line 33
    return-void
.end method

.method public o()V
    .locals 12

    .line 1
    sget-object v0, Lzx;->p:Lxy;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lzx;->j:Landroid/os/Handler;

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget-object v2, p0, Lzx;->k:Ljava/lang/Runnable;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lzx;->j:Landroid/os/Handler;

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lzx;->j:Landroid/os/Handler;

    .line 23
    iget-object v2, p0, Lzx;->k:Ljava/lang/Runnable;

    .line 25
    const-wide/16 v3, 0xbb8

    .line 27
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    :cond_1
    sget-object v0, Lzx;->p:Lxy;

    .line 32
    invoke-interface {v0, v1}, Lxy;->k(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_9

    .line 38
    new-instance v1, Lcom/autonavi/amapauto/location/model/LocSignData;

    .line 40
    invoke-direct {v1}, Lcom/autonavi/amapauto/location/model/LocSignData;-><init>()V

    .line 43
    const/4 v2, 0x1

    .line 44
    iput v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->dataType:I

    .line 46
    new-instance v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 48
    invoke-direct {v3}, Lcom/autonavi/amapauto/location/model/LocGpgsv;-><init>()V

    .line 51
    iput-object v3, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 53
    const/16 v4, 0x40

    .line 55
    iput v4, v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;->dataType:I

    .line 57
    const/4 v5, 0x0

    .line 58
    iput v5, v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;->type:I

    .line 60
    new-array v6, v4, [I

    .line 62
    iput-object v6, v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;->prn:[I

    .line 64
    new-array v6, v4, [I

    .line 66
    iput-object v6, v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;->prnLocType:[I

    .line 68
    new-array v6, v4, [I

    .line 70
    iput-object v6, v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;->elevation:[I

    .line 72
    new-array v6, v4, [I

    .line 74
    iput-object v6, v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;->azimuth:[I

    .line 76
    new-array v6, v4, [I

    .line 78
    iput-object v6, v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;->snr:[I

    .line 80
    new-array v6, v4, [I

    .line 82
    iput-object v6, v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;->isUsed:[I

    .line 84
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    .line 87
    move-result v3

    .line 88
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 95
    move-result-object v0

    .line 96
    new-instance v6, Ljava/util/ArrayList;

    .line 98
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iput-object v6, p0, Lzx;->b:Ljava/util/List;

    .line 103
    const-string v6, ""

    .line 105
    const/4 v7, 0x0

    .line 106
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_4

    .line 112
    if-gt v7, v3, :cond_4

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    move-result-object v8

    .line 118
    check-cast v8, Landroid/location/GpsSatellite;

    .line 120
    invoke-virtual {v8}, Landroid/location/GpsSatellite;->usedInFix()Z

    .line 123
    move-result v9

    .line 124
    if-eqz v9, :cond_3

    .line 126
    if-ge v7, v4, :cond_2

    .line 128
    iget-object v9, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 130
    iget-object v9, v9, Lcom/autonavi/amapauto/location/model/LocGpgsv;->prnLocType:[I

    .line 132
    invoke-static {}, Lse;->c()Lse;

    .line 135
    move-result-object v10

    .line 136
    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getPrn()I

    .line 139
    move-result v11

    .line 140
    invoke-virtual {v10, v11}, Lse;->getSatelliteType(I)I

    .line 143
    move-result v10

    .line 144
    aput v10, v9, v7

    .line 146
    invoke-static {}, Lse;->c()Lse;

    .line 149
    move-result-object v9

    .line 150
    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getPrn()I

    .line 153
    move-result v10

    .line 154
    invoke-virtual {v9, v10}, Lse;->getSatellitePrnForShow(I)I

    .line 157
    move-result v9

    .line 158
    iget-object v10, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 160
    iget-object v11, v10, Lcom/autonavi/amapauto/location/model/LocGpgsv;->prn:[I

    .line 162
    aput v9, v11, v7

    .line 164
    iget-object v10, v10, Lcom/autonavi/amapauto/location/model/LocGpgsv;->elevation:[I

    .line 166
    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getElevation()F

    .line 169
    move-result v11

    .line 170
    float-to-int v11, v11

    .line 171
    aput v11, v10, v7

    .line 173
    iget-object v10, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 175
    iget-object v10, v10, Lcom/autonavi/amapauto/location/model/LocGpgsv;->azimuth:[I

    .line 177
    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getAzimuth()F

    .line 180
    move-result v11

    .line 181
    float-to-int v11, v11

    .line 182
    aput v11, v10, v7

    .line 184
    iget-object v10, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 186
    iget-object v10, v10, Lcom/autonavi/amapauto/location/model/LocGpgsv;->snr:[I

    .line 188
    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getSnr()F

    .line 191
    move-result v11

    .line 192
    float-to-int v11, v11

    .line 193
    aput v11, v10, v7

    .line 195
    iget-object v10, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 197
    iget-object v10, v10, Lcom/autonavi/amapauto/location/model/LocGpgsv;->isUsed:[I

    .line 199
    aput v2, v10, v7

    .line 201
    new-instance v10, Ljava/lang/StringBuilder;

    .line 203
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v6, "{prn="

    .line 211
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    const-string v6, ",getElevation="

    .line 219
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getElevation()F

    .line 225
    move-result v6

    .line 226
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 229
    const-string v6, ",getAzimuth="

    .line 231
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getAzimuth()F

    .line 237
    move-result v6

    .line 238
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 241
    const-string v6, ",getSnr="

    .line 243
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getSnr()F

    .line 249
    move-result v6

    .line 250
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 253
    const-string v6, "}"

    .line 255
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object v6

    .line 262
    add-int/lit8 v7, v7, 0x1

    .line 264
    goto/16 :goto_0

    .line 266
    :cond_3
    iget-object v9, p0, Lzx;->b:Ljava/util/List;

    .line 268
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    goto/16 :goto_0

    .line 273
    :cond_4
    iput v7, p0, Lzx;->g:I

    .line 275
    sget-object v0, Lzx;->o:Ljava/lang/String;

    .line 277
    const/4 v3, 0x2

    .line 278
    new-array v3, v3, [Ljava/lang/Object;

    .line 280
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    move-result-object v8

    .line 284
    aput-object v8, v3, v5

    .line 286
    aput-object v6, v3, v2

    .line 288
    const-string v6, "start count ={?},logGsvInfo={?}"

    .line 290
    invoke-static {v0, v6, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lzx;->b:Ljava/util/List;

    .line 295
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 298
    move-result v0

    .line 299
    add-int/2addr v0, v7

    .line 300
    if-ge v0, v4, :cond_5

    .line 302
    goto :goto_1

    .line 303
    :cond_5
    const/16 v0, 0x40

    .line 305
    :goto_1
    const/4 v3, 0x0

    .line 306
    :goto_2
    if-ge v7, v0, :cond_6

    .line 308
    iget-object v6, p0, Lzx;->b:Ljava/util/List;

    .line 310
    add-int/lit8 v8, v3, 0x1

    .line 312
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 315
    move-result-object v3

    .line 316
    check-cast v3, Landroid/location/GpsSatellite;

    .line 318
    iget-object v6, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 320
    iget-object v6, v6, Lcom/autonavi/amapauto/location/model/LocGpgsv;->prnLocType:[I

    .line 322
    invoke-static {}, Lse;->c()Lse;

    .line 325
    move-result-object v9

    .line 326
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getPrn()I

    .line 329
    move-result v10

    .line 330
    invoke-virtual {v9, v10}, Lse;->getSatelliteType(I)I

    .line 333
    move-result v9

    .line 334
    aput v9, v6, v7

    .line 336
    iget-object v6, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 338
    iget-object v6, v6, Lcom/autonavi/amapauto/location/model/LocGpgsv;->prn:[I

    .line 340
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getPrn()I

    .line 343
    move-result v9

    .line 344
    aput v9, v6, v7

    .line 346
    iget-object v6, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 348
    iget-object v6, v6, Lcom/autonavi/amapauto/location/model/LocGpgsv;->elevation:[I

    .line 350
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getElevation()F

    .line 353
    move-result v9

    .line 354
    float-to-int v9, v9

    .line 355
    aput v9, v6, v7

    .line 357
    iget-object v6, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 359
    iget-object v6, v6, Lcom/autonavi/amapauto/location/model/LocGpgsv;->azimuth:[I

    .line 361
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getAzimuth()F

    .line 364
    move-result v9

    .line 365
    float-to-int v9, v9

    .line 366
    aput v9, v6, v7

    .line 368
    iget-object v6, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 370
    iget-object v6, v6, Lcom/autonavi/amapauto/location/model/LocGpgsv;->snr:[I

    .line 372
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    .line 375
    move-result v3

    .line 376
    float-to-int v3, v3

    .line 377
    aput v3, v6, v7

    .line 379
    iget-object v3, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 381
    iget-object v3, v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;->isUsed:[I

    .line 383
    aput v5, v3, v7

    .line 385
    add-int/lit8 v7, v7, 0x1

    .line 387
    move v3, v8

    .line 388
    goto :goto_2

    .line 389
    :cond_6
    iput v7, p0, Lzx;->h:I

    .line 391
    sget-object v3, Lzx;->o:Ljava/lang/String;

    .line 393
    new-array v2, v2, [Ljava/lang/Object;

    .line 395
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 398
    move-result-object v6

    .line 399
    aput-object v6, v2, v5

    .line 401
    const-string v5, "end count ={?}"

    .line 403
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 408
    if-ge v7, v4, :cond_7

    .line 410
    move v4, v0

    .line 411
    :cond_7
    iput v4, v2, Lcom/autonavi/amapauto/location/model/LocGpgsv;->num:I

    .line 413
    if-ltz v4, :cond_9

    .line 415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 418
    move-result-wide v3

    .line 419
    iput-wide v3, v2, Lcom/autonavi/amapauto/location/model/LocGpgsv;->tickTime:J

    .line 421
    iget-wide v2, p0, Lzx;->f:J

    .line 423
    const-wide/16 v4, 0x0

    .line 425
    cmp-long v0, v2, v4

    .line 427
    if-lez v0, :cond_8

    .line 429
    iget-object v0, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 431
    iget-wide v4, v0, Lcom/autonavi/amapauto/location/model/LocGpgsv;->tickTime:J

    .line 433
    sub-long/2addr v4, v2

    .line 434
    const-wide/16 v2, 0x1f4

    .line 436
    cmp-long v0, v4, v2

    .line 438
    if-gez v0, :cond_8

    .line 440
    return-void

    .line 441
    :cond_8
    iget-object v0, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 443
    iget-wide v2, v0, Lcom/autonavi/amapauto/location/model/LocGpgsv;->tickTime:J

    .line 445
    iput-wide v2, p0, Lzx;->f:J

    .line 447
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/PosService;->setSignInfo(Lcom/autonavi/amapauto/location/model/LocSignData;)V

    .line 450
    :cond_9
    return-void
.end method

.method public p(Landroid/location/GnssStatus;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v0, Lzx;->j:Landroid/os/Handler;

    .line 7
    if-eqz v2, :cond_0

    .line 9
    iget-object v3, v0, Lzx;->k:Ljava/lang/Runnable;

    .line 11
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iget-object v2, v0, Lzx;->j:Landroid/os/Handler;

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 20
    iget-object v2, v0, Lzx;->j:Landroid/os/Handler;

    .line 22
    iget-object v3, v0, Lzx;->k:Ljava/lang/Runnable;

    .line 24
    const-wide/16 v4, 0xbb8

    .line 26
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    :cond_0
    if-eqz v1, :cond_9

    .line 31
    new-instance v2, Lcom/autonavi/amapauto/location/model/LocSignData;

    .line 33
    invoke-direct {v2}, Lcom/autonavi/amapauto/location/model/LocSignData;-><init>()V

    .line 36
    const/4 v3, 0x1

    .line 37
    iput v3, v2, Lcom/autonavi/amapauto/location/model/LocSignData;->dataType:I

    .line 39
    new-instance v4, Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 41
    invoke-direct {v4}, Lcom/autonavi/amapauto/location/model/LocGpgsv;-><init>()V

    .line 44
    iput-object v4, v2, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 46
    const/16 v5, 0x40

    .line 48
    iput v5, v4, Lcom/autonavi/amapauto/location/model/LocGpgsv;->dataType:I

    .line 50
    const/4 v6, 0x0

    .line 51
    iput v6, v4, Lcom/autonavi/amapauto/location/model/LocGpgsv;->type:I

    .line 53
    new-array v7, v5, [I

    .line 55
    iput-object v7, v4, Lcom/autonavi/amapauto/location/model/LocGpgsv;->prn:[I

    .line 57
    new-array v7, v5, [I

    .line 59
    iput-object v7, v4, Lcom/autonavi/amapauto/location/model/LocGpgsv;->prnLocType:[I

    .line 61
    new-array v7, v5, [I

    .line 63
    iput-object v7, v4, Lcom/autonavi/amapauto/location/model/LocGpgsv;->elevation:[I

    .line 65
    new-array v7, v5, [I

    .line 67
    iput-object v7, v4, Lcom/autonavi/amapauto/location/model/LocGpgsv;->azimuth:[I

    .line 69
    new-array v7, v5, [I

    .line 71
    iput-object v7, v4, Lcom/autonavi/amapauto/location/model/LocGpgsv;->snr:[I

    .line 73
    new-array v7, v5, [I

    .line 75
    iput-object v7, v4, Lcom/autonavi/amapauto/location/model/LocGpgsv;->isUsed:[I

    .line 77
    invoke-static/range {p1 .. p1}, Lpr0;->a(Landroid/location/GnssStatus;)I

    .line 80
    move-result v4

    .line 81
    new-instance v7, Ljava/util/ArrayList;

    .line 83
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v8, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    new-instance v9, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    const/4 v10, 0x0

    .line 97
    const/4 v11, 0x0

    .line 98
    :goto_0
    if-ge v10, v4, :cond_5

    .line 100
    invoke-static {v1, v10}, Ldu0;->a(Landroid/location/GnssStatus;I)I

    .line 103
    move-result v12

    .line 104
    invoke-static {v1, v10}, Leu0;->a(Landroid/location/GnssStatus;I)I

    .line 107
    move-result v13

    .line 108
    invoke-static {}, Lse;->c()Lse;

    .line 111
    move-result-object v14

    .line 112
    invoke-virtual {v14}, Lse;->isCustomSatelliteTypeForN()Z

    .line 115
    move-result v14

    .line 116
    if-eqz v14, :cond_2

    .line 118
    invoke-static {}, Lse;->c()Lse;

    .line 121
    move-result-object v14

    .line 122
    invoke-virtual {v14, v13}, Lse;->getSatelliteTypeForN(I)I

    .line 125
    move-result v14

    .line 126
    sget v15, Luy;->f:I

    .line 128
    if-ne v15, v14, :cond_3

    .line 130
    :cond_1
    move/from16 v16, v4

    .line 132
    goto/16 :goto_1

    .line 134
    :cond_2
    invoke-virtual {v0, v12}, Lzx;->g(I)I

    .line 137
    move-result v14

    .line 138
    :cond_3
    const-string v15, "{svid="

    .line 140
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    const-string v15, ",type="

    .line 148
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string v6, ",gnssType="

    .line 156
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    const-string v3, "},"

    .line 164
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {v1, v10}, Lls0;->a(Landroid/location/GnssStatus;I)Z

    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_4

    .line 173
    if-ge v11, v5, :cond_1

    .line 175
    iget-object v3, v2, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 177
    iget-object v5, v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;->prnLocType:[I

    .line 179
    aput v14, v5, v11

    .line 181
    iget-object v5, v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;->prn:[I

    .line 183
    aput v13, v5, v11

    .line 185
    iget-object v3, v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;->elevation:[I

    .line 187
    invoke-static {v1, v10}, Lfu0;->a(Landroid/location/GnssStatus;I)F

    .line 190
    move-result v5

    .line 191
    float-to-int v5, v5

    .line 192
    aput v5, v3, v11

    .line 194
    iget-object v3, v2, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 196
    iget-object v3, v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;->azimuth:[I

    .line 198
    invoke-static {v1, v10}, Lfr0;->a(Landroid/location/GnssStatus;I)F

    .line 201
    move-result v5

    .line 202
    float-to-int v5, v5

    .line 203
    aput v5, v3, v11

    .line 205
    iget-object v3, v2, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 207
    iget-object v3, v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;->snr:[I

    .line 209
    invoke-static {}, Lse;->c()Lse;

    .line 212
    move-result-object v5

    .line 213
    move/from16 v16, v4

    .line 215
    invoke-static {v1, v10}, Lws0;->a(Landroid/location/GnssStatus;I)F

    .line 218
    move-result v4

    .line 219
    invoke-virtual {v5, v13, v4}, Lse;->getSNRForShow(IF)I

    .line 222
    move-result v4

    .line 223
    aput v4, v3, v11

    .line 225
    iget-object v3, v2, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 227
    iget-object v3, v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;->isUsed:[I

    .line 229
    const/4 v4, 0x1

    .line 230
    aput v4, v3, v11

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    .line 234
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    const-string v4, "{Svid="

    .line 239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string v4, ",getElevation="

    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-static {v1, v10}, Lfu0;->a(Landroid/location/GnssStatus;I)F

    .line 253
    move-result v4

    .line 254
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 257
    const-string v4, ",getAzimuth="

    .line 259
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-static {v1, v10}, Lfr0;->a(Landroid/location/GnssStatus;I)F

    .line 265
    move-result v4

    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 269
    const-string v4, ",getCn0DbHz="

    .line 271
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-static {v1, v10}, Lws0;->a(Landroid/location/GnssStatus;I)F

    .line 277
    move-result v4

    .line 278
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    const-string v4, "}"

    .line 295
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    add-int/lit8 v11, v11, 0x1

    .line 307
    :goto_1
    const/4 v4, 0x0

    .line 308
    goto :goto_2

    .line 309
    :cond_4
    move/from16 v16, v4

    .line 311
    new-instance v3, Lxx;

    .line 313
    invoke-direct {v3}, Lxx;-><init>()V

    .line 316
    iput v14, v3, Lxx;->a:I

    .line 318
    iput v13, v3, Lxx;->b:I

    .line 320
    invoke-static {v1, v10}, Lfu0;->a(Landroid/location/GnssStatus;I)F

    .line 323
    move-result v4

    .line 324
    float-to-int v4, v4

    .line 325
    iput v4, v3, Lxx;->c:I

    .line 327
    invoke-static {v1, v10}, Lfr0;->a(Landroid/location/GnssStatus;I)F

    .line 330
    move-result v4

    .line 331
    float-to-int v4, v4

    .line 332
    iput v4, v3, Lxx;->d:I

    .line 334
    invoke-static {}, Lse;->c()Lse;

    .line 337
    move-result-object v4

    .line 338
    invoke-static {v1, v10}, Lws0;->a(Landroid/location/GnssStatus;I)F

    .line 341
    move-result v5

    .line 342
    invoke-virtual {v4, v13, v5}, Lse;->getSNRForShow(IF)I

    .line 345
    move-result v4

    .line 346
    iput v4, v3, Lxx;->e:I

    .line 348
    const/4 v4, 0x0

    .line 349
    iput v4, v3, Lxx;->f:I

    .line 351
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 356
    move/from16 v4, v16

    .line 358
    const/4 v3, 0x1

    .line 359
    const/16 v5, 0x40

    .line 361
    const/4 v6, 0x0

    .line 362
    goto/16 :goto_0

    .line 364
    :cond_5
    const/4 v4, 0x0

    .line 365
    iput v11, v0, Lzx;->g:I

    .line 367
    sget-object v1, Lzx;->o:Ljava/lang/String;

    .line 369
    const/4 v3, 0x1

    .line 370
    new-array v5, v3, [Ljava/lang/Object;

    .line 372
    aput-object v9, v5, v4

    .line 374
    const-string v6, "Gnss sbGnssTypeInfo:{?}"

    .line 376
    invoke-static {v1, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    const/4 v5, 0x2

    .line 380
    new-array v5, v5, [Ljava/lang/Object;

    .line 382
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 385
    move-result-object v6

    .line 386
    aput-object v6, v5, v4

    .line 388
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    move-result-object v4

    .line 392
    aput-object v4, v5, v3

    .line 394
    const-string v3, "Gnss start UsedSatellite count ={?},logGsvInfo={?}"

    .line 396
    invoke-static {v1, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 402
    move-result v1

    .line 403
    add-int/2addr v1, v11

    .line 404
    const/16 v3, 0x40

    .line 406
    if-ge v1, v3, :cond_6

    .line 408
    goto :goto_3

    .line 409
    :cond_6
    const/16 v1, 0x40

    .line 411
    :goto_3
    const/4 v4, 0x0

    .line 412
    :goto_4
    if-ge v11, v1, :cond_7

    .line 414
    add-int/lit8 v3, v4, 0x1

    .line 416
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 419
    move-result-object v4

    .line 420
    check-cast v4, Lxx;

    .line 422
    iget-object v5, v2, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 424
    iget-object v6, v5, Lcom/autonavi/amapauto/location/model/LocGpgsv;->prnLocType:[I

    .line 426
    iget v8, v4, Lxx;->a:I

    .line 428
    aput v8, v6, v11

    .line 430
    iget-object v6, v5, Lcom/autonavi/amapauto/location/model/LocGpgsv;->prn:[I

    .line 432
    iget v8, v4, Lxx;->b:I

    .line 434
    aput v8, v6, v11

    .line 436
    iget-object v6, v5, Lcom/autonavi/amapauto/location/model/LocGpgsv;->elevation:[I

    .line 438
    iget v8, v4, Lxx;->c:I

    .line 440
    aput v8, v6, v11

    .line 442
    iget-object v6, v5, Lcom/autonavi/amapauto/location/model/LocGpgsv;->azimuth:[I

    .line 444
    iget v8, v4, Lxx;->d:I

    .line 446
    aput v8, v6, v11

    .line 448
    iget-object v6, v5, Lcom/autonavi/amapauto/location/model/LocGpgsv;->snr:[I

    .line 450
    iget v4, v4, Lxx;->e:I

    .line 452
    aput v4, v6, v11

    .line 454
    iget-object v4, v5, Lcom/autonavi/amapauto/location/model/LocGpgsv;->isUsed:[I

    .line 456
    const/4 v5, 0x0

    .line 457
    aput v5, v4, v11

    .line 459
    add-int/lit8 v11, v11, 0x1

    .line 461
    move v4, v3

    .line 462
    goto :goto_4

    .line 463
    :cond_7
    const/4 v5, 0x0

    .line 464
    iput v11, v0, Lzx;->h:I

    .line 466
    sget-object v3, Lzx;->o:Ljava/lang/String;

    .line 468
    const/4 v4, 0x1

    .line 469
    new-array v4, v4, [Ljava/lang/Object;

    .line 471
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 474
    move-result-object v6

    .line 475
    aput-object v6, v4, v5

    .line 477
    const-string v5, "Gnss end SeeSatellite count ={?}"

    .line 479
    invoke-static {v3, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    iget-object v3, v2, Lcom/autonavi/amapauto/location/model/LocSignData;->gpgsv:Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 484
    const/16 v4, 0x40

    .line 486
    if-ge v11, v4, :cond_8

    .line 488
    move v5, v1

    .line 489
    goto :goto_5

    .line 490
    :cond_8
    const/16 v5, 0x40

    .line 492
    :goto_5
    iput v5, v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;->num:I

    .line 494
    if-ltz v5, :cond_9

    .line 496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 499
    move-result-wide v4

    .line 500
    iput-wide v4, v3, Lcom/autonavi/amapauto/location/model/LocGpgsv;->tickTime:J

    .line 502
    invoke-static {v2}, Lcom/autonavi/amapauto/jni/PosService;->setSignInfo(Lcom/autonavi/amapauto/location/model/LocSignData;)V

    .line 505
    :cond_9
    return-void
.end method

.method public q(Landroid/location/Location;)V
    .locals 14

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lzx;->i:Z

    .line 7
    new-instance v1, Lcom/autonavi/amapauto/location/model/LocSignData;

    .line 9
    invoke-direct {v1}, Lcom/autonavi/amapauto/location/model/LocSignData;-><init>()V

    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->dataType:I

    .line 15
    new-instance v3, Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 17
    invoke-direct {v3}, Lcom/autonavi/amapauto/location/model/LocGnss;-><init>()V

    .line 20
    iput-object v3, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 22
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 29
    const-string v4, "gps"

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_2

    .line 37
    const-string v4, "network"

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 45
    return-void

    .line 46
    :cond_1
    iget-object v3, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 48
    iput v0, v3, Lcom/autonavi/amapauto/location/model/LocGnss;->sourType:I

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v3, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 53
    iput v2, v3, Lcom/autonavi/amapauto/location/model/LocGnss;->sourType:I

    .line 55
    :goto_0
    new-instance v3, Landroid/text/format/Time;

    .line 57
    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 63
    move-result-wide v4

    .line 64
    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 67
    new-array v4, v0, [Ljava/lang/Object;

    .line 69
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 76
    move-result-object v5

    .line 77
    aput-object v5, v4, v2

    .line 79
    const-string v5, "DR"

    .line 81
    const-string v6, "LocationUtils getLocationInfo zoneId:{?}"

    .line 83
    invoke-static {v5, v6, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v4, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 88
    iget v6, v3, Landroid/text/format/Time;->year:I

    .line 90
    iput v6, v4, Lcom/autonavi/amapauto/location/model/LocGnss;->year:I

    .line 92
    iget v6, v3, Landroid/text/format/Time;->month:I

    .line 94
    add-int/2addr v6, v0

    .line 95
    iput v6, v4, Lcom/autonavi/amapauto/location/model/LocGnss;->month:I

    .line 97
    iget v6, v3, Landroid/text/format/Time;->monthDay:I

    .line 99
    iput v6, v4, Lcom/autonavi/amapauto/location/model/LocGnss;->day:I

    .line 101
    iget v6, v3, Landroid/text/format/Time;->hour:I

    .line 103
    iput v6, v4, Lcom/autonavi/amapauto/location/model/LocGnss;->hour:I

    .line 105
    iget v6, v3, Landroid/text/format/Time;->minute:I

    .line 107
    iput v6, v4, Lcom/autonavi/amapauto/location/model/LocGnss;->minute:I

    .line 109
    iget v6, v3, Landroid/text/format/Time;->second:I

    .line 111
    iput v6, v4, Lcom/autonavi/amapauto/location/model/LocGnss;->second:I

    .line 113
    invoke-static {}, Lib;->r()Z

    .line 116
    move-result v4

    .line 117
    const/4 v6, 0x2

    .line 118
    if-eqz v4, :cond_3

    .line 120
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 123
    move-result-wide v7

    .line 124
    invoke-static {v7, v8}, Lwh;->a(J)I

    .line 127
    move-result v4

    .line 128
    iget-object v7, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 130
    iput v4, v7, Lcom/autonavi/amapauto/location/model/LocGnss;->millisecond:I

    .line 132
    new-array v7, v6, [Ljava/lang/Object;

    .line 134
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    move-result-object v4

    .line 138
    aput-object v4, v7, v2

    .line 140
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 143
    move-result-wide v8

    .line 144
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    move-result-object v4

    .line 148
    aput-object v4, v7, v0

    .line 150
    const-string v4, "setGpsInfo millisecond:{?},location.getTime() = :{?}"

    .line 152
    invoke-static {v5, v4, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_3
    iget v4, p0, Lzx;->a:I

    .line 157
    iget-object v5, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 159
    iget v5, v5, Lcom/autonavi/amapauto/location/model/LocGnss;->minute:I

    .line 161
    if-eq v4, v5, :cond_4

    .line 163
    iput v5, p0, Lzx;->a:I

    .line 165
    sget-object v4, Lzx;->o:Ljava/lang/String;

    .line 167
    new-array v5, v6, [Ljava/lang/Object;

    .line 169
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 172
    move-result-wide v6

    .line 173
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 176
    move-result-object v6

    .line 177
    aput-object v6, v5, v2

    .line 179
    iget v2, v3, Landroid/text/format/Time;->hour:I

    .line 181
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    move-result-object v2

    .line 185
    aput-object v2, v5, v0

    .line 187
    const-string v2, "setGpsInfo location.getTime() ={?},hour={?}"

    .line 189
    invoke-static {v4, v2, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_4
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 194
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 197
    move-result-wide v3

    .line 198
    iput-wide v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->lon:D

    .line 200
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 202
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 205
    move-result-wide v3

    .line 206
    iput-wide v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->lat:D

    .line 208
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 210
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 213
    move-result v3

    .line 214
    iput v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->accuracy:F

    .line 216
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 218
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    .line 221
    move-result-wide v3

    .line 222
    double-to-float v3, v3

    .line 223
    iput v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->alt:F

    .line 225
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 227
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    .line 230
    move-result v3

    .line 231
    iput v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->course:F

    .line 233
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 235
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    .line 238
    move-result v3

    .line 239
    float-to-double v3, v3

    .line 240
    const-wide v5, 0x400ccccccccccccdL    # 3.6

    .line 245
    mul-double v3, v3, v5

    .line 247
    double-to-float v3, v3

    .line 248
    iput v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->speed:F

    .line 250
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 255
    move-result-wide v3

    .line 256
    iput-wide v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->tickTime:J

    .line 258
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 260
    const/16 v3, 0x4e

    .line 262
    iput-byte v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->isNS:B

    .line 264
    const/16 v4, 0x45

    .line 266
    iput-byte v4, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->isEW:B

    .line 268
    const/16 v4, 0x9

    .line 270
    iput v4, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->num:I

    .line 272
    const v4, 0x3f666666    # 0.9f

    .line 275
    iput v4, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->hdop:F

    .line 277
    iput v4, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->vdop:F

    .line 279
    iput v4, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->pdop:F

    .line 281
    const/16 v4, 0x41

    .line 283
    iput-byte v4, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->status:B

    .line 285
    iput-byte v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->mode:B

    .line 287
    invoke-static {}, Lse;->c()Lse;

    .line 290
    move-result-object v3

    .line 291
    iget-object v4, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 293
    iget v4, v4, Lcom/autonavi/amapauto/location/model/LocGnss;->speed:F

    .line 295
    invoke-virtual {v3, v4}, Lse;->getSpeedoMeter(F)F

    .line 298
    move-result v3

    .line 299
    iput v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->speedoMeter:F

    .line 301
    iget-wide v2, p0, Lzx;->n:J

    .line 303
    const-wide/16 v4, 0x0

    .line 305
    cmp-long v6, v2, v4

    .line 307
    if-nez v6, :cond_5

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 312
    move-result-wide v2

    .line 313
    goto :goto_1

    .line 314
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 317
    move-result-wide v2

    .line 318
    iget-wide v4, p0, Lzx;->n:J

    .line 320
    sub-long/2addr v2, v4

    .line 321
    :goto_1
    long-to-int v3, v2

    .line 322
    int-to-long v2, v3

    .line 323
    iput-wide v2, p0, Lzx;->n:J

    .line 325
    iget-object v4, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 327
    long-to-int v3, v2

    .line 328
    iput v3, v4, Lcom/autonavi/amapauto/location/model/LocGnss;->interval:I

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 333
    move-result-wide v2

    .line 334
    iput-wide v2, p0, Lzx;->n:J

    .line 336
    iget-boolean v2, p0, Lzx;->d:Z

    .line 338
    if-eqz v2, :cond_6

    .line 340
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 342
    iput-short v0, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->isEncrypted:S

    .line 344
    :cond_6
    const-string v3, "LocWrapper"

    .line 346
    const-string v4, "setGpsInfo"

    .line 348
    const-string v5, "PosEnum_LocDrTypeGNSS"

    .line 350
    const/4 v6, 0x0

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    .line 353
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    const-string v2, "{\"location\":\""

    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    const-string p1, "\"}"

    .line 366
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    move-result-object v7

    .line 373
    iget-object p1, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 375
    iget v0, p1, Lcom/autonavi/amapauto/location/model/LocGnss;->speed:F

    .line 377
    float-to-double v8, v0

    .line 378
    iget-wide v10, p1, Lcom/autonavi/amapauto/location/model/LocGnss;->lat:D

    .line 380
    iget-wide v12, p1, Lcom/autonavi/amapauto/location/model/LocGnss;->lon:D

    .line 382
    invoke-static/range {v3 .. v13}, Lzx;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DDD)V

    .line 385
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/PosService;->setSignInfo(Lcom/autonavi/amapauto/location/model/LocSignData;)V

    .line 388
    return-void
.end method

.method public r(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 14

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lzx;->i:Z

    .line 7
    new-instance v1, Lcom/autonavi/amapauto/location/model/LocSignData;

    .line 9
    invoke-direct {v1}, Lcom/autonavi/amapauto/location/model/LocSignData;-><init>()V

    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->dataType:I

    .line 15
    new-instance v3, Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 17
    invoke-direct {v3}, Lcom/autonavi/amapauto/location/model/LocGnss;-><init>()V

    .line 20
    iput-object v3, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 22
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 29
    const-string v4, "gps"

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_2

    .line 37
    const-string v4, "network"

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 45
    return-void

    .line 46
    :cond_1
    iget-object v3, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 48
    iput v0, v3, Lcom/autonavi/amapauto/location/model/LocGnss;->sourType:I

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v3, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 53
    iput v2, v3, Lcom/autonavi/amapauto/location/model/LocGnss;->sourType:I

    .line 55
    :goto_0
    new-instance v3, Landroid/text/format/Time;

    .line 57
    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 60
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 63
    move-result-wide v4

    .line 64
    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 67
    new-array v4, v0, [Ljava/lang/Object;

    .line 69
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 76
    move-result-object v5

    .line 77
    aput-object v5, v4, v2

    .line 79
    const-string v5, "DR"

    .line 81
    const-string v6, "LocationUtils getLocationInfo zoneId:{?}"

    .line 83
    invoke-static {v5, v6, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v4, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 88
    iget v6, v3, Landroid/text/format/Time;->year:I

    .line 90
    iput v6, v4, Lcom/autonavi/amapauto/location/model/LocGnss;->year:I

    .line 92
    iget v6, v3, Landroid/text/format/Time;->month:I

    .line 94
    add-int/2addr v6, v0

    .line 95
    iput v6, v4, Lcom/autonavi/amapauto/location/model/LocGnss;->month:I

    .line 97
    iget v6, v3, Landroid/text/format/Time;->monthDay:I

    .line 99
    iput v6, v4, Lcom/autonavi/amapauto/location/model/LocGnss;->day:I

    .line 101
    iget v6, v3, Landroid/text/format/Time;->hour:I

    .line 103
    iput v6, v4, Lcom/autonavi/amapauto/location/model/LocGnss;->hour:I

    .line 105
    iget v6, v3, Landroid/text/format/Time;->minute:I

    .line 107
    iput v6, v4, Lcom/autonavi/amapauto/location/model/LocGnss;->minute:I

    .line 109
    iget v6, v3, Landroid/text/format/Time;->second:I

    .line 111
    iput v6, v4, Lcom/autonavi/amapauto/location/model/LocGnss;->second:I

    .line 113
    invoke-static {}, Lib;->r()Z

    .line 116
    move-result v4

    .line 117
    const/4 v6, 0x2

    .line 118
    if-eqz v4, :cond_3

    .line 120
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 123
    move-result-wide v7

    .line 124
    invoke-static {v7, v8}, Lwh;->a(J)I

    .line 127
    move-result v4

    .line 128
    iget-object v7, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 130
    iput v4, v7, Lcom/autonavi/amapauto/location/model/LocGnss;->millisecond:I

    .line 132
    new-array v7, v6, [Ljava/lang/Object;

    .line 134
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    move-result-object v4

    .line 138
    aput-object v4, v7, v2

    .line 140
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 143
    move-result-wide v8

    .line 144
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    move-result-object v4

    .line 148
    aput-object v4, v7, v0

    .line 150
    const-string v4, "setGpsInfo millisecond:{?},location.getTime() = :{?}"

    .line 152
    invoke-static {v5, v4, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_3
    iget v4, p0, Lzx;->a:I

    .line 157
    iget-object v5, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 159
    iget v5, v5, Lcom/autonavi/amapauto/location/model/LocGnss;->minute:I

    .line 161
    if-eq v4, v5, :cond_4

    .line 163
    iput v5, p0, Lzx;->a:I

    .line 165
    sget-object v4, Lzx;->o:Ljava/lang/String;

    .line 167
    new-array v5, v6, [Ljava/lang/Object;

    .line 169
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 172
    move-result-wide v6

    .line 173
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 176
    move-result-object v6

    .line 177
    aput-object v6, v5, v2

    .line 179
    iget v2, v3, Landroid/text/format/Time;->hour:I

    .line 181
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    move-result-object v2

    .line 185
    aput-object v2, v5, v0

    .line 187
    const-string v2, "setGpsInfo location.getTime() ={?},hour={?}"

    .line 189
    invoke-static {v4, v2, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_4
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 194
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 197
    move-result-wide v3

    .line 198
    iput-wide v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->lon:D

    .line 200
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 202
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 205
    move-result-wide v3

    .line 206
    iput-wide v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->lat:D

    .line 208
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 210
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    .line 213
    move-result v3

    .line 214
    iput v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->accuracy:F

    .line 216
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 218
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAltitude()D

    .line 221
    move-result-wide v3

    .line 222
    double-to-float v3, v3

    .line 223
    iput v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->alt:F

    .line 225
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 227
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getBearing()F

    .line 230
    move-result v3

    .line 231
    iput v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->course:F

    .line 233
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 235
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSpeed()F

    .line 238
    move-result v3

    .line 239
    float-to-double v3, v3

    .line 240
    const-wide v5, 0x400ccccccccccccdL    # 3.6

    .line 245
    mul-double v3, v3, v5

    .line 247
    double-to-float v3, v3

    .line 248
    iput v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->speed:F

    .line 250
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 255
    move-result-wide v3

    .line 256
    iput-wide v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->tickTime:J

    .line 258
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 260
    const/16 v3, 0x4e

    .line 262
    iput-byte v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->isNS:B

    .line 264
    const/16 v4, 0x45

    .line 266
    iput-byte v4, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->isEW:B

    .line 268
    const/16 v4, 0x9

    .line 270
    iput v4, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->num:I

    .line 272
    const v4, 0x3f666666    # 0.9f

    .line 275
    iput v4, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->hdop:F

    .line 277
    iput v4, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->vdop:F

    .line 279
    iput v4, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->pdop:F

    .line 281
    const/16 v4, 0x41

    .line 283
    iput-byte v4, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->status:B

    .line 285
    iput-byte v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->mode:B

    .line 287
    invoke-static {}, Lse;->c()Lse;

    .line 290
    move-result-object v3

    .line 291
    iget-object v4, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 293
    iget v4, v4, Lcom/autonavi/amapauto/location/model/LocGnss;->speed:F

    .line 295
    invoke-virtual {v3, v4}, Lse;->getSpeedoMeter(F)F

    .line 298
    move-result v3

    .line 299
    iput v3, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->speedoMeter:F

    .line 301
    iget-wide v2, p0, Lzx;->n:J

    .line 303
    const-wide/16 v4, 0x0

    .line 305
    cmp-long v6, v2, v4

    .line 307
    if-nez v6, :cond_5

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 312
    move-result-wide v2

    .line 313
    goto :goto_1

    .line 314
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 317
    move-result-wide v2

    .line 318
    iget-wide v4, p0, Lzx;->n:J

    .line 320
    sub-long/2addr v2, v4

    .line 321
    :goto_1
    long-to-int v3, v2

    .line 322
    int-to-long v2, v3

    .line 323
    iput-wide v2, p0, Lzx;->n:J

    .line 325
    iget-object v4, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 327
    long-to-int v3, v2

    .line 328
    iput v3, v4, Lcom/autonavi/amapauto/location/model/LocGnss;->interval:I

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 333
    move-result-wide v2

    .line 334
    iput-wide v2, p0, Lzx;->n:J

    .line 336
    iget-boolean v2, p0, Lzx;->d:Z

    .line 338
    if-eqz v2, :cond_6

    .line 340
    iget-object v2, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 342
    iput-short v0, v2, Lcom/autonavi/amapauto/location/model/LocGnss;->isEncrypted:S

    .line 344
    :cond_6
    const-string v3, "LocWrapper"

    .line 346
    const-string v4, "setGpsInfo"

    .line 348
    const-string v5, "PosEnum_LocDrTypeGNSS"

    .line 350
    const/4 v6, 0x0

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    .line 353
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    const-string v2, "{\"location\":\""

    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    const-string p1, "\"}"

    .line 366
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    move-result-object v7

    .line 373
    iget-object p1, v1, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 375
    iget v0, p1, Lcom/autonavi/amapauto/location/model/LocGnss;->speed:F

    .line 377
    float-to-double v8, v0

    .line 378
    iget-wide v10, p1, Lcom/autonavi/amapauto/location/model/LocGnss;->lat:D

    .line 380
    iget-wide v12, p1, Lcom/autonavi/amapauto/location/model/LocGnss;->lon:D

    .line 382
    invoke-static/range {v3 .. v13}, Lzx;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DDD)V

    .line 385
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/PosService;->setSignInfo(Lcom/autonavi/amapauto/location/model/LocSignData;)V

    .line 388
    return-void
.end method

.method public s(IIFFFFIJ)V
    .locals 22

    .line 1
    move/from16 v0, p2

    .line 3
    move/from16 v1, p3

    .line 5
    move/from16 v2, p4

    .line 7
    move/from16 v3, p5

    .line 9
    move/from16 v4, p6

    .line 11
    move/from16 v5, p7

    .line 13
    move-wide/from16 v6, p8

    .line 15
    new-instance v8, Lcom/autonavi/amapauto/location/model/LocSignData;

    .line 17
    invoke-direct {v8}, Lcom/autonavi/amapauto/location/model/LocSignData;-><init>()V

    .line 20
    new-instance v9, Lcom/autonavi/amapauto/location/model/LocGyro;

    .line 22
    invoke-direct {v9}, Lcom/autonavi/amapauto/location/model/LocGyro;-><init>()V

    .line 25
    iput-object v9, v8, Lcom/autonavi/amapauto/location/model/LocSignData;->gyro:Lcom/autonavi/amapauto/location/model/LocGyro;

    .line 27
    const/4 v10, 0x4

    .line 28
    iput v10, v9, Lcom/autonavi/amapauto/location/model/LocGyro;->dataType:I

    .line 30
    iput v10, v8, Lcom/autonavi/amapauto/location/model/LocSignData;->dataType:I

    .line 32
    iput v0, v9, Lcom/autonavi/amapauto/location/model/LocGyro;->axis:I

    .line 34
    iput v5, v9, Lcom/autonavi/amapauto/location/model/LocGyro;->interval:I

    .line 36
    iput v4, v9, Lcom/autonavi/amapauto/location/model/LocGyro;->temperature:F

    .line 38
    iput v3, v9, Lcom/autonavi/amapauto/location/model/LocGyro;->valueX:F

    .line 40
    iput v2, v9, Lcom/autonavi/amapauto/location/model/LocGyro;->valueY:F

    .line 42
    iput v1, v9, Lcom/autonavi/amapauto/location/model/LocGyro;->valueZ:F

    .line 44
    iput-wide v6, v9, Lcom/autonavi/amapauto/location/model/LocGyro;->tickTime:J

    .line 46
    const-string v11, "LocWrapper"

    .line 48
    const-string v12, "setGyro"

    .line 50
    const-string v13, "PosEnum_LocDataGyro"

    .line 52
    const/4 v14, 0x4

    .line 53
    new-instance v9, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v10, "{\"nType\":\""

    .line 60
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    move/from16 v10, p1

    .line 65
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v10, "\", \"nAxis\":\""

    .line 70
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v0, "\", \"yaw\":\""

    .line 78
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 84
    const-string v0, "\", \"roll\":\""

    .line 86
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 92
    const-string v0, "\", \"pitch\":\""

    .line 94
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 100
    const-string v0, "\", \"nTemperature\":\""

    .line 102
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 108
    const-string v0, "\", \"nInterval\":\""

    .line 110
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v0, "\", \"ticktime\":\""

    .line 118
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    const-string v0, "\"}"

    .line 126
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v15

    .line 133
    float-to-double v3, v3

    .line 134
    float-to-double v5, v2

    .line 135
    float-to-double v0, v1

    .line 136
    move-wide/from16 v16, v3

    .line 138
    move-wide/from16 v18, v5

    .line 140
    move-wide/from16 v20, v0

    .line 142
    invoke-static/range {v11 .. v21}, Lzx;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DDD)V

    .line 145
    invoke-static {v8}, Lcom/autonavi/amapauto/jni/PosService;->setSignInfo(Lcom/autonavi/amapauto/location/model/LocSignData;)V

    .line 148
    return-void
.end method

.method public t(IFFFIJ)V
    .locals 21

    .line 1
    move/from16 v0, p1

    .line 3
    move/from16 v1, p2

    .line 5
    move/from16 v2, p3

    .line 7
    move/from16 v3, p4

    .line 9
    move/from16 v4, p5

    .line 11
    move-wide/from16 v5, p6

    .line 13
    new-instance v7, Lcom/autonavi/amapauto/location/model/LocSignData;

    .line 15
    invoke-direct {v7}, Lcom/autonavi/amapauto/location/model/LocSignData;-><init>()V

    .line 18
    new-instance v8, Lcom/autonavi/amapauto/location/model/LocAcce3d;

    .line 20
    invoke-direct {v8}, Lcom/autonavi/amapauto/location/model/LocAcce3d;-><init>()V

    .line 23
    iput-object v8, v7, Lcom/autonavi/amapauto/location/model/LocSignData;->acce3D:Lcom/autonavi/amapauto/location/model/LocAcce3d;

    .line 25
    const/4 v9, 0x2

    .line 26
    iput v9, v8, Lcom/autonavi/amapauto/location/model/LocAcce3d;->dataType:I

    .line 28
    iput v9, v7, Lcom/autonavi/amapauto/location/model/LocSignData;->dataType:I

    .line 30
    iput v0, v8, Lcom/autonavi/amapauto/location/model/LocAcce3d;->axis:I

    .line 32
    iput v4, v8, Lcom/autonavi/amapauto/location/model/LocAcce3d;->interval:I

    .line 34
    iput v2, v8, Lcom/autonavi/amapauto/location/model/LocAcce3d;->acceX:F

    .line 36
    iput v3, v8, Lcom/autonavi/amapauto/location/model/LocAcce3d;->acceY:F

    .line 38
    iput v1, v8, Lcom/autonavi/amapauto/location/model/LocAcce3d;->acceZ:F

    .line 40
    iput-wide v5, v8, Lcom/autonavi/amapauto/location/model/LocAcce3d;->tickTime:J

    .line 42
    const-string v10, "LocWrapper"

    .line 44
    const-string v11, "setLocAcc3D"

    .line 46
    const-string v12, "PosEnum_LocDataAcce3D"

    .line 48
    const/4 v13, 0x2

    .line 49
    new-instance v8, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    const-string v9, "{\"axis\":\""

    .line 56
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v0, "\", \"yaw\":\""

    .line 64
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 70
    const-string v0, "\", \"pitch\":\""

    .line 72
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 78
    const-string v0, "\", \"roll\":\""

    .line 80
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 86
    const-string v0, "\", \"interval\":\""

    .line 88
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, "\", \"ticktime\":\""

    .line 96
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    const-string v0, "\"}"

    .line 104
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v14

    .line 111
    float-to-double v4, v2

    .line 112
    float-to-double v2, v3

    .line 113
    float-to-double v0, v1

    .line 114
    move-wide v15, v4

    .line 115
    move-wide/from16 v17, v2

    .line 117
    move-wide/from16 v19, v0

    .line 119
    invoke-static/range {v10 .. v20}, Lzx;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DDD)V

    .line 122
    invoke-static {v7}, Lcom/autonavi/amapauto/jni/PosService;->setSignInfo(Lcom/autonavi/amapauto/location/model/LocSignData;)V

    .line 125
    return-void
.end method

.method public u(Lcom/autonavi/amapauto/location/model/LocDrPos;)V
    .locals 13

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocSignData;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocSignData;-><init>()V

    .line 6
    const/16 v1, 0x200

    .line 8
    iput v1, v0, Lcom/autonavi/amapauto/location/model/LocSignData;->dataType:I

    .line 10
    iput-object p1, v0, Lcom/autonavi/amapauto/location/model/LocSignData;->drPos:Lcom/autonavi/amapauto/location/model/LocDrPos;

    .line 12
    const-string v2, "LocWrapper"

    .line 14
    const-string v3, "setLocDrPos"

    .line 16
    const-string v4, "PosEnum_LocDrTypeGNSS"

    .line 18
    const/4 v5, 0x0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v6, "{\"locDrPos\":\""

    .line 26
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    const-string v6, "\"}"

    .line 34
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v6

    .line 41
    iget v1, p1, Lcom/autonavi/amapauto/location/model/LocDrPos;->speed:F

    .line 43
    float-to-double v7, v1

    .line 44
    iget-wide v9, p1, Lcom/autonavi/amapauto/location/model/LocDrPos;->stLat:D

    .line 46
    iget-wide v11, p1, Lcom/autonavi/amapauto/location/model/LocDrPos;->stLon:D

    .line 48
    invoke-static/range {v2 .. v12}, Lzx;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DDD)V

    .line 51
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/PosService;->setSignInfo(Lcom/autonavi/amapauto/location/model/LocSignData;)V

    .line 54
    return-void
.end method

.method public v(FFFFFFIFFIJ)V
    .locals 3

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocSignData;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocSignData;-><init>()V

    .line 6
    new-instance v1, Lcom/autonavi/amapauto/location/model/LocW4M;

    .line 8
    invoke-direct {v1}, Lcom/autonavi/amapauto/location/model/LocW4M;-><init>()V

    .line 11
    iput-object v1, v0, Lcom/autonavi/amapauto/location/model/LocSignData;->locW4M:Lcom/autonavi/amapauto/location/model/LocW4M;

    .line 13
    const/16 v2, 0x100

    .line 15
    iput v2, v1, Lcom/autonavi/amapauto/location/model/LocW4M;->dataType:I

    .line 17
    iput p1, v1, Lcom/autonavi/amapauto/location/model/LocW4M;->vrl:F

    .line 19
    iput p2, v1, Lcom/autonavi/amapauto/location/model/LocW4M;->vrr:F

    .line 21
    iput p3, v1, Lcom/autonavi/amapauto/location/model/LocW4M;->vfl:F

    .line 23
    iput p4, v1, Lcom/autonavi/amapauto/location/model/LocW4M;->vfr:F

    .line 25
    iput p5, v1, Lcom/autonavi/amapauto/location/model/LocW4M;->steerAngle:F

    .line 27
    iput p6, v1, Lcom/autonavi/amapauto/location/model/LocW4M;->yawRate:F

    .line 29
    iput p8, v1, Lcom/autonavi/amapauto/location/model/LocW4M;->lonAcc:F

    .line 31
    iput p9, v1, Lcom/autonavi/amapauto/location/model/LocW4M;->latAcc:F

    .line 33
    iput p7, v1, Lcom/autonavi/amapauto/location/model/LocW4M;->gearState:I

    .line 35
    iput p10, v1, Lcom/autonavi/amapauto/location/model/LocW4M;->interval:I

    .line 37
    iput-wide p11, v1, Lcom/autonavi/amapauto/location/model/LocW4M;->tickTime:J

    .line 39
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/PosService;->setSignInfo(Lcom/autonavi/amapauto/location/model/LocSignData;)V

    .line 42
    return-void
.end method

.method public w(DIJ)V
    .locals 3

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocSignData;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocSignData;-><init>()V

    .line 6
    new-instance v1, Lcom/autonavi/amapauto/location/model/LocPulse;

    .line 8
    invoke-direct {v1}, Lcom/autonavi/amapauto/location/model/LocPulse;-><init>()V

    .line 11
    iput-object v1, v0, Lcom/autonavi/amapauto/location/model/LocSignData;->pulse:Lcom/autonavi/amapauto/location/model/LocPulse;

    .line 13
    const/16 v2, 0x8

    .line 15
    iput v2, v1, Lcom/autonavi/amapauto/location/model/LocPulse;->dataType:I

    .line 17
    iput v2, v0, Lcom/autonavi/amapauto/location/model/LocSignData;->dataType:I

    .line 19
    iput p3, v1, Lcom/autonavi/amapauto/location/model/LocPulse;->interval:I

    .line 21
    double-to-float p1, p1

    .line 22
    iput p1, v1, Lcom/autonavi/amapauto/location/model/LocPulse;->value:F

    .line 24
    iput-wide p4, v1, Lcom/autonavi/amapauto/location/model/LocPulse;->tickTime:J

    .line 26
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/PosService;->setSignInfo(Lcom/autonavi/amapauto/location/model/LocSignData;)V

    .line 29
    return-void
.end method

.method public x(Lzx$d;)V
    .locals 6

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lse;->getGnssStatusCallbackType()I

    .line 8
    move-result v0

    .line 9
    sget-object v1, Lzx;->o:Ljava/lang/String;

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v3, v2, [Ljava/lang/Object;

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v5

    .line 19
    aput-object v5, v3, v4

    .line 21
    const-string v4, "unRegisterGnssStatus(). type = {?}"

    .line 23
    invoke-static {v1, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    if-ne v2, v0, :cond_1

    .line 28
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Lzx$d;->d()V

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lrv;->I()Lxy;

    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Lxy;->b()V

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x2

    .line 47
    if-ne v1, v0, :cond_2

    .line 49
    invoke-virtual {p0}, Lzx;->y()V

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    const/16 v1, 0x18

    .line 57
    if-lt v0, v1, :cond_3

    .line 59
    invoke-virtual {p0}, Lzx;->y()V

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    if-eqz p1, :cond_4

    .line 65
    invoke-virtual {p1}, Lzx$d;->d()V

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    invoke-static {}, Lrv;->H()Lrv;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lrv;->I()Lxy;

    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p1}, Lxy;->b()V

    .line 80
    :goto_0
    return-void
.end method

.method public y()V
    .locals 2

    .line 1
    sget-object v0, Lzx;->p:Lxy;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lzx;->c:Landroid/location/GnssStatus$Callback;

    .line 7
    invoke-interface {v0, v1}, Lxy;->g(Landroid/location/GnssStatus$Callback;)V

    .line 10
    :cond_0
    return-void
.end method
