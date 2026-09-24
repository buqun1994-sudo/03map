.class public Lak0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lzj0;

.field public c:Ljr;

.field public d:Lhl;


# direct methods
.method public constructor <init>(ILhl;Ljr;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lak0;->b:Lzj0;

    .line 7
    iput p1, p0, Lak0;->a:I

    .line 9
    iput-object p2, p0, Lak0;->d:Lhl;

    .line 11
    iput-object p3, p0, Lak0;->c:Ljr;

    .line 13
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "VedioSurfaceViewPresentation"

    .line 6
    const-string v3, " onCreate"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Lzj0;

    .line 13
    iget v3, p0, Lak0;->a:I

    .line 15
    invoke-direct {v1, v3}, Lzj0;-><init>(I)V

    .line 18
    iput-object v1, p0, Lak0;->b:Lzj0;

    .line 20
    iget-object v1, p0, Lak0;->c:Ljr;

    .line 22
    if-eqz v1, :cond_1

    .line 24
    invoke-interface {v1}, Ljr;->b()Landroid/view/Surface;

    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 30
    iget-object v3, p0, Lak0;->b:Lzj0;

    .line 32
    iget-object v4, p0, Lak0;->d:Lhl;

    .line 34
    invoke-virtual {v3, v1, v4}, Lzj0;->d(Landroid/view/Surface;Lhl;)V

    .line 37
    iget-object v1, p0, Lak0;->c:Ljr;

    .line 39
    invoke-interface {v1}, Ljr;->a()V

    .line 42
    iget-object v1, p0, Lak0;->c:Ljr;

    .line 44
    invoke-interface {v1}, Ljr;->c()V

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string v1, " onCreate mEncodeHandler surface==null"

    .line 50
    new-array v3, v0, [Ljava/lang/Object;

    .line 52
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v3, " vedioPresentationMapView: "

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v3, p0, Lak0;->b:Lzj0;

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "VedioSurfaceViewPresentation"

    .line 6
    const-string v3, "onDestroy start"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lak0;->b:Lzj0;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const-string v1, " onDestroy vedioPresentationMapView!=null"

    .line 17
    new-array v3, v0, [Ljava/lang/Object;

    .line 19
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget-object v1, p0, Lak0;->b:Lzj0;

    .line 24
    invoke-virtual {v1}, Lzj0;->e()V

    .line 27
    :cond_0
    iget-object v1, p0, Lak0;->c:Ljr;

    .line 29
    if-eqz v1, :cond_1

    .line 31
    invoke-interface {v1}, Ljr;->d()V

    .line 34
    :cond_1
    const-string v1, "onDestroy end"

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method
