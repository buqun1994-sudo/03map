.class Lcom/amap/location/c/i/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/cell/AmapCellListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/c/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/c/i/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/c/i/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/c/i/a$2;->a:Lcom/amap/location/c/i/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/cell/AmapCell;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/location/c/i/a$2;->a:Lcom/amap/location/c/i/a;

    .line 3
    invoke-static {v0}, Lcom/amap/location/c/i/a;->d(Lcom/amap/location/c/i/a;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/amap/location/c/e/c;->a(Ljava/util/List;)V

    .line 13
    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/cell/AmapCell;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->getInstance()Lcom/amap/location/support/fpsage/AgeEstimatorManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->updateCell(Ljava/util/List;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/amap/location/c/i/a$2;->a(Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/amap/location/c/i/a$2;->a:Lcom/amap/location/c/i/a;

    .line 13
    invoke-static {v0, p1}, Lcom/amap/location/c/i/a;->a(Lcom/amap/location/c/i/a;Ljava/util/List;)Ljava/util/List;

    .line 16
    iget-object p1, p0, Lcom/amap/location/c/i/a$2;->a:Lcom/amap/location/c/i/a;

    .line 18
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 25
    move-result-wide v0

    .line 26
    invoke-static {p1, v0, v1}, Lcom/amap/location/c/i/a;->a(Lcom/amap/location/c/i/a;J)J

    .line 29
    iget-object p1, p0, Lcom/amap/location/c/i/a$2;->a:Lcom/amap/location/c/i/a;

    .line 31
    invoke-static {p1}, Lcom/amap/location/c/i/a;->a(Lcom/amap/location/c/i/a;)Lcom/amap/location/support/handler/AmapHandler;

    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_0

    .line 37
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    .line 40
    move-result p1

    .line 41
    const/16 v0, 0x1d

    .line 43
    if-lt p1, v0, :cond_0

    .line 45
    iget-object p1, p0, Lcom/amap/location/c/i/a$2;->a:Lcom/amap/location/c/i/a;

    .line 47
    invoke-static {p1}, Lcom/amap/location/c/i/a;->a(Lcom/amap/location/c/i/a;)Lcom/amap/location/support/handler/AmapHandler;

    .line 50
    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/amap/location/c/i/a$2;->a:Lcom/amap/location/c/i/a;

    .line 53
    invoke-static {v0}, Lcom/amap/location/c/i/a;->b(Lcom/amap/location/c/i/a;)Ljava/lang/Runnable;

    .line 56
    move-result-object v0

    .line 57
    invoke-interface {p1, v0}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    iget-object p1, p0, Lcom/amap/location/c/i/a$2;->a:Lcom/amap/location/c/i/a;

    .line 62
    invoke-static {p1}, Lcom/amap/location/c/i/a;->a(Lcom/amap/location/c/i/a;)Lcom/amap/location/support/handler/AmapHandler;

    .line 65
    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/amap/location/c/i/a$2;->a:Lcom/amap/location/c/i/a;

    .line 68
    invoke-static {v0}, Lcom/amap/location/c/i/a;->b(Lcom/amap/location/c/i/a;)Ljava/lang/Runnable;

    .line 71
    move-result-object v0

    .line 72
    const-wide/16 v1, 0x3a98

    .line 74
    invoke-interface {p1, v0, v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    :cond_0
    return-void
.end method

.method public onDataConnectionStateChanged()V
    .locals 0

    return-void
.end method

.method public onSignalStrengthsChanged(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/c/i/a$2;->a:Lcom/amap/location/c/i/a;

    .line 3
    invoke-static {v0}, Lcom/amap/location/c/i/a;->c(Lcom/amap/location/c/i/a;)Lcom/amap/location/c/i/a$a;

    .line 6
    move-result-object v0

    .line 7
    iput p1, v0, Lcom/amap/location/c/i/a$a;->a:I

    .line 9
    iget-object p1, p0, Lcom/amap/location/c/i/a$2;->a:Lcom/amap/location/c/i/a;

    .line 11
    invoke-static {p1}, Lcom/amap/location/c/i/a;->c(Lcom/amap/location/c/i/a;)Lcom/amap/location/c/i/a$a;

    .line 14
    move-result-object p1

    .line 15
    iput p2, p1, Lcom/amap/location/c/i/a$a;->b:I

    .line 17
    iget-object p1, p0, Lcom/amap/location/c/i/a$2;->a:Lcom/amap/location/c/i/a;

    .line 19
    invoke-static {p1}, Lcom/amap/location/c/i/a;->c(Lcom/amap/location/c/i/a;)Lcom/amap/location/c/i/a$a;

    .line 22
    move-result-object p1

    .line 23
    iput p3, p1, Lcom/amap/location/c/i/a$a;->c:I

    .line 25
    iget-object p1, p0, Lcom/amap/location/c/i/a$2;->a:Lcom/amap/location/c/i/a;

    .line 27
    invoke-virtual {p1}, Lcom/amap/location/c/i/a;->a()Ljava/util/List;

    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lcom/amap/location/c/i/a$2;->a(Ljava/util/List;)V

    .line 34
    return-void
.end method
