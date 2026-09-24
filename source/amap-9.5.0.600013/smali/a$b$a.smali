.class public La$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La$b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La$b;


# direct methods
.method public constructor <init>(La$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, La$b$a;->a:La$b;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, La$b$a;->a:La$b;

    .line 3
    iget-object v0, v0, La$b;->f:Ljava/io/File;

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_0

    .line 17
    aget-object v5, v0, v2

    .line 19
    int-to-long v6, v3

    .line 20
    iget-object v3, p0, La$b$a;->a:La$b;

    .line 22
    invoke-static {v3, v5}, La$b;->a(La$b;Ljava/io/File;)J

    .line 25
    move-result-wide v8

    .line 26
    add-long/2addr v6, v8

    .line 27
    long-to-int v3, v6

    .line 28
    add-int/lit8 v4, v4, 0x1

    .line 30
    iget-object v6, p0, La$b$a;->a:La$b;

    .line 32
    invoke-static {v6}, La$b;->b(La$b;)Ljava/util/Map;

    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    .line 39
    move-result-wide v7

    .line 40
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    move-result-object v7

    .line 44
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, La$b$a;->a:La$b;

    .line 52
    invoke-static {v0}, La$b;->c(La$b;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 55
    move-result-object v0

    .line 56
    int-to-long v1, v3

    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 60
    iget-object v0, p0, La$b$a;->a:La$b;

    .line 62
    invoke-static {v0}, La$b;->d(La$b;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 69
    :cond_1
    return-void
.end method
