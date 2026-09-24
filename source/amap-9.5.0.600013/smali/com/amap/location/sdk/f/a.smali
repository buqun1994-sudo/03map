.class public Lcom/amap/location/sdk/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/feedback/IManuFeedback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/sdk/f/a$a;
    }
.end annotation


# static fields
.field private static o:Lcom/amap/location/sdk/f/a;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/location/LocationManager;

.field private final d:Landroid/os/Bundle;

.field private e:I

.field private f:I

.field private g:J

.field private h:J

.field private i:J

.field private j:Ljava/lang/StringBuilder;

.field private final k:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private volatile l:Z

.field private m:Lcom/amap/location/sdk/f/a$a;

.field private n:J

.field private p:Z

.field private q:Landroid/location/LocationListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/location/sdk/f/a;

    .line 3
    invoke-direct {v0}, Lcom/amap/location/sdk/f/a;-><init>()V

    .line 6
    sput-object v0, Lcom/amap/location/sdk/f/a;->o:Lcom/amap/location/sdk/f/a;

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
    iput-boolean v0, p0, Lcom/amap/location/sdk/f/a;->a:Z

    .line 7
    iput-boolean v0, p0, Lcom/amap/location/sdk/f/a;->b:Z

    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/amap/location/sdk/f/a;->d:Landroid/os/Bundle;

    .line 16
    iput v0, p0, Lcom/amap/location/sdk/f/a;->e:I

    .line 18
    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/amap/location/sdk/f/a;->f:I

    .line 21
    const-wide/16 v1, -0x1

    .line 23
    iput-wide v1, p0, Lcom/amap/location/sdk/f/a;->h:J

    .line 25
    iput-wide v1, p0, Lcom/amap/location/sdk/f/a;->i:J

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/amap/location/sdk/f/a;->j:Ljava/lang/StringBuilder;

    .line 34
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 36
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/amap/location/sdk/f/a;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 41
    new-instance v1, Lcom/amap/location/sdk/f/a$a;

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-direct {v1, p0, v2}, Lcom/amap/location/sdk/f/a$a;-><init>(Lcom/amap/location/sdk/f/a;Lcom/amap/location/sdk/f/a$1;)V

    .line 47
    iput-object v1, p0, Lcom/amap/location/sdk/f/a;->m:Lcom/amap/location/sdk/f/a$a;

    .line 49
    iput-boolean v0, p0, Lcom/amap/location/sdk/f/a;->p:Z

    .line 51
    new-instance v0, Lcom/amap/location/sdk/f/a$1;

    .line 53
    invoke-direct {v0, p0}, Lcom/amap/location/sdk/f/a$1;-><init>(Lcom/amap/location/sdk/f/a;)V

    .line 56
    iput-object v0, p0, Lcom/amap/location/sdk/f/a;->q:Landroid/location/LocationListener;

    .line 58
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/sdk/f/a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/location/sdk/f/a;->n:J

    return-wide p1
.end method

.method public static a()Lcom/amap/location/sdk/f/a;
    .locals 1

    .line 5
    sget-object v0, Lcom/amap/location/sdk/f/a;->o:Lcom/amap/location/sdk/f/a;

    return-object v0
.end method

.method private a(J)V
    .locals 2

    .line 39
    iget-boolean v0, p0, Lcom/amap/location/sdk/f/a;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/amap/location/sdk/f/a;->j:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 41
    iput-wide p1, p0, Lcom/amap/location/sdk/f/a;->g:J

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/sdk/f/a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/amap/location/sdk/f/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/sdk/f/a;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    const-string v1, "gps"

    .line 43
    invoke-virtual {v0, v1, p1, p2}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic a(DDDDDD)Z
    .locals 0

    .line 3
    invoke-static/range {p0 .. p11}, Lcom/amap/location/sdk/f/a;->b(DDDDDD)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/amap/location/sdk/f/a;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/amap/location/sdk/f/a;->l:Z

    return p0
.end method

.method private b(Lcom/amap/location/type/location/LocationMatch;)I
    .locals 3

    const-string v0, "sensorOrientation"

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/amap/location/type/location/Location;->getOptAttrFloat(Ljava/lang/String;F)F

    move-result v0

    .line 36
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getBearing()F

    move-result p1

    sub-float/2addr p1, v0

    const/high16 v0, 0x41700000    # 15.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_0

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    cmpg-float v0, p1, v2

    if-gtz v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/high16 v2, 0x42b40000    # 90.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    cmpg-float v0, p1, v2

    if-gtz v0, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    cmpl-float v0, p1, v2

    if-lez v0, :cond_4

    const/4 p1, 0x5

    return p1

    :cond_4
    const/high16 v0, -0x3e900000    # -15.0f

    cmpl-float v2, p1, v0

    if-ltz v2, :cond_5

    cmpg-float v1, p1, v1

    if-gez v1, :cond_5

    const/4 p1, -0x1

    return p1

    :cond_5
    const/high16 v1, -0x3e100000    # -30.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_6

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    const/4 p1, -0x2

    return p1

    :cond_6
    const/high16 v0, -0x3d900000    # -60.0f

    cmpl-float v2, p1, v0

    if-ltz v2, :cond_7

    cmpg-float v1, p1, v1

    if-gez v1, :cond_7

    const/4 p1, -0x3

    return p1

    :cond_7
    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_8

    cmpg-float p1, p1, v0

    if-gez p1, :cond_8

    const/4 p1, -0x4

    return p1

    :cond_8
    const/4 p1, -0x5

    return p1
.end method

.method private b(J)V
    .locals 6

    .line 27
    iget-boolean v0, p0, Lcom/amap/location/sdk/f/a;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/amap/location/sdk/f/a;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/amap/location/sdk/f/a;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 31
    iget-wide v2, p0, Lcom/amap/location/sdk/f/a;->g:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string v4, "orientation_time"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "orientation_data"

    .line 32
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "orientation_feedback"

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/amap/location/sdk/f/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/amap/location/sdk/f/a;->a(J)V

    :cond_1
    return-void
.end method

.method private b(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 4

    .line 20
    iget-boolean v0, p0, Lcom/amap/location/sdk/f/a;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/amap/location/sdk/f/a;->p:Z

    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v1

    const-string v3, "recoverLan"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "recoverLon"

    .line 24
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "recoverTime"

    .line 25
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "send_gps_restart_status"

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/amap/location/sdk/f/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static b(DDDDDD)Z
    .locals 2

    const-wide v0, 0x414b774000000000L    # 3600000.0

    mul-double p0, p0, v0

    double-to-int p0, p0

    mul-double p2, p2, v0

    double-to-int p1, p2

    mul-double p4, p4, v0

    double-to-int p2, p4

    mul-double p6, p6, v0

    double-to-int p3, p6

    mul-double p8, p8, v0

    double-to-int p4, p8

    mul-double p10, p10, v0

    double-to-int p5, p10

    const/4 p6, 0x0

    if-ne p0, p2, :cond_0

    if-ne p1, p3, :cond_0

    return p6

    :cond_0
    sub-int/2addr p3, p1

    sub-int/2addr p2, p0

    sub-int/2addr p5, p1

    sub-int p0, p4, p0

    int-to-double p7, p4

    const-wide p9, 0x4066800000000000L    # 180.0

    div-double/2addr p7, p9

    const-wide p9, 0x400921fb54442d18L    # Math.PI

    mul-double p7, p7, p9

    .line 37
    invoke-static {p7, p8}, Ljava/lang/Math;->cos(D)D

    move-result-wide p7

    int-to-double p3, p3

    mul-double p3, p3, p7

    .line 38
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p1, p3

    int-to-double p3, p5

    mul-double p3, p3, p7

    .line 39
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p4, p3

    int-to-long p7, p1

    int-to-long p3, p4

    mul-long p3, p3, p7

    int-to-long p1, p2

    int-to-long p9, p0

    mul-long p9, p9, p1

    add-long/2addr p3, p9

    mul-long p7, p7, p7

    mul-long p1, p1, p1

    add-long/2addr p7, p1

    const-wide/16 p0, 0x0

    cmp-long p2, p0, p7

    if-nez p2, :cond_1

    return p6

    :cond_1
    long-to-double p0, p3

    long-to-double p2, p7

    div-double/2addr p0, p2

    const-wide p2, -0x407b851eb851eb85L    # -0.01

    cmpg-double p4, p0, p2

    if-ltz p4, :cond_3

    const-wide p2, 0x3ff028f5c28f5c29L    # 1.01

    cmpl-double p4, p0, p2

    if-lez p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return p6
.end method

.method public static synthetic d()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/sdk/f/a;->f()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private static f()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getScene()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    if-eq v0, v1, :cond_1

    .line 8
    const/4 v1, 0x6

    .line 9
    if-eq v0, v1, :cond_1

    .line 11
    const/4 v1, 0x7

    .line 12
    if-ne v0, v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Lcom/amap/location/sdk/f/a;->h:J

    return-void
.end method

.method public a(JZ)V
    .locals 2

    .line 6
    iget-boolean v0, p0, Lcom/amap/location/sdk/f/a;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/location/sdk/f/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "durationMs"

    .line 8
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "isLastBackground"

    .line 9
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "send_navi_idle"

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/amap/location/sdk/f/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 4

    .line 11
    iget-boolean v0, p0, Lcom/amap/location/sdk/f/a;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "gps"

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amap/location/sdk/f/a;->i:J

    .line 14
    :cond_1
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getIod()I

    move-result v1

    .line 15
    iget v2, p0, Lcom/amap/location/sdk/f/a;->f:I

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v2, "send_scene_outdoor"

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const-string v2, "send_scene_indoor"

    goto :goto_0

    :cond_3
    const-string v2, "send_scene_unknow"

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/amap/location/sdk/f/a;->d:Landroid/os/Bundle;

    invoke-direct {p0, v2, v3}, Lcom/amap/location/sdk/f/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 17
    :cond_4
    iput v1, p0, Lcom/amap/location/sdk/f/a;->f:I

    .line 18
    iget-boolean v1, p0, Lcom/amap/location/sdk/f/a;->l:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/amap/location/sdk/f/a;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/amap/location/sdk/f/a;->m:Lcom/amap/location/sdk/f/a$a;

    invoke-virtual {v0, p1}, Lcom/amap/location/sdk/f/a$a;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/amap/location/sdk/f/a;->l:Z

    .line 22
    :cond_5
    invoke-direct {p0, p1}, Lcom/amap/location/sdk/f/a;->b(Lcom/amap/location/support/bean/location/AmapLocation;)V

    return-void
.end method

.method public a(Lcom/amap/location/type/location/LocationMatch;)V
    .locals 7

    .line 24
    iget-boolean v0, p0, Lcom/amap/location/sdk/f/a;->b:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 25
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onNavi()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 27
    iget-object v2, p0, Lcom/amap/location/sdk/f/a;->j:Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/amap/location/sdk/f/a;->g:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 28
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/amap/location/sdk/f/a;->b(Lcom/amap/location/type/location/LocationMatch;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/location/type/location/LocationMatch;->getOrientationUseType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "&"

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-wide v2, p0, Lcom/amap/location/sdk/f/a;->g:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 33
    iget-object v2, p0, Lcom/amap/location/sdk/f/a;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 34
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/amap/location/sdk/f/a;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object v0, p0, Lcom/amap/location/sdk/f/a;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amap/location/sdk/f/a;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 36
    throw p1

    :cond_2
    :goto_1
    return-void

    .line 37
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/amap/location/sdk/f/a;->a:Z

    if-eqz v0, :cond_4

    .line 38
    iget-object v0, p0, Lcom/amap/location/sdk/f/a;->m:Lcom/amap/location/sdk/f/a$a;

    invoke-virtual {v0, p1}, Lcom/amap/location/sdk/f/a$a;->a(Lcom/amap/location/type/location/LocationMatch;)V

    :cond_4
    return-void
.end method

.method public b()V
    .locals 4

    const-string v0, "manufeedbackpry"

    .line 1
    iget-boolean v1, p0, Lcom/amap/location/sdk/f/a;->a:Z

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object v1

    const-string v2, "manufeedback"

    iget-boolean v3, p0, Lcom/amap/location/sdk/f/a;->a:Z

    invoke-virtual {v1, v2, v3}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amap/location/sdk/f/a;->a:Z

    .line 3
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object v1

    const-string v2, "manufeedori"

    iget-boolean v3, p0, Lcom/amap/location/sdk/f/a;->b:Z

    invoke-virtual {v1, v2, v3}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amap/location/sdk/f/a;->b:Z

    .line 4
    iget-boolean v1, p0, Lcom/amap/location/sdk/f/a;->a:Z

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/amap/location/d/d;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "location"

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/amap/location/sdk/f/a;->c:Landroid/location/LocationManager;

    .line 7
    iget-object v1, p0, Lcom/amap/location/sdk/f/a;->d:Landroid/os/Bundle;

    const-string v2, "origin"

    const-string v3, "amap"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/amap/location/sdk/f/a;->d:Landroid/os/Bundle;

    const-string v2, "uuid"

    invoke-direct {p0}, Lcom/amap/location/sdk/f/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/amap/location/sdk/f/a;->d:Landroid/os/Bundle;

    const-string v2, "listenerHashcode"

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v3

    .line 10
    invoke-interface {v3}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/location/support/signal/gnss/IGnssManager;->getGnssUpdatesSystemListenerIdentityHashCode()I

    move-result v3

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    iget-object v1, p0, Lcom/amap/location/sdk/f/a;->d:Landroid/os/Bundle;

    const-string v2, "listenerId"

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v3

    .line 13
    invoke-interface {v3}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/location/support/signal/gnss/IGnssManager;->getGnssUpdatesSystemListenerId()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/amap/location/sdk/f/a;->d:Landroid/os/Bundle;

    const-string v2, "scene"

    iget v3, p0, Lcom/amap/location/sdk/f/a;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "send_amap_init"

    .line 16
    iget-object v2, p0, Lcom/amap/location/sdk/f/a;->d:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2}, Lcom/amap/location/sdk/f/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 17
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v1, "feedback init"

    .line 18
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/location/sdk/f/a;->g:J

    :cond_1
    return-void
.end method

.method public c()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/sdk/f/a;->a:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    iget-boolean v0, p0, Lcom/amap/location/sdk/f/a;->b:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto/16 :goto_2

    .line 11
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amap/location/sdk/f/a;->f()Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 18
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getScene()I

    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    iput v0, p0, Lcom/amap/location/sdk/f/a;->e:I

    .line 26
    iget-object v2, p0, Lcom/amap/location/sdk/f/a;->d:Landroid/os/Bundle;

    .line 28
    const-string v3, "scene"

    .line 30
    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    const-string v0, "send_scene_changed"

    .line 35
    iget-object v2, p0, Lcom/amap/location/sdk/f/a;->d:Landroid/os/Bundle;

    .line 37
    invoke-direct {p0, v0, v2}, Lcom/amap/location/sdk/f/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 40
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 47
    move-result-wide v2

    .line 48
    iget v0, p0, Lcom/amap/location/sdk/f/a;->e:I

    .line 50
    const/4 v4, 0x5

    .line 51
    if-ne v0, v4, :cond_2

    .line 53
    const-string v0, "send_navi_start"

    .line 55
    iget-object v4, p0, Lcom/amap/location/sdk/f/a;->d:Landroid/os/Bundle;

    .line 57
    invoke-direct {p0, v0, v4}, Lcom/amap/location/sdk/f/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 60
    iget-boolean v0, p0, Lcom/amap/location/sdk/f/a;->b:Z

    .line 62
    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/amap/location/sdk/f/a;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 66
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    :try_start_1
    invoke-direct {p0, v2, v3}, Lcom/amap/location/sdk/f/a;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    iget-object v0, p0, Lcom/amap/location/sdk/f/a;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 78
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    iget-object v1, p0, Lcom/amap/location/sdk/f/a;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 89
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 96
    throw v0

    .line 97
    :cond_2
    const-string v0, "send_navi_stop"

    .line 99
    iget-object v4, p0, Lcom/amap/location/sdk/f/a;->d:Landroid/os/Bundle;

    .line 101
    invoke-direct {p0, v0, v4}, Lcom/amap/location/sdk/f/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 104
    iget-boolean v0, p0, Lcom/amap/location/sdk/f/a;->b:Z

    .line 106
    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/amap/location/sdk/f/a;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 110
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 117
    :try_start_3
    invoke-direct {p0, v2, v3}, Lcom/amap/location/sdk/f/a;->b(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    :try_start_4
    iget-object v0, p0, Lcom/amap/location/sdk/f/a;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 122
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 129
    goto :goto_1

    .line 130
    :catchall_1
    move-exception v0

    .line 131
    iget-object v1, p0, Lcom/amap/location/sdk/f/a;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 133
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 140
    throw v0

    .line 141
    :cond_3
    :goto_1
    invoke-static {}, Lcom/amap/location/sdk/f/a;->f()Z

    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_4

    .line 147
    iput-boolean v1, p0, Lcom/amap/location/sdk/f/a;->l:Z

    .line 149
    iget-object v0, p0, Lcom/amap/location/sdk/f/a;->m:Lcom/amap/location/sdk/f/a$a;

    .line 151
    invoke-virtual {v0}, Lcom/amap/location/sdk/f/a$a;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 154
    :try_start_5
    iget-object v1, p0, Lcom/amap/location/sdk/f/a;->c:Landroid/location/LocationManager;

    .line 156
    const-string v2, "passive"

    .line 158
    const-wide/16 v3, 0x3e8

    .line 160
    const/4 v5, 0x0

    .line 161
    iget-object v6, p0, Lcom/amap/location/sdk/f/a;->q:Landroid/location/LocationListener;

    .line 163
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 166
    move-result-object v7

    .line 167
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 170
    goto :goto_2

    .line 171
    :catch_0
    move-exception v0

    .line 172
    :try_start_6
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 175
    goto :goto_2

    .line 176
    :cond_4
    :try_start_7
    iget-object v0, p0, Lcom/amap/location/sdk/f/a;->c:Landroid/location/LocationManager;

    .line 178
    iget-object v1, p0, Lcom/amap/location/sdk/f/a;->q:Landroid/location/LocationListener;

    .line 180
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 183
    goto :goto_2

    .line 184
    :catch_1
    move-exception v0

    .line 185
    :try_start_8
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 188
    goto :goto_2

    .line 189
    :catch_2
    move-exception v0

    .line 190
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 193
    :catch_3
    :cond_5
    :goto_2
    return-void
.end method

.method public fetchGnssTimeoutReason(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 40

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    const-string v2, "permissionOn"

    .line 7
    const-string v3, "locationOn"

    .line 9
    const-string v4, "foreground"

    .line 11
    const-string v5, "satelliteinfo"

    .line 13
    const-string v6, "networktrace"

    .line 15
    const-string v7, "matchTunnel"

    .line 17
    iget-boolean v8, v1, Lcom/amap/location/sdk/f/a;->a:Z

    .line 19
    if-eqz v8, :cond_7

    .line 21
    invoke-static {}, Lcom/amap/location/sdk/f/a;->f()Z

    .line 24
    move-result v8

    .line 25
    if-nez v8, :cond_0

    .line 27
    goto/16 :goto_14

    .line 29
    :cond_0
    const/4 v8, 0x1

    .line 30
    iput-boolean v8, v1, Lcom/amap/location/sdk/f/a;->l:Z

    .line 32
    new-instance v10, Landroid/os/Bundle;

    .line 34
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 37
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/sdk/f/a;->e()Ljava/lang/String;

    .line 40
    move-result-object v11

    .line 41
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 44
    move-result-object v12

    .line 45
    invoke-interface {v12}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 48
    move-result-object v12

    .line 49
    invoke-interface {v12}, Lcom/amap/location/support/signal/gnss/IGnssManager;->getGnssUpdatesSystemListenerIdentityHashCode()I

    .line 52
    move-result v12

    .line 53
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 56
    move-result-object v13

    .line 57
    invoke-interface {v13}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 60
    move-result-object v13

    .line 61
    invoke-interface {v13}, Lcom/amap/location/support/signal/gnss/IGnssManager;->getGnssUpdatesSystemListenerId()Ljava/lang/String;

    .line 64
    move-result-object v13

    .line 65
    const-string v14, "version"

    .line 67
    const-string v15, "v3"

    .line 69
    invoke-virtual {v10, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v14, "origin"

    .line 74
    const-string v15, "amap"

    .line 76
    invoke-virtual {v10, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v14, "uuid"

    .line 81
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/sdk/f/a;->e()Ljava/lang/String;

    .line 84
    move-result-object v15

    .line 85
    invoke-virtual {v10, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v14, "listenerHashcode"

    .line 90
    invoke-virtual {v10, v14, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string v14, "listenerId"

    .line 95
    invoke-virtual {v10, v14, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v13, "scene"

    .line 100
    iget v14, v1, Lcom/amap/location/sdk/f/a;->e:I

    .line 102
    invoke-virtual {v10, v13, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 105
    const-string v13, "cornerWeakTime"

    .line 107
    iget-wide v14, v1, Lcom/amap/location/sdk/f/a;->h:J

    .line 109
    invoke-virtual {v10, v13, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 112
    const-string v13, "lastGnssTime"

    .line 114
    iget-wide v14, v1, Lcom/amap/location/sdk/f/a;->i:J

    .line 116
    invoke-virtual {v10, v13, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 119
    const/4 v13, 0x0

    .line 120
    const/4 v14, -0x1

    .line 121
    if-eqz v0, :cond_1

    .line 123
    :try_start_0
    invoke-virtual {v0, v7, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 126
    move-result v15

    .line 127
    invoke-virtual {v10, v7, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    invoke-virtual {v0, v6, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 133
    move-result v7

    .line 134
    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    invoke-virtual {v0, v5, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 140
    move-result v6

    .line 141
    invoke-virtual {v10, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 144
    invoke-virtual {v0, v4, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 147
    move-result v5

    .line 148
    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    invoke-virtual {v0, v3, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 154
    move-result v4

    .line 155
    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    invoke-virtual {v0, v2, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 161
    move-result v0

    .line 162
    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 170
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 173
    move-result-wide v2

    .line 174
    iget-wide v4, v1, Lcom/amap/location/sdk/f/a;->i:J

    .line 176
    sub-long/2addr v2, v4

    .line 177
    const-wide/16 v4, 0x3e8

    .line 179
    div-long/2addr v2, v4

    .line 180
    const-string v0, "lossDuration"

    .line 182
    invoke-virtual {v10, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 185
    const-string v0, "send_gps_timeout"

    .line 187
    invoke-direct {v1, v0, v10}, Lcom/amap/location/sdk/f/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 190
    const-string v6, ""

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 195
    move-result-wide v15

    .line 196
    iget-wide v8, v1, Lcom/amap/location/sdk/f/a;->n:J

    .line 198
    sub-long/2addr v15, v8

    .line 199
    div-long v4, v15, v4

    .line 201
    const-wide/16 v8, -0x1

    .line 203
    :try_start_1
    const-string v0, "satellite_used"

    .line 205
    invoke-virtual {v10, v0, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 208
    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13

    .line 209
    :try_start_2
    const-string v0, "interface_ok"

    .line 211
    invoke-virtual {v10, v0, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 214
    move-result v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12

    .line 215
    :try_start_3
    const-string v0, "control_ok"

    .line 217
    invoke-virtual {v10, v0, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 220
    move-result v18
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11

    .line 221
    :try_start_4
    const-string v0, "system_ok"

    .line 223
    invoke-virtual {v10, v0, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 226
    move-result v19
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10

    .line 227
    :try_start_5
    const-string v0, "chip_ok"

    .line 229
    invoke-virtual {v10, v0, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 232
    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f

    .line 233
    :try_start_6
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isOppo()Z

    .line 236
    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    .line 237
    if-eqz v0, :cond_3

    .line 239
    const/4 v13, 0x1

    .line 240
    if-ne v7, v13, :cond_2

    .line 242
    const/4 v13, 0x0

    .line 243
    goto :goto_1

    .line 244
    :cond_2
    if-nez v7, :cond_3

    .line 246
    const/4 v13, 0x1

    .line 247
    goto :goto_1

    .line 248
    :cond_3
    move v13, v7

    .line 249
    :goto_1
    if-ne v13, v14, :cond_4

    .line 251
    :try_start_7
    const-string v0, "chip-ok"

    .line 253
    invoke-virtual {v10, v0, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 256
    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 257
    move v7, v0

    .line 258
    goto :goto_2

    .line 259
    :catch_1
    move-exception v0

    .line 260
    move-wide v2, v8

    .line 261
    move-wide/from16 v28, v2

    .line 263
    move v7, v13

    .line 264
    goto/16 :goto_4

    .line 266
    :cond_4
    move v7, v13

    .line 267
    :goto_2
    :try_start_8
    const-string v0, "app_control"

    .line 269
    invoke-virtual {v10, v0, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 272
    move-result v13
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e

    .line 273
    :try_start_9
    const-string v0, "app_control_log"

    .line 275
    invoke-virtual {v10, v0, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    move-result-object v6

    .line 279
    const-string v0, "app_active"

    .line 281
    invoke-virtual {v10, v0, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 284
    move-result v20
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d

    .line 285
    :try_start_a
    const-string v0, "app_permission"

    .line 287
    invoke-virtual {v10, v0, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 290
    move-result v21
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    .line 291
    :try_start_b
    const-string v0, "app_last_report_second"

    .line 293
    invoke-virtual {v10, v0, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 296
    move-result-wide v22
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 297
    :try_start_c
    const-string v0, "app_power_mode"

    .line 299
    invoke-virtual {v10, v0, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 302
    move-result v24
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 303
    :try_start_d
    const-string v0, "app_forground"

    .line 305
    invoke-virtual {v10, v0, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 308
    move-result v25
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 309
    :try_start_e
    const-string v0, "gnss_real"

    .line 311
    invoke-virtual {v10, v0, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 314
    move-result v26
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 315
    :try_start_f
    const-string v0, "gnss_status"

    .line 317
    invoke-virtual {v10, v0, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 320
    move-result v27
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 321
    :try_start_10
    const-string v0, "gnss_last_report_second"

    .line 323
    invoke-virtual {v10, v0, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 326
    move-result-wide v28
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 327
    :try_start_11
    const-string v0, "satellite_all_count"

    .line 329
    invoke-virtual {v10, v0, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 332
    move-result v30
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    .line 333
    :try_start_12
    const-string v0, "satellite_snr_over0_count"

    .line 335
    invoke-virtual {v10, v0, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 338
    move-result v31
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    .line 339
    :try_start_13
    const-string v0, "satellist_snr_over20_count"

    .line 341
    invoke-virtual {v10, v0, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 344
    move-result v32
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 345
    :try_start_14
    const-string v0, "gps_restart"

    .line 347
    invoke-virtual {v10, v0, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 350
    move-result-wide v8

    .line 351
    cmp-long v0, v8, v2

    .line 353
    if-gez v0, :cond_5

    .line 355
    const/4 v2, 0x1

    .line 356
    iput-boolean v2, v1, Lcom/amap/location/sdk/f/a;->p:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    .line 358
    :cond_5
    move/from16 v0, v16

    .line 360
    move/from16 v2, v18

    .line 362
    move/from16 v3, v19

    .line 364
    move/from16 v10, v20

    .line 366
    move/from16 v1, v21

    .line 368
    move/from16 v33, v26

    .line 370
    move/from16 v34, v27

    .line 372
    move-wide/from16 v35, v28

    .line 374
    move/from16 v37, v30

    .line 376
    move/from16 v38, v31

    .line 378
    move/from16 v39, v32

    .line 380
    move-wide/from16 v18, v4

    .line 382
    move-wide/from16 v16, v8

    .line 384
    move-wide/from16 v8, v22

    .line 386
    goto/16 :goto_12

    .line 388
    :catch_2
    move-exception v0

    .line 389
    move-wide v2, v8

    .line 390
    move-wide/from16 v8, v22

    .line 392
    goto/16 :goto_11

    .line 394
    :catch_3
    move-exception v0

    .line 395
    move-wide v2, v8

    .line 396
    move-wide/from16 v8, v22

    .line 398
    goto/16 :goto_10

    .line 400
    :catch_4
    move-exception v0

    .line 401
    move-wide v2, v8

    .line 402
    move-wide/from16 v8, v22

    .line 404
    goto/16 :goto_f

    .line 406
    :catch_5
    move-exception v0

    .line 407
    move-wide v2, v8

    .line 408
    goto :goto_3

    .line 409
    :catch_6
    move-exception v0

    .line 410
    move-wide v2, v8

    .line 411
    move-wide/from16 v28, v2

    .line 413
    :goto_3
    move-wide/from16 v8, v22

    .line 415
    goto/16 :goto_e

    .line 417
    :catch_7
    move-exception v0

    .line 418
    move-wide v2, v8

    .line 419
    move-wide/from16 v28, v2

    .line 421
    move-wide/from16 v8, v22

    .line 423
    goto/16 :goto_d

    .line 425
    :catch_8
    move-exception v0

    .line 426
    move-wide v2, v8

    .line 427
    move-wide/from16 v28, v2

    .line 429
    move-wide/from16 v8, v22

    .line 431
    goto/16 :goto_c

    .line 433
    :catch_9
    move-exception v0

    .line 434
    move-wide v2, v8

    .line 435
    move-wide/from16 v28, v2

    .line 437
    move-wide/from16 v8, v22

    .line 439
    goto :goto_b

    .line 440
    :catch_a
    move-exception v0

    .line 441
    move-wide v2, v8

    .line 442
    move-wide/from16 v28, v2

    .line 444
    move-wide/from16 v8, v22

    .line 446
    goto :goto_a

    .line 447
    :catch_b
    move-exception v0

    .line 448
    move-wide v2, v8

    .line 449
    move-wide/from16 v28, v2

    .line 451
    goto :goto_a

    .line 452
    :catch_c
    move-exception v0

    .line 453
    move-wide v2, v8

    .line 454
    move-wide/from16 v28, v2

    .line 456
    goto :goto_9

    .line 457
    :catch_d
    move-exception v0

    .line 458
    move-wide v2, v8

    .line 459
    move-wide/from16 v28, v2

    .line 461
    goto :goto_8

    .line 462
    :catch_e
    move-exception v0

    .line 463
    move-wide v2, v8

    .line 464
    move-wide/from16 v28, v2

    .line 466
    goto :goto_4

    .line 467
    :catch_f
    move-exception v0

    .line 468
    move-wide v2, v8

    .line 469
    move-wide/from16 v28, v2

    .line 471
    const/4 v7, -0x1

    .line 472
    :goto_4
    const/4 v13, -0x1

    .line 473
    goto :goto_8

    .line 474
    :catch_10
    move-exception v0

    .line 475
    move-wide v2, v8

    .line 476
    move-wide/from16 v28, v2

    .line 478
    const/4 v7, -0x1

    .line 479
    const/4 v13, -0x1

    .line 480
    goto :goto_7

    .line 481
    :catch_11
    move-exception v0

    .line 482
    move-wide v2, v8

    .line 483
    move-wide/from16 v28, v2

    .line 485
    const/4 v7, -0x1

    .line 486
    const/4 v13, -0x1

    .line 487
    goto :goto_6

    .line 488
    :catch_12
    move-exception v0

    .line 489
    move-wide v2, v8

    .line 490
    move-wide/from16 v28, v2

    .line 492
    const/4 v7, -0x1

    .line 493
    const/4 v13, -0x1

    .line 494
    goto :goto_5

    .line 495
    :catch_13
    move-exception v0

    .line 496
    move-wide v2, v8

    .line 497
    move-wide/from16 v28, v2

    .line 499
    const/4 v7, -0x1

    .line 500
    const/4 v13, -0x1

    .line 501
    const/4 v15, -0x1

    .line 502
    :goto_5
    const/16 v16, -0x1

    .line 504
    :goto_6
    const/16 v18, -0x1

    .line 506
    :goto_7
    const/16 v19, -0x1

    .line 508
    :goto_8
    const/16 v20, -0x1

    .line 510
    :goto_9
    const/16 v21, -0x1

    .line 512
    :goto_a
    const/16 v24, -0x1

    .line 514
    :goto_b
    const/16 v25, -0x1

    .line 516
    :goto_c
    const/16 v26, -0x1

    .line 518
    :goto_d
    const/16 v27, -0x1

    .line 520
    :goto_e
    const/16 v30, -0x1

    .line 522
    :goto_f
    const/16 v31, -0x1

    .line 524
    :goto_10
    const/16 v32, -0x1

    .line 526
    :goto_11
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 529
    move/from16 v0, v16

    .line 531
    move/from16 v10, v20

    .line 533
    move/from16 v1, v21

    .line 535
    move/from16 v33, v26

    .line 537
    move/from16 v34, v27

    .line 539
    move-wide/from16 v35, v28

    .line 541
    move/from16 v37, v30

    .line 543
    move/from16 v38, v31

    .line 545
    move/from16 v39, v32

    .line 547
    move-wide/from16 v16, v2

    .line 549
    move/from16 v2, v18

    .line 551
    move/from16 v3, v19

    .line 553
    move-wide/from16 v18, v4

    .line 555
    :goto_12
    move/from16 v4, v24

    .line 557
    move/from16 v5, v25

    .line 559
    if-ne v0, v14, :cond_6

    .line 561
    if-ne v10, v14, :cond_6

    .line 563
    const/4 v14, 0x0

    .line 564
    return-object v14

    .line 565
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    .line 567
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    move/from16 v20, v5

    .line 572
    const-string v5, "uuid:"

    .line 574
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    const-string v5, ",listen:"

    .line 582
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    const-string v5, ",sta:"

    .line 590
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 596
    const-string v5, ",int:"

    .line 598
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    const-string v0, ",con:"

    .line 606
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    const-string v0, ",sys:"

    .line 614
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 620
    const-string v0, ",chp:"

    .line 622
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 628
    const-string v0, ",appct:"

    .line 630
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 636
    const-string v0, ",appctl:"

    .line 638
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const-string v0, ",appact:"

    .line 646
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 652
    const-string v0, ",appper:"

    .line 654
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 660
    const-string v0, ",applr:"

    .line 662
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 668
    const-string v0, ",apppow:"

    .line 670
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 676
    const-string v0, ",appfore:"

    .line 678
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    move/from16 v0, v20

    .line 683
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 686
    const-string v0, ",gnssreal:"

    .line 688
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    move/from16 v0, v33

    .line 693
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 696
    const-string v0, ",gnsssta:"

    .line 698
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    move/from16 v0, v34

    .line 703
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 706
    const-string v0, ",gnsslr:"

    .line 708
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    move-wide/from16 v0, v35

    .line 713
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 716
    const-string v0, ",stacnt:"

    .line 718
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    move/from16 v0, v37

    .line 723
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 726
    const-string v0, ",sysdiff:"

    .line 728
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    move-wide/from16 v1, v18

    .line 733
    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 736
    const-string v0, ",staover0:"

    .line 738
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    move/from16 v0, v38

    .line 743
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 746
    const-string v0, ",staover20:"

    .line 748
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    move/from16 v0, v39

    .line 753
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 756
    const-string v0, ",gps_restart:"

    .line 758
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    move-wide/from16 v2, v16

    .line 763
    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 769
    move-result-object v0

    .line 770
    new-instance v1, Lorg/json/JSONObject;

    .line 772
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 775
    :try_start_15
    const-string v2, "res"

    .line 777
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_14

    .line 780
    goto :goto_13

    .line 781
    :catch_14
    move-exception v0

    .line 782
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 785
    :goto_13
    return-object v1

    .line 786
    :cond_7
    :goto_14
    const/4 v1, 0x0

    .line 787
    return-object v1
.end method
