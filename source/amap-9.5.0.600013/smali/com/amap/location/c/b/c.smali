.class public Lcom/amap/location/c/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:J = 0x7d0L

.field public static b:I = 0x5


# instance fields
.field private c:Lcom/amap/location/c/b$b;

.field private d:Lcom/amap/location/c/a/d;

.field private e:J

.field private f:Lcom/amap/location/support/bean/location/AmapLocation;

.field private g:J

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private i:S

.field private j:B

.field private k:Lcom/amap/location/support/bean/location/AmapLocation;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/location/c/b$b;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/amap/location/c/b/c;->h:Ljava/util/List;

    .line 11
    const/16 v0, 0x7fff

    .line 13
    iput-short v0, p0, Lcom/amap/location/c/b/c;->i:S

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-byte v0, p0, Lcom/amap/location/c/b/c;->j:B

    .line 18
    new-instance v1, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 20
    const-string v2, "gps"

    .line 22
    const/16 v3, -0x3e7

    .line 24
    invoke-direct {v1, v2, v0, v3}, Lcom/amap/location/support/bean/location/AmapLocation;-><init>(Ljava/lang/String;II)V

    .line 27
    iput-object v1, p0, Lcom/amap/location/c/b/c;->k:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 29
    iput-object p1, p0, Lcom/amap/location/c/b/c;->c:Lcom/amap/location/c/b$b;

    .line 31
    new-instance p1, Lcom/amap/location/c/a/d;

    .line 33
    invoke-direct {p1}, Lcom/amap/location/c/a/d;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amap/location/c/b/c;->d:Lcom/amap/location/c/a/d;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/location/support/bean/location/AmapLocation;)Lcom/amap/location/c/c/b;
    .locals 10

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/amap/location/c/b/c;->f:Lcom/amap/location/support/bean/location/AmapLocation;

    if-eqz v2, :cond_0

    iget-wide v3, p0, Lcom/amap/location/c/b/c;->e:J

    sub-long v3, v0, v3

    sget-wide v5, Lcom/amap/location/c/b/c;->a:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_3

    .line 3
    invoke-virtual {p1, v2}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    move-result-wide v2

    sget v4, Lcom/amap/location/c/b/c;->b:I

    int-to-double v4, v4

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_3

    .line 4
    :cond_0
    iput-wide v0, p0, Lcom/amap/location/c/b/c;->e:J

    .line 5
    iput-object p1, p0, Lcom/amap/location/c/b/c;->f:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 6
    iget-object v2, p0, Lcom/amap/location/c/b/c;->c:Lcom/amap/location/c/b$b;

    invoke-virtual {v2}, Lcom/amap/location/c/b$b;->c()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-wide v4, p0, Lcom/amap/location/c/b/c;->g:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    sub-long/2addr v0, v4

    const-wide/16 v4, 0xbb8

    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/amap/location/c/b/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_2
    iget-object v4, p0, Lcom/amap/location/c/b/c;->k:Lcom/amap/location/support/bean/location/AmapLocation;

    iget-short v5, p0, Lcom/amap/location/c/b/c;->i:S

    iget-byte v6, p0, Lcom/amap/location/c/b/c;->j:B

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v8

    move-object v7, p1

    invoke-static/range {v4 .. v9}, Lcom/amap/location/c/h/b;->a(Lcom/amap/location/support/bean/location/AmapLocation;SBLcom/amap/location/support/bean/location/AmapLocation;J)V

    .line 9
    iget-object p1, p0, Lcom/amap/location/c/b/c;->d:Lcom/amap/location/c/a/d;

    iget-object v0, p0, Lcom/amap/location/c/b/c;->k:Lcom/amap/location/support/bean/location/AmapLocation;

    iget-object v1, p0, Lcom/amap/location/c/b/c;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/amap/location/c/b/c;->c:Lcom/amap/location/c/b$b;

    invoke-virtual {v2}, Lcom/amap/location/c/b$b;->a()B

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/amap/location/c/a/d;->a(Lcom/amap/location/support/bean/location/AmapLocation;Ljava/util/List;B)[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    new-instance v0, Lcom/amap/location/c/c/b;

    invoke-direct {v0, v3, p1}, Lcom/amap/location/c/c/b;-><init>(I[B)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public a(IFLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapSatellite;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/location/c/b/c;->g:J

    .line 12
    iget-object v0, p0, Lcom/amap/location/c/b/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/location/support/bean/gnss/AmapSatellite;

    .line 14
    invoke-virtual {v0}, Lcom/amap/location/type/gnss/Satellite;->getSvid()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/amap/location/type/gnss/Satellite;->getSvid()I

    move-result v1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    .line 15
    iget-object v1, p0, Lcom/amap/location/c/b/c;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/high16 p3, 0x42c80000    # 100.0f

    mul-float p2, p2, p3

    .line 16
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-short p2, p2

    iput-short p2, p0, Lcom/amap/location/c/b/c;->i:S

    const/16 p2, 0x7f

    if-le p1, p2, :cond_2

    goto :goto_1

    :cond_2
    int-to-byte p2, p1

    .line 17
    :goto_1
    iput-byte p2, p0, Lcom/amap/location/c/b/c;->j:B

    return-void
.end method
