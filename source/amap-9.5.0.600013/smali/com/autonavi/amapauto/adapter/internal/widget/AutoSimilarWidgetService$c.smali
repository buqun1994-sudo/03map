.class public Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->l()Lqq;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "AutoSimilarWidgetService"

    .line 13
    const-string v4, "WidgetStateCallback.onWidgetFirstFrameDrawn, mStateProvider={?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->l()Lqq;

    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 24
    :try_start_0
    const-string v1, "IAutoWidgetStateProvider.onWidgetFirstFrameDrawn"

    .line 26
    new-array v4, v3, [Ljava/lang/Object;

    .line 28
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->l()Lqq;

    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Lqq;->l()V

    .line 38
    invoke-static {v3}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->n(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    aput-object v4, v0, v3

    .line 51
    const-string v3, "widgetStateCallback.onWidgetFirstFrameDrawn e = {?}"

    .line 53
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    :cond_0
    :goto_0
    return-void
.end method

.method public u()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->l()Lqq;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "AutoSimilarWidgetService"

    .line 13
    const-string v4, "widgetStateCallback.onWidgetRenderPause mStateProvider={?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->l()Lqq;

    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 24
    :try_start_0
    const-string v1, "widgetStateCallback.onWidgetRenderPause"

    .line 26
    new-array v4, v3, [Ljava/lang/Object;

    .line 28
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->l()Lqq;

    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Lqq;->u()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 46
    aput-object v4, v0, v3

    .line 48
    const-string v3, "widgetStateCallback.onWidgetRenderPause e = {?}"

    .line 50
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    :cond_0
    :goto_0
    return-void
.end method
