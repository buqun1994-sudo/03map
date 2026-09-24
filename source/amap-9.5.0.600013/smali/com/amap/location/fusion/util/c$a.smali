.class Lcom/amap/location/fusion/util/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/gnss/AmapNmeaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/amap/location/fusion/util/c$a;->a:J

    .line 3
    iput-wide v0, p0, Lcom/amap/location/fusion/util/c$a;->b:J

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/location/fusion/util/c$a;->c:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/location/fusion/util/c$a;->d:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/amap/location/fusion/util/c$a;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amap/location/fusion/util/c$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amap/location/fusion/util/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p3, :cond_1

    .line 3
    const-string v0, "GSV"

    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget-wide v0, p0, Lcom/amap/location/fusion/util/c$a;->b:J

    .line 13
    cmp-long v2, p1, v0

    .line 15
    if-eqz v2, :cond_0

    .line 17
    iget-object v0, p0, Lcom/amap/location/fusion/util/c$a;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 26
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Lcom/amap/location/fusion/util/c$a;->a:J

    .line 36
    iget-object v0, p0, Lcom/amap/location/fusion/util/c$a;->c:Ljava/util/List;

    .line 38
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    iget-object v0, p0, Lcom/amap/location/fusion/util/c$a;->c:Ljava/util/List;

    .line 43
    iget-object v1, p0, Lcom/amap/location/fusion/util/c$a;->d:Ljava/util/List;

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object v0, p0, Lcom/amap/location/fusion/util/c$a;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 57
    iget-object v0, p0, Lcom/amap/location/fusion/util/c$a;->d:Ljava/util/List;

    .line 59
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    iget-object p2, p0, Lcom/amap/location/fusion/util/c$a;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 66
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 73
    throw p1

    .line 74
    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/amap/location/fusion/util/c$a;->b:J

    .line 76
    iget-object p1, p0, Lcom/amap/location/fusion/util/c$a;->d:Ljava/util/List;

    .line 78
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_1
    return-void
.end method
