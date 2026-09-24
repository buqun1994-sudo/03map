.class public Lsf;
.super Lhl;
.source "SourceFile"


# instance fields
.field public i:Lrf;

.field public final j:Lcom/autonavi/extscreen/dto/PresentationConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/extscreen/dto/PresentationConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lhl;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p2, p0, Lsf;->j:Lcom/autonavi/extscreen/dto/PresentationConfig;

    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
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
    iget-object v0, p0, Lsf;->i:Lrf;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lkf;

    .line 7
    invoke-direct {v0}, Lkf;-><init>()V

    .line 10
    new-instance v1, Lzc0;

    .line 12
    invoke-direct {v1, v0}, Lzc0;-><init>(Lpr;)V

    .line 15
    new-instance v0, Lif;

    .line 17
    iget-object v2, p0, Lhl;->b:Landroid/content/Context;

    .line 19
    iget-object v3, p0, Lsf;->j:Lcom/autonavi/extscreen/dto/PresentationConfig;

    .line 21
    iget v4, v3, Lcom/autonavi/extscreen/dto/PresentationConfig;->width:I

    .line 23
    iget v3, v3, Lcom/autonavi/extscreen/dto/PresentationConfig;->height:I

    .line 25
    invoke-direct {v0, v2, v4, v3, v1}, Lif;-><init>(Landroid/content/Context;IILz40;)V

    .line 28
    new-instance v1, Lrf;

    .line 30
    iget-object v2, p0, Lsf;->j:Lcom/autonavi/extscreen/dto/PresentationConfig;

    .line 32
    iget v2, v2, Lcom/autonavi/extscreen/dto/PresentationConfig;->deviceId:I

    .line 34
    invoke-direct {v1, v2, p0, v0}, Lrf;-><init>(ILhl;Ljr;)V

    .line 37
    iput-object v1, p0, Lsf;->i:Lrf;

    .line 39
    invoke-virtual {v1}, Lrf;->a()V

    .line 42
    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsf;->s()V

    .line 4
    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsf;->i:Lrf;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lrf;->b()V

    .line 8
    :cond_0
    return-void
.end method
