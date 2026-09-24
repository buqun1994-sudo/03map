.class public Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;
.super Ljava/lang/Object;
.source "FloatWindowsManage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatWindowsManage"

.field private static instance:Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;


# instance fields
.field private context:Landroid/content/Context;

.field private floatRect:Landroid/graphics/Rect;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static getInstance()Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->instance:Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->instance:Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;

    invoke-direct {v0}, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;-><init>()V

    sput-object v0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->instance:Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->instance:Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initOffset(IIII)Landroid/graphics/Rect;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 155
    .local v0, "rect":Landroid/graphics/Rect;
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 156
    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 157
    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 158
    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 159
    return-object v0
.end method


# virtual methods
.method public control(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 128
    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 135
    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 137
    :pswitch_0
    invoke-static {}, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->getInstance()Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->getCanShowOther()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    const-string v5, "x"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 139
    .local v3, "x":I
    const-string v5, "y"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 140
    .local v4, "y":I
    const-string v5, "w"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 141
    .local v2, "w":I
    const-string v5, "h"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 142
    .local v1, "h":I
    invoke-direct {p0, v3, v4, v2, v1}, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->initOffset(IIII)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->setFloatRect(Landroid/graphics/Rect;)V

    .line 143
    invoke-virtual {p0}, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->showMap()V

    goto :goto_0

    .line 135
    .end local v1    # "h":I
    .end local v2    # "w":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :sswitch_0
    const-string v7, "com.autonavi.plus.showmap"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    goto :goto_1

    :sswitch_1
    const-string v7, "com.autonavi.plus.closemap"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    .line 147
    :pswitch_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->hideMap()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2a04e849 -> :sswitch_0
        0x3eb228ec -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hideMap()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->frameLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->frameLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->frameLayout:Landroid/widget/FrameLayout;

    .line 122
    invoke-static {}, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->getInstance()Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->restoreViews()V

    .line 123
    const-string v0, "FloatWindowsManage"

    const-string v1, "hideMap: remove view success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->context:Landroid/content/Context;

    .line 42
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->windowManager:Landroid/view/WindowManager;

    .line 43
    return-void
.end method

.method public setFloatRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->floatRect:Landroid/graphics/Rect;

    .line 47
    return-void
.end method

.method public showMap()V
    .locals 7

    .prologue
    .line 52
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 53
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    const-string v3, "FloatWindowsManage"

    const-string v4, "showMap: \u6ca1\u6709\u60ac\u6d6e\u7a97\u6743\u9650"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_4

    .line 60
    invoke-static {}, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->getInstance()Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->getMapSurfaceView()Landroid/view/SurfaceView;

    move-result-object v1

    .line 61
    .local v1, "mapSurfaceView":Landroid/view/SurfaceView;
    invoke-static {}, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->getInstance()Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->getUiSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    .line 62
    .local v2, "uiSurfaceView":Landroid/view/SurfaceView;
    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    .line 63
    :cond_1
    const-string v3, "FloatWindowsManage"

    const-string v4, "showMap: mapSurfaceView == null || uiSurfaceView == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v1    # "mapSurfaceView":Landroid/view/SurfaceView;
    .end local v2    # "uiSurfaceView":Landroid/view/SurfaceView;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FloatWindowsManage"

    const-string v4, "showMap: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "mapSurfaceView":Landroid/view/SurfaceView;
    .restart local v2    # "uiSurfaceView":Landroid/view/SurfaceView;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->getInstance()Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->removeRootViews()V

    .line 69
    const-string v3, "FloatWindowsManage"

    const-string v4, "showMap: mark layout"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->frameLayout:Landroid/widget/FrameLayout;

    .line 71
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->frameLayout:Landroid/widget/FrameLayout;

    const v4, 0x106000e

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 74
    const-string v3, "FloatWindowsManage"

    const-string v4, "showMap: mark layout params"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 76
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->floatRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 77
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->floatRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 78
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->floatRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->floatRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 79
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->floatRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->floatRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 80
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_3

    .line 81
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7f6

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 85
    :goto_1
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x128

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 86
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 87
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 89
    const-string v3, "FloatWindowsManage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showMap: layoutParams.x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " layoutParams.y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " layoutParams.width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " layoutParams.height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v3, "FloatWindowsManage"

    const-string v4, "showMap: add view"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 93
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 95
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->windowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 97
    const-string v3, "FloatWindowsManage"

    const-string v4, "showMap: add view success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 83
    :cond_3
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7d2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    goto/16 :goto_1

    .line 99
    .end local v1    # "mapSurfaceView":Landroid/view/SurfaceView;
    .end local v2    # "uiSurfaceView":Landroid/view/SurfaceView;
    :cond_4
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->floatRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 100
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->floatRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 101
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->floatRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->floatRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 102
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->floatRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->floatRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 103
    const-string v3, "FloatWindowsManage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showMap: layoutParams.x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " layoutParams.y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " layoutParams.width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " layoutParams.height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v3, "FloatWindowsManage"

    const-string v4, "showMap: update view"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v3, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->windowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    const-string v3, "FloatWindowsManage"

    const-string v4, "showMap: update view success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
