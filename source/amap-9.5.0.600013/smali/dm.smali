.class public Ldm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldm$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ldm;->a:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Ldm;->b:Ljava/lang/Object;

    .line 14
    iput p1, p0, Ldm;->c:I

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    iput-object v0, p0, Ldm;->a:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldm;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ldm;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method public b(I)Ldm$a;
    .locals 10

    .line 1
    iget-object v0, p0, Ldm;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    :try_start_0
    iget v4, p0, Ldm;->c:I

    .line 9
    if-ge v3, v4, :cond_6

    .line 11
    iget-object v4, p0, Ldm;->a:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_0

    .line 19
    iget-object v4, p0, Ldm;->a:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Ldm$a;

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    new-instance v4, Ldm$a;

    .line 30
    invoke-direct {v4}, Ldm$a;-><init>()V

    .line 33
    iget-object v5, p0, Ldm;->a:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :goto_1
    if-eqz v4, :cond_5

    .line 40
    invoke-static {v4}, Ldm$a;->a(Ldm$a;)I

    .line 43
    move-result v5

    .line 44
    if-ne v5, p1, :cond_5

    .line 46
    const/4 v5, 0x1

    .line 47
    if-ne p1, v5, :cond_4

    .line 49
    invoke-static {v4}, Ldm$a;->c(Ldm$a;)J

    .line 52
    move-result-wide v5

    .line 53
    const-wide/16 v7, 0x0

    .line 55
    cmp-long v9, v5, v7

    .line 57
    if-nez v9, :cond_1

    .line 59
    invoke-static {v4, v1}, Ldm$a;->b(Ldm$a;I)I

    .line 62
    goto :goto_3

    .line 63
    :cond_1
    if-nez v2, :cond_2

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    invoke-static {v2}, Ldm$a;->c(Ldm$a;)J

    .line 69
    move-result-wide v5

    .line 70
    invoke-static {v4}, Ldm$a;->c(Ldm$a;)J

    .line 73
    move-result-wide v7

    .line 74
    cmp-long v9, v5, v7

    .line 76
    if-gez v9, :cond_3

    .line 78
    invoke-static {v2, v1}, Ldm$a;->b(Ldm$a;I)I

    .line 81
    :goto_2
    move-object v2, v4

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    invoke-static {v4, v1}, Ldm$a;->b(Ldm$a;I)I

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    move-object v2, v4

    .line 88
    goto :goto_4

    .line 89
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_6
    :goto_4
    monitor-exit v0

    .line 93
    return-object v2

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p1
.end method
