.class public Ldy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldy$b;,
        Ldy$c;
    }
.end annotation


# instance fields
.field public a:[J

.field public b:I

.field public c:Z

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:[J

.field public i:I

.field public j:I

.field public k:I

.field public l:Landroid/os/HandlerThread;

.field public m:Landroid/os/Handler;

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 3
    iput-object v0, p0, Ldy;->a:[J

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ldy;->e:Z

    const/16 v0, 0x78

    new-array v0, v0, [J

    .line 5
    iput-object v0, p0, Ldy;->h:[J

    .line 6
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationCollection"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldy;->l:Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8
    new-instance v0, Ldy$b;

    iget-object v1, p0, Ldy;->l:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldy$b;-><init>(Ldy;Landroid/os/Looper;)V

    iput-object v0, p0, Ldy;->m:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Ldy$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldy;-><init>()V

    return-void
.end method

.method public static synthetic a(Ldy;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Ldy;->c:Z

    .line 3
    return p1
.end method

.method public static synthetic b(Ldy;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Ldy;->e:Z

    .line 3
    return p1
.end method

.method public static synthetic c(Ldy;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldy;->l()V

    .line 4
    return-void
.end method

.method public static synthetic d(Ldy;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldy;->j()V

    .line 4
    return-void
.end method

.method public static k()Ldy;
    .locals 1

    .line 1
    sget-object v0, Ldy$c;->a:Ldy;

    .line 3
    return-object v0
.end method


# virtual methods
.method public final e()V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Ldy;->j:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget v1, p0, Ldy;->k:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 22
    iget v1, p0, Ldy;->i:I

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v1

    .line 28
    const/4 v3, 0x2

    .line 29
    aput-object v1, v0, v3

    .line 31
    const/16 v1, 0x78

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v1

    .line 37
    const/4 v3, 0x3

    .line 38
    aput-object v1, v0, v3

    .line 40
    const/4 v1, 0x4

    .line 41
    const-string v3, ""

    .line 43
    aput-object v3, v0, v1

    .line 45
    const-string v1, "[100000044][5][%d][%d][%d][%d][%s]"

    .line 47
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    const-string v1, "AUTO_GPS"

    .line 53
    const v3, 0x5f5e12c

    .line 56
    invoke-static {v1, v3, v0, v2}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 59
    return-void
.end method

.method public final f()V
    .locals 7

    .line 1
    iget v0, p0, Ldy;->i:I

    .line 3
    const/16 v1, 0x78

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    invoke-virtual {p0}, Ldy;->l()V

    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x2

    .line 12
    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Ldy;->m:Landroid/os/Handler;

    .line 16
    const-wide/32 v2, 0x1d6b4

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 22
    :cond_1
    new-instance v0, Ljava/util/Date;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    move-result-wide v2

    .line 28
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 31
    iget-object v2, p0, Ldy;->h:[J

    .line 33
    iget v3, p0, Ldy;->i:I

    .line 35
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 38
    move-result-wide v4

    .line 39
    aput-wide v4, v2, v3

    .line 41
    iget v0, p0, Ldy;->i:I

    .line 43
    if-lez v0, :cond_3

    .line 45
    iget-object v2, p0, Ldy;->h:[J

    .line 47
    aget-wide v3, v2, v0

    .line 49
    add-int/lit8 v5, v0, -0x1

    .line 51
    aget-wide v5, v2, v5

    .line 53
    sub-long/2addr v3, v5

    .line 54
    const-wide/16 v5, 0x3e8

    .line 56
    div-long/2addr v3, v5

    .line 57
    long-to-int v2, v3

    .line 58
    if-le v2, v1, :cond_2

    .line 60
    iget v1, p0, Ldy;->k:I

    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 64
    iput v1, p0, Ldy;->k:I

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    if-ne v2, v1, :cond_3

    .line 69
    iget v1, p0, Ldy;->j:I

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 73
    iput v1, p0, Ldy;->j:I

    .line 75
    iget v1, p0, Ldy;->k:I

    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 79
    iput v1, p0, Ldy;->k:I

    .line 81
    :cond_3
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 83
    iput v0, p0, Ldy;->i:I

    .line 85
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ldy;->n:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Ldy;->f:Z

    .line 8
    if-eqz v0, :cond_1

    .line 10
    iget-boolean v1, p0, Ldy;->g:Z

    .line 12
    if-eqz v1, :cond_1

    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Ldy;->n:Z

    .line 17
    iget-object v0, p0, Ldy;->m:Landroid/os/Handler;

    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-nez v0, :cond_2

    .line 26
    invoke-virtual {p0}, Ldy;->h()V

    .line 29
    :cond_2
    iget-boolean v0, p0, Ldy;->g:Z

    .line 31
    if-nez v0, :cond_3

    .line 33
    invoke-virtual {p0}, Ldy;->f()V

    .line 36
    :cond_3
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Ldy;->c:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_2

    .line 7
    iget-boolean v0, p0, Ldy;->e:Z

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iput-boolean v1, p0, Ldy;->e:Z

    .line 13
    iget v0, p0, Ldy;->d:I

    .line 15
    const/4 v1, 0x3

    .line 16
    if-ge v0, v1, :cond_0

    .line 18
    add-int/2addr v0, v2

    .line 19
    iput v0, p0, Ldy;->d:I

    .line 21
    iget-object v0, p0, Ldy;->m:Landroid/os/Handler;

    .line 23
    const-wide/32 v3, 0x927c0

    .line 26
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput-boolean v2, p0, Ldy;->f:Z

    .line 32
    :cond_1
    :goto_0
    return-void

    .line 33
    :cond_2
    iget v0, p0, Ldy;->b:I

    .line 35
    const/4 v3, 0x5

    .line 36
    if-lt v0, v3, :cond_4

    .line 38
    iput-boolean v2, p0, Ldy;->c:Z

    .line 40
    iget-object v0, p0, Ldy;->a:[J

    .line 42
    const/4 v2, 0x4

    .line 43
    aget-wide v2, v0, v2

    .line 45
    aget-wide v4, v0, v1

    .line 47
    sub-long/2addr v2, v4

    .line 48
    long-to-float v0, v2

    .line 49
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 51
    div-float/2addr v0, v2

    .line 52
    const/high16 v2, 0x40a00000    # 5.0f

    .line 54
    div-float/2addr v0, v2

    .line 55
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 57
    cmpl-float v0, v0, v2

    .line 59
    if-lez v0, :cond_3

    .line 61
    invoke-virtual {p0}, Ldy;->i()V

    .line 64
    :cond_3
    iput v1, p0, Ldy;->b:I

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    iget-object v1, p0, Ldy;->a:[J

    .line 69
    add-int/lit8 v2, v0, 0x1

    .line 71
    iput v2, p0, Ldy;->b:I

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    move-result-wide v2

    .line 77
    aput-wide v2, v1, v0

    .line 79
    :goto_1
    return-void
.end method

.method public final i()V
    .locals 5

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lzm;->f()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x6

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v0

    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v0, v1, v2

    .line 19
    iget-object v0, p0, Ldy;->a:[J

    .line 21
    aget-wide v2, v0, v2

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    move-result-object v0

    .line 27
    const/4 v2, 0x1

    .line 28
    aput-object v0, v1, v2

    .line 30
    iget-object v0, p0, Ldy;->a:[J

    .line 32
    aget-wide v3, v0, v2

    .line 34
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    move-result-object v0

    .line 38
    const/4 v3, 0x2

    .line 39
    aput-object v0, v1, v3

    .line 41
    iget-object v0, p0, Ldy;->a:[J

    .line 43
    aget-wide v3, v0, v3

    .line 45
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    move-result-object v0

    .line 49
    const/4 v3, 0x3

    .line 50
    aput-object v0, v1, v3

    .line 52
    iget-object v0, p0, Ldy;->a:[J

    .line 54
    aget-wide v3, v0, v3

    .line 56
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    move-result-object v0

    .line 60
    const/4 v3, 0x4

    .line 61
    aput-object v0, v1, v3

    .line 63
    iget-object v0, p0, Ldy;->a:[J

    .line 65
    aget-wide v3, v0, v3

    .line 67
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    move-result-object v0

    .line 71
    const/4 v3, 0x5

    .line 72
    aput-object v0, v1, v3

    .line 74
    const-string v0, "[100000045][6][%d][%d][%d][%d][%d][%d]"

    .line 76
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    const-string v1, "AUTO_GPS"

    .line 82
    const v3, 0x5f5e12d

    .line 85
    invoke-static {v1, v3, v0, v2}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 88
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldy;->l:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Ldy;->m:Landroid/os/Handler;

    .line 9
    iput-object v0, p0, Ldy;->l:Landroid/os/HandlerThread;

    .line 11
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ldy;->g:Z

    .line 4
    iget v0, p0, Ldy;->k:I

    .line 6
    if-lez v0, :cond_0

    .line 8
    iget v1, p0, Ldy;->j:I

    .line 10
    div-int/2addr v1, v0

    .line 11
    int-to-float v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget v1, p0, Ldy;->i:I

    .line 16
    rsub-int/lit8 v1, v1, 0x78

    .line 18
    int-to-float v1, v1

    .line 19
    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    sub-float/2addr v1, v2

    .line 22
    const/high16 v2, 0x42f00000    # 120.0f

    .line 24
    div-float/2addr v1, v2

    .line 25
    const v2, 0x3f4ccccd    # 0.8f

    .line 28
    cmpl-float v0, v0, v2

    .line 30
    if-lez v0, :cond_1

    .line 32
    const v0, 0x3e99999a    # 0.3f

    .line 35
    cmpl-float v0, v1, v0

    .line 37
    if-lez v0, :cond_1

    .line 39
    invoke-virtual {p0}, Ldy;->e()V

    .line 42
    :cond_1
    return-void
.end method
