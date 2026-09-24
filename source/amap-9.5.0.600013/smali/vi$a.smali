.class public Lvi$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvi;->n(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lvi;


# direct methods
.method public constructor <init>(Lvi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvi$a;->a:Lvi;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lvi$a;->a:Lvi;

    .line 3
    invoke-static {v0}, Lvi;->a(Lvi;)Ljava/lang/ref/WeakReference;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/Activity;

    .line 13
    const/4 v1, 0x2

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v0, v1, v2

    .line 19
    iget-object v2, p0, Lvi$a;->a:Lvi;

    .line 21
    invoke-static {v2}, Lvi;->c(Lvi;)Landroid/opengl/GLSurfaceView;

    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x1

    .line 26
    aput-object v2, v1, v3

    .line 28
    const-string v2, "DeviceInfoCollectionManager"

    .line 30
    const-string v4, "getGlMsg. mActivity = {?}, mGlSurfaceView = {?}"

    .line 32
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    if-eqz v0, :cond_0

    .line 37
    iget-object v1, p0, Lvi$a;->a:Lvi;

    .line 39
    invoke-static {v1}, Lvi;->c(Lvi;)Landroid/opengl/GLSurfaceView;

    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_0

    .line 45
    iget-object v1, p0, Lvi$a;->a:Lvi;

    .line 47
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/view/ViewGroup;

    .line 57
    invoke-static {v1, v2}, Lvi;->f(Lvi;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 60
    const/4 v1, 0x0

    .line 61
    :try_start_0
    iget-object v2, p0, Lvi$a;->a:Lvi;

    .line 63
    new-instance v4, Landroid/opengl/GLSurfaceView;

    .line 65
    invoke-direct {v4, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-static {v2, v4}, Lvi;->d(Lvi;Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView;

    .line 71
    iget-object v0, p0, Lvi$a;->a:Lvi;

    .line 73
    invoke-static {v0}, Lvi;->c(Lvi;)Landroid/opengl/GLSurfaceView;

    .line 76
    move-result-object v0

    .line 77
    new-instance v2, Lvi$d;

    .line 79
    iget-object v4, p0, Lvi$a;->a:Lvi;

    .line 81
    invoke-direct {v2, v4, v1}, Lvi$d;-><init>(Lvi;Lvi$a;)V

    .line 84
    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 87
    iget-object v0, p0, Lvi$a;->a:Lvi;

    .line 89
    invoke-static {v0}, Lvi;->c(Lvi;)Landroid/opengl/GLSurfaceView;

    .line 92
    move-result-object v0

    .line 93
    new-instance v2, Lvi$a$a;

    .line 95
    invoke-direct {v2, p0}, Lvi$a$a;-><init>(Lvi$a;)V

    .line 98
    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 101
    iget-object v0, p0, Lvi$a;->a:Lvi;

    .line 103
    invoke-static {v0}, Lvi;->e(Lvi;)Landroid/view/ViewGroup;

    .line 106
    move-result-object v0

    .line 107
    iget-object v2, p0, Lvi$a;->a:Lvi;

    .line 109
    invoke-static {v2}, Lvi;->c(Lvi;)Landroid/opengl/GLSurfaceView;

    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v0, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    iget-object v2, p0, Lvi$a;->a:Lvi;

    .line 120
    invoke-static {v2, v1}, Lvi;->d(Lvi;Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView;

    .line 123
    iget-object v2, p0, Lvi$a;->a:Lvi;

    .line 125
    invoke-static {v2, v1}, Lvi;->f(Lvi;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 128
    invoke-static {}, Lvi;->q()Lvi;

    .line 131
    move-result-object v1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const-string v3, "exception:"

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    const-string v2, ""

    .line 155
    invoke-virtual {v1, v0, v2, v2}, Lvi;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lvi;->q()Lvi;

    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0}, Lvi;->g(Lvi;)V

    .line 165
    :cond_0
    :goto_0
    return-void
.end method
