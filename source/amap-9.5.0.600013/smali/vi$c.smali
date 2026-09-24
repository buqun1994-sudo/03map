.class public Lvi$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvi;->t()V
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
    iput-object p1, p0, Lvi$c;->a:Lvi;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lvi$c;->a:Lvi;

    .line 3
    invoke-static {v0}, Lvi;->e(Lvi;)Landroid/view/ViewGroup;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lvi$c;->a:Lvi;

    .line 11
    invoke-static {v0}, Lvi;->c(Lvi;)Landroid/opengl/GLSurfaceView;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lvi$c;->a:Lvi;

    .line 19
    invoke-static {v0}, Lvi;->e(Lvi;)Landroid/view/ViewGroup;

    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lvi$c;->a:Lvi;

    .line 25
    invoke-static {v1}, Lvi;->c(Lvi;)Landroid/opengl/GLSurfaceView;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 32
    iget-object v0, p0, Lvi$c;->a:Lvi;

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-static {v0, v1}, Lvi;->f(Lvi;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 38
    iget-object v0, p0, Lvi$c;->a:Lvi;

    .line 40
    invoke-static {v0, v1}, Lvi;->d(Lvi;Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView;

    .line 43
    :cond_0
    return-void
.end method
