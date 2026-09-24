.class public Loy$e;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Loy;


# direct methods
.method public constructor <init>(Loy;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loy$e;->a:Loy;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/16 v0, 0xf1

    .line 5
    if-ne p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Loy$e;->a:Loy;

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Loy;->t(Loy;Z)Z

    .line 13
    iget-object p1, p0, Loy$e;->a:Loy;

    .line 15
    invoke-static {p1}, Loy;->u(Loy;)Ljava/util/HashSet;

    .line 18
    move-result-object v0

    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object p1, p0, Loy$e;->a:Loy;

    .line 22
    invoke-static {p1}, Loy;->u(Loy;)Ljava/util/HashSet;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Ld00;->a(Ljava/lang/Object;)V

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    monitor-exit v0

    .line 45
    goto :goto_2

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p1

    .line 49
    :cond_1
    const/16 v0, 0xf3

    .line 51
    if-ne p1, v0, :cond_2

    .line 53
    iget-object p1, p0, Loy$e;->a:Loy;

    .line 55
    invoke-static {p1}, Loy;->s(Loy;)Z

    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_5

    .line 61
    iget-object p1, p0, Loy$e;->a:Loy;

    .line 63
    const/4 v0, 0x1

    .line 64
    invoke-static {p1, v0}, Loy;->t(Loy;Z)Z

    .line 67
    iget-object p1, p0, Loy$e;->a:Loy;

    .line 69
    invoke-static {p1, v0}, Loy;->w(Loy;I)I

    .line 72
    iget-object v1, p0, Loy$e;->a:Loy;

    .line 74
    invoke-static {v1}, Loy;->v(Loy;)I

    .line 77
    move-result v2

    .line 78
    iget-object p1, p0, Loy$e;->a:Loy;

    .line 80
    invoke-static {p1}, Loy;->x(Loy;)J

    .line 83
    move-result-wide v3

    .line 84
    iget-object p1, p0, Loy$e;->a:Loy;

    .line 86
    invoke-static {p1}, Loy;->y(Loy;)F

    .line 89
    move-result v5

    .line 90
    iget-object v6, p0, Loy$e;->a:Loy;

    .line 92
    invoke-virtual/range {v1 .. v6}, Loy;->I(IJFLcom/amap/location/support/signal/gnss/AmapLocationListener;)V

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    const/16 v0, 0xf0

    .line 98
    if-ne p1, v0, :cond_3

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const/16 v0, 0xf2

    .line 103
    if-ne p1, v0, :cond_5

    .line 105
    iget-object p1, p0, Loy$e;->a:Loy;

    .line 107
    invoke-static {p1}, Loy;->u(Loy;)Ljava/util/HashSet;

    .line 110
    move-result-object p1

    .line 111
    monitor-enter p1

    .line 112
    :try_start_1
    iget-object v0, p0, Loy$e;->a:Loy;

    .line 114
    invoke-static {v0}, Loy;->u(Loy;)Ljava/util/HashSet;

    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 121
    move-result-object v0

    .line 122
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_4

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    move-result-object v1

    .line 132
    invoke-static {v1}, Ld00;->a(Ljava/lang/Object;)V

    .line 135
    goto :goto_1

    .line 136
    :cond_4
    monitor-exit p1

    .line 137
    goto :goto_2

    .line 138
    :catchall_1
    move-exception v0

    .line 139
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    throw v0

    .line 141
    :cond_5
    :goto_2
    return-void
.end method
