.class Lcom/amap/location/g/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/g/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/g/h;

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
.method public constructor <init>(Lcom/amap/location/g/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/g/h$b;->a:Lcom/amap/location/g/h;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/LinkedList;

    .line 8
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amap/location/g/h$b;->b:Ljava/util/LinkedList;

    .line 13
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/amap/location/g/h$b;->b:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/amap/location/g/h$b;->b:Ljava/util/LinkedList;

    .line 12
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 15
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 22
    move-result-wide v2

    .line 23
    iget-object v0, p0, Lcom/amap/location/g/h$b;->b:Ljava/util/LinkedList;

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/amap/location/g/h$b;->b:Ljava/util/LinkedList;

    .line 34
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 37
    move-result v0

    .line 38
    if-ne v0, v1, :cond_3

    .line 40
    iget-object v0, p0, Lcom/amap/location/g/h$b;->b:Ljava/util/LinkedList;

    .line 42
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v0

    .line 46
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/Long;

    .line 58
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 61
    move-result-wide v4

    .line 62
    sub-long v4, v2, v4

    .line 64
    const-wide/32 v6, 0xea60

    .line 67
    cmp-long v1, v4, v6

    .line 69
    if-lez v1, :cond_1

    .line 71
    const/4 v0, 0x0

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/4 v0, 0x1

    .line 74
    :goto_0
    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/amap/location/g/h$b;->a:Lcom/amap/location/g/h;

    .line 78
    const-wide/16 v4, 0x2710

    .line 80
    add-long/2addr v2, v4

    .line 81
    invoke-static {v0, v2, v3}, Lcom/amap/location/g/h;->f(Lcom/amap/location/g/h;J)J

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-string v1, "enter active decelerate\uff1a"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Lcom/amap/location/g/h$b;->a:Lcom/amap/location/g/h;

    .line 96
    invoke-static {v1}, Lcom/amap/location/g/h;->r(Lcom/amap/location/g/h;)J

    .line 99
    move-result-wide v1

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    const-string v1, "nlmgr"

    .line 109
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/amap/location/g/h$b;->a:Lcom/amap/location/g/h;

    .line 114
    const v1, 0x186fc

    .line 117
    invoke-static {v0, v1}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    .line 120
    iget-object v0, p0, Lcom/amap/location/g/h$b;->a:Lcom/amap/location/g/h;

    .line 122
    invoke-static {v0}, Lcom/amap/location/g/h;->d(Lcom/amap/location/g/h;)I

    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/amap/location/g/h$b;->a:Lcom/amap/location/g/h;

    .line 130
    const v1, 0x18701

    .line 133
    invoke-static {v0, v1}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    .line 136
    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/g/h$b;->b:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 6
    return-void
.end method
