.class public Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldq;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceViewManagerAty"


# instance fields
.field private isWidgetJumpIntent:Z

.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field mIsActivityCreating:Z

.field mIsActivityStarting:Z

.field private mIsFocused:Z

.field private mIsResumed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mIsFocused:Z

    .line 7
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->isSupport()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->getApplication()Landroid/app/Application;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public checkWidgetJump(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "checkWidgetJump="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->debugLog(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    if-nez p1, :cond_0

    .line 28
    return v0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const-string v1, "search"

    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2

    .line 45
    const-string v1, "set"

    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_2

    .line 53
    const-string v1, "home"

    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_2

    .line 61
    const-string v1, "company"

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    return v0

    .line 71
    :cond_2
    :goto_0
    const-string p1, "checkWidgetJump=true"

    .line 73
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->debugLog(Ljava/lang/String;)V

    .line 76
    const/4 p1, 0x1

    .line 77
    return p1
.end method

.method public debugLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SurfaceViewManagerAty"

    .line 3
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mActivity:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public getPluginManager()Lus;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->getManager()Lht;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lht;->a()Lus;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public hasFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mIsFocused:Z

    .line 3
    return v0
.end method

.method public isActivityCreating()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mIsActivityCreating:Z

    .line 3
    return v0
.end method

.method public isActivityStarting()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mIsActivityStarting:Z

    .line 3
    return v0
.end method

.method public isInMultiWindowMode()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x18

    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mActivity:Ljava/lang/ref/WeakReference;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/app/Activity;

    .line 18
    invoke-static {v0}, Lwj;->a(Landroid/app/Activity;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    const/4 v2, 0x1

    .line 25
    :cond_0
    return v2
.end method

.method public bridge synthetic isMainActivity(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcq;->a(Ldq;Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public isResumed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mIsResumed:Z

    .line 3
    return v0
.end method

.method public isWidgetJumpIntent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->isWidgetJumpIntent:Z

    .line 3
    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mActivity:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz p2, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->isMainActivity(Landroid/app/Activity;)Z

    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_1

    .line 12
    return-void

    .line 13
    :cond_1
    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mIsActivityCreating:Z

    .line 16
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 18
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    iput-object p2, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mActivity:Ljava/lang/ref/WeakReference;

    .line 23
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->getPluginManager()Lus;

    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Laq;->onActivityCreated()V

    .line 30
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->getActivity()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p1, :cond_1

    .line 7
    const-string p1, "onActivityDestroyed: "

    .line 9
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->debugLog(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mActivity:Ljava/lang/ref/WeakReference;

    .line 14
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/app/Activity;

    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 37
    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mActivity:Ljava/lang/ref/WeakReference;

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->getPluginManager()Lus;

    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Laq;->onActivityDestroyed()V

    .line 47
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->getManager()Lht;

    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Lht;->reset()V

    .line 54
    :cond_1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->getActivity()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 7
    const-string p1, "onActivityPaused: "

    .line 9
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->debugLog(Ljava/lang/String;)V

    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mIsResumed:Z

    .line 15
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->getPluginManager()Lus;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Laq;->onActivityPaused()V

    .line 22
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->getActivity()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mIsResumed:Z

    .line 10
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->getPluginManager()Lus;

    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Laq;->onActivityResumed()V

    .line 17
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->getActivity()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 7
    const-string v0, "onActivityStarted"

    .line 9
    invoke-virtual {p0, v0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->debugLog(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mIsActivityStarting:Z

    .line 15
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->checkWidgetJump(Landroid/content/Intent;)Z

    .line 22
    move-result p1

    .line 23
    iput-boolean p1, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->isWidgetJumpIntent:Z

    .line 25
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->getPluginManager()Lus;

    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Laq;->onActivityStarted()V

    .line 32
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->getActivity()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 7
    const-string p1, "onActivityStopped: "

    .line 9
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->debugLog(Ljava/lang/String;)V

    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mIsActivityCreating:Z

    .line 15
    iput-boolean p1, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mIsActivityStarting:Z

    .line 17
    iput-boolean p1, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->isWidgetJumpIntent:Z

    .line 19
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->getPluginManager()Lus;

    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Laq;->onActivityStopped()V

    .line 26
    :cond_0
    return-void
.end method

.method public onViewInflated()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->getActivity()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 20
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->getPluginManager()Lus;

    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Laq;->onViewInflated()V

    .line 27
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "onWindowFocusChanged: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->debugLog(Ljava/lang/String;)V

    .line 21
    iput-boolean p1, p0, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->mIsFocused:Z

    .line 23
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/ActivityStateManager;->getPluginManager()Lus;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->getManager()Lht;

    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Lht;->c()Lnq;

    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Lnq;->getMapRenderStatus()Lnq$a;

    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v0, p1, v1}, Lus;->onWindowFocusChanged(ZLnq$a;)V

    .line 42
    return-void
.end method
