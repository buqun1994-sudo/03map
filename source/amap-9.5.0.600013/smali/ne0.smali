.class public Lne0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lne0$b;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Lbf;

.field public f:Lbm;

.field public g:Lv90;

.field public h:Laj0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lne0;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lne0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lne0;-><init>()V

    return-void
.end method

.method public static a()Lne0;
    .locals 1

    .line 1
    sget-object v0, Lne0$b;->a:Lne0;

    .line 3
    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->t()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Lio/kvh/media/amr/AmrDecoder;->init()J

    .line 10
    :cond_0
    new-instance v0, Lv90;

    .line 12
    invoke-direct {v0}, Lv90;-><init>()V

    .line 15
    iput-object v0, p0, Lne0;->g:Lv90;

    .line 17
    new-instance v0, Lbf;

    .line 19
    invoke-direct {v0}, Lbf;-><init>()V

    .line 22
    iput-object v0, p0, Lne0;->e:Lbf;

    .line 24
    iget v1, p0, Lne0;->d:I

    .line 26
    invoke-virtual {v0, v1}, Lbf;->c(I)Z

    .line 29
    new-instance v0, Lbm;

    .line 31
    invoke-direct {v0}, Lbm;-><init>()V

    .line 34
    iput-object v0, p0, Lne0;->f:Lbm;

    .line 36
    new-instance v0, Laj0;

    .line 38
    invoke-direct {v0}, Laj0;-><init>()V

    .line 41
    iput-object v0, p0, Lne0;->h:Laj0;

    .line 43
    iget-object v0, p0, Lne0;->g:Lv90;

    .line 45
    iget-object v1, p0, Lne0;->e:Lbf;

    .line 47
    invoke-virtual {v0, v1}, Lv90;->a(Lif0;)V

    .line 50
    iget-object v0, p0, Lne0;->e:Lbf;

    .line 52
    iget-object v1, p0, Lne0;->f:Lbm;

    .line 54
    invoke-virtual {v0, v1}, Lbf;->b(Lgf0;)V

    .line 57
    iget-object v0, p0, Lne0;->f:Lbm;

    .line 59
    iget-object v1, p0, Lne0;->h:Laj0;

    .line 61
    invoke-virtual {v0, v1}, Lbm;->c(Lhf0;)V

    .line 64
    return-void
.end method

.method public c(I)Z
    .locals 1

    .line 1
    iput p1, p0, Lne0;->d:I

    .line 3
    iget-object v0, p0, Lne0;->e:Lbf;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lbf;->c(I)Z

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "[AMR]SoundMan"

    .line 4
    const-string v1, "try to start"

    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-boolean v0, p0, Lne0;->a:Z

    .line 14
    if-eqz v0, :cond_0

    .line 16
    const-string p1, "[AMR]SoundMan"

    .line 18
    const-string v0, "already started"

    .line 20
    new-array v1, v2, [Ljava/lang/Object;

    .line 22
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lne0;->b:Z

    .line 29
    const/4 v1, 0x1

    .line 30
    if-nez v0, :cond_1

    .line 32
    const-string v0, "[AMR]SoundMan"

    .line 34
    const-string v3, "try init"

    .line 36
    new-array v4, v2, [Ljava/lang/Object;

    .line 38
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Lne0;->b()V

    .line 44
    iput-boolean v1, p0, Lne0;->b:Z

    .line 46
    const-string v0, "[AMR]SoundMan"

    .line 48
    const-string v3, "init succeed"

    .line 50
    new-array v4, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_1
    iput-object p1, p0, Lne0;->c:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lne0;->g:Lv90;

    .line 59
    invoke-virtual {v0, p1}, Lv90;->b(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lne0;->e:Lbf;

    .line 64
    invoke-virtual {v0, p1}, Lbf;->d(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lne0;->f:Lbm;

    .line 69
    invoke-virtual {v0, p1}, Lbm;->d(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lne0;->h:Laj0;

    .line 74
    invoke-virtual {v0, p1}, Laj0;->b(Ljava/lang/String;)V

    .line 77
    iput-boolean v1, p0, Lne0;->a:Z

    .line 79
    const-string p1, "[AMR]SoundMan"

    .line 81
    const-string v0, "start succeed"

    .line 83
    new-array v1, v2, [Ljava/lang/Object;

    .line 85
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    monitor-exit p0

    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    monitor-exit p0

    .line 92
    throw p1
.end method

.method public declared-synchronized e()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lne0;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-nez v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lne0;->a:Z

    .line 11
    iget-object v0, p0, Lne0;->g:Lv90;

    .line 13
    invoke-virtual {v0}, Lv90;->d()V

    .line 16
    iget-object v0, p0, Lne0;->e:Lbf;

    .line 18
    invoke-virtual {v0}, Lbf;->e()V

    .line 21
    iget-object v0, p0, Lne0;->f:Lbm;

    .line 23
    invoke-virtual {v0}, Lbm;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method
