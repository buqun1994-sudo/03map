.class public Lz1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile c:Lz1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lz1;->a:Landroid/content/Context;

    .line 10
    invoke-static {p1}, Lbg;->a(Landroid/content/Context;)Lbg;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lbg;->b()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string v0, "test"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p1

    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v1, 0x1

    .line 26
    const-string v2, "AdiuManager"

    .line 28
    const-string v3, "amap_device_adiu"

    .line 30
    if-eqz p1, :cond_0

    .line 32
    invoke-static {v3}, Lqc0;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lz1;->b:Ljava/lang/String;

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 40
    aput-object p1, v1, v0

    .line 42
    const-string p1, "networkDbug true , mKey:{?}"

    .line 44
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {v3}, Lqc0;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lz1;->b:Ljava/lang/String;

    .line 54
    new-array v1, v1, [Ljava/lang/Object;

    .line 56
    aput-object p1, v1, v0

    .line 58
    const-string p1, "networkDbug false , mKey:{?}"

    .line 60
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;)Lz1;
    .locals 2

    .line 1
    sget-object v0, Lz1;->c:Lz1;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lz1;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lz1;->c:Lz1;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lz1;

    .line 14
    invoke-direct {v1, p0}, Lz1;-><init>(Landroid/content/Context;)V

    .line 17
    sput-object v1, Lz1;->c:Lz1;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lz1;->c:Lz1;

    .line 26
    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lz1;->a:Landroid/content/Context;

    .line 4
    iget-object v1, p0, Lz1;->b:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1}, Ly1;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "AdiuManager"

    .line 12
    const-string v2, "acquireAdiu adius:{?}"

    .line 14
    const/4 v3, 0x1

    .line 15
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    if-nez v0, :cond_0

    .line 19
    const-string v4, "is null "

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object v4

    .line 26
    :goto_0
    const/4 v5, 0x0

    .line 27
    aput-object v4, v3, v5

    .line 29
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    if-eqz v0, :cond_1

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    move-result v1

    .line 38
    if-lez v1, :cond_1

    .line 40
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/String;

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-nez v1, :cond_2

    .line 52
    monitor-exit p0

    .line 53
    return-object v0

    .line 54
    :cond_1
    :try_start_1
    iget-object v0, p0, Lz1;->a:Landroid/content/Context;

    .line 56
    const-string v1, "amap_device_adiu"

    .line 58
    invoke-static {v1}, Lqc0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Ly1;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_2

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 71
    move-result v1

    .line 72
    if-lez v1, :cond_2

    .line 74
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/String;

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    if-nez v1, :cond_2

    .line 86
    monitor-exit p0

    .line 87
    return-object v0

    .line 88
    :cond_2
    monitor-exit p0

    .line 89
    const/4 v0, 0x0

    .line 90
    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    monitor-exit p0

    .line 93
    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    monitor-exit p0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    :try_start_1
    iget-object v0, p0, Lz1;->a:Landroid/content/Context;

    .line 13
    iget-object v1, p0, Lz1;->b:Ljava/lang/String;

    .line 15
    invoke-static {v0, v1, p1}, Ly1;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0

    .line 23
    throw p1
.end method
