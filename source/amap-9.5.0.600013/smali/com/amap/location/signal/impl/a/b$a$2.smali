.class Lcom/amap/location/signal/impl/a/b$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/signal/impl/a/b$a;->onCellInfoChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/amap/location/signal/impl/a/b$a;


# direct methods
.method public constructor <init>(Lcom/amap/location/signal/impl/a/b$a;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/b$a$2;->b:Lcom/amap/location/signal/impl/a/b$a;

    .line 3
    iput-object p2, p0, Lcom/amap/location/signal/impl/a/b$a$2;->a:Ljava/util/List;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/b$a$2;->b:Lcom/amap/location/signal/impl/a/b$a;

    .line 3
    iget-object v0, v0, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    .line 5
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/b$a$2;->a:Ljava/util/List;

    .line 7
    invoke-static {v0, v1}, Lcom/amap/location/signal/impl/a/b;->a(Lcom/amap/location/signal/impl/a/b;Ljava/util/List;)Landroid/telephony/CellLocation;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/b$a$2;->b:Lcom/amap/location/signal/impl/a/b$a;

    .line 13
    iget-object v1, v1, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    .line 15
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/b$a$2;->a:Ljava/util/List;

    .line 17
    invoke-static {v1, v2, v0}, Lcom/amap/location/signal/impl/a/b;->a(Lcom/amap/location/signal/impl/a/b;Ljava/util/List;Landroid/telephony/CellLocation;)Ljava/util/List;

    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    move-result v1

    .line 27
    if-lez v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/b$a$2;->b:Lcom/amap/location/signal/impl/a/b$a;

    .line 31
    iget-object v1, v1, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    .line 33
    invoke-static {v1}, Lcom/amap/location/signal/impl/a/b;->b(Lcom/amap/location/signal/impl/a/b;)Lcom/amap/location/support/signal/cell/AmapCellListener;

    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/b$a$2;->b:Lcom/amap/location/signal/impl/a/b$a;

    .line 41
    iget-object v1, v1, Lcom/amap/location/signal/impl/a/b$a;->a:Lcom/amap/location/signal/impl/a/b;

    .line 43
    invoke-static {v1}, Lcom/amap/location/signal/impl/a/b;->b(Lcom/amap/location/signal/impl/a/b;)Lcom/amap/location/support/signal/cell/AmapCellListener;

    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v1, v0}, Lcom/amap/location/support/signal/cell/AmapCellListener;->onCellInfoChanged(Ljava/util/List;)V

    .line 50
    const/4 v1, 0x1

    .line 51
    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    const/4 v2, 0x0

    .line 54
    aput-object v0, v1, v2

    .line 56
    const-wide/16 v2, 0x2

    .line 58
    invoke-static {v2, v3, v1}, Lcom/amap/location/support/icecream/IcecreamHostUtils;->sendSignal(J[Ljava/lang/Object;)V

    .line 61
    :cond_0
    return-void
.end method
