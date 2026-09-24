.class Lcom/amap/location/signal/impl/a/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/signal/impl/a/b$a;->onCellLocationChanged(Landroid/telephony/CellLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/telephony/CellLocation;

.field final synthetic b:Lcom/amap/location/signal/impl/a/b$a;


# direct methods
.method public constructor <init>(Lcom/amap/location/signal/impl/a/b$a;Landroid/telephony/CellLocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/b$a$1;->b:Lcom/amap/location/signal/impl/a/b$a;

    .line 3
    iput-object p2, p0, Lcom/amap/location/signal/impl/a/b$a$1;->a:Landroid/telephony/CellLocation;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const-string v0, ""

    .line 3
    const-string v1, "syscellprd"

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/b$a$1;->b:Lcom/amap/location/signal/impl/a/b$a;

    .line 7
    iget-object v2, v2, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    .line 9
    invoke-static {v2}, Lcom/amap/location/signal/impl/a/b;->c(Lcom/amap/location/signal/impl/a/b;)Landroid/telephony/TelephonyManager;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception v2

    .line 19
    invoke-static {v1, v0, v2}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    goto :goto_0

    .line 23
    :catch_1
    move-exception v2

    .line 24
    invoke-static {v1, v0, v2}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    :goto_0
    const/4 v0, 0x0

    .line 28
    :goto_1
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/b$a$1;->b:Lcom/amap/location/signal/impl/a/b$a;

    .line 30
    iget-object v1, v1, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    .line 32
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/b$a$1;->a:Landroid/telephony/CellLocation;

    .line 34
    invoke-static {v1, v0, v2}, Lcom/amap/location/signal/impl/a/b;->a(Lcom/amap/location/signal/impl/a/b;Ljava/util/List;Landroid/telephony/CellLocation;)Ljava/util/List;

    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    move-result v1

    .line 44
    if-lez v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/b$a$1;->b:Lcom/amap/location/signal/impl/a/b$a;

    .line 48
    iget-object v1, v1, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    .line 50
    invoke-static {v1}, Lcom/amap/location/signal/impl/a/b;->b(Lcom/amap/location/signal/impl/a/b;)Lcom/amap/location/support/signal/cell/AmapCellListener;

    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/b$a$1;->b:Lcom/amap/location/signal/impl/a/b$a;

    .line 58
    iget-object v1, v1, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    .line 60
    invoke-static {v1}, Lcom/amap/location/signal/impl/a/b;->b(Lcom/amap/location/signal/impl/a/b;)Lcom/amap/location/support/signal/cell/AmapCellListener;

    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v1, v0}, Lcom/amap/location/support/signal/cell/AmapCellListener;->onCellInfoChanged(Ljava/util/List;)V

    .line 67
    const/4 v1, 0x1

    .line 68
    new-array v1, v1, [Ljava/lang/Object;

    .line 70
    const/4 v2, 0x0

    .line 71
    aput-object v0, v1, v2

    .line 73
    const-wide/16 v2, 0x2

    .line 75
    invoke-static {v2, v3, v1}, Lcom/amap/location/support/icecream/IcecreamHostUtils;->sendSignal(J[Ljava/lang/Object;)V

    .line 78
    :cond_0
    return-void
.end method
