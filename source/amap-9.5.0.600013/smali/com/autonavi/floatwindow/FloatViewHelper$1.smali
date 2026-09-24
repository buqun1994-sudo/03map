.class Lcom/autonavi/floatwindow/FloatViewHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/floatwindow/FloatViewHelper;->refreshLightsGroup(Landroid/view/View;Landroid/content/Context;Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$cameraType:I

.field final synthetic val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/flexbox/FlexboxLayout;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/floatwindow/FloatViewHelper$1;->val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 3
    iput-object p2, p0, Lcom/autonavi/floatwindow/FloatViewHelper$1;->val$root:Landroid/view/View;

    .line 5
    iput p3, p0, Lcom/autonavi/floatwindow/FloatViewHelper$1;->val$cameraType:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/autonavi/floatwindow/FloatViewHelper$1;->val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    const-string v2, "FloatViewHelper"

    .line 11
    const-string v3, "removeAllViews"

    .line 13
    invoke-static {v2, v3, v1}, Lcz;->x(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lcom/autonavi/floatwindow/FloatViewHelper$1;->val$root:Landroid/view/View;

    .line 18
    invoke-static {}, Lcom/autonavi/floatwindow/FloatViewUtils;->getRoadNamePlaceId()I

    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v1

    .line 26
    const/16 v2, 0x8

    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget v1, p0, Lcom/autonavi/floatwindow/FloatViewHelper$1;->val$cameraType:I

    .line 33
    const/4 v2, 0x4

    .line 34
    if-eq v1, v2, :cond_2

    .line 36
    const/4 v2, 0x5

    .line 37
    if-eq v1, v2, :cond_1

    .line 39
    const/4 v2, 0x6

    .line 40
    if-eq v1, v2, :cond_0

    .line 42
    const/4 v2, 0x7

    .line 43
    if-eq v1, v2, :cond_1

    .line 45
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/autonavi/floatwindow/FloatViewHelper$1;->val$root:Landroid/view/View;

    .line 48
    sget v2, Lcom/autonavi/floatwindow/R$id;->cl_one:I

    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lig;

    .line 56
    iget-object v2, p0, Lcom/autonavi/floatwindow/FloatViewHelper$1;->val$root:Landroid/view/View;

    .line 58
    sget v3, Lcom/autonavi/floatwindow/R$id;->ce_one_first:I

    .line 60
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v2

    .line 64
    invoke-static {v1, v2, v0}, Lcom/autonavi/floatwindow/FloatViewHelper;->access$000(Lig;Landroid/view/View;Z)V

    .line 67
    return-void

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/autonavi/floatwindow/FloatViewHelper$1;->val$root:Landroid/view/View;

    .line 70
    sget v2, Lcom/autonavi/floatwindow/R$id;->cl_two:I

    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lig;

    .line 78
    iget-object v2, p0, Lcom/autonavi/floatwindow/FloatViewHelper$1;->val$root:Landroid/view/View;

    .line 80
    sget v3, Lcom/autonavi/floatwindow/R$id;->ce_two_first:I

    .line 82
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v2

    .line 86
    invoke-static {v1, v2, v0}, Lcom/autonavi/floatwindow/FloatViewHelper;->access$000(Lig;Landroid/view/View;Z)V

    .line 89
    return-void

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/autonavi/floatwindow/FloatViewHelper$1;->val$root:Landroid/view/View;

    .line 92
    sget v2, Lcom/autonavi/floatwindow/R$id;->cl_three:I

    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lig;

    .line 100
    iget-object v2, p0, Lcom/autonavi/floatwindow/FloatViewHelper$1;->val$root:Landroid/view/View;

    .line 102
    sget v3, Lcom/autonavi/floatwindow/R$id;->ce_three_first:I

    .line 104
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object v2

    .line 108
    invoke-static {v1, v2, v0}, Lcom/autonavi/floatwindow/FloatViewHelper;->access$000(Lig;Landroid/view/View;Z)V

    .line 111
    return-void
.end method
