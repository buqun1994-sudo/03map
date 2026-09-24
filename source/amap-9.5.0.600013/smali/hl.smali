.class public abstract Lhl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhl$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Landroid/content/Context;

.field public c:Landroid/view/Surface;

.field public d:Landroid/view/Surface;

.field public e:Lcom/autonavi/amapauto/jni/ViewInfo;

.field public f:Ljava/lang/Object;

.field public g:Ljava/util/List;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lhl;->a:I

    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lhl;->f:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lhl;->b:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    const-string v0, "ExtScreen"

    .line 3
    const-string v1, "addPenddingIntent"

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lhl;->f:Ljava/lang/Object;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lhl;->g:Ljava/util/List;

    .line 16
    if-nez v1, :cond_0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v1, p0, Lhl;->g:Ljava/util/List;

    .line 25
    :cond_0
    iget-object v1, p0, Lhl;->g:Ljava/util/List;

    .line 27
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1
.end method

.method public b(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract c()V
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lhl;->a:I

    .line 3
    return v0
.end method

.method public e()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lhl;->c:Landroid/view/Surface;

    .line 3
    return-object v0
.end method

.method public abstract f()Ld20;
.end method

.method public g()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lhl;->d:Landroid/view/Surface;

    .line 3
    return-object v0
.end method

.method public h()Lcom/autonavi/amapauto/jni/ViewInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lhl;->e:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 3
    return-object v0
.end method

.method public abstract i()V
.end method

.method public j()Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lhl;->h:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "ExtScreen"

    .line 15
    const-string v2, "isInRender = {?}"

    .line 17
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-boolean v0, p0, Lhl;->h:Z

    .line 22
    return v0
.end method

.method public k()V
    .locals 3

    .line 1
    const-string v0, "ExtScreen"

    .line 3
    const-string v1, "onFirstFrame"

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lhl;->h:Z

    .line 14
    iget-object v0, p0, Lhl;->f:Ljava/lang/Object;

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lhl;->g:Ljava/util/List;

    .line 19
    if-eqz v1, :cond_1

    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/Runnable;

    .line 37
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Lhl;->g:Ljava/util/List;

    .line 43
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 46
    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lhl;->g:Ljava/util/List;

    .line 49
    :cond_1
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw v1
.end method

.method public l(IILhl$a;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p3, :cond_0

    .line 4
    invoke-interface {p3, p1}, Lhl$a;->a(Z)V

    .line 7
    :cond_0
    return p1
.end method

.method public m()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lhl;->h:Z

    .line 4
    const-string v1, "onStopInRender  mIsInRender = false"

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    const-string v2, "ExtScreen"

    .line 10
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void
.end method

.method public abstract n(Landroid/view/MotionEvent;)V
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lhl;->a:I

    .line 3
    return-void
.end method

.method public p(Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhl;->c:Landroid/view/Surface;

    .line 3
    return-void
.end method

.method public q(Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhl;->d:Landroid/view/Surface;

    .line 3
    return-void
.end method

.method public r(Lcom/autonavi/amapauto/jni/ViewInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhl;->e:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 3
    return-void
.end method

.method public abstract s()V
.end method

.method public abstract t(I)V
.end method

.method public abstract u()V
.end method
