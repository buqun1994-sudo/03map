.class public Lpy$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/gnss/AmapNmeaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:I

.field public b:J

.field public final synthetic c:Lpy;


# direct methods
.method public constructor <init>(Lpy;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lpy$d;->c:Lpy;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/16 p1, 0x1f4

    .line 8
    iput p1, p0, Lpy$d;->a:I

    .line 10
    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lpy$d;->b:J

    .line 14
    return-void
.end method


# virtual methods
.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lpy$d;->b:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x1f4

    .line 10
    cmp-long p3, v0, v2

    .line 12
    if-gez p3, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lpy$d;->b:J

    .line 21
    sget-object p3, Lpy;->k:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    move-result-object v2

    .line 31
    aput-object v2, v0, v1

    .line 33
    const-string v1, "onNmeaStringReceived\uff0ctimestamp={?}"

    .line 35
    invoke-static {p3, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {p1, p2}, Lcom/autonavi/amapauto/location/LocationLinkMonitorNative;->nmeaMonitor(J)V

    .line 41
    return-void
.end method
