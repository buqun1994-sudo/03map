.class Lcom/amap/location/k/d/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnLooperPrepared;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/k/d/c;-><init>(Lcom/amap/location/k/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/k/a;

.field final synthetic b:Lcom/amap/location/k/d/c;


# direct methods
.method public constructor <init>(Lcom/amap/location/k/d/c;Lcom/amap/location/k/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/k/d/c$1;->b:Lcom/amap/location/k/d/c;

    .line 3
    iput-object p2, p0, Lcom/amap/location/k/d/c$1;->a:Lcom/amap/location/k/a;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAmapLooperPrepared(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/location/k/d/c$1;->b:Lcom/amap/location/k/d/c;

    .line 3
    invoke-static {v0}, Lcom/amap/location/k/d/c;->a(Lcom/amap/location/k/d/c;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/k/d/c$1;->b:Lcom/amap/location/k/d/c;

    .line 10
    new-instance v2, Lcom/amap/location/k/d/b;

    .line 12
    invoke-direct {v2}, Lcom/amap/location/k/d/b;-><init>()V

    .line 15
    invoke-static {v1, v2}, Lcom/amap/location/k/d/c;->a(Lcom/amap/location/k/d/c;Lcom/amap/location/k/d/b;)Lcom/amap/location/k/d/b;

    .line 18
    iget-object v1, p0, Lcom/amap/location/k/d/c$1;->b:Lcom/amap/location/k/d/c;

    .line 20
    invoke-static {v1, p1}, Lcom/amap/location/k/d/c;->a(Lcom/amap/location/k/d/c;Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/support/handler/AmapLooper;

    .line 23
    iget-object p1, p0, Lcom/amap/location/k/d/c$1;->b:Lcom/amap/location/k/d/c;

    .line 25
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/amap/location/k/d/c$1;->b:Lcom/amap/location/k/d/c;

    .line 31
    invoke-static {v2}, Lcom/amap/location/k/d/c;->b(Lcom/amap/location/k/d/c;)Lcom/amap/location/support/handler/AmapLooper;

    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Lcom/amap/location/k/d/c$b;

    .line 37
    iget-object v4, p0, Lcom/amap/location/k/d/c$1;->b:Lcom/amap/location/k/d/c;

    .line 39
    invoke-direct {v3, v4}, Lcom/amap/location/k/d/c$b;-><init>(Lcom/amap/location/k/d/c;)V

    .line 42
    invoke-interface {v1, v2, v3}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {p1, v1}, Lcom/amap/location/k/d/c;->a(Lcom/amap/location/k/d/c;Lcom/amap/location/support/handler/AmapHandler;)Lcom/amap/location/support/handler/AmapHandler;

    .line 49
    iget-object p1, p0, Lcom/amap/location/k/d/c$1;->b:Lcom/amap/location/k/d/c;

    .line 51
    new-instance v1, Lcom/amap/location/k/d/a;

    .line 53
    invoke-direct {v1}, Lcom/amap/location/k/d/a;-><init>()V

    .line 56
    invoke-static {p1, v1}, Lcom/amap/location/k/d/c;->a(Lcom/amap/location/k/d/c;Lcom/amap/location/k/d/a;)Lcom/amap/location/k/d/a;

    .line 59
    iget-object p1, p0, Lcom/amap/location/k/d/c$1;->b:Lcom/amap/location/k/d/c;

    .line 61
    invoke-static {p1}, Lcom/amap/location/k/d/c;->d(Lcom/amap/location/k/d/c;)Lcom/amap/location/k/d/a;

    .line 64
    move-result-object p1

    .line 65
    iget-object v1, p0, Lcom/amap/location/k/d/c$1;->b:Lcom/amap/location/k/d/c;

    .line 67
    invoke-static {v1}, Lcom/amap/location/k/d/c;->c(Lcom/amap/location/k/d/c;)Lcom/amap/location/k/d/b;

    .line 70
    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/amap/location/k/d/c$1;->a:Lcom/amap/location/k/a;

    .line 73
    iget-object v3, p0, Lcom/amap/location/k/d/c$1;->b:Lcom/amap/location/k/d/c;

    .line 75
    invoke-static {v3}, Lcom/amap/location/k/d/c;->b(Lcom/amap/location/k/d/c;)Lcom/amap/location/support/handler/AmapLooper;

    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {p1, v1, v2, v3}, Lcom/amap/location/k/d/a;->a(Lcom/amap/location/k/d/b;Lcom/amap/location/k/a;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 82
    iget-object p1, p0, Lcom/amap/location/k/d/c$1;->b:Lcom/amap/location/k/d/c;

    .line 84
    invoke-static {p1}, Lcom/amap/location/k/d/c;->e(Lcom/amap/location/k/d/c;)V

    .line 87
    iget-object p1, p0, Lcom/amap/location/k/d/c$1;->b:Lcom/amap/location/k/d/c;

    .line 89
    invoke-static {p1}, Lcom/amap/location/k/d/c;->f(Lcom/amap/location/k/d/c;)Ljava/util/ArrayList;

    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object p1

    .line 97
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_0

    .line 103
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lcom/amap/location/k/d/c$a;

    .line 109
    iget-object v2, p0, Lcom/amap/location/k/d/c$1;->b:Lcom/amap/location/k/d/c;

    .line 111
    invoke-static {v2}, Lcom/amap/location/k/d/c;->g(Lcom/amap/location/k/d/c;)Lcom/amap/location/support/handler/AmapHandler;

    .line 114
    move-result-object v2

    .line 115
    iget v3, v1, Lcom/amap/location/k/d/c$a;->a:I

    .line 117
    iget v4, v1, Lcom/amap/location/k/d/c$a;->b:I

    .line 119
    iget v5, v1, Lcom/amap/location/k/d/c$a;->c:I

    .line 121
    iget-object v1, v1, Lcom/amap/location/k/d/c$a;->d:Ljava/lang/Object;

    .line 123
    invoke-interface {v2, v3, v4, v5, v1}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(IIILjava/lang/Object;)Z

    .line 126
    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/amap/location/k/d/c$1;->b:Lcom/amap/location/k/d/c;

    .line 129
    invoke-static {p1}, Lcom/amap/location/k/d/c;->f(Lcom/amap/location/k/d/c;)Ljava/util/ArrayList;

    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 136
    monitor-exit v0

    .line 137
    return-void

    .line 138
    :catchall_0
    move-exception p1

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    throw p1
.end method
