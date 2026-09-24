.class public Lcom/autonavi/eaglet/surfacemng/AutoStateManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loq;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceViewManagerState"


# instance fields
.field protected mGFrameFirstDrew:Z

.field mIndexFragmentForeground:Z

.field private mIsGuiding:Z

.field private mIsGuidingLastFore:Z

.field protected mIsInitFinished:Z

.field mIsMainPage:Z

.field private mIsModeDay:Ljava/lang/Boolean;

.field mIsWarnChecked:Ljava/lang/Boolean;

.field mIsWarnPage:Z

.field private mapRenderStatus:Lnq$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lnq$a;->a:Lnq$a;

    .line 6
    iput-object v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mapRenderStatus:Lnq$a;

    .line 8
    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SurfaceViewManagerState"

    .line 3
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private onAutoModeDay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsModeDay:Ljava/lang/Boolean;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 11
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    iput-object v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsModeDay:Ljava/lang/Boolean;

    .line 15
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->getPluginManager()Lus;

    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lus;->AUTO_MODE_DAY()V

    .line 22
    :cond_1
    return-void
.end method

.method private onAutoModeNight()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsModeDay:Ljava/lang/Boolean;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    iput-object v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsModeDay:Ljava/lang/Boolean;

    .line 15
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->getPluginManager()Lus;

    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lus;->AUTO_MODE_NIGHT()V

    .line 22
    :cond_1
    return-void
.end method

.method private onBackGround()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsGuiding:Z

    .line 3
    iput-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsGuidingLastFore:Z

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v1, "onStateChange: BACKGROUND isGuiding="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-boolean v1, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsGuiding:Z

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->debugLog(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private onChildPage()V
    .locals 1

    .line 1
    const-string v0, "CHILD_PAGE"

    .line 3
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->debugLog(Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsMainPage:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsMainPage:Z

    .line 13
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->getPluginManager()Lus;

    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lus;->CHILD_PAGE()V

    .line 20
    :cond_0
    return-void
.end method

.method private onEnterWarn()V
    .locals 1

    .line 1
    const-string v0, "onStateChange: ENTER_WARN"

    .line 3
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->debugLog(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsWarnPage:Z

    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    iput-object v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsWarnChecked:Ljava/lang/Boolean;

    .line 13
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->getPluginManager()Lus;

    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lus;->ENTER_WARN()V

    .line 20
    return-void
.end method

.method private onForeGround()V
    .locals 2

    .line 1
    const-string v0, "onStateChange: FOREGROUND"

    .line 3
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->debugLog(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsWarnPage:Z

    .line 9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    iput-object v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsWarnChecked:Ljava/lang/Boolean;

    .line 13
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIndexFragmentForeground:Z

    .line 15
    const/4 v1, 0x1

    .line 16
    xor-int/2addr v0, v1

    .line 17
    iput-boolean v1, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIndexFragmentForeground:Z

    .line 19
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->getPluginManager()Lus;

    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1, v0}, Lus;->FOREGROUND(Z)V

    .line 26
    return-void
.end method

.method private onGframeFirstDrew()V
    .locals 1

    .line 1
    const-string v0, "onStateChange: GFRAME_FIRST_DRAW"

    .line 3
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->debugLog(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mGFrameFirstDrew:Z

    .line 9
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->getPluginManager()Lus;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lus;->GFRAME_FIRST_DRAW()V

    .line 16
    return-void
.end method

.method private onGuidStart(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "onStateChange: GuideStart="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->debugLog(Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsGuiding:Z

    .line 24
    iput-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsGuidingLastFore:Z

    .line 26
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->getPluginManager()Lus;

    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0, p1}, Lus;->GUIDING_START(I)V

    .line 33
    return-void
.end method

.method private onGuidStop(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "onStateChange: GuideStop="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->debugLog(Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsGuiding:Z

    .line 24
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->getPluginManager()Lus;

    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, p1}, Lus;->GUIDING_STOP(I)V

    .line 31
    return-void
.end method

.method private onMainPage()V
    .locals 1

    .line 1
    const-string v0, "MAIN_PAGE "

    .line 3
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->debugLog(Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsMainPage:Z

    .line 8
    if-nez v0, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsMainPage:Z

    .line 13
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->getPluginManager()Lus;

    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lus;->MAIN_PAGE()V

    .line 20
    :cond_0
    return-void
.end method

.method private onMapRenderSurfaceCreated()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "onStateChange SURFACE_CREATED, status="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mapRenderStatus:Lnq$a;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", suf="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->manager()Lht;

    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Lht;->e()Lxt;

    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Lxt;->e()Lmx;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lhx;->l()Lbq$b;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->debugLog(Ljava/lang/String;)V

    .line 47
    sget-object v0, Lnq$a;->b:Lnq$a;

    .line 49
    iput-object v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mapRenderStatus:Lnq$a;

    .line 51
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->getPluginManager()Lus;

    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mapRenderStatus:Lnq$a;

    .line 57
    invoke-interface {v0, v1}, Lus;->INFO_MAPRENDER_STATE(Lnq$a;)V

    .line 60
    return-void
.end method

.method private onMapSwapBuffered()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "onStateChange MAP_FOREGROUNDED, status="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mapRenderStatus:Lnq$a;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->debugLog(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lnq$a;->a:Lnq$a;

    .line 25
    iget-object v1, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mapRenderStatus:Lnq$a;

    .line 27
    if-eq v0, v1, :cond_0

    .line 29
    sget-object v0, Lnq$a;->c:Lnq$a;

    .line 31
    iput-object v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mapRenderStatus:Lnq$a;

    .line 33
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->getPluginManager()Lus;

    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mapRenderStatus:Lnq$a;

    .line 39
    invoke-interface {v0, v1}, Lus;->INFO_MAPRENDER_STATE(Lnq$a;)V

    .line 42
    :cond_0
    return-void
.end method

.method private onStartFinish()V
    .locals 1

    .line 1
    const-string v0, "onStateChange: START_FINISH"

    .line 3
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->debugLog(Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsInitFinished:Z

    .line 8
    if-nez v0, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsInitFinished:Z

    .line 13
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->getPluginManager()Lus;

    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lus;->START_FINISH()V

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public getMapRenderStatus()Lnq$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mapRenderStatus:Lnq$a;

    .line 3
    return-object v0
.end method

.method public getPluginManager()Lus;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->manager()Lht;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lht;->a()Lus;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public isGFrameFirstDrew()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mGFrameFirstDrew:Z

    .line 3
    return v0
.end method

.method public isGuiding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsGuiding:Z

    .line 3
    return v0
.end method

.method public isGuidingLastFore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsGuidingLastFore:Z

    .line 3
    return v0
.end method

.method public isIndexFragmentForeground()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIndexFragmentForeground:Z

    .line 3
    return v0
.end method

.method public isInitFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsInitFinished:Z

    .line 3
    return v0
.end method

.method public isMainPage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsMainPage:Z

    .line 3
    return v0
.end method

.method public isMapBufferSwapped()Z
    .locals 2

    .line 1
    sget-object v0, Lnq$a;->c:Lnq$a;

    .line 3
    iget-object v1, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mapRenderStatus:Lnq$a;

    .line 5
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isWarnChecked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsWarnChecked:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;->isWarnChecked()Z

    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsWarnChecked:Ljava/lang/Boolean;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsWarnChecked:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public isWarnPage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsWarnPage:Z

    .line 3
    return v0
.end method

.method public manager()Lht;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->getManager()Lht;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onStateChange(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_e

    .line 4
    const/16 v0, 0x2b

    .line 6
    if-eq p1, v0, :cond_d

    .line 8
    const/16 v0, 0x3c

    .line 10
    if-eq p1, v0, :cond_c

    .line 12
    const/16 v0, 0x74

    .line 14
    if-eq p1, v0, :cond_b

    .line 16
    const/16 v0, 0xc8

    .line 18
    if-eq p1, v0, :cond_a

    .line 20
    const/16 v0, 0x137

    .line 22
    if-eq p1, v0, :cond_9

    .line 24
    const/16 v0, 0x13f

    .line 26
    if-eq p1, v0, :cond_8

    .line 28
    const/16 v0, 0x7d1

    .line 30
    if-eq p1, v0, :cond_7

    .line 32
    const/4 v0, 0x3

    .line 33
    if-eq p1, v0, :cond_6

    .line 35
    const/4 v0, 0x4

    .line 36
    if-eq p1, v0, :cond_5

    .line 38
    const/16 v0, 0x25

    .line 40
    if-eq p1, v0, :cond_4

    .line 42
    const/16 v0, 0x26

    .line 44
    if-eq p1, v0, :cond_3

    .line 46
    const/16 v0, 0x2e

    .line 48
    if-eq p1, v0, :cond_2

    .line 50
    const/16 v0, 0x2f

    .line 52
    if-eq p1, v0, :cond_1

    .line 54
    const/16 v0, 0x191

    .line 56
    if-eq p1, v0, :cond_d

    .line 58
    const/16 v0, 0x192

    .line 60
    if-eq p1, v0, :cond_0

    .line 62
    packed-switch p1, :pswitch_data_0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->onGuidStop(I)V

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->onChildPage()V

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-direct {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->onMainPage()V

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-direct {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->onAutoModeNight()V

    .line 81
    goto :goto_0

    .line 82
    :cond_4
    invoke-direct {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->onAutoModeDay()V

    .line 85
    goto :goto_0

    .line 86
    :cond_5
    invoke-direct {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->onBackGround()V

    .line 89
    goto :goto_0

    .line 90
    :cond_6
    invoke-direct {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->onForeGround()V

    .line 93
    goto :goto_0

    .line 94
    :cond_7
    invoke-direct {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->onMapRenderSurfaceCreated()V

    .line 97
    goto :goto_0

    .line 98
    :cond_8
    invoke-direct {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->onMapSwapBuffered()V

    .line 101
    goto :goto_0

    .line 102
    :cond_9
    invoke-direct {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->onGframeFirstDrew()V

    .line 105
    goto :goto_0

    .line 106
    :cond_a
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->getPluginManager()Lus;

    .line 109
    move-result-object p1

    .line 110
    invoke-interface {p1}, Lus;->EXSCREEN_FIRST_DRAW()V

    .line 113
    goto :goto_0

    .line 114
    :cond_b
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->getPluginManager()Lus;

    .line 117
    move-result-object p1

    .line 118
    invoke-interface {p1}, Lus;->FIRST_DRAW()V

    .line 121
    goto :goto_0

    .line 122
    :cond_c
    invoke-direct {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->onEnterWarn()V

    .line 125
    goto :goto_0

    .line 126
    :cond_d
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->onGuidStart(I)V

    .line 129
    goto :goto_0

    .line 130
    :cond_e
    invoke-direct {p0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->onStartFinish()V

    .line 133
    :goto_0
    return-void

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsMainPage:Z

    .line 4
    iput-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIndexFragmentForeground:Z

    .line 6
    iput-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mGFrameFirstDrew:Z

    .line 8
    iput-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsGuiding:Z

    .line 10
    iput-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mIsGuidingLastFore:Z

    .line 12
    sget-object v0, Lnq$a;->a:Lnq$a;

    .line 14
    iput-object v0, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mapRenderStatus:Lnq$a;

    .line 16
    return-void
.end method

.method public setMapRenderStatus(Lnq$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;->mapRenderStatus:Lnq$a;

    .line 3
    return-void
.end method
