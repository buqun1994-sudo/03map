.class public final LSplitPanelController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/icar03/content/model/MapPresentationPort;

# instance fields
.field private requestedDurationMs:J
.field private panelHost:Landroid/view/ViewGroup;

.field private mapLayer:Landroid/view/ViewGroup;

.field private gestureLayer:Landroid/view/ViewGroup;

.field private hintText:Landroid/widget/TextView;

.field private gestureNode:Landroid/view/ViewGroup;

.field private gestureBar:Lcom/icar03/content/host/MapGestureBar;

.field private gestureEnabled:Z

.field private gestureActive:Z

.field private screenWidth:I

.field private mapWidth:I

.field private expandedDividerX:I

.field private currentDividerX:F

.field private targetDividerX:F

.field private defaultProgress:F

.field private mapRatio:F

.field private layoutInitialized:Z

.field private downX:F

.field private downY:F

.field private downDividerX:F

.field private downTime:J

.field private panelState:I

.field private touchSlop:I

.field private hintAnimator:Landroid/animation/Animator;

.field private panelAnimator:Landroid/animation/ValueAnimator;

.field private geometryUpdating:Z

.field private mapSurface:Landroid/view/View;

.field private uiSurface:Landroid/view/View;

.field private coverView:Landroid/view/View;

.method public static installLegacy(Landroid/view/ViewGroup;)LSplitPanelController;
    .locals 5

    if-eqz p0, :return_null

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :return_null

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :return_null

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :return_null

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :return_null

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-le v0, v1, :return_null

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :return_null

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :return_null

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :return_null

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :return_null

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v1, v4, Landroid/view/ViewGroup;

    if-eqz v1, :return_null

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :return_null

    new-instance v0, LSplitPanelController;

    invoke-direct {v0, v2}, LSplitPanelController;-><init>(Landroid/view/ViewGroup;)V

    return-object v0

    :return_null
    const/4 v0, 0x0

    return-object v0
.end method

.method public static install(Landroid/view/ViewGroup;)LSplitPanelController;
    .locals 8

    if-eqz p0, :stable_return_null

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "split_panel_host"

    const-string v4, "id"

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :stable_return_null

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :stable_return_null

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :stable_return_null

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :stable_return_null

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :stable_return_null

    invoke-static {v1}, Lcom/icar03/content/host/MapGestureBarHost;->findGestureLayer(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :stable_return_null

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :stable_return_null

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :stable_return_null

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :stable_return_null

    new-instance v0, LSplitPanelController;

    invoke-direct {v0, v1}, LSplitPanelController;-><init>(Landroid/view/ViewGroup;)V

    invoke-static {p0, v0}, Lcom/autonavi/amapauto/content/ContentRuntime;->bindMapPresentation(Landroid/view/ViewGroup;Lcom/icar03/content/model/MapPresentationPort;)V

    invoke-direct {v0}, LSplitPanelController;->updateGeometry()V

    return-object v0

    :stable_return_null
    const/4 v0, 0x0

    return-object v0
.end method

.method public settleToExpanded()V
    .locals 3

    const-wide/16 v0, 0x1e0
    iput-wide v0, p0, LSplitPanelController;->requestedDurationMs:J
    iget v2, p0, LSplitPanelController;->expandedDividerX:I
    int-to-float v2, v2
    invoke-direct {p0, v2}, LSplitPanelController;->animateTo(F)V
    return-void
.end method

.method public settleToCollapsed()V
    .locals 3

    const-wide/16 v0, 0x1e0
    iput-wide v0, p0, LSplitPanelController;->requestedDurationMs:J
    iget v2, p0, LSplitPanelController;->screenWidth:I
    int-to-float v2, v2
    invoke-direct {p0, v2}, LSplitPanelController;->animateTo(F)V
    return-void
.end method

.method public reservedGestureWidthPx()I
    .locals 1

    iget-object v0, p0, LSplitPanelController;->gestureNode:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
    return v0
.end method

.method public updateGestureState(ZZZZ)V
    .locals 2

    iput-boolean p1, p0, LSplitPanelController;->gestureEnabled:Z
    iget-object v0, p0, LSplitPanelController;->gestureBar:Lcom/icar03/content/host/MapGestureBar;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/icar03/content/host/MapGestureBar;->updateGestureState(ZZZZ)V

    if-nez p1, :gesture_state_done
    iget-boolean v0, p0, LSplitPanelController;->gestureActive:Z
    if-eqz v0, :gesture_state_done
    invoke-direct {p0}, LSplitPanelController;->cancelGestureToExpanded()V

    :gesture_state_done
    invoke-virtual {p0}, LSplitPanelController;->ensureGestureOnTop()V
    return-void
.end method

.method public ensureGestureOnTop()V
    .locals 4

    iget-object v0, p0, LSplitPanelController;->panelHost:Landroid/view/ViewGroup;
    iget-object v1, p0, LSplitPanelController;->gestureLayer:Landroid/view/ViewGroup;
    iget-object v2, p0, LSplitPanelController;->gestureNode:Landroid/view/ViewGroup;
    iget v3, p0, LSplitPanelController;->currentDividerX:F
    invoke-static {v0, v1, v2, v3}, Lcom/icar03/content/host/MapGestureBarHost;->ensureOnTop(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;F)V
    return-void
.end method

.method private isGestureAllowed()Z
    .locals 1

    iget-boolean v0, p0, LSplitPanelController;->gestureEnabled:Z
    if-eqz v0, :gesture_not_allowed
    invoke-static {p0}, Lcom/autonavi/amapauto/content/ContentRuntime;->isMapGestureAllowed(Lcom/icar03/content/model/MapPresentationPort;)Z
    move-result v0
    return v0

    :gesture_not_allowed
    const/4 v0, 0x0
    return v0
.end method

.method private cancelGestureToExpanded()V
    .locals 1

    const/4 v0, 0x0
    iput-boolean v0, p0, LSplitPanelController;->gestureActive:Z
    invoke-direct {p0}, LSplitPanelController;->dismissHint()V
    iget v0, p0, LSplitPanelController;->expandedDividerX:I
    int-to-float v0, v0
    invoke-direct {p0, v0}, LSplitPanelController;->animateTo(F)V
    return-void
.end method

.method private notifyPresentationPhase()V
    .locals 1

    iget v0, p0, LSplitPanelController;->panelState:I
    invoke-static {p0, v0}, Lcom/autonavi/amapauto/content/ContentRuntime;->onPanelPhaseChanged(Lcom/icar03/content/model/MapPresentationPort;I)V
    return-void
.end method

.method public getMapRatio()F
    .locals 1

    iget v0, p0, LSplitPanelController;->mapRatio:F

    return v0
.end method

.method public setMapRatio(F)V
    .locals 3

    cmpg-float v0, p1, p1

    if-nez v0, :return_void

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :return_void

    const/high16 v0, 0x3f800000

    cmpl-float v1, p1, v0

    if-ltz v1, :set_ratio

    goto :return_void

    :set_ratio
    iput p1, p0, LSplitPanelController;->mapRatio:F

    const/4 v0, 0x0

    iput-boolean v0, p0, LSplitPanelController;->geometryUpdating:Z

    invoke-direct {p0}, LSplitPanelController;->updateGeometry()V

    :return_void
    return-void
.end method

.method public getDefaultProgress()F
    .locals 1

    iget v0, p0, LSplitPanelController;->defaultProgress:F

    return v0
.end method

.method public setDefaultProgress(F)V
    .locals 3

    cmpg-float v0, p1, p1

    if-nez v0, :return_void

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :return_void

    const/high16 v0, 0x3f800000

    cmpg-float v1, p1, v0

    if-lez v1, :set_default

    goto :return_void

    :set_default
    iput p1, p0, LSplitPanelController;->defaultProgress:F

    iget-boolean v0, p0, LSplitPanelController;->layoutInitialized:Z

    if-nez v0, :return_void

    invoke-direct {p0}, LSplitPanelController;->updateGeometry()V

    :return_void
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f2aaaab

    iput v0, p0, LSplitPanelController;->mapRatio:F

    const/4 v0, 0x0

    int-to-float v0, v0

    iput v0, p0, LSplitPanelController;->defaultProgress:F

    iput-object p1, p0, LSplitPanelController;->panelHost:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, LSplitPanelController;->touchSlop:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, LSplitPanelController;->mapLayer:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/icar03/content/host/MapGestureBarHost;->findGestureLayer(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v3

    iput-object v3, p0, LSplitPanelController;->gestureLayer:Landroid/view/ViewGroup;

    iget-object v2, p0, LSplitPanelController;->mapLayer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, LSplitPanelController;->mapSurface:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, LSplitPanelController;->uiSurface:Landroid/view/View;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, LSplitPanelController;->coverView:Landroid/view/View;

    iget-object v2, p0, LSplitPanelController;->gestureLayer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, LSplitPanelController;->gestureNode:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, LSplitPanelController;->hintText:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/icar03/content/host/MapGestureBar;->attachTo(Landroid/view/ViewGroup;)Lcom/icar03/content/host/MapGestureBar;
    move-result-object v5
    iput-object v5, p0, LSplitPanelController;->gestureBar:Lcom/icar03/content/host/MapGestureBar;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v2, p0, LSplitPanelController;->mapLayer:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v2, p0, LSplitPanelController;->gestureLayer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v2, p0, LSplitPanelController;->gestureNode:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, LSplitPanelController;->ensureGestureOnTop()V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :return_void

    invoke-direct {p0}, LSplitPanelController;->updateGeometry()V

    :return_void
    return-void
.end method

.method private applyDividerX(F)V
    .locals 5

    iget v0, p0, LSplitPanelController;->expandedDividerX:I

    int-to-float v0, v0

    iget v1, p0, LSplitPanelController;->screenWidth:I

    int-to-float v1, v1

    cmpg-float v2, p1, v0

    if-ltz v2, :divider_min

    cmpl-float v2, p1, v1

    if-lez v2, :divider_ready

    move p1, v1

    goto :divider_ready

    :divider_min
    move p1, v0

    :divider_ready
    iput p1, p0, LSplitPanelController;->currentDividerX:F

    sub-float v2, p1, v0

    iget-object v3, p0, LSplitPanelController;->panelHost:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0}, LSplitPanelController;->ensureGestureOnTop()V

    iget v4, p0, LSplitPanelController;->mapWidth:I

    int-to-float v4, v4

    invoke-static {p0, p1, v0, v4}, Lcom/autonavi/amapauto/content/ContentRuntime;->onMapDividerChanged(Lcom/icar03/content/model/MapPresentationPort;FFF)V

    return-void
.end method

.method private cancelPanelAnimation()V
    .locals 2

    iget-object v0, p0, LSplitPanelController;->panelAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :return_void

    const/4 v1, 0x0

    iput-object v1, p0, LSplitPanelController;->panelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :return_void
    return-void
.end method

.method private animateTo(F)V
    .locals 8

    iget v0, p0, LSplitPanelController;->expandedDividerX:I

    int-to-float v0, v0

    iget v1, p0, LSplitPanelController;->screenWidth:I

    int-to-float v1, v1

    cmpg-float v2, p1, v0

    if-ltz v2, :target_min

    cmpl-float v2, p1, v1

    if-lez v2, :target_ready

    move p1, v1

    goto :target_ready

    :target_min
    move p1, v0

    :target_ready
    invoke-direct {p0}, LSplitPanelController;->cancelPanelAnimation()V

    iput p1, p0, LSplitPanelController;->targetDividerX:F

    iget v2, p0, LSplitPanelController;->mapWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    cmpg-float v3, p1, v2

    if-ltz v3, :settling_expanded

    const/4 v3, 0x5

    iput v3, p0, LSplitPanelController;->panelState:I

    invoke-direct {p0}, LSplitPanelController;->notifyPresentationPhase()V

    goto :state_ready

    :settling_expanded
    const/4 v3, 0x4

    iput v3, p0, LSplitPanelController;->panelState:I

    invoke-direct {p0}, LSplitPanelController;->notifyPresentationPhase()V

    :state_ready
    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, LSplitPanelController;->currentDividerX:F

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v5, 0x1

    aput p1, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, LSplitPanelController;->panelAnimator:Landroid/animation/ValueAnimator;

    iget-wide v4, p0, LSplitPanelController;->requestedDurationMs:J

    const-wide/16 v6, 0x0
    iput-wide v6, p0, LSplitPanelController;->requestedDurationMs:J
    cmp-long v6, v4, v6
    if-gtz v6, :duration_ready
    const-wide/16 v4, 0xc8
    :duration_ready

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, LSplitPanelController;->panelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private dismissHint()V
    .locals 2

    iget-object v0, p0, LSplitPanelController;->hintAnimator:Landroid/animation/Animator;

    if-eqz v0, :hint_cancelled

    const/4 v1, 0x0

    iput-object v1, p0, LSplitPanelController;->hintAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :hint_cancelled
    iget-object v0, p0, LSplitPanelController;->hintText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private fadeOutHint()V
    .locals 6

    iget-object v0, p0, LSplitPanelController;->hintAnimator:Landroid/animation/Animator;

    if-eqz v0, :hint_animation_cancelled

    const/4 v1, 0x0

    iput-object v1, p0, LSplitPanelController;->hintAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :hint_animation_cancelled
    iget-object v0, p0, LSplitPanelController;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :return_void

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x0

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x78

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v2, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v2, p0, LSplitPanelController;->hintAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    :return_void
    return-void
.end method

.method private finishGesture(Landroid/view/MotionEvent;Z)V
    .locals 13

    iget v0, p0, LSplitPanelController;->panelState:I

    const/4 v1, 0x3

    if-ne v0, v1, :not_dragging

    if-eqz p2, :drag_release

    invoke-direct {p0}, LSplitPanelController;->settleToStableState()V

    return-void

    :drag_release
    const/4 v0, 0x0

    if-eqz p1, :velocity_ready

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, LSplitPanelController;->downX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-wide v3, p0, LSplitPanelController;->downTime:J

    sub-long/2addr v1, v3

    long-to-float v3, v1

    const/high16 v4, 0x447a0000

    mul-float/2addr v0, v4

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-lez v5, :velocity_zero

    div-float/2addr v0, v3

    goto :velocity_ready

    :velocity_zero
    const/4 v0, 0x0

    int-to-float v0, v0

    :velocity_ready
    iget v1, p0, LSplitPanelController;->currentDividerX:F

    const v2, 0x3eb33333

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iget v0, p0, LSplitPanelController;->expandedDividerX:I

    int-to-float v0, v0

    iget v2, p0, LSplitPanelController;->mapWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    cmpg-float v2, v1, v0

    if-ltz v2, :drag_to_expanded

    iget v0, p0, LSplitPanelController;->screenWidth:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, LSplitPanelController;->animateTo(F)V

    return-void

    :drag_to_expanded
    iget v0, p0, LSplitPanelController;->expandedDividerX:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, LSplitPanelController;->animateTo(F)V

    return-void

    :not_dragging
    const/4 v1, 0x2

    if-ne v0, v1, :not_pressed

    if-eqz p2, :click_release

    iget-object v0, p0, LSplitPanelController;->panelAnimator:Landroid/animation/ValueAnimator;
    if-eqz v0, :cancel_release_stable
    return-void

    :cancel_release_stable
    invoke-direct {p0}, LSplitPanelController;->setStableStateFromCurrent()V

    return-void

    :click_release
    iget-object v0, p0, LSplitPanelController;->panelAnimator:Landroid/animation/ValueAnimator;
    if-eqz v0, :click_release_stable
    return-void

    :click_release_stable
    invoke-direct {p0}, LSplitPanelController;->setStableStateFromCurrent()V

    return-void

    :not_pressed
    iget-object v0, p0, LSplitPanelController;->panelAnimator:Landroid/animation/ValueAnimator;
    if-eqz v0, :blocked_release_stable
    return-void

    :blocked_release_stable
    invoke-direct {p0}, LSplitPanelController;->setStableStateFromCurrent()V

    return-void
.end method

.method private setStableStateFromCurrent()V
    .locals 4

    iget v0, p0, LSplitPanelController;->expandedDividerX:I

    int-to-float v0, v0

    iget v1, p0, LSplitPanelController;->mapWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LSplitPanelController;->currentDividerX:F

    cmpg-float v2, v1, v0

    if-ltz v2, :stable_expanded

    const/4 v2, 0x1

    iput v2, p0, LSplitPanelController;->panelState:I

    invoke-direct {p0}, LSplitPanelController;->notifyPresentationPhase()V

    return-void

    :stable_expanded
    const/4 v2, 0x0

    iput v2, p0, LSplitPanelController;->panelState:I

    invoke-direct {p0}, LSplitPanelController;->notifyPresentationPhase()V

    return-void
.end method

.method private settleToStableState()V
    .locals 4

    invoke-direct {p0}, LSplitPanelController;->setStableStateFromCurrent()V

    iget v0, p0, LSplitPanelController;->panelState:I

    if-eqz v0, :settle_expanded

    iget v0, p0, LSplitPanelController;->screenWidth:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, LSplitPanelController;->animateTo(F)V

    return-void

    :settle_expanded
    iget v0, p0, LSplitPanelController;->expandedDividerX:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, LSplitPanelController;->animateTo(F)V

    return-void
.end method

.method private showHint()V
    .locals 0

    # Reminders only come from the host's explicit entry request.
    invoke-direct {p0}, LSplitPanelController;->dismissHint()V
    return-void
.end method

.method private updateGeometry()V
    .locals 10

    iget-boolean v0, p0, LSplitPanelController;->geometryUpdating:Z

    if-eqz v0, :geometry_start

    return-void

    :geometry_start
    iget-object v1, p0, LSplitPanelController;->panelHost:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :use_cached_screen_width

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :use_cached_screen_width

    goto :screen_width_ready

    :use_cached_screen_width
    iget v2, p0, LSplitPanelController;->screenWidth:I

    if-lez v2, :return_void

    :screen_width_ready
    if-lez v2, :return_void

    const/4 v0, 0x1

    iput-boolean v0, p0, LSplitPanelController;->geometryUpdating:Z

    iget v9, p0, LSplitPanelController;->screenWidth:I

    iput v2, p0, LSplitPanelController;->screenWidth:I

    int-to-float v3, v2

    iget v0, p0, LSplitPanelController;->mapRatio:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, LSplitPanelController;->mapWidth:I

    sub-int v4, v2, v3

    iput v4, p0, LSplitPanelController;->expandedDividerX:I

    iget-object v5, p0, LSplitPanelController;->panelHost:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v7, v3, :panel_host_params_changed

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ne v7, v4, :panel_host_params_changed

    goto :panel_host_params_ready

    :panel_host_params_changed
    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :panel_host_params_ready

    iget-object v5, p0, LSplitPanelController;->mapSurface:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v7, v3, :map_surface_params_changed

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eqz v7, :map_surface_params_ready

    :map_surface_params_changed
    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, 0x0

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :map_surface_params_ready

    iget-object v5, p0, LSplitPanelController;->uiSurface:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v7, v3, :ui_surface_params_changed

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eqz v7, :ui_surface_params_ready

    :ui_surface_params_changed
    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, 0x0

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :ui_surface_params_ready

    iget-object v5, p0, LSplitPanelController;->coverView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v7, v3, :cover_params_changed

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eqz v7, :cover_params_ready

    :cover_params_changed
    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, 0x0

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cover_params_ready

    iget-object v5, p0, LSplitPanelController;->gestureNode:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v7, -0x3c

    if-ne v8, v7, :gesture_node_params_changed

    goto :gesture_node_params_ready

    :gesture_node_params_changed
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :gesture_node_params_ready

    iget-object v5, p0, LSplitPanelController;->hintText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v7, -0x14a

    if-ne v8, v7, :hint_text_params_changed

    goto :hint_text_params_ready

    :hint_text_params_changed
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :hint_text_params_ready

    iget-boolean v0, p0, LSplitPanelController;->layoutInitialized:Z

    if-nez v0, :preserve_divider

    int-to-float v4, v4

    int-to-float v3, v3

    iget v0, p0, LSplitPanelController;->defaultProgress:F

    mul-float/2addr v3, v0

    add-float/2addr v4, v3

    invoke-direct {p0, v4}, LSplitPanelController;->applyDividerX(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LSplitPanelController;->layoutInitialized:Z

    goto :geometry_done

    :preserve_divider
    if-eq v9, v2, :preserve_raw_divider
    iget v0, p0, LSplitPanelController;->panelState:I
    if-eqz v0, :preserve_expanded_endpoint
    const/4 v1, 0x1
    if-ne v0, v1, :preserve_raw_divider
    iget v0, p0, LSplitPanelController;->screenWidth:I
    int-to-float v0, v0
    goto :apply_preserved_divider
    :preserve_expanded_endpoint
    iget v0, p0, LSplitPanelController;->expandedDividerX:I
    int-to-float v0, v0
    goto :apply_preserved_divider
    :preserve_raw_divider
    iget v0, p0, LSplitPanelController;->currentDividerX:F
    :apply_preserved_divider

    invoke-direct {p0, v0}, LSplitPanelController;->applyDividerX(F)V

    :geometry_done
    const/4 v0, 0x0

    iput-boolean v0, p0, LSplitPanelController;->geometryUpdating:Z

    :return_void
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, LSplitPanelController;->panelAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :check_hint

    if-ne p1, v0, :check_hint

    const/4 v1, 0x0

    iput-object v1, p0, LSplitPanelController;->panelAnimator:Landroid/animation/ValueAnimator;

    iget-boolean v0, p0, LSplitPanelController;->gestureActive:Z
    if-nez v0, :animation_done

    iget v0, p0, LSplitPanelController;->screenWidth:I

    int-to-float v0, v0

    iget v1, p0, LSplitPanelController;->targetDividerX:F

    cmpg-float v2, v1, v0

    if-ltz v2, :panel_expanded

    const/4 v0, 0x1

    iput v0, p0, LSplitPanelController;->panelState:I

    invoke-direct {p0}, LSplitPanelController;->notifyPresentationPhase()V

    goto :animation_done

    :panel_expanded
    const/4 v0, 0x0

    iput v0, p0, LSplitPanelController;->panelState:I

    invoke-direct {p0}, LSplitPanelController;->notifyPresentationPhase()V

    goto :animation_done

    :check_hint
    iget-object v0, p0, LSplitPanelController;->hintAnimator:Landroid/animation/Animator;

    if-eqz v0, :animation_done

    if-ne p1, v0, :animation_done

    const/4 v1, 0x0

    iput-object v1, p0, LSplitPanelController;->hintAnimator:Landroid/animation/Animator;

    iget-object v0, p0, LSplitPanelController;->hintText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :animation_done
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, LSplitPanelController;->panelAnimator:Landroid/animation/ValueAnimator;

    if-eq p1, v0, :update_panel

    return-void

    :update_panel
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, LSplitPanelController;->applyDividerX(F)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    iget-boolean v0, p0, LSplitPanelController;->geometryUpdating:Z

    if-eqz v0, :layout_ready

    return-void

    :layout_ready
    invoke-direct {p0}, LSplitPanelController;->updateGeometry()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, v1, :action_down

    iget-boolean v1, p0, LSplitPanelController;->gestureActive:Z
    if-eqz v1, :return_false
    invoke-direct {p0}, LSplitPanelController;->isGestureAllowed()Z
    move-result v1
    if-nez v1, :touch_still_allowed
    invoke-direct {p0}, LSplitPanelController;->cancelGestureToExpanded()V
    goto :return_true

    :touch_still_allowed
    const/4 v1, 0x2

    if-eq v0, v1, :action_move

    const/4 v1, 0x1

    if-eq v0, v1, :action_up

    const/4 v1, 0x3

    if-eq v0, v1, :action_cancel

    const/4 v1, 0x5

    if-eq v0, v1, :action_cancel

    const/4 v1, 0x6

    if-eq v0, v1, :action_cancel

    goto :return_true

    :action_down
    invoke-direct {p0}, LSplitPanelController;->isGestureAllowed()Z
    move-result v0
    if-eqz v0, :return_false
    const/4 v0, 0x1
    iput-boolean v0, p0, LSplitPanelController;->gestureActive:Z

    iget-object v0, p0, LSplitPanelController;->panelHost:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget v1, p0, LSplitPanelController;->expandedDividerX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, LSplitPanelController;->applyDividerX(F)V

    iget v0, p0, LSplitPanelController;->currentDividerX:F

    iput v0, p0, LSplitPanelController;->downDividerX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, LSplitPanelController;->downX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, LSplitPanelController;->downY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, LSplitPanelController;->downTime:J

    const/4 v0, 0x2

    iput v0, p0, LSplitPanelController;->panelState:I

    goto :return_true

    :action_move
    iget v0, p0, LSplitPanelController;->panelState:I

    const/4 v1, 0x3

    if-eq v0, v1, :drag_move

    const/4 v1, 0x2

    if-ne v0, v1, :return_true

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, LSplitPanelController;->downX:F

    sub-float v2, v0, v2

    iget v3, p0, LSplitPanelController;->downY:F

    sub-float v3, v1, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, LSplitPanelController;->touchSlop:I

    int-to-float v6, v6

    cmpl-float v7, v4, v6

    if-lez v7, :check_vertical_slop

    goto :after_slop

    :check_vertical_slop
    cmpl-float v7, v5, v6

    if-lez v7, :return_true

    :after_slop
    const v6, 0x3f99999a

    mul-float/2addr v5, v6

    cmpg-float v6, v4, v5

    if-ltz v6, :block_gesture

    iget v6, p0, LSplitPanelController;->expandedDividerX:I

    int-to-float v6, v6

    iget v7, p0, LSplitPanelController;->mapWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, LSplitPanelController;->currentDividerX:F

    cmpg-float v8, v7, v6

    if-ltz v8, :from_expanded

    const/4 v7, 0x0

    int-to-float v7, v7

    cmpl-float v8, v2, v7

    if-gez v8, :block_gesture

    goto :horizontal_started

    :from_expanded
    const/4 v7, 0x0

    int-to-float v7, v7

    cmpl-float v8, v2, v7

    if-lez v8, :block_gesture

    :horizontal_started
    invoke-direct {p0}, LSplitPanelController;->cancelPanelAnimation()V

    iget v6, p0, LSplitPanelController;->currentDividerX:F
    iput v6, p0, LSplitPanelController;->downDividerX:F

    invoke-direct {p0}, LSplitPanelController;->fadeOutHint()V

    const/4 v6, 0x3

    iput v6, p0, LSplitPanelController;->panelState:I

    invoke-direct {p0}, LSplitPanelController;->notifyPresentationPhase()V

    iget v6, p0, LSplitPanelController;->downDividerX:F

    add-float/2addr v6, v2

    invoke-direct {p0, v6}, LSplitPanelController;->applyDividerX(F)V

    goto :return_true

    :block_gesture
    const/4 v6, 0x6

    iput v6, p0, LSplitPanelController;->panelState:I

    goto :return_true

    :drag_move
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, LSplitPanelController;->downX:F

    sub-float/2addr v0, v1

    iget v1, p0, LSplitPanelController;->downDividerX:F

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, LSplitPanelController;->applyDividerX(F)V

    goto :return_true

    :action_up
    const/4 v1, 0x0
    iput-boolean v1, p0, LSplitPanelController;->gestureActive:Z

    invoke-direct {p0, p2, v1}, LSplitPanelController;->finishGesture(Landroid/view/MotionEvent;Z)V

    goto :return_true

    :action_cancel
    const/4 v1, 0x0
    iput-boolean v1, p0, LSplitPanelController;->gestureActive:Z
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, LSplitPanelController;->finishGesture(Landroid/view/MotionEvent;Z)V

    :return_true
    const/4 v0, 0x1

    return v0

    :return_false
    const/4 v0, 0x0
    return v0
.end method
