.class public Lt70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls70;


# instance fields
.field public a:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lt70;->a:Landroid/util/SparseArray;

    .line 11
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lec;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lt70;->a:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-gtz v0, :cond_0

    .line 11
    const-string p1, "[NewProtocol] ProtocolContextImpl"

    .line 13
    const-string v0, "dispatchAuotoMessage no has connection"

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_1
    iget-object v0, p0, Lt70;->a:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 27
    move-result v0

    .line 28
    :goto_0
    if-ge v1, v0, :cond_1

    .line 30
    iget-object v2, p0, Lt70;->a:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Loc;

    .line 38
    iget-object v3, p0, Lt70;->a:Landroid/util/SparseArray;

    .line 40
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 43
    invoke-virtual {v2, p1}, Loc;->c(Lec;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit p0

    .line 53
    throw p1
.end method

.method public declared-synchronized b(I)Loc;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lt70;->a:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Loc;

    .line 10
    if-nez v0, :cond_4

    .line 12
    const/16 v1, 0x6f

    .line 14
    if-ne v1, p1, :cond_0

    .line 16
    new-instance v0, Lk2;

    .line 18
    invoke-direct {v0}, Lk2;-><init>()V

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v1, 0xde

    .line 24
    if-ne v1, p1, :cond_1

    .line 26
    new-instance v0, Lg2;

    .line 28
    invoke-direct {v0}, Lg2;-><init>()V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 v1, 0x14d

    .line 34
    if-ne v1, p1, :cond_2

    .line 36
    new-instance v0, Lfd;

    .line 38
    invoke-direct {v0}, Lfd;-><init>()V

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/16 v1, 0x1bc

    .line 44
    if-ne v1, p1, :cond_3

    .line 46
    new-instance v0, Lac0;

    .line 48
    invoke-direct {v0}, Lac0;-><init>()V

    .line 51
    :cond_3
    :goto_0
    iget-object v1, p0, Lt70;->a:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    const-string v1, "[NewProtocol] ProtocolContextImpl"

    .line 58
    const-string v2, "getProtocolConnect type:{?} connection:{?}"

    .line 60
    const/4 v3, 0x2

    .line 61
    new-array v3, v3, [Ljava/lang/Object;

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object p1

    .line 67
    const/4 v4, 0x0

    .line 68
    aput-object p1, v3, v4

    .line 70
    const/4 p1, 0x1

    .line 71
    aput-object v0, v3, p1

    .line 73
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_4
    monitor-exit p0

    .line 77
    return-object v0

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    monitor-exit p0

    .line 80
    throw p1
.end method

.method public c(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Ljava/lang/reflect/Type;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lt70;->a:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 9
    move-result v2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v1, v3

    .line 17
    const-string v2, "[NewProtocol] ProtocolContextImpl"

    .line 19
    const-string v4, "[getSystemData] mConnectionSpArray size:{?}"

    .line 21
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v1, p0, Lt70;->a:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 29
    move-result v1

    .line 30
    const/4 v4, 0x0

    .line 31
    if-gtz v1, :cond_0

    .line 33
    const-string p1, "dispatchAuotoMessage no has connection"

    .line 35
    new-array p2, v3, [Ljava/lang/Object;

    .line 37
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    return-object v4

    .line 41
    :cond_0
    iget-object v1, p0, Lt70;->a:Landroid/util/SparseArray;

    .line 43
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 46
    move-result v1

    .line 47
    const/4 v5, 0x0

    .line 48
    :goto_0
    if-ge v5, v1, :cond_3

    .line 50
    iget-object v6, p0, Lt70;->a:Landroid/util/SparseArray;

    .line 52
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Loc;

    .line 58
    iget-object v7, p0, Lt70;->a:Landroid/util/SparseArray;

    .line 60
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 63
    move-result v7

    .line 64
    const/4 v8, 0x3

    .line 65
    new-array v8, v8, [Ljava/lang/Object;

    .line 67
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v9

    .line 71
    aput-object v9, v8, v3

    .line 73
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v7

    .line 77
    aput-object v7, v8, v0

    .line 79
    const/4 v7, 0x2

    .line 80
    aput-object v6, v8, v7

    .line 82
    const-string v7, "[getSystemData] index:{?};key:{?};value:{?}"

    .line 84
    invoke-static {v2, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v6, p1, p2}, Loc;->i(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Ljava/lang/reflect/Type;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 90
    move-result-object v6

    .line 91
    new-instance v7, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    const-string v8, "getSystemData is null "

    .line 98
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    if-nez v6, :cond_1

    .line 103
    const/4 v8, 0x1

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    const/4 v8, 0x0

    .line 106
    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v7

    .line 113
    new-array v8, v3, [Ljava/lang/Object;

    .line 115
    invoke-static {v2, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    if-eqz v6, :cond_2

    .line 120
    return-object v6

    .line 121
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 123
    goto :goto_0

    .line 124
    :cond_3
    return-object v4
.end method

.method public declared-synchronized d(Loc;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lt70;->a:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 9
    move-result p1

    .line 10
    const/4 v0, -0x1

    .line 11
    if-eq p1, v0, :cond_0

    .line 13
    iget-object v0, p0, Lt70;->a:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1

    .line 22
    :cond_0
    :goto_0
    monitor-exit p0

    .line 23
    return-void
.end method
