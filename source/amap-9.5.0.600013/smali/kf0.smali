.class public Lkf0;
.super Landroid/app/Presentation;
.source "SourceFile"

# interfaces
.implements Lrt;


# static fields
.field public static l:Ljava/lang/String; = "SurfaceViewPresentation"


# instance fields
.field public a:Lcom/autonavi/amapauto/jni/ViewInfo;

.field public b:Lsf0;

.field public c:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;

.field public d:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;

.field public e:I

.field public f:I

.field public g:Landroid/view/View$OnLayoutChangeListener;

.field public h:I

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lsf0;Lcom/autonavi/amapauto/jni/ViewInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lsf0;->D()Landroid/view/Display;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 8
    new-instance p1, Lkf0$a;

    .line 10
    invoke-direct {p1, p0}, Lkf0$a;-><init>(Lkf0;)V

    .line 13
    iput-object p1, p0, Lkf0;->g:Landroid/view/View$OnLayoutChangeListener;

    .line 15
    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lkf0;->h:I

    .line 18
    iput p1, p0, Lkf0;->i:I

    .line 20
    iput p1, p0, Lkf0;->j:I

    .line 22
    iput p1, p0, Lkf0;->k:I

    .line 24
    iput-object p2, p0, Lkf0;->b:Lsf0;

    .line 26
    iput-object p3, p0, Lkf0;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 28
    return-void
.end method

.method public static synthetic b(Lkf0;)I
    .locals 0

    .line 1
    iget p0, p0, Lkf0;->e:I

    .line 3
    return p0
.end method

.method public static synthetic c(Lkf0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lkf0;->e:I

    .line 3
    return p1
.end method

.method public static synthetic d(Lkf0;)I
    .locals 0

    .line 1
    iget p0, p0, Lkf0;->f:I

    .line 3
    return p0
.end method

.method public static synthetic e(Lkf0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lkf0;->f:I

    .line 3
    return p1
.end method

.method public static synthetic f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lkf0;->l:Ljava/lang/String;

    .line 3
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public g(IIIIIILhl$a;)Z
    .locals 7

    .line 1
    new-instance p1, Lkf0$b;

    .line 3
    move-object v0, p1

    .line 4
    move-object v1, p0

    .line 5
    move v2, p3

    .line 6
    move v3, p4

    .line 7
    move v4, p5

    .line 8
    move v5, p6

    .line 9
    move-object v6, p7

    .line 10
    invoke-direct/range {v0 .. v6}, Lkf0$b;-><init>(Lkf0;IIIILhl$a;)V

    .line 13
    invoke-static {p1}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 16
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public h(IZ)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lkf0;->c:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Lkf0;->d:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_0
    sget-object v1, Lkf0;->l:Ljava/lang/String;

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object p1, v0, v2

    .line 20
    const-string v3, "controlSurfaceVisivility surface={?}"

    .line 22
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    if-eqz p1, :cond_3

    .line 27
    if-eqz p2, :cond_2

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    const/16 v2, 0x8

    .line 32
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    sget-object v0, Lkf0;->l:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const-string v2, "onBackPressed"

    .line 8
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    sget-object v0, Lkf0;->l:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "SurfaceViewPresentation onCreate: "

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    new-array v3, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-static {}, La20;->l()La20;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, La20;->t()Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 39
    move-result-object v0

    .line 40
    const/16 v1, 0x18

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 45
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget p1, Lb90;->m:I

    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 53
    sget p1, Ly80;->g0:I

    .line 55
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;

    .line 61
    iput-object p1, p0, Lkf0;->c:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;

    .line 63
    if-eqz p1, :cond_1

    .line 65
    iget-object v0, p0, Lkf0;->g:Landroid/view/View$OnLayoutChangeListener;

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 70
    iget-object p1, p0, Lkf0;->c:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;

    .line 72
    iget-object v0, p0, Lkf0;->b:Lsf0;

    .line 74
    iget-object v1, p0, Lkf0;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 76
    invoke-virtual {p1, v0, v1}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->c(Lhl;Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 79
    :cond_1
    sget p1, Ly80;->h0:I

    .line 81
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;

    .line 87
    iput-object p1, p0, Lkf0;->d:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;

    .line 89
    if-eqz p1, :cond_2

    .line 91
    iget-object v0, p0, Lkf0;->b:Lsf0;

    .line 93
    iget-object v1, p0, Lkf0;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 95
    invoke-virtual {p1, v0, v1}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->c(Lhl;Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 98
    :cond_2
    sget-object p1, Lkf0;->l:Ljava/lang/String;

    .line 100
    const-string v0, "SurfaceViewPresentation onCreate end"

    .line 102
    new-array v1, v2, [Ljava/lang/Object;

    .line 104
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method
