.class Lcom/amap/location/fusion/util/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/util/g;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/util/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/util/g$a;->a:Lcom/amap/location/fusion/util/g;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/LinkedList;

    .line 8
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amap/location/fusion/util/g$a;->b:Ljava/util/LinkedList;

    .line 13
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/util/g$a;->b:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xa

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/amap/location/fusion/util/g$a;->b:Ljava/util/LinkedList;

    .line 13
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 16
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 23
    move-result-wide v2

    .line 24
    iget-object v0, p0, Lcom/amap/location/fusion/util/g$a;->b:Ljava/util/LinkedList;

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/amap/location/fusion/util/g$a;->b:Ljava/util/LinkedList;

    .line 35
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 38
    move-result v0

    .line 39
    if-ne v0, v1, :cond_1

    .line 41
    iget-object v0, p0, Lcom/amap/location/fusion/util/g$a;->b:Ljava/util/LinkedList;

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Long;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 53
    move-result-wide v0

    .line 54
    sub-long/2addr v2, v0

    .line 55
    const-wide/32 v0, 0xea60

    .line 58
    cmp-long v4, v2, v0

    .line 60
    if-gez v4, :cond_1

    .line 62
    const-string v0, "locJumpStatisticsUtil"

    .line 64
    const-string v1, "jump frequently"

    .line 66
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const v0, 0x1895e

    .line 72
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 75
    :cond_1
    return-void
.end method
