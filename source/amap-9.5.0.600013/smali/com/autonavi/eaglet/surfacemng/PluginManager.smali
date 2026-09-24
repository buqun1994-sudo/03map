.class public Lcom/autonavi/eaglet/surfacemng/PluginManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lus;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceViewManagerPlg"


# instance fields
.field private final mPluginsAttached:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lss;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginsDeclared:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lss;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsDeclared:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 18
    const-class v0, Lk60;

    .line 20
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->declarePlugin(Ljava/lang/Class;)V

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    const-class v1, Ln60;

    .line 27
    invoke-direct {p0, v1}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->declarePlugin(Ljava/lang/Class;)V

    .line 30
    const-class v1, Lm60;

    .line 32
    invoke-direct {p0, v1}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->declarePlugin(Ljava/lang/Class;)V

    .line 35
    const-class v1, Le60;

    .line 37
    invoke-direct {p0, v1}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->declarePlugin(Ljava/lang/Class;)V

    .line 40
    const-class v1, Lh60;

    .line 42
    invoke-direct {p0, v1}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->declarePlugin(Ljava/lang/Class;)V

    .line 45
    const-class v1, Lj60;

    .line 47
    invoke-direct {p0, v1}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->declarePlugin(Ljava/lang/Class;)V

    .line 50
    const-class v1, Ll60;

    .line 52
    invoke-direct {p0, v1}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->declarePlugin(Ljava/lang/Class;)V

    .line 55
    const-class v1, Lg60;

    .line 57
    invoke-direct {p0, v1}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->declarePlugin(Ljava/lang/Class;)V

    .line 60
    const-class v1, Li60;

    .line 62
    invoke-direct {p0, v1}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->declarePlugin(Ljava/lang/Class;)V

    .line 65
    const/16 v1, 0x18

    .line 67
    if-lt v0, v1, :cond_0

    .line 69
    const-class v0, Lf60;

    .line 71
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->declarePlugin(Ljava/lang/Class;)V

    .line 74
    :cond_0
    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SurfaceViewManagerPlg"

    .line 3
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private declarePlugin(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsDeclared:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Ld00;->a(Ljava/lang/Object;)V

    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    :goto_0
    return-void
.end method

.method private getINavigationState()Lnq;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->getManager()Lht;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lht;->c()Lnq;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private tryAttachPlugin(Lbq$a;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsDeclared:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    throw v1

    .line 31
    :cond_1
    return-void
.end method


# virtual methods
.method public AUTO_MODE_DAY()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    throw v0
.end method

.method public AUTO_MODE_NIGHT()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    throw v0
.end method

.method public CHILD_PAGE()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    throw v0
.end method

.method public ENTER_WARN()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    throw v0
.end method

.method public EXSCREEN_FIRST_DRAW()V
    .locals 1

    .line 1
    const-string v0, "EXSCREEN_FIRST_DRAW"

    .line 3
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->debugLog(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public FIRST_DRAW()V
    .locals 1

    .line 1
    const-string v0, "FIRST_DRAW"

    .line 3
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->debugLog(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public FOREGROUND(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lbq$a;->e:Lbq$a;

    .line 5
    invoke-direct {p0, p1}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->tryAttachPlugin(Lbq$a;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 20
    return-void

    .line 21
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Ld00;->a(Ljava/lang/Object;)V

    .line 28
    const/4 p1, 0x0

    .line 29
    throw p1
.end method

.method public GFRAME_FIRST_DRAW()V
    .locals 2

    .line 1
    sget-object v0, Lbq$a;->d:Lbq$a;

    .line 3
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->tryAttachPlugin(Lbq$a;)V

    .line 6
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 26
    const/4 v0, 0x0

    .line 27
    throw v0
.end method

.method public GUIDING_START(I)V
    .locals 0

    .line 1
    const-string p1, "GUIDING_START"

    .line 3
    invoke-direct {p0, p1}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->debugLog(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public GUIDING_STOP(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 p1, 0x0

    .line 22
    throw p1
.end method

.method public INFO_MAPRENDER_STATE(Lnq$a;)V
    .locals 2

    .line 1
    sget-object v0, Lnq$a;->b:Lnq$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Ld00;->a(Ljava/lang/Object;)V

    .line 26
    throw v1

    .line 27
    :cond_1
    sget-object v0, Lnq$a;->c:Lnq$a;

    .line 29
    if-ne v0, p1, :cond_3

    .line 31
    iget-object p1, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Ld00;->a(Ljava/lang/Object;)V

    .line 51
    throw v1

    .line 52
    :cond_3
    :goto_0
    return-void
.end method

.method public MAIN_PAGE()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    throw v0
.end method

.method public START_FINISH()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    throw v0
.end method

.method public attachPlugin(Lss;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v1, "attach "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-interface {p1}, Lrs;->a()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->debugLog(Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method public detachPlugin(Lss;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v1, "detach "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-interface {p1}, Lrs;->a()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->debugLog(Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method public bridge synthetic getPlugin(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lts;->a(Lus;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPluginsAttached()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lss;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public onActivityCreated()V
    .locals 2

    .line 1
    sget-object v0, Lbq$a;->b:Lbq$a;

    .line 3
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->tryAttachPlugin(Lbq$a;)V

    .line 6
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 26
    const/4 v0, 0x0

    .line 27
    throw v0
.end method

.method public onActivityDestroyed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    throw v0
.end method

.method public onActivityPaused()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    throw v0
.end method

.method public onActivityResumed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    throw v0
.end method

.method public onActivityStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    throw v0
.end method

.method public onActivityStopped()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    throw v0
.end method

.method public onApplicationCreated(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object p1, Lbq$a;->a:Lbq$a;

    .line 3
    invoke-direct {p0, p1}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->tryAttachPlugin(Lbq$a;)V

    .line 6
    iget-object p1, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Ld00;->a(Ljava/lang/Object;)V

    .line 26
    const/4 p1, 0x0

    .line 27
    throw p1
.end method

.method public onCoverVisibleChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 p1, 0x0

    .line 22
    throw p1
.end method

.method public onMapCreated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    throw v0
.end method

.method public onMapDestroyed()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->getINavigationState()Lnq;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lnq$a;->a:Lnq$a;

    .line 7
    invoke-interface {v0, v1}, Lnq;->setMapRenderStatus(Lnq$a;)V

    .line 10
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 22
    return-void

    .line 23
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 30
    const/4 v0, 0x0

    .line 31
    throw v0
.end method

.method public onMapRedrawNeeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    throw v0
.end method

.method public onMapSizeChanged(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 p1, 0x0

    .line 22
    throw p1
.end method

.method public onUICreated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    throw v0
.end method

.method public onUIDestroyed()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->getINavigationState()Lnq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lnq;->isIndexFragmentForeground()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    const-string v0, "onUIDestroyed isIndexFragmentForeground=false"

    .line 13
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->debugLog(Ljava/lang/String;)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 28
    return-void

    .line 29
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 36
    const/4 v0, 0x0

    .line 37
    throw v0
.end method

.method public onUISizeChanged(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 p1, 0x0

    .line 22
    throw p1
.end method

.method public onUiTouched(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Ld00;->a(Ljava/lang/Object;)V

    .line 21
    const/4 p1, 0x0

    .line 22
    throw p1
.end method

.method public onViewInflated()V
    .locals 2

    .line 1
    sget-object v0, Lbq$a;->c:Lbq$a;

    .line 3
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->tryAttachPlugin(Lbq$a;)V

    .line 6
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 26
    const/4 v0, 0x0

    .line 27
    throw v0
.end method

.method public onWindowFocusChanged(ZLnq$a;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v0, "onWindowFocusChanged: "

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Lcom/autonavi/eaglet/surfacemng/PluginManager;->debugLog(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/autonavi/eaglet/surfacemng/PluginManager;->mPluginsAttached:Ljava/util/List;

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_0

    .line 33
    return-void

    .line 34
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Ld00;->a(Ljava/lang/Object;)V

    .line 41
    const/4 p1, 0x0

    .line 42
    throw p1
.end method
