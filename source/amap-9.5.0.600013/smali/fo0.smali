.class public Lfo0;
.super Lu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfo0$b;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;

.field public c:Z

.field public d:Landroid/view/WindowManager;

.field public e:Lcom/autonavi/amapauto/jni/ViewInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lu;-><init>()V

    .line 4
    invoke-static {}, Lrv;->H()Lrv;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "window"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/view/WindowManager;

    .line 20
    iput-object v0, p0, Lfo0;->d:Landroid/view/WindowManager;

    .line 22
    return-void
.end method

.method public static synthetic a(Lfo0;)Lcom/autonavi/amapauto/jni/ViewInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lfo0;->e:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    const-string v0, "WindowWidgetProcessor"

    .line 3
    iget-boolean v1, p0, Lfo0;->c:Z

    .line 5
    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lfo0;->e:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 9
    if-eqz v1, :cond_1

    .line 11
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 13
    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 16
    iget-object v2, p0, Lfo0;->e:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 18
    iget v3, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 20
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 22
    iget v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 24
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    const/16 v3, 0x1a

    .line 30
    if-lt v2, v3, :cond_0

    .line 32
    const/16 v2, 0x7f6

    .line 34
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/16 v2, 0x7d3

    .line 39
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 41
    :goto_0
    const/16 v2, 0x328

    .line 43
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 45
    const/4 v2, -0x3

    .line 46
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 48
    const/16 v2, 0x33

    .line 50
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 52
    const/4 v2, -0x1

    .line 53
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 55
    const/4 v2, 0x0

    .line 56
    const/4 v3, 0x1

    .line 57
    :try_start_0
    invoke-static {}, Llm;->b()Llm;

    .line 60
    move-result-object v4

    .line 61
    invoke-static {}, Lrv;->H()Lrv;

    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v5}, Lrv;->z()Landroid/content/Context;

    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v4, v5}, Llm;->c(Landroid/content/Context;)Z

    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_1

    .line 75
    iget-object v4, p0, Lfo0;->d:Landroid/view/WindowManager;

    .line 77
    iget-object v5, p0, Lfo0;->a:Landroid/view/View;

    .line 79
    invoke-interface {v4, v5, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    const-string v1, "addWindowView() mWManager.addView"

    .line 84
    new-array v4, v2, [Ljava/lang/Object;

    .line 86
    invoke-static {v0, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iput-boolean v3, p0, Lfo0;->c:Z

    .line 91
    invoke-virtual {p0, v3}, Lfo0;->e(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_1

    .line 95
    :catch_0
    move-exception v1

    .line 96
    new-array v3, v3, [Ljava/lang/Object;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    aput-object v1, v3, v2

    .line 104
    const-string v1, "addWindowView(). e = {?}"

    .line 106
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_1
    :goto_1
    return-void
.end method

.method public c(Lcom/autonavi/amapauto/jni/ViewInfo;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lfo0;->a:Landroid/view/View;

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    iget v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v1, v0, v2

    .line 19
    const-string v1, "WindowWidgetProcessor"

    .line 21
    const-string v2, "init, windowId={?}"

    .line 23
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iput-object p1, p0, Lfo0;->e:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 28
    invoke-static {}, Lrv;->H()Lrv;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lrv;->z()Landroid/content/Context;

    .line 35
    move-result-object p1

    .line 36
    sget v0, Lb90;->d:I

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lfo0;->a:Landroid/view/View;

    .line 45
    const/16 v0, 0x8

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    new-instance p1, Lfo0$b;

    .line 52
    invoke-static {}, Lrv;->H()Lrv;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 59
    move-result-object v0

    .line 60
    invoke-direct {p1, p0, v0}, Lfo0$b;-><init>(Lfo0;Landroid/content/Context;)V

    .line 63
    iget-object v0, p0, Lfo0;->e:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 65
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 67
    invoke-virtual {p1, v0}, Lhl;->o(I)V

    .line 70
    iget-object v0, p0, Lfo0;->a:Landroid/view/View;

    .line 72
    sget v1, Ly80;->j0:I

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;

    .line 80
    iput-object v0, p0, Lfo0;->b:Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;

    .line 82
    iget-object v1, p0, Lfo0;->e:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 84
    invoke-virtual {v0, p1, v1}, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->b(Lhl;Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 87
    iget-object v0, p0, Lfo0;->a:Landroid/view/View;

    .line 89
    sget v1, Ly80;->k0:I

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;

    .line 97
    iget-object v1, p0, Lfo0;->e:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 99
    invoke-virtual {v0, p1, v1}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->c(Lhl;Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 102
    new-instance p1, Lfo0$a;

    .line 104
    invoke-direct {p1, p0}, Lfo0$a;-><init>(Lfo0;)V

    .line 107
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    invoke-virtual {p0}, Lfo0;->b()V

    .line 113
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lfo0;->c:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lfo0;->e(Z)V

    .line 9
    iget-object v1, p0, Lfo0;->d:Landroid/view/WindowManager;

    .line 11
    iget-object v2, p0, Lfo0;->a:Landroid/view/View;

    .line 13
    invoke-interface {v1, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 16
    iput-boolean v0, p0, Lfo0;->c:Z

    .line 18
    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v3

    .line 9
    aput-object v3, v1, v2

    .line 11
    const-string v2, "WindowWidgetProcessor"

    .line 13
    const-string v3, "sendWidgetRenderState(). isRenderOn = {?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v1, Landroid/content/Intent;

    .line 20
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 23
    const-string v2, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 25
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string v2, "KEY_TYPE"

    .line 30
    const/16 v3, 0x2787

    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    if-eqz p1, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x2

    .line 39
    :goto_0
    const-string p1, "WIDGET_STATE"

    .line 41
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    invoke-static {}, Lrv;->H()Lrv;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lrv;->z()Landroid/content/Context;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfo0;->a:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-virtual {p0}, Lfo0;->b()V

    .line 12
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfo0;->a:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/16 v1, 0x8

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lfo0;->d()V

    .line 13
    :cond_0
    return-void
.end method
