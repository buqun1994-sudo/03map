.class Lcom/amap/location/signal/impl/a/b$a;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/signal/impl/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/signal/impl/a/b;


# direct methods
.method private constructor <init>(Lcom/amap/location/signal/impl/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amap/location/signal/impl/a/b;Lcom/amap/location/signal/impl/a/b$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/location/signal/impl/a/b$a;-><init>(Lcom/amap/location/signal/impl/a/b;)V

    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    .line 11
    invoke-static {v2}, Lcom/amap/location/signal/impl/a/b;->a(Lcom/amap/location/signal/impl/a/b;)J

    .line 14
    move-result-wide v2

    .line 15
    sub-long/2addr v0, v2

    .line 16
    const-wide/16 v2, 0x1f4

    .line 18
    cmp-long v4, v0, v2

    .line 20
    if-gez v4, :cond_0

    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    .line 25
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 32
    move-result-wide v1

    .line 33
    invoke-static {v0, v1, v2}, Lcom/amap/location/signal/impl/a/b;->a(Lcom/amap/location/signal/impl/a/b;J)J

    .line 36
    invoke-static {}, Lcom/amap/location/signal/impl/util/e;->a()Ljava/util/concurrent/Executor;

    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcom/amap/location/signal/impl/a/b$a$2;

    .line 42
    invoke-direct {v1, p0, p1}, Lcom/amap/location/signal/impl/a/b$a$2;-><init>(Lcom/amap/location/signal/impl/a/b$a;Ljava/util/List;)V

    .line 45
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    .line 11
    invoke-static {v2}, Lcom/amap/location/signal/impl/a/b;->a(Lcom/amap/location/signal/impl/a/b;)J

    .line 14
    move-result-wide v2

    .line 15
    sub-long/2addr v0, v2

    .line 16
    const-wide/16 v2, 0x1f4

    .line 18
    cmp-long v4, v0, v2

    .line 20
    if-gez v4, :cond_0

    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    .line 25
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 32
    move-result-wide v1

    .line 33
    invoke-static {v0, v1, v2}, Lcom/amap/location/signal/impl/a/b;->a(Lcom/amap/location/signal/impl/a/b;J)J

    .line 36
    invoke-static {}, Lcom/amap/location/signal/impl/util/e;->a()Ljava/util/concurrent/Executor;

    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcom/amap/location/signal/impl/a/b$a$1;

    .line 42
    invoke-direct {v1, p0, p1}, Lcom/amap/location/signal/impl/a/b$a$1;-><init>(Lcom/amap/location/signal/impl/a/b$a;Landroid/telephony/CellLocation;)V

    .line 45
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    .line 3
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/b;->b(Lcom/amap/location/signal/impl/a/b;)Lcom/amap/location/support/signal/cell/AmapCellListener;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    .line 11
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/b;->b(Lcom/amap/location/signal/impl/a/b;)Lcom/amap/location/support/signal/cell/AmapCellListener;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/amap/location/support/signal/cell/AmapCellListener;->onDataConnectionStateChanged()V

    .line 18
    :cond_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    .line 3
    invoke-static {v0, p1}, Lcom/amap/location/signal/impl/a/b;->a(Lcom/amap/location/signal/impl/a/b;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 6
    if-eqz p1, :cond_1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    .line 10
    invoke-static {v0}, Lcom/amap/location/signal/impl/a/b;->b(Lcom/amap/location/signal/impl/a/b;)Lcom/amap/location/support/signal/cell/AmapCellListener;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/d;->a(I)I

    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    .line 27
    move-result v1

    .line 28
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    const/16 v3, 0x1d

    .line 32
    if-ge v2, v3, :cond_0

    .line 34
    :try_start_1
    const-class v2, Landroid/telephony/SignalStrength;

    .line 36
    const-string v3, "getLteDbm"

    .line 38
    const/4 v4, 0x0

    .line 39
    new-array v5, v4, [Ljava/lang/Class;

    .line 41
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    move-result-object v2

    .line 45
    new-array v3, v4, [Ljava/lang/Object;

    .line 47
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Ljava/lang/Integer;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 56
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    :try_start_2
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 62
    :cond_0
    const/16 p1, 0x63

    .line 64
    :goto_0
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    .line 66
    invoke-static {v2}, Lcom/amap/location/signal/impl/a/b;->b(Lcom/amap/location/signal/impl/a/b;)Lcom/amap/location/support/signal/cell/AmapCellListener;

    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v2, v0, v1, p1}, Lcom/amap/location/support/signal/cell/AmapCellListener;->onSignalStrengthsChanged(III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 73
    goto :goto_1

    .line 74
    :catch_1
    move-exception p1

    .line 75
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 78
    :cond_1
    :goto_1
    return-void
.end method
