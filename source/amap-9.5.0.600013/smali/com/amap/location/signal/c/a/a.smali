.class public Lcom/amap/location/signal/c/a/a;
.super Lcom/amap/location/support/dispatch/Dispatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/signal/c/a/a$a;,
        Lcom/amap/location/signal/c/a/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/location/support/dispatch/Dispatcher<",
        "Lcom/amap/location/support/signal/gnss/AmapLocationListener;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:D

.field private e:Ljava/lang/StringBuffer;

.field private f:Lcom/amap/location/signal/c/a/a$b;

.field private g:Lcom/amap/location/signal/c/a/a$a;

.field private h:Z

.field private i:Lcom/amap/location/support/signal/gnss/AmapLocationListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/dispatch/Dispatcher;-><init>()V

    .line 4
    const-string v0, "locmgr"

    .line 6
    iput-object v0, p0, Lcom/amap/location/signal/c/a/a;->a:Ljava/lang/String;

    .line 8
    const-wide v0, 0x7fffffffffffffffL

    .line 13
    iput-wide v0, p0, Lcom/amap/location/signal/c/a/a;->c:J

    .line 15
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 20
    iput-wide v0, p0, Lcom/amap/location/signal/c/a/a;->d:D

    .line 22
    new-instance v0, Ljava/lang/StringBuffer;

    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/amap/location/signal/c/a/a;->e:Ljava/lang/StringBuffer;

    .line 29
    new-instance v0, Lcom/amap/location/signal/c/a/a$1;

    .line 31
    const-string v1, "GnssLocationManager"

    .line 33
    invoke-direct {v0, p0, v1}, Lcom/amap/location/signal/c/a/a$1;-><init>(Lcom/amap/location/signal/c/a/a;Ljava/lang/String;)V

    .line 36
    iput-object v0, p0, Lcom/amap/location/signal/c/a/a;->i:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 38
    iput-object p1, p0, Lcom/amap/location/signal/c/a/a;->b:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object p1, p0, Lcom/amap/location/signal/c/a/a;->a:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/amap/location/signal/c/a/a;->a:Ljava/lang/String;

    .line 59
    const-string p1, "gps"

    .line 61
    iget-object v0, p0, Lcom/amap/location/signal/c/a/a;->b:Ljava/lang/String;

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 69
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 72
    move-result-object p1

    .line 73
    const-string v0, "gnssReset"

    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1, v0, v1}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Z)Z

    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_0

    .line 82
    new-instance p1, Lcom/amap/location/signal/c/a/a$b;

    .line 84
    const/4 v0, 0x0

    .line 85
    invoke-direct {p1, p0, v0}, Lcom/amap/location/signal/c/a/a$b;-><init>(Lcom/amap/location/signal/c/a/a;Lcom/amap/location/signal/c/a/a$1;)V

    .line 88
    iput-object p1, p0, Lcom/amap/location/signal/c/a/a;->f:Lcom/amap/location/signal/c/a/a$b;

    .line 90
    :cond_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 93
    move-result-object p1

    .line 94
    const-string v0, "gllt"

    .line 96
    invoke-virtual {p1, v0, v1}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;I)I

    .line 99
    move-result p1

    .line 100
    int-to-long v0, p1

    .line 101
    const-wide/16 v2, 0x0

    .line 103
    cmp-long p1, v0, v2

    .line 105
    if-lez p1, :cond_1

    .line 107
    new-instance p1, Lcom/amap/location/signal/c/a/a$a;

    .line 109
    invoke-direct {p1, p0, v0, v1}, Lcom/amap/location/signal/c/a/a$a;-><init>(Lcom/amap/location/signal/c/a/a;J)V

    .line 112
    iput-object p1, p0, Lcom/amap/location/signal/c/a/a;->g:Lcom/amap/location/signal/c/a/a$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception p1

    .line 116
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 119
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/signal/c/a/a;)Lcom/amap/location/signal/c/a/a$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/signal/c/a/a;->g:Lcom/amap/location/signal/c/a/a$a;

    return-object p0
.end method

.method public static synthetic b(Lcom/amap/location/signal/c/a/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/location/support/dispatch/Dispatcher;->mHasStart:Z

    return p0
.end method

.method public static synthetic c(Lcom/amap/location/signal/c/a/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/signal/c/a/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 2

    const-string v0, "gps"

    .line 2
    iget-object v1, p0, Lcom/amap/location/signal/c/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/amap/location/signal/e/c;->a()Lcom/amap/location/signal/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/signal/c/a/a;->i:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    invoke-virtual {v0, v1}, Lcom/amap/location/signal/e/c;->removeGnssUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/amap/location/signal/e/c;->a()Lcom/amap/location/signal/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/signal/c/a/a;->i:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    invoke-virtual {v0, v1}, Lcom/amap/location/signal/e/c;->removePassiveUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Z

    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/amap/location/signal/c/a/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/signal/c/a/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 6

    const-string v0, ","

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/signal/c/a/a;->e:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 3
    iget-object v1, p0, Lcom/amap/location/signal/c/a/a;->e:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/location/signal/c/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " req info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/amap/location/signal/c/a/a;->c:J

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/amap/location/signal/c/a/a;->d:D

    .line 5
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, p0, Lcom/amap/location/support/dispatch/Dispatcher;->mHasStart:Z

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/Dispatcher;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/Dispatcher;->getListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    if-eqz v2, :cond_0

    .line 9
    iget-object v3, p0, Lcom/amap/location/signal/c/a/a;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {v2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getMinTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    invoke-virtual {v2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getMinDistance()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    invoke-virtual {v2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->isFilterMock()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v2, "*"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/amap/location/signal/c/a/a;->e:Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    iget-object v0, p0, Lcom/amap/location/signal/c/a/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/location/signal/c/a/a;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 16
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/support/dispatch/ListenerWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/location/support/signal/gnss/AmapLocationListener;",
            "Lcom/amap/location/support/handler/AmapLooper;",
            ")",
            "Lcom/amap/location/support/dispatch/ListenerWrapper<",
            "Lcom/amap/location/support/signal/gnss/AmapLocationListener;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/amap/location/signal/c/a/b;

    invoke-direct {v0, p1, p2}, Lcom/amap/location/signal/c/a/b;-><init>(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)V

    return-object v0
.end method

.method public a()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/amap/location/support/dispatch/Dispatcher;->mHasStart:Z

    return v0
.end method

.method public b()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/amap/location/support/dispatch/Dispatcher;->mHasStart:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/gnss/IGnssManager;->isGnssEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gps"

    iget-object v1, p0, Lcom/amap/location/signal/c/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/amap/location/signal/e/c;->a()Lcom/amap/location/signal/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/signal/e/c;->resetGnssRequest()V

    :cond_0
    return-void
.end method

.method public synthetic newListenInstance(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/support/dispatch/ListenerWrapper;
    .locals 0

    .line 1
    check-cast p1, Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/amap/location/signal/c/a/a;->a(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/support/dispatch/ListenerWrapper;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public declared-synchronized onListenChanged()V
    .locals 15

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/signal/c/a/a;->d()V

    .line 5
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/Dispatcher;->getSize()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 15
    const-wide v4, 0x7fffffffffffffffL

    .line 20
    if-lez v0, :cond_a

    .line 22
    iget-boolean v0, p0, Lcom/amap/location/support/dispatch/Dispatcher;->mHasStart:Z

    .line 24
    const/4 v6, 0x1

    .line 25
    if-eqz v0, :cond_1

    .line 27
    iget-boolean v0, p0, Lcom/amap/location/signal/c/a/a;->h:Z

    .line 29
    if-eqz v0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 35
    :goto_1
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/Dispatcher;->getListeners()Ljava/util/Set;

    .line 38
    move-result-object v7

    .line 39
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v7

    .line 43
    move-wide v10, v2

    .line 44
    move-wide v8, v4

    .line 45
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v12

    .line 49
    if-eqz v12, :cond_2

    .line 51
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v12

    .line 55
    check-cast v12, Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 57
    invoke-virtual {v12}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getMinTime()J

    .line 60
    move-result-wide v13

    .line 61
    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 64
    move-result-wide v8

    .line 65
    invoke-virtual {v12}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getMinDistance()D

    .line 68
    move-result-wide v13

    .line 69
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->min(DD)D

    .line 72
    move-result-wide v10

    .line 73
    invoke-virtual {v12}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->isFilterMock()Z

    .line 76
    move-result v12

    .line 77
    or-int/2addr v1, v12

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    iget-wide v12, p0, Lcom/amap/location/signal/c/a/a;->c:J

    .line 81
    cmp-long v7, v12, v8

    .line 83
    if-nez v7, :cond_4

    .line 85
    iget-wide v12, p0, Lcom/amap/location/signal/c/a/a;->d:D

    .line 87
    cmpl-double v7, v12, v10

    .line 89
    if-eqz v7, :cond_3

    .line 91
    goto :goto_3

    .line 92
    :cond_3
    move v6, v0

    .line 93
    goto :goto_4

    .line 94
    :cond_4
    :goto_3
    iput-wide v8, p0, Lcom/amap/location/signal/c/a/a;->c:J

    .line 96
    iput-wide v10, p0, Lcom/amap/location/signal/c/a/a;->d:D

    .line 98
    :goto_4
    iget-object v0, p0, Lcom/amap/location/signal/c/a/a;->i:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 100
    invoke-virtual {v0, v1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->setFilterMock(Z)V

    .line 103
    iget-object v0, p0, Lcom/amap/location/signal/c/a/a;->i:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 105
    iget-wide v7, p0, Lcom/amap/location/signal/c/a/a;->d:D

    .line 107
    invoke-virtual {v0, v7, v8}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->setMinDistance(D)V

    .line 110
    iget-object v0, p0, Lcom/amap/location/signal/c/a/a;->i:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 112
    iget-wide v7, p0, Lcom/amap/location/signal/c/a/a;->c:J

    .line 114
    invoke-virtual {v0, v7, v8}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->setMinTime(J)V

    .line 117
    if-eqz v6, :cond_c

    .line 119
    iget-boolean v0, p0, Lcom/amap/location/support/dispatch/Dispatcher;->mHasStart:Z

    .line 121
    if-eqz v0, :cond_5

    .line 123
    invoke-direct {p0}, Lcom/amap/location/signal/c/a/a;->c()V

    .line 126
    :cond_5
    const-string v0, "gps"

    .line 128
    iget-object v1, p0, Lcom/amap/location/signal/c/a/a;->b:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_6

    .line 136
    invoke-static {}, Lcom/amap/location/signal/e/c;->a()Lcom/amap/location/signal/e/c;

    .line 139
    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/amap/location/signal/c/a/a;->i:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 142
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v0, v1, v6}, Lcom/amap/location/signal/e/c;->requestGnssUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 149
    move-result v0

    .line 150
    iput-boolean v0, p0, Lcom/amap/location/support/dispatch/Dispatcher;->mHasStart:Z

    .line 152
    goto :goto_5

    .line 153
    :cond_6
    invoke-static {}, Lcom/amap/location/signal/e/c;->a()Lcom/amap/location/signal/e/c;

    .line 156
    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/amap/location/signal/c/a/a;->i:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 159
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {v0, v1, v6}, Lcom/amap/location/signal/e/c;->requestPassiveUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 166
    move-result v0

    .line 167
    iput-boolean v0, p0, Lcom/amap/location/support/dispatch/Dispatcher;->mHasStart:Z

    .line 169
    :goto_5
    iget-object v0, p0, Lcom/amap/location/signal/c/a/a;->f:Lcom/amap/location/signal/c/a/a$b;

    .line 171
    if-eqz v0, :cond_7

    .line 173
    iget-boolean v0, p0, Lcom/amap/location/support/dispatch/Dispatcher;->mHasStart:Z

    .line 175
    if-eqz v0, :cond_7

    .line 177
    iget-object v0, p0, Lcom/amap/location/signal/c/a/a;->f:Lcom/amap/location/signal/c/a/a$b;

    .line 179
    invoke-virtual {v0}, Lcom/amap/location/signal/c/a/a$b;->a()V

    .line 182
    :cond_7
    iget-object v0, p0, Lcom/amap/location/signal/c/a/a;->g:Lcom/amap/location/signal/c/a/a$a;

    .line 184
    if-eqz v0, :cond_8

    .line 186
    iget-boolean v0, p0, Lcom/amap/location/support/dispatch/Dispatcher;->mHasStart:Z

    .line 188
    if-eqz v0, :cond_8

    .line 190
    iget-object v0, p0, Lcom/amap/location/signal/c/a/a;->g:Lcom/amap/location/signal/c/a/a$a;

    .line 192
    invoke-static {v0}, Lcom/amap/location/support/app/MessageCenter;->addStatListener(Lcom/amap/location/support/app/MessageCenterListener;)V

    .line 195
    :cond_8
    iget-boolean v0, p0, Lcom/amap/location/support/dispatch/Dispatcher;->mHasStart:Z

    .line 197
    if-nez v0, :cond_9

    .line 199
    iput-wide v4, p0, Lcom/amap/location/signal/c/a/a;->c:J

    .line 201
    iput-wide v2, p0, Lcom/amap/location/signal/c/a/a;->d:D

    .line 203
    goto :goto_6

    .line 204
    :cond_9
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 207
    move-result-object v0

    .line 208
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 211
    move-result-object v0

    .line 212
    invoke-interface {v0}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isLocationDim()Z

    .line 215
    move-result v0

    .line 216
    iput-boolean v0, p0, Lcom/amap/location/signal/c/a/a;->h:Z

    .line 218
    goto :goto_6

    .line 219
    :cond_a
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/Dispatcher;->getSize()I

    .line 222
    move-result v0

    .line 223
    if-nez v0, :cond_c

    .line 225
    iget-boolean v0, p0, Lcom/amap/location/support/dispatch/Dispatcher;->mHasStart:Z

    .line 227
    if-eqz v0, :cond_c

    .line 229
    iput-boolean v1, p0, Lcom/amap/location/support/dispatch/Dispatcher;->mHasStart:Z

    .line 231
    iput-wide v4, p0, Lcom/amap/location/signal/c/a/a;->c:J

    .line 233
    iput-wide v2, p0, Lcom/amap/location/signal/c/a/a;->d:D

    .line 235
    invoke-direct {p0}, Lcom/amap/location/signal/c/a/a;->c()V

    .line 238
    iget-object v0, p0, Lcom/amap/location/signal/c/a/a;->f:Lcom/amap/location/signal/c/a/a$b;

    .line 240
    if-eqz v0, :cond_b

    .line 242
    invoke-virtual {v0}, Lcom/amap/location/signal/c/a/a$b;->b()V

    .line 245
    :cond_b
    iget-object v0, p0, Lcom/amap/location/signal/c/a/a;->g:Lcom/amap/location/signal/c/a/a$a;

    .line 247
    if-eqz v0, :cond_c

    .line 249
    invoke-static {v0}, Lcom/amap/location/support/app/MessageCenter;->removeStatListener(Lcom/amap/location/support/app/MessageCenterListener;)V

    .line 252
    :cond_c
    :goto_6
    invoke-static {}, Lcom/amap/location/signal/e/c;->a()Lcom/amap/location/signal/e/c;

    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lcom/amap/location/signal/e/c;->onListenChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    .line 260
    return-void

    .line 261
    :catchall_0
    move-exception v0

    .line 262
    monitor-exit p0

    .line 263
    throw v0
.end method
