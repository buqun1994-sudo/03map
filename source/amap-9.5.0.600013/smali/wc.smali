.class public abstract Lwc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Queue;

.field public static b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 6
    sput-object v0, Lwc;->a:Ljava/util/Queue;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    sput-object v0, Lwc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)V
    .locals 6

    .line 1
    sget-object v0, Lwc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 11
    const-string p0, "TAG_ADAPTER"

    .line 13
    const-string v0, " addBitmap size = {?} sInBackground:{?}"

    .line 15
    const/4 v3, 0x2

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 18
    sget-object v4, Lwc;->a:Ljava/util/Queue;

    .line 20
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 23
    move-result v4

    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v4

    .line 28
    aput-object v4, v3, v2

    .line 30
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    aput-object v2, v3, v1

    .line 34
    invoke-static {p0, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return-void

    .line 38
    :cond_0
    const-string v0, "TAG_ADAPTER"

    .line 40
    const-string v3, "addBitmap size = {?}"

    .line 42
    new-array v1, v1, [Ljava/lang/Object;

    .line 44
    sget-object v4, Lwc;->a:Ljava/util/Queue;

    .line 46
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 49
    move-result v5

    .line 50
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v5

    .line 54
    aput-object v5, v1, v2

    .line 56
    invoke-static {v0, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    if-eqz p0, :cond_3

    .line 61
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_3

    .line 67
    invoke-static {}, Lwc;->c()Z

    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 73
    const-string v0, "TAG_ADAPTER"

    .line 75
    const-string v1, "addBitmap ! isQueueFull "

    .line 77
    new-array v2, v2, [Ljava/lang/Object;

    .line 79
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-interface {v4, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const-string v0, "TAG_ADAPTER"

    .line 88
    const-string v1, "addBitmap isQueueFull"

    .line 90
    new-array v3, v2, [Ljava/lang/Object;

    .line 92
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const-class v0, Lwc;

    .line 97
    monitor-enter v0

    .line 98
    :try_start_0
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroid/graphics/Bitmap;

    .line 104
    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 109
    move-result v3

    .line 110
    if-nez v3, :cond_2

    .line 112
    const-string v3, "TAG_ADAPTER"

    .line 114
    const-string v5, "addBitmap isQueueFull tmpBitmap!=null"

    .line 116
    new-array v2, v2, [Ljava/lang/Object;

    .line 118
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 124
    :cond_2
    invoke-interface {v4, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 127
    monitor-exit v0

    .line 128
    goto :goto_0

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    throw p0

    .line 132
    :cond_3
    const-string p0, "TAG_ADAPTER"

    .line 134
    const-string v0, "addBitmap bitmap === null"

    .line 136
    new-array v1, v2, [Ljava/lang/Object;

    .line 138
    invoke-static {p0, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :goto_0
    return-void
.end method

.method public static b()V
    .locals 7

    .line 1
    sget-object v0, Lwc;->a:Ljava/util/Queue;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    sget-object v3, Lwc;->a:Ljava/util/Queue;

    .line 15
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/graphics/Bitmap;

    .line 21
    if-eqz v3, :cond_0

    .line 23
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 29
    const-string v4, "destroyBitmapQueue tmpBitmap!=null"

    .line 31
    new-array v5, v1, [Ljava/lang/Object;

    .line 33
    const-string v6, "TAG_ADAPTER"

    .line 35
    invoke-static {v6, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method

.method public static c()Z
    .locals 2

    .line 1
    sget-object v0, Lwc;->a:Ljava/util/Queue;

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-lt v0, v1, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public static d()Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    sget-object v0, Lwc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "TAG_ADAPTER"

    .line 12
    if-nez v0, :cond_0

    .line 14
    const/4 v0, 0x2

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    sget-object v5, Lwc;->a:Ljava/util/Queue;

    .line 19
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 22
    move-result v5

    .line 23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v5

    .line 27
    aput-object v5, v0, v3

    .line 29
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    aput-object v3, v0, v2

    .line 33
    const-string v2, " popBitmap size = {?} sInBackground:{?}"

    .line 35
    invoke-static {v4, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-object v1

    .line 39
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 41
    sget-object v5, Lwc;->a:Ljava/util/Queue;

    .line 43
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 46
    move-result v6

    .line 47
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v6

    .line 51
    aput-object v6, v0, v3

    .line 53
    const-string v6, "popBitmap size = {?}"

    .line 55
    invoke-static {v4, v6, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 61
    move-result v0

    .line 62
    if-le v0, v2, :cond_1

    .line 64
    const-string v0, "mGlobalBitmapQueue.size()>1"

    .line 66
    new-array v1, v3, [Ljava/lang/Object;

    .line 68
    invoke-static {v4, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/graphics/Bitmap;

    .line 77
    return-object v0

    .line 78
    :cond_1
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 81
    move-result v0

    .line 82
    if-ne v0, v2, :cond_2

    .line 84
    const-string v0, "mGlobalBitmapQueue.size() == 1"

    .line 86
    new-array v2, v3, [Ljava/lang/Object;

    .line 88
    invoke-static {v4, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-interface {v5}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/graphics/Bitmap;

    .line 97
    if-eqz v0, :cond_2

    .line 99
    const-string v1, "tmpBitmap != null"

    .line 101
    new-array v2, v3, [Ljava/lang/Object;

    .line 103
    invoke-static {v4, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    return-object v0

    .line 107
    :cond_2
    const-string v0, "return null"

    .line 109
    new-array v2, v3, [Ljava/lang/Object;

    .line 111
    invoke-static {v4, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    return-object v1
.end method
