.class public Lsb0;
.super Lhl;
.source "SourceFile"


# instance fields
.field public i:Lrf;

.field public j:Lcom/autonavi/extscreen/dto/PresentationConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/extscreen/dto/PresentationConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lhl;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p2, p0, Lsb0;->j:Lcom/autonavi/extscreen/dto/PresentationConfig;

    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    invoke-static {}, Lzg;->c()V

    .line 4
    return-void
.end method

.method public f()Ld20;
    .locals 1

    .line 1
    sget-object v0, Ld20;->e:Ld20;

    .line 3
    return-object v0
.end method

.method public i()V
    .locals 0

    .line 1
    return-void
.end method

.method public n(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public s()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsb0;->i:Lrf;

    .line 3
    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lrb0;

    .line 7
    invoke-direct {v0}, Lrb0;-><init>()V

    .line 10
    new-instance v1, Lzc0;

    .line 12
    invoke-direct {v1, v0}, Lzc0;-><init>(Lpr;)V

    .line 15
    sget v0, Lvk0;->b:I

    .line 17
    sget-object v2, Lyj0;->b:Lyj0;

    .line 19
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 22
    move-result v2

    .line 23
    if-ne v0, v2, :cond_0

    .line 25
    new-instance v0, Lif;

    .line 27
    iget-object v2, p0, Lhl;->b:Landroid/content/Context;

    .line 29
    iget-object v3, p0, Lsb0;->j:Lcom/autonavi/extscreen/dto/PresentationConfig;

    .line 31
    iget v4, v3, Lcom/autonavi/extscreen/dto/PresentationConfig;->width:I

    .line 33
    iget v3, v3, Lcom/autonavi/extscreen/dto/PresentationConfig;->height:I

    .line 35
    invoke-direct {v0, v2, v4, v3, v1}, Lif;-><init>(Landroid/content/Context;IILz40;)V

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object v2, Lyj0;->c:Lyj0;

    .line 41
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 44
    move-result v2

    .line 45
    if-ne v0, v2, :cond_1

    .line 47
    new-instance v0, Lf6;

    .line 49
    iget-object v2, p0, Lhl;->b:Landroid/content/Context;

    .line 51
    iget-object v3, p0, Lsb0;->j:Lcom/autonavi/extscreen/dto/PresentationConfig;

    .line 53
    iget v4, v3, Lcom/autonavi/extscreen/dto/PresentationConfig;->width:I

    .line 55
    iget v3, v3, Lcom/autonavi/extscreen/dto/PresentationConfig;->height:I

    .line 57
    invoke-direct {v0, v2, v4, v3, v1}, Lf6;-><init>(Landroid/content/Context;IILz40;)V

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Lif;

    .line 63
    iget-object v2, p0, Lhl;->b:Landroid/content/Context;

    .line 65
    iget-object v3, p0, Lsb0;->j:Lcom/autonavi/extscreen/dto/PresentationConfig;

    .line 67
    iget v4, v3, Lcom/autonavi/extscreen/dto/PresentationConfig;->width:I

    .line 69
    iget v3, v3, Lcom/autonavi/extscreen/dto/PresentationConfig;->height:I

    .line 71
    invoke-direct {v0, v2, v4, v3, v1}, Lif;-><init>(Landroid/content/Context;IILz40;)V

    .line 74
    :goto_0
    new-instance v1, Lrf;

    .line 76
    iget v2, p0, Lhl;->a:I

    .line 78
    invoke-direct {v1, v2, p0, v0}, Lrf;-><init>(ILhl;Ljr;)V

    .line 81
    iput-object v1, p0, Lsb0;->i:Lrf;

    .line 83
    invoke-virtual {v1}, Lrf;->a()V

    .line 86
    :cond_2
    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsb0;->s()V

    .line 4
    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsb0;->i:Lrf;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lrf;->b()V

    .line 8
    :cond_0
    return-void
.end method
