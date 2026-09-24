.class final Lcom/amap/location/g/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/cell/AmapCellListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/g/g;


# direct methods
.method private constructor <init>(Lcom/amap/location/g/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/g/g$c;->a:Lcom/amap/location/g/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amap/location/g/g;Lcom/amap/location/g/g$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/location/g/g$c;-><init>(Lcom/amap/location/g/g;)V

    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/cell/AmapCell;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    :cond_0
    const-string v0, "nlcontext"

    .line 11
    const-string v1, "nl cell scan size = 0"

    .line 13
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/amap/location/g/g$c;->a:Lcom/amap/location/g/g;

    .line 18
    invoke-static {v0, p1}, Lcom/amap/location/g/g;->a(Lcom/amap/location/g/g;Ljava/util/List;)V

    .line 21
    iget-object p1, p0, Lcom/amap/location/g/g$c;->a:Lcom/amap/location/g/g;

    .line 23
    iget v0, p1, Lcom/amap/location/g/g;->a:I

    .line 25
    or-int/lit8 v0, v0, 0x2

    .line 27
    iput v0, p1, Lcom/amap/location/g/g;->a:I

    .line 29
    return-void
.end method

.method public onDataConnectionStateChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/g/g$c;->a:Lcom/amap/location/g/g;

    .line 3
    invoke-static {v0}, Lcom/amap/location/g/g;->j(Lcom/amap/location/g/g;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/amap/location/g/g$c;->a:Lcom/amap/location/g/g;

    .line 11
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getCellList()Ljava/util/List;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/amap/location/g/g;->a(Lcom/amap/location/g/g;Ljava/util/List;)V

    .line 26
    :cond_0
    return-void
.end method

.method public onSignalStrengthsChanged(III)V
    .locals 5

    .line 1
    iget-object p3, p0, Lcom/amap/location/g/g$c;->a:Lcom/amap/location/g/g;

    .line 3
    invoke-static {p3}, Lcom/amap/location/g/g;->i(Lcom/amap/location/g/g;)Lcom/amap/location/support/bean/AmapFps;

    .line 6
    move-result-object p3

    .line 7
    iget-object p3, p3, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    .line 9
    if-eqz p3, :cond_2

    .line 11
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 14
    move-result-object p3

    .line 15
    invoke-interface {p3}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 18
    move-result-wide v0

    .line 19
    iget-object p3, p0, Lcom/amap/location/g/g$c;->a:Lcom/amap/location/g/g;

    .line 21
    invoke-static {p3}, Lcom/amap/location/g/g;->i(Lcom/amap/location/g/g;)Lcom/amap/location/support/bean/AmapFps;

    .line 24
    move-result-object p3

    .line 25
    iget-wide v2, p3, Lcom/amap/location/support/bean/AmapFps;->cellUpdateSystemTime:J

    .line 27
    sub-long/2addr v0, v2

    .line 28
    const-wide/16 v2, 0x3e8

    .line 30
    const/16 p3, 0x63

    .line 32
    cmp-long v4, v0, v2

    .line 34
    if-gez v4, :cond_0

    .line 36
    iget-object v0, p0, Lcom/amap/location/g/g$c;->a:Lcom/amap/location/g/g;

    .line 38
    invoke-static {v0}, Lcom/amap/location/g/g;->i(Lcom/amap/location/g/g;)Lcom/amap/location/support/bean/AmapFps;

    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    .line 44
    iget v0, v0, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 46
    if-ne v0, p3, :cond_2

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/amap/location/g/g$c;->a:Lcom/amap/location/g/g;

    .line 50
    invoke-static {v0}, Lcom/amap/location/g/g;->i(Lcom/amap/location/g/g;)Lcom/amap/location/support/bean/AmapFps;

    .line 53
    move-result-object v0

    .line 54
    iget-object v0, v0, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    .line 56
    iget-boolean v0, v0, Lcom/amap/location/support/bean/cell/AmapCell;->newApi:Z

    .line 58
    if-nez v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/amap/location/g/g$c;->a:Lcom/amap/location/g/g;

    .line 62
    invoke-static {v0}, Lcom/amap/location/g/g;->i(Lcom/amap/location/g/g;)Lcom/amap/location/support/bean/AmapFps;

    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    .line 68
    instance-of v0, v0, Lcom/amap/location/support/bean/cell/AmapCellGsm;

    .line 70
    if-eqz v0, :cond_1

    .line 72
    if-eq p1, p3, :cond_1

    .line 74
    iget-object p2, p0, Lcom/amap/location/g/g$c;->a:Lcom/amap/location/g/g;

    .line 76
    invoke-static {p2}, Lcom/amap/location/g/g;->i(Lcom/amap/location/g/g;)Lcom/amap/location/support/bean/AmapFps;

    .line 79
    move-result-object p2

    .line 80
    iget-object p2, p2, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    .line 82
    iput p1, p2, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 84
    iget-object p1, p0, Lcom/amap/location/g/g$c;->a:Lcom/amap/location/g/g;

    .line 86
    invoke-static {p1}, Lcom/amap/location/g/g;->i(Lcom/amap/location/g/g;)Lcom/amap/location/support/bean/AmapFps;

    .line 89
    move-result-object p1

    .line 90
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 93
    move-result-object p2

    .line 94
    invoke-interface {p2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 97
    move-result-wide p2

    .line 98
    iput-wide p2, p1, Lcom/amap/location/support/bean/AmapFps;->cellUpdateSystemTime:J

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/amap/location/g/g$c;->a:Lcom/amap/location/g/g;

    .line 103
    invoke-static {p1}, Lcom/amap/location/g/g;->i(Lcom/amap/location/g/g;)Lcom/amap/location/support/bean/AmapFps;

    .line 106
    move-result-object p1

    .line 107
    iget-object p1, p1, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    .line 109
    instance-of p1, p1, Lcom/amap/location/support/bean/cell/AmapCellCdma;

    .line 111
    if-eqz p1, :cond_2

    .line 113
    if-eq p2, p3, :cond_2

    .line 115
    iget-object p1, p0, Lcom/amap/location/g/g$c;->a:Lcom/amap/location/g/g;

    .line 117
    invoke-static {p1}, Lcom/amap/location/g/g;->i(Lcom/amap/location/g/g;)Lcom/amap/location/support/bean/AmapFps;

    .line 120
    move-result-object p1

    .line 121
    iget-object p1, p1, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    .line 123
    iput p2, p1, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 125
    iget-object p1, p0, Lcom/amap/location/g/g$c;->a:Lcom/amap/location/g/g;

    .line 127
    invoke-static {p1}, Lcom/amap/location/g/g;->i(Lcom/amap/location/g/g;)Lcom/amap/location/support/bean/AmapFps;

    .line 130
    move-result-object p1

    .line 131
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 134
    move-result-object p2

    .line 135
    invoke-interface {p2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 138
    move-result-wide p2

    .line 139
    iput-wide p2, p1, Lcom/amap/location/support/bean/AmapFps;->cellUpdateSystemTime:J

    .line 141
    :cond_2
    :goto_0
    return-void
.end method
