.class Lcom/amap/location/sdk/e/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/e/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/e/a/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/e/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/e/a/a$2;->a:Lcom/amap/location/sdk/e/a/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/sdk/e/a/a$2;->a:Lcom/amap/location/sdk/e/a/a;

    .line 3
    invoke-static {v0}, Lcom/amap/location/sdk/e/a/a;->d(Lcom/amap/location/sdk/e/a/a;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/amap/location/sdk/e/a/a$2;->a:Lcom/amap/location/sdk/e/a/a;

    .line 11
    invoke-static {v0}, Lcom/amap/location/sdk/e/a/a;->e(Lcom/amap/location/sdk/e/a/a;)V

    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/amap/location/sdk/e/a/a$2;->a:Lcom/amap/location/sdk/e/a/a;

    .line 17
    invoke-static {v0}, Lcom/amap/location/sdk/e/a/a;->f(Lcom/amap/location/sdk/e/a/a;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/amap/location/sdk/e/a/a;->a(Lcom/amap/location/sdk/e/a/a;Ljava/lang/String;)[Ljava/io/File;

    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 27
    array-length v1, v0

    .line 28
    if-lez v1, :cond_2

    .line 30
    iget-object v1, p0, Lcom/amap/location/sdk/e/a/a$2;->a:Lcom/amap/location/sdk/e/a/a;

    .line 32
    invoke-static {v1}, Lcom/amap/location/sdk/e/a/a;->g(Lcom/amap/location/sdk/e/a/a;)Ljava/util/ArrayDeque;

    .line 35
    move-result-object v1

    .line 36
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    :try_start_1
    array-length v3, v0

    .line 39
    if-ge v2, v3, :cond_1

    .line 41
    iget-object v3, p0, Lcom/amap/location/sdk/e/a/a$2;->a:Lcom/amap/location/sdk/e/a/a;

    .line 43
    invoke-static {v3}, Lcom/amap/location/sdk/e/a/a;->g(Lcom/amap/location/sdk/e/a/a;)Ljava/util/ArrayDeque;

    .line 46
    move-result-object v3

    .line 47
    aget-object v4, v0, v2

    .line 49
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    monitor-exit v1

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    throw v0

    .line 60
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amap/location/sdk/e/a/a$2;->a:Lcom/amap/location/sdk/e/a/a;

    .line 62
    invoke-static {}, Lcom/amap/location/sdk/e/a/a$b;->a()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/amap/location/sdk/e/a/a;->b(Lcom/amap/location/sdk/e/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/amap/location/sdk/e/a/a$2;->a:Lcom/amap/location/sdk/e/a/a;

    .line 71
    invoke-static {v0}, Lcom/amap/location/sdk/e/a/a;->h(Lcom/amap/location/sdk/e/a/a;)Ljava/io/File;

    .line 74
    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Lcom/amap/location/sdk/e/a/a;->a(Lcom/amap/location/sdk/e/a/a;Ljava/io/File;)Ljava/io/File;

    .line 78
    iget-object v0, p0, Lcom/amap/location/sdk/e/a/a$2;->a:Lcom/amap/location/sdk/e/a/a;

    .line 80
    invoke-static {v0}, Lcom/amap/location/sdk/e/a/a;->i(Lcom/amap/location/sdk/e/a/a;)Ljava/io/File;

    .line 83
    move-result-object v0

    .line 84
    if-nez v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/amap/location/sdk/e/a/a$2;->a:Lcom/amap/location/sdk/e/a/a;

    .line 88
    invoke-static {v0}, Lcom/amap/location/sdk/e/a/a;->e(Lcom/amap/location/sdk/e/a/a;)V

    .line 91
    return-void

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/amap/location/sdk/e/a/a$2;->a:Lcom/amap/location/sdk/e/a/a;

    .line 94
    const/4 v1, 0x1

    .line 95
    invoke-static {v0, v1}, Lcom/amap/location/sdk/e/a/a;->a(Lcom/amap/location/sdk/e/a/a;Z)Z

    .line 98
    iget-object v0, p0, Lcom/amap/location/sdk/e/a/a$2;->a:Lcom/amap/location/sdk/e/a/a;

    .line 100
    invoke-static {v0}, Lcom/amap/location/sdk/e/a/a;->c(Lcom/amap/location/sdk/e/a/a;)Landroid/os/Handler;

    .line 103
    move-result-object v0

    .line 104
    const/4 v1, 0x2

    .line 105
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 108
    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/amap/location/sdk/e/a/a$2;->a:Lcom/amap/location/sdk/e/a/a;

    .line 111
    invoke-static {v1}, Lcom/amap/location/sdk/e/a/a;->c(Lcom/amap/location/sdk/e/a/a;)Landroid/os/Handler;

    .line 114
    move-result-object v1

    .line 115
    const-wide/16 v2, 0x4e20

    .line 117
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    :catch_0
    return-void
.end method
