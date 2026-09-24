.class public Lk50;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:J

.field public E:J

.field public F:La60;

.field public G:J

.field public H:J

.field public I:J

.field public J:J

.field public K:J

.field public a:Z

.field public b:Ljava/net/InetSocketAddress;

.field public c:Ljava/net/InetSocketAddress;

.field public d:Ljava/net/InetSocketAddress;

.field public e:Ljava/net/InetSocketAddress;

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:I

.field public q:J

.field public r:J

.field public s:J

.field public t:I

.field public u:I

.field public v:D

.field public w:J

.field public x:J

.field public y:J

.field public z:D


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lk50;->a:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lk50;->b:Ljava/net/InetSocketAddress;

    .line 4
    iput-object v1, p0, Lk50;->c:Ljava/net/InetSocketAddress;

    .line 5
    iput-object v1, p0, Lk50;->d:Ljava/net/InetSocketAddress;

    .line 6
    iput-object v1, p0, Lk50;->e:Ljava/net/InetSocketAddress;

    const-wide/16 v2, -0x1

    .line 7
    iput-wide v2, p0, Lk50;->f:J

    .line 8
    iput-object v1, p0, Lk50;->g:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lk50;->h:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lk50;->i:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lk50;->j:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lk50;->k:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lk50;->l:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lk50;->m:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lk50;->n:Ljava/lang/String;

    const/4 v4, -0x1

    .line 16
    iput v4, p0, Lk50;->o:I

    .line 17
    iput v0, p0, Lk50;->p:I

    const-wide/16 v4, 0x0

    .line 18
    iput-wide v4, p0, Lk50;->q:J

    .line 19
    iput-wide v4, p0, Lk50;->r:J

    .line 20
    iput-wide v4, p0, Lk50;->s:J

    .line 21
    iput v0, p0, Lk50;->t:I

    .line 22
    iput v0, p0, Lk50;->u:I

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 23
    iput-wide v6, p0, Lk50;->v:D

    .line 24
    iput-wide v4, p0, Lk50;->w:J

    .line 25
    iput-wide v4, p0, Lk50;->x:J

    .line 26
    iput-wide v4, p0, Lk50;->y:J

    .line 27
    iput-wide v6, p0, Lk50;->z:D

    .line 28
    iput-wide v2, p0, Lk50;->A:J

    .line 29
    iput-wide v4, p0, Lk50;->B:J

    .line 30
    iput-wide v4, p0, Lk50;->C:J

    .line 31
    iput-wide v4, p0, Lk50;->D:J

    .line 32
    iput-wide v2, p0, Lk50;->E:J

    .line 33
    iput-object v1, p0, Lk50;->F:La60;

    .line 34
    iput-wide v2, p0, Lk50;->G:J

    .line 35
    iput-wide v2, p0, Lk50;->H:J

    .line 36
    iput-wide v2, p0, Lk50;->I:J

    .line 37
    iput-wide v2, p0, Lk50;->J:J

    .line 38
    iput-wide v2, p0, Lk50;->K:J

    if-lez p2, :cond_0

    .line 39
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk50;->b:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    .line 40
    :try_start_1
    new-instance p2, Ljava/net/InetSocketAddress;

    invoke-direct {p2, p1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lk50;->c:Ljava/net/InetSocketAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;J)V
    .locals 6

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lk50;->b:Ljava/net/InetSocketAddress;

    .line 43
    iput-object v0, p0, Lk50;->c:Ljava/net/InetSocketAddress;

    .line 44
    iput-object v0, p0, Lk50;->g:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lk50;->h:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lk50;->i:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lk50;->j:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lk50;->k:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lk50;->l:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lk50;->m:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lk50;->n:Ljava/lang/String;

    const/4 v1, -0x1

    .line 52
    iput v1, p0, Lk50;->o:I

    const/4 v1, 0x0

    .line 53
    iput v1, p0, Lk50;->p:I

    const-wide/16 v2, 0x0

    .line 54
    iput-wide v2, p0, Lk50;->q:J

    .line 55
    iput-wide v2, p0, Lk50;->r:J

    .line 56
    iput-wide v2, p0, Lk50;->s:J

    .line 57
    iput v1, p0, Lk50;->t:I

    .line 58
    iput v1, p0, Lk50;->u:I

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 59
    iput-wide v4, p0, Lk50;->v:D

    .line 60
    iput-wide v2, p0, Lk50;->w:J

    .line 61
    iput-wide v2, p0, Lk50;->x:J

    .line 62
    iput-wide v2, p0, Lk50;->y:J

    .line 63
    iput-wide v4, p0, Lk50;->z:D

    const-wide/16 v4, -0x1

    .line 64
    iput-wide v4, p0, Lk50;->A:J

    .line 65
    iput-wide v2, p0, Lk50;->B:J

    .line 66
    iput-wide v2, p0, Lk50;->C:J

    .line 67
    iput-wide v2, p0, Lk50;->D:J

    .line 68
    iput-wide v4, p0, Lk50;->E:J

    .line 69
    iput-object v0, p0, Lk50;->F:La60;

    .line 70
    iput-wide v4, p0, Lk50;->G:J

    .line 71
    iput-wide v4, p0, Lk50;->H:J

    .line 72
    iput-wide v4, p0, Lk50;->I:J

    .line 73
    iput-wide v4, p0, Lk50;->J:J

    .line 74
    iput-wide v4, p0, Lk50;->K:J

    .line 75
    iput-object p1, p0, Lk50;->d:Ljava/net/InetSocketAddress;

    .line 76
    iput-object p2, p0, Lk50;->e:Ljava/net/InetSocketAddress;

    .line 77
    iput-wide p3, p0, Lk50;->f:J

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lk50;->a:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk50;->g:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk50;->f:J

    .line 3
    return-wide v0
.end method

.method public c(ILmb0;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Lmb0;->i()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lk50;->o:I

    .line 7
    if-gez v1, :cond_0

    .line 9
    iput v0, p0, Lk50;->o:I

    .line 11
    :cond_0
    iget-wide v1, p0, Lk50;->s:J

    .line 13
    int-to-long v3, p1

    .line 14
    add-long/2addr v1, v3

    .line 15
    iput-wide v1, p0, Lk50;->s:J

    .line 17
    iget p1, p0, Lk50;->t:I

    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 21
    iput p1, p0, Lk50;->t:I

    .line 23
    iget-wide v1, p0, Lk50;->r:J

    .line 25
    const-wide/16 v3, 0x1

    .line 27
    add-long/2addr v1, v3

    .line 28
    iput-wide v1, p0, Lk50;->r:J

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    move-result-wide v1

    .line 34
    iget p1, p0, Lk50;->p:I

    .line 36
    if-ge p1, v0, :cond_1

    .line 38
    iput v0, p0, Lk50;->p:I

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sub-int/2addr p1, p1

    .line 42
    const/16 v5, -0x64

    .line 44
    if-ge p1, v5, :cond_2

    .line 46
    iput v0, p0, Lk50;->p:I

    .line 48
    iget-wide v5, p0, Lk50;->q:J

    .line 50
    add-long/2addr v5, v3

    .line 51
    iput-wide v5, p0, Lk50;->q:J

    .line 53
    :cond_2
    :goto_0
    iget-wide v3, p0, Lk50;->G:J

    .line 55
    const-wide/16 v5, 0x0

    .line 57
    cmp-long p1, v3, v5

    .line 59
    if-lez p1, :cond_4

    .line 61
    invoke-virtual {p2}, Lmb0;->k()J

    .line 64
    move-result-wide v3

    .line 65
    sub-long/2addr v3, v1

    .line 66
    iget-wide v7, p0, Lk50;->w:J

    .line 68
    iget-wide v9, p0, Lk50;->G:J

    .line 70
    sub-long/2addr v7, v9

    .line 71
    sub-long/2addr v3, v7

    .line 72
    cmp-long p1, v3, v5

    .line 74
    if-gez p1, :cond_3

    .line 76
    const-wide/16 v5, -0x1

    .line 78
    mul-long v3, v3, v5

    .line 80
    :cond_3
    iget-wide v5, p0, Lk50;->v:D

    .line 82
    long-to-double v3, v3

    .line 83
    sub-double/2addr v3, v5

    .line 84
    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    .line 86
    div-double/2addr v3, v7

    .line 87
    add-double/2addr v5, v3

    .line 88
    iput-wide v5, p0, Lk50;->v:D

    .line 90
    :cond_4
    iput-wide v1, p0, Lk50;->G:J

    .line 92
    invoke-virtual {p2}, Lmb0;->k()J

    .line 95
    move-result-wide p1

    .line 96
    iput-wide p1, p0, Lk50;->w:J

    .line 98
    return-void
.end method
