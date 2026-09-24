.class public Lkk0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static h:Lkk0;

.field public static volatile i:Ljava/lang/Object;


# instance fields
.field public a:Lag;

.field public b:Ljava/util/ArrayList;

.field public c:Ljava/util/ArrayList;

.field public d:Ljk0;

.field public e:Ljk0;

.field public f:Ljava/lang/String;

.field public g:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lkk0;->i:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lkk0;->a:Lag;

    .line 7
    iput-object v0, p0, Lkk0;->b:Ljava/util/ArrayList;

    .line 9
    iput-object v0, p0, Lkk0;->c:Ljava/util/ArrayList;

    .line 11
    iput-object v0, p0, Lkk0;->d:Ljk0;

    .line 13
    iput-object v0, p0, Lkk0;->e:Ljk0;

    .line 15
    const-string v1, "UpdateVerInfo.dat"

    .line 17
    iput-object v1, p0, Lkk0;->f:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lkk0;->g:Landroid/content/Context;

    .line 21
    if-eqz p1, :cond_0

    .line 23
    iput-object p1, p0, Lkk0;->g:Landroid/content/Context;

    .line 25
    invoke-static {}, Lug;->b()Lug;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p1}, Lug;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 32
    move-result-object p1

    .line 33
    const-string v0, ""

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_0

    .line 46
    new-instance v0, Lag;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object p1, p0, Lkk0;->f:Ljava/lang/String;

    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-direct {v0, p1}, Lag;-><init>(Ljava/lang/String;)V

    .line 73
    iput-object v0, p0, Lkk0;->a:Lag;

    .line 75
    invoke-virtual {p0}, Lkk0;->d()V

    .line 78
    :cond_0
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lkk0;
    .locals 3

    .line 1
    const-class v0, Lkk0;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lkk0;->h:Lkk0;

    .line 6
    if-nez v1, :cond_1

    .line 8
    sget-object v1, Lkk0;->i:Ljava/lang/Object;

    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    sget-object v2, Lkk0;->h:Lkk0;

    .line 13
    if-nez v2, :cond_0

    .line 15
    new-instance v2, Lkk0;

    .line 17
    invoke-direct {v2, p0}, Lkk0;-><init>(Landroid/content/Context;)V

    .line 20
    sput-object v2, Lkk0;->h:Lkk0;

    .line 22
    :cond_0
    monitor-exit v1

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    throw p0

    .line 27
    :cond_1
    :goto_0
    sget-object p0, Lkk0;->h:Lkk0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    monitor-exit v0

    .line 30
    return-object p0

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    monitor-exit v0

    .line 33
    throw p0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lkk0;->b:Ljava/util/ArrayList;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 11
    iget-object v0, p0, Lkk0;->a:Lag;

    .line 13
    iget-object v1, p0, Lkk0;->b:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0, v1}, Lag;->g(Ljava/util/ArrayList;)V

    .line 18
    iget-object v0, p0, Lkk0;->a:Lag;

    .line 20
    invoke-virtual {v0}, Lag;->b()V

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lkk0;->b:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkk0;->a:Lag;

    .line 3
    invoke-virtual {v0}, Lag;->c()Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lkk0;->b:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Lkk0;->f()V

    .line 12
    return-void
.end method

.method public e(Ljava/util/ArrayList;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lkk0;->b:Ljava/util/ArrayList;

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkk0;->b:Ljava/util/ArrayList;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    :goto_0
    if-lez v0, :cond_1

    .line 11
    iget-object v1, p0, Lkk0;->b:Ljava/util/ArrayList;

    .line 13
    add-int/lit8 v2, v0, -0x1

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljk0;

    .line 21
    iget-boolean v1, v1, Ljk0;->k:Z

    .line 23
    if-eqz v1, :cond_0

    .line 25
    iget-object v0, p0, Lkk0;->b:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljk0;

    .line 33
    iput-object v0, p0, Lkk0;->d:Ljk0;

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    return-void
.end method
