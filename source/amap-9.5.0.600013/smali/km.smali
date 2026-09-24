.class public Lkm;
.super Lfc;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/autonavi/amapauto/jni/RoadMapInteract$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkm$e;,
        Lkm$f;
    }
.end annotation


# static fields
.field public static B:I = 0x3

.field public static C:I = 0x7

.field public static D:I = 0x1

.field public static E:I = 0x2

.field public static F:I = 0x3


# instance fields
.field public A:I

.field public t:I

.field public u:I

.field public v:F

.field public w:Lkm$e;

.field public x:Lkm$f;

.field public y:Z

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfc;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lkm;->A:I

    .line 7
    return-void
.end method

.method public static synthetic k(Lkm;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkm;->u(I)V

    .line 4
    return-void
.end method

.method public static synthetic l(Lkm;)Lkm$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lkm;->w:Lkm$e;

    .line 3
    return-object p0
.end method


# virtual methods
.method public a([BII)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 7
    const/4 v2, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    array-length v2, p1

    .line 10
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v2

    .line 14
    aput-object v2, v0, v1

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v2

    .line 21
    aput-object v2, v0, v1

    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v2

    .line 28
    aput-object v2, v0, v1

    .line 30
    const-string v1, "FloatLayoutStyleGuide"

    .line 32
    const-string v2, "onReceived img:{?},width:{?},height:{?}"

    .line 34
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const/16 v0, 0x26c

    .line 39
    invoke-static {v0}, Lib;->u(I)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Lvo;->b()Landroid/os/Handler;

    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lkm$c;

    .line 51
    invoke-direct {v1, p0, p1, p2, p3}, Lkm$c;-><init>(Lkm;[BII)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lkm;->u(I)V

    .line 5
    invoke-static {}, Lhm;->a()Lhm;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lfc;->getmContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lhm;->e(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lkm$e;

    .line 7
    invoke-direct {v0}, Lkm$e;-><init>()V

    .line 10
    iput-object v0, p0, Lkm;->w:Lkm$e;

    .line 12
    :cond_0
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 14
    sget v1, Ly80;->K:I

    .line 16
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/view/ViewGroup;

    .line 22
    iput-object v1, v0, Lkm$e;->a:Landroid/view/ViewGroup;

    .line 24
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 26
    sget v1, Ly80;->u0:I

    .line 28
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/autonavi/skin/view/SkinImageView;

    .line 34
    iput-object v1, v0, Lkm$e;->b:Lcom/autonavi/skin/view/SkinImageView;

    .line 36
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 38
    sget v1, Ly80;->x:I

    .line 40
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lgm0;

    .line 46
    iput-object v1, v0, Lkm$e;->c:Lgm0;

    .line 48
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 50
    sget v1, Ly80;->N:I

    .line 52
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Landroid/view/ViewStub;

    .line 58
    iput-object v2, v0, Lkm$e;->k:Landroid/view/ViewStub;

    .line 60
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 62
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroid/view/ViewStub;

    .line 68
    iput-object v1, v0, Lkm$e;->l:Landroid/view/ViewStub;

    .line 70
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 72
    sget v1, Ly80;->L:I

    .line 74
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/view/ViewStub;

    .line 80
    iput-object v1, v0, Lkm$e;->m:Landroid/view/ViewStub;

    .line 82
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 84
    sget v1, Ly80;->M:I

    .line 86
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Landroid/view/ViewStub;

    .line 92
    iput-object v1, v0, Lkm$e;->j:Landroid/view/ViewStub;

    .line 94
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 96
    sget v1, Ly80;->Q0:I

    .line 98
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroid/view/ViewGroup;

    .line 104
    iput-object v1, v0, Lkm$e;->n:Landroid/view/ViewGroup;

    .line 106
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 108
    sget v1, Ly80;->F:I

    .line 110
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object v1

    .line 114
    iput-object v1, v0, Lkm$e;->x:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 118
    sget v1, Ly80;->D:I

    .line 120
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v0, Lkm$e;->w:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 128
    iget-object v0, v0, Lkm$e;->w:Landroid/view/View;

    .line 130
    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 136
    iget-object v0, v0, Lkm$e;->c:Lgm0;

    .line 138
    if-eqz v0, :cond_1

    .line 140
    const/4 v0, 0x1

    .line 141
    new-array v0, v0, [Ljava/lang/Object;

    .line 143
    iget v2, p0, Lkm;->u:I

    .line 145
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    move-result-object v2

    .line 149
    aput-object v2, v0, v1

    .line 151
    const-string v2, "WidgetHorizionalTmcBarView"

    .line 153
    const-string v3, "mTmcViewLength :{?}"

    .line 155
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 160
    sget v3, Ly80;->v0:I

    .line 162
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Lcom/autonavi/skin/view/SkinImageView;

    .line 168
    iput-object v3, v0, Lkm$e;->d:Lcom/autonavi/skin/view/SkinImageView;

    .line 170
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 172
    sget v3, Ly80;->w0:I

    .line 174
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Lcom/autonavi/skin/view/SkinImageView;

    .line 180
    iput-object v3, v0, Lkm$e;->e:Lcom/autonavi/skin/view/SkinImageView;

    .line 182
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 184
    iget-object v0, v0, Lkm$e;->e:Lcom/autonavi/skin/view/SkinImageView;

    .line 186
    const/16 v3, 0x8

    .line 188
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 191
    const-string v0, "mTmcBarView :GONE"

    .line 193
    new-array v1, v1, [Ljava/lang/Object;

    .line 195
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 200
    iget-object v0, v0, Lkm$e;->c:Lgm0;

    .line 202
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 207
    iget-object v0, v0, Lkm$e;->d:Lcom/autonavi/skin/view/SkinImageView;

    .line 209
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 212
    :cond_1
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "FloatLayoutStyleGuide"

    .line 6
    const-string v3, "onHide"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lkm;->x:Lkm$f;

    .line 14
    const/16 v2, 0x26c

    .line 16
    invoke-static {v2}, Lib;->u(I)Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 22
    sput-object v1, Lcom/autonavi/amapauto/jni/RoadMapInteract;->floatHandler:Lcom/autonavi/amapauto/jni/RoadMapInteract$a;

    .line 24
    new-instance v1, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;

    .line 26
    invoke-direct {v1}, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;-><init>()V

    .line 29
    iput-boolean v0, v1, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->b:Z

    .line 31
    const/4 v0, 0x1

    .line 32
    iput v0, v1, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->a:I

    .line 34
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/RoadMapInteract;->sendRoadMapVisibleImpl(Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;)V

    .line 37
    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkm;->t()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    iget-object v1, v0, Lkm$e;->Q:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 14
    if-eqz v1, :cond_1

    .line 16
    iget-object v0, v0, Lkm$e;->R:Landroid/widget/LinearLayout;

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 21
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 23
    iget-object v0, v0, Lkm$e;->Q:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 25
    const/16 v1, 0x8

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    invoke-static {}, Lib;->l()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 38
    iget-object v0, v0, Lkm$e;->L:Lcom/autonavi/view/custom/CustomCardSuspensionView;

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object v1

    .line 44
    sget v2, Lt80;->K2:I

    .line 46
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_1
    return-void
.end method

.method public f(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lkm;->t()Z

    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 14
    if-eqz v2, :cond_1b

    .line 16
    iget-object v2, v2, Lkm$e;->Q:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 18
    if-eqz v2, :cond_1b

    .line 20
    iget v2, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->type:I

    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    if-ne v3, v2, :cond_1

    .line 26
    const/4 v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v2, 0x0

    .line 29
    :goto_0
    const/16 v5, 0x8

    .line 31
    if-nez v2, :cond_3

    .line 33
    const/16 v6, 0x26c

    .line 35
    invoke-static {v6}, Lib;->u(I)Z

    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_3

    .line 41
    iget-object v1, v0, Lkm;->w:Lkm$e;

    .line 43
    iget-object v1, v1, Lkm$e;->S:Landroid/view/View;

    .line 45
    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_2
    return-void

    .line 51
    :cond_3
    iget-object v6, v0, Lkm;->w:Lkm$e;

    .line 53
    iget-object v6, v6, Lkm$e;->R:Landroid/widget/LinearLayout;

    .line 55
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 58
    if-eqz v2, :cond_5

    .line 60
    iget-object v2, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->tollGate:[I

    .line 62
    invoke-virtual {v0, v2}, Lkm;->p([I)Ljava/util/List;

    .line 65
    move-result-object v2

    .line 66
    if-nez v2, :cond_4

    .line 68
    iget-object v7, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->tollGate:[I

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {v0, v2}, Lkm;->o(Ljava/util/List;)[I

    .line 74
    move-result-object v7

    .line 75
    goto :goto_1

    .line 76
    :cond_5
    const/4 v2, 0x0

    .line 77
    const/4 v7, 0x0

    .line 78
    :goto_1
    invoke-static {}, Lrv;->H()Lrv;

    .line 81
    move-result-object v8

    .line 82
    invoke-virtual {v8}, Lrv;->z()Landroid/content/Context;

    .line 85
    move-result-object v8

    .line 86
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    move-result-object v8

    .line 90
    sget v9, Lq80;->l:I

    .line 92
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 95
    move-result v8

    .line 96
    float-to-int v15, v8

    .line 97
    invoke-static {}, Lrv;->H()Lrv;

    .line 100
    move-result-object v8

    .line 101
    invoke-virtual {v8}, Lrv;->z()Landroid/content/Context;

    .line 104
    move-result-object v8

    .line 105
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 108
    move-result-object v8

    .line 109
    sget v9, Lq80;->y:I

    .line 111
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 114
    move-result v8

    .line 115
    float-to-int v8, v8

    .line 116
    iget v9, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->type:I

    .line 118
    if-ne v9, v3, :cond_6

    .line 120
    iget-object v9, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->tollGate:[I

    .line 122
    if-eqz v9, :cond_7

    .line 124
    array-length v9, v7

    .line 125
    goto :goto_2

    .line 126
    :cond_6
    iget-object v9, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->backLane:[I

    .line 128
    if-eqz v9, :cond_7

    .line 130
    array-length v9, v9

    .line 131
    goto :goto_2

    .line 132
    :cond_7
    const/4 v9, 0x0

    .line 133
    :goto_2
    const/4 v14, 0x7

    .line 134
    if-le v9, v14, :cond_8

    .line 136
    move v10, v9

    .line 137
    goto :goto_3

    .line 138
    :cond_8
    const/4 v10, 0x7

    .line 139
    :goto_3
    invoke-static {}, Lrv;->H()Lrv;

    .line 142
    move-result-object v11

    .line 143
    invoke-virtual {v11}, Lrv;->z()Landroid/content/Context;

    .line 146
    move-result-object v11

    .line 147
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 150
    move-result-object v11

    .line 151
    sget v12, Lq80;->x:I

    .line 153
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 156
    move-result v11

    .line 157
    const/4 v13, 0x2

    .line 158
    mul-int/lit8 v11, v11, 0x2

    .line 160
    int-to-float v11, v11

    .line 161
    int-to-float v10, v10

    .line 162
    const/high16 v12, 0x40c00000    # 6.0f

    .line 164
    sub-float v12, v10, v12

    .line 166
    div-float/2addr v11, v12

    .line 167
    float-to-int v11, v11

    .line 168
    invoke-static {}, Lrv;->H()Lrv;

    .line 171
    move-result-object v12

    .line 172
    invoke-virtual {v12}, Lrv;->z()Landroid/content/Context;

    .line 175
    move-result-object v12

    .line 176
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    move-result-object v12

    .line 180
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 183
    move-result-object v12

    .line 184
    const/high16 v6, 0x3f800000    # 1.0f

    .line 186
    invoke-static {v3, v6, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 189
    move-result v12

    .line 190
    const/4 v5, 0x3

    .line 191
    new-array v14, v5, [Ljava/lang/Object;

    .line 193
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    move-result-object v9

    .line 197
    aput-object v9, v14, v4

    .line 199
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object v9

    .line 203
    aput-object v9, v14, v3

    .line 205
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 208
    move-result-object v9

    .line 209
    aput-object v9, v14, v13

    .line 211
    const-string v9, "FloatLayoutStyleGuide"

    .line 213
    const-string v13, "floatTest onShowNaviLaneInfo laneNumSize:{?} margin:{?},oneDP:{?}"

    .line 215
    invoke-static {v9, v13, v14}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    int-to-double v13, v11

    .line 219
    float-to-double v4, v12

    .line 220
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 223
    move-result-wide v4

    .line 224
    cmpg-double v9, v13, v4

    .line 226
    if-gtz v9, :cond_9

    .line 228
    const/4 v11, 0x0

    .line 229
    :cond_9
    invoke-static {}, Lib;->o()Z

    .line 232
    move-result v4

    .line 233
    if-eqz v4, :cond_b

    .line 235
    invoke-static {}, Lrv;->H()Lrv;

    .line 238
    move-result-object v4

    .line 239
    invoke-virtual {v4}, Lrv;->z()Landroid/content/Context;

    .line 242
    move-result-object v4

    .line 243
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 246
    move-result-object v4

    .line 247
    sget v5, Lq80;->m:I

    .line 249
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 252
    move-result v4

    .line 253
    float-to-int v4, v4

    .line 254
    iget v5, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->type:I

    .line 256
    if-ne v3, v5, :cond_a

    .line 258
    int-to-float v4, v15

    .line 259
    mul-float v4, v4, v6

    .line 261
    div-float/2addr v4, v10

    .line 262
    mul-float v4, v4, v6

    .line 264
    float-to-int v4, v4

    .line 265
    :cond_a
    const/4 v5, 0x0

    .line 266
    goto :goto_4

    .line 267
    :cond_b
    int-to-float v4, v15

    .line 268
    mul-float v4, v4, v6

    .line 270
    div-float/2addr v4, v10

    .line 271
    mul-float v4, v4, v6

    .line 273
    float-to-int v4, v4

    .line 274
    sub-int/2addr v4, v11

    .line 275
    move v5, v11

    .line 276
    :goto_4
    invoke-static {}, Lrv;->H()Lrv;

    .line 279
    move-result-object v6

    .line 280
    invoke-virtual {v6}, Lrv;->z()Landroid/content/Context;

    .line 283
    move-result-object v6

    .line 284
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 287
    move-result-object v6

    .line 288
    sget v9, Lq80;->s:I

    .line 290
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 293
    move-result v6

    .line 294
    float-to-int v6, v6

    .line 295
    new-instance v14, Lmm;

    .line 297
    invoke-static {}, Lrv;->H()Lrv;

    .line 300
    move-result-object v9

    .line 301
    invoke-virtual {v9}, Lrv;->z()Landroid/content/Context;

    .line 304
    move-result-object v9

    .line 305
    invoke-direct {v14, v9, v4, v6, v5}, Lmm;-><init>(Landroid/content/Context;III)V

    .line 308
    iget-object v10, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->backLane:[I

    .line 310
    iget-object v11, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->frontLane:[I

    .line 312
    iget v4, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->type:I

    .line 314
    if-ne v4, v3, :cond_c

    .line 316
    move-object v12, v7

    .line 317
    goto :goto_5

    .line 318
    :cond_c
    const/4 v12, 0x0

    .line 319
    :goto_5
    iget-object v13, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->extFlags:[I

    .line 321
    iget-object v4, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->recommend:[Z

    .line 323
    const/4 v6, 0x1

    .line 324
    move-object v9, v14

    .line 325
    const/4 v7, 0x2

    .line 326
    move-object/from16 v18, v14

    .line 328
    const/4 v7, 0x7

    .line 329
    move-object v14, v4

    .line 330
    move/from16 v16, v8

    .line 332
    move/from16 v17, v6

    .line 334
    invoke-virtual/range {v9 .. v17}, Lmm;->t([I[I[I[I[ZIIZ)Z

    .line 337
    move-result v4

    .line 338
    if-nez v4, :cond_d

    .line 340
    invoke-virtual/range {p0 .. p0}, Lkm;->e()V

    .line 343
    return-void

    .line 344
    :cond_d
    invoke-virtual/range {v18 .. v18}, Lge;->getDriveWaysWidth()I

    .line 347
    move-result v4

    .line 348
    invoke-virtual/range {v18 .. v18}, Lge;->getDriveWaysHeight()I

    .line 351
    move-result v6

    .line 352
    move-object/from16 v8, v18

    .line 354
    invoke-virtual {v8, v4, v6}, Landroid/view/View;->measure(II)V

    .line 357
    const/4 v9, 0x0

    .line 358
    invoke-virtual {v8, v9, v9, v4, v6}, Landroid/view/View;->layout(IIII)V

    .line 361
    iget-object v4, v0, Lkm;->w:Lkm$e;

    .line 363
    iget-object v4, v4, Lkm$e;->R:Landroid/widget/LinearLayout;

    .line 365
    const/16 v6, 0x11

    .line 367
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 370
    iget-object v4, v0, Lkm;->w:Lkm$e;

    .line 372
    iget-object v4, v4, Lkm$e;->R:Landroid/widget/LinearLayout;

    .line 374
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 377
    iget-object v4, v0, Lkm;->w:Lkm$e;

    .line 379
    iget-object v4, v4, Lkm$e;->Q:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 381
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 384
    invoke-static {}, Lib;->l()Z

    .line 387
    move-result v4

    .line 388
    if-eqz v4, :cond_e

    .line 390
    iget-object v4, v0, Lkm;->w:Lkm$e;

    .line 392
    iget-object v4, v4, Lkm$e;->L:Lcom/autonavi/view/custom/CustomCardSuspensionView;

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 397
    move-result-object v6

    .line 398
    sget v8, Lt80;->L2:I

    .line 400
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 403
    move-result-object v6

    .line 404
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 407
    :cond_e
    if-eqz v2, :cond_10

    .line 409
    invoke-static {}, Lib;->l()Z

    .line 412
    move-result v1

    .line 413
    if-eqz v1, :cond_f

    .line 415
    iget-object v1, v0, Lkm;->w:Lkm$e;

    .line 417
    iget-object v1, v1, Lkm$e;->S:Landroid/view/View;

    .line 419
    check-cast v1, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;

    .line 421
    invoke-virtual {v1, v2, v5, v3}, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->h(Ljava/util/List;IZ)V

    .line 424
    goto :goto_6

    .line 425
    :cond_f
    iget-object v1, v0, Lkm;->w:Lkm$e;

    .line 427
    iget-object v1, v1, Lkm$e;->S:Landroid/view/View;

    .line 429
    check-cast v1, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;

    .line 431
    invoke-virtual {v1, v2, v5}, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->g(Ljava/util/List;I)V

    .line 434
    :goto_6
    iget-object v1, v0, Lkm;->w:Lkm$e;

    .line 436
    iget-object v1, v1, Lkm$e;->S:Landroid/view/View;

    .line 438
    const/4 v2, 0x0

    .line 439
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 442
    goto/16 :goto_d

    .line 444
    :cond_10
    invoke-static {}, Lib;->n()Z

    .line 447
    move-result v2

    .line 448
    if-eqz v2, :cond_1a

    .line 450
    iget-object v2, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->recommend:[Z

    .line 452
    if-eqz v2, :cond_1a

    .line 454
    new-instance v2, Ljava/util/ArrayList;

    .line 456
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 459
    const/4 v6, 0x0

    .line 460
    const/4 v9, 0x0

    .line 461
    :goto_7
    iget-object v4, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->recommend:[Z

    .line 463
    array-length v4, v4

    .line 464
    if-ge v9, v4, :cond_19

    .line 466
    new-instance v4, Lnh0;

    .line 468
    invoke-direct {v4}, Lnh0;-><init>()V

    .line 471
    iput v9, v4, Lnh0;->b:I

    .line 473
    iput v9, v4, Lnh0;->a:I

    .line 475
    const/4 v8, 0x0

    .line 476
    iput-boolean v8, v4, Lnh0;->c:Z

    .line 478
    iput-boolean v8, v4, Lnh0;->d:Z

    .line 480
    iget-object v8, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->recommend:[Z

    .line 482
    aget-boolean v8, v8, v9

    .line 484
    iput-boolean v8, v4, Lnh0;->f:Z

    .line 486
    iput-boolean v3, v4, Lnh0;->g:Z

    .line 488
    if-eqz v8, :cond_18

    .line 490
    if-eqz v6, :cond_13

    .line 492
    iget-boolean v6, v6, Lnh0;->f:Z

    .line 494
    if-eqz v6, :cond_13

    .line 496
    iget-object v6, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->backLane:[I

    .line 498
    array-length v8, v6

    .line 499
    if-lt v8, v7, :cond_12

    .line 501
    array-length v6, v6

    .line 502
    sub-int/2addr v6, v3

    .line 503
    if-eq v9, v6, :cond_11

    .line 505
    goto :goto_8

    .line 506
    :cond_11
    const/4 v6, 0x3

    .line 507
    iput v6, v4, Lnh0;->e:I

    .line 509
    goto :goto_b

    .line 510
    :cond_12
    :goto_8
    const/4 v6, 0x3

    .line 511
    const/4 v8, 0x2

    .line 512
    iput v8, v4, Lnh0;->e:I

    .line 514
    goto :goto_c

    .line 515
    :cond_13
    const/4 v6, 0x3

    .line 516
    const/4 v8, 0x2

    .line 517
    if-nez v9, :cond_15

    .line 519
    iget-object v10, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->backLane:[I

    .line 521
    array-length v10, v10

    .line 522
    if-ge v10, v7, :cond_14

    .line 524
    const/4 v13, 0x1

    .line 525
    goto :goto_9

    .line 526
    :cond_14
    const/4 v13, 0x2

    .line 527
    :goto_9
    iput v13, v4, Lnh0;->e:I

    .line 529
    goto :goto_c

    .line 530
    :cond_15
    iget-object v10, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->backLane:[I

    .line 532
    array-length v11, v10

    .line 533
    sub-int/2addr v11, v3

    .line 534
    if-ne v9, v11, :cond_17

    .line 536
    array-length v10, v10

    .line 537
    if-ge v10, v7, :cond_16

    .line 539
    const/4 v10, 0x1

    .line 540
    goto :goto_a

    .line 541
    :cond_16
    const/4 v10, 0x0

    .line 542
    :goto_a
    iput v10, v4, Lnh0;->e:I

    .line 544
    goto :goto_c

    .line 545
    :cond_17
    iput v3, v4, Lnh0;->e:I

    .line 547
    goto :goto_c

    .line 548
    :cond_18
    const/4 v6, 0x3

    .line 549
    :goto_b
    const/4 v8, 0x2

    .line 550
    :goto_c
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    add-int/lit8 v9, v9, 0x1

    .line 555
    move-object v6, v4

    .line 556
    goto :goto_7

    .line 557
    :cond_19
    iget-object v1, v0, Lkm;->w:Lkm$e;

    .line 559
    iget-object v1, v1, Lkm$e;->S:Landroid/view/View;

    .line 561
    check-cast v1, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;

    .line 563
    const/4 v3, 0x0

    .line 564
    invoke-virtual {v1, v2, v5, v3}, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->h(Ljava/util/List;IZ)V

    .line 567
    iget-object v1, v0, Lkm;->w:Lkm$e;

    .line 569
    iget-object v1, v1, Lkm$e;->S:Landroid/view/View;

    .line 571
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 574
    goto :goto_d

    .line 575
    :cond_1a
    iget-object v1, v0, Lkm;->w:Lkm$e;

    .line 577
    iget-object v1, v1, Lkm$e;->S:Landroid/view/View;

    .line 579
    const/16 v2, 0x8

    .line 581
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 584
    :cond_1b
    :goto_d
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "FloatLayoutStyleGuide"

    .line 6
    const-string v2, "onShow"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/16 v0, 0x26c

    .line 13
    invoke-static {v0}, Lib;->u(I)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    sput-object p0, Lcom/autonavi/amapauto/jni/RoadMapInteract;->floatHandler:Lcom/autonavi/amapauto/jni/RoadMapInteract$a;

    .line 21
    new-instance v0, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;

    .line 23
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;-><init>()V

    .line 26
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, v0, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->b:Z

    .line 29
    iput v1, v0, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->a:I

    .line 31
    sget v1, Lq80;->l:I

    .line 33
    invoke-static {v1}, Lta0;->b(I)I

    .line 36
    move-result v1

    .line 37
    iput v1, v0, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->c:I

    .line 39
    sget v1, Lq80;->y:I

    .line 41
    invoke-static {v1}, Lta0;->b(I)I

    .line 44
    move-result v1

    .line 45
    iput v1, v0, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->d:I

    .line 47
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/RoadMapInteract;->sendRoadMapVisibleImpl(Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;)V

    .line 50
    :cond_0
    return-void
.end method

.method public getFloatLayoutId()I
    .locals 1

    .line 1
    const/16 v0, 0x26c

    .line 3
    invoke-static {v0}, Lib;->u(I)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget v0, Lb90;->l:I

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-static {}, Lib;->o()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 18
    sget v0, Lb90;->j:I

    .line 20
    return v0

    .line 21
    :cond_1
    invoke-static {}, Lib;->l()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 27
    sget v0, Lb90;->k:I

    .line 29
    return v0

    .line 30
    :cond_2
    sget v0, Lb90;->i:I

    .line 32
    return v0
.end method

.method public h(Z)V
    .locals 1

    .line 1
    new-instance v0, Lkm$b;

    .line 3
    invoke-direct {v0, p0, p1}, Lkm$b;-><init>(Lkm;Z)V

    .line 6
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public i(Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 3
    iget-object v0, v0, Lkm$e;->b:Lcom/autonavi/skin/view/SkinImageView;

    .line 5
    new-instance v1, Lkm$a;

    .line 7
    invoke-direct {v1, p0}, Lkm$a;-><init>(Lkm;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    return-void
.end method

.method public final m(Ljava/util/List;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    move-result v2

    .line 10
    if-ge v1, v2, :cond_2

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lnh0;

    .line 18
    iget-boolean v3, v2, Lnh0;->d:Z

    .line 20
    if-nez v3, :cond_1

    .line 22
    invoke-virtual {v2}, Lnh0;->c()I

    .line 25
    move-result v2

    .line 26
    sget v3, Lkm;->B:I

    .line 28
    if-le v2, v3, :cond_1

    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return v0
.end method

.method public n(Ljava/util/List;IZ)V
    .locals 3

    .line 1
    iget v0, p0, Lkm;->t:I

    .line 3
    if-eqz v0, :cond_2

    .line 5
    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 9
    iget-object v1, v0, Lkm$e;->c:Lgm0;

    .line 11
    if-eqz v1, :cond_2

    .line 13
    iget-object v0, v0, Lkm$e;->d:Lcom/autonavi/skin/view/SkinImageView;

    .line 15
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-eqz p3, :cond_2

    .line 20
    iput p2, p0, Lkm;->z:I

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 25
    move-result p3

    .line 26
    const/16 v0, 0x8

    .line 28
    if-ne p3, v0, :cond_1

    .line 30
    const-string p3, " GuideInfomTmcBarView :VISIBLE"

    .line 32
    const/4 v0, 0x0

    .line 33
    new-array v1, v0, [Ljava/lang/Object;

    .line 35
    const-string v2, "WidgetHorizionalTmcBarView"

    .line 37
    invoke-static {v2, p3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object p3, p0, Lkm;->w:Lkm$e;

    .line 42
    iget-object p3, p3, Lkm$e;->c:Lgm0;

    .line 44
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object p3, p0, Lkm;->w:Lkm$e;

    .line 49
    iget-object p3, p3, Lkm$e;->d:Lcom/autonavi/skin/view/SkinImageView;

    .line 51
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :cond_1
    iget-object p3, p0, Lkm;->w:Lkm$e;

    .line 56
    iget-object p3, p3, Lkm$e;->c:Lgm0;

    .line 58
    iget v0, p0, Lkm;->t:I

    .line 60
    iget v1, p0, Lkm;->z:I

    .line 62
    invoke-virtual {p3, p1, v0, v1}, Lgm0;->i(Ljava/util/List;II)V

    .line 65
    iget p1, p0, Lkm;->z:I

    .line 67
    invoke-static {}, Lrv;->H()Lrv;

    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {p3}, Lrv;->z()Landroid/content/Context;

    .line 74
    move-result-object p3

    .line 75
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    move-result-object p3

    .line 79
    sget v0, Lq80;->p:I

    .line 81
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 84
    move-result p3

    .line 85
    float-to-int p3, p3

    .line 86
    invoke-virtual {p0, p1, p3}, Lkm;->w(II)V

    .line 89
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 91
    iget-object p3, p1, Lkm$e;->c:Lgm0;

    .line 93
    iget-object p1, p1, Lkm$e;->d:Lcom/autonavi/skin/view/SkinImageView;

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 98
    move-result p1

    .line 99
    invoke-virtual {p3, p1}, Lgm0;->setCursorWidth(I)V

    .line 102
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 104
    iget-object p1, p1, Lkm$e;->c:Lgm0;

    .line 106
    iget p3, p0, Lkm;->u:I

    .line 108
    invoke-virtual {p1, p3}, Lgm0;->setTmcViewLength(I)V

    .line 111
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 113
    iget-object p3, p1, Lkm$e;->c:Lgm0;

    .line 115
    iget-object p1, p1, Lkm$e;->d:Lcom/autonavi/skin/view/SkinImageView;

    .line 117
    iput-object p1, p3, Lgm0;->j:Landroid/view/View;

    .line 119
    iput p2, p3, Lgm0;->i:I

    .line 121
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    .line 124
    :cond_2
    :goto_0
    return-void
.end method

.method public final o(Ljava/util/List;)[I
    .locals 7

    .line 1
    invoke-static {p1}, Lnh0;->b(Ljava/util/List;)I

    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [I

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_5

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lnh0;

    .line 25
    iget-boolean v4, v3, Lnh0;->c:Z

    .line 27
    if-eqz v4, :cond_1

    .line 29
    sget v4, Lkm;->D:I

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    sget v4, Lkm;->E:I

    .line 34
    :goto_1
    invoke-virtual {v3}, Lnh0;->c()I

    .line 37
    move-result v5

    .line 38
    const/4 v6, 0x1

    .line 39
    if-eq v5, v6, :cond_4

    .line 41
    const/4 v6, 0x2

    .line 42
    if-eq v5, v6, :cond_3

    .line 44
    iget-boolean v5, v3, Lnh0;->d:Z

    .line 46
    if-eqz v5, :cond_2

    .line 48
    add-int/lit8 v3, v2, 0x1

    .line 50
    aput v4, v0, v2

    .line 52
    add-int/lit8 v2, v3, 0x1

    .line 54
    sget v5, Lkm;->F:I

    .line 56
    aput v5, v0, v3

    .line 58
    add-int/lit8 v3, v2, 0x1

    .line 60
    aput v4, v0, v2

    .line 62
    goto :goto_3

    .line 63
    :cond_2
    const/4 v5, 0x0

    .line 64
    :goto_2
    invoke-virtual {v3}, Lnh0;->c()I

    .line 67
    move-result v6

    .line 68
    if-ge v5, v6, :cond_0

    .line 70
    add-int/lit8 v6, v2, 0x1

    .line 72
    aput v4, v0, v2

    .line 74
    add-int/lit8 v5, v5, 0x1

    .line 76
    move v2, v6

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .line 80
    aput v4, v0, v2

    .line 82
    add-int/lit8 v2, v3, 0x1

    .line 84
    aput v4, v0, v3

    .line 86
    goto :goto_0

    .line 87
    :cond_4
    add-int/lit8 v3, v2, 0x1

    .line 89
    aput v4, v0, v2

    .line 91
    :goto_3
    move v2, v3

    .line 92
    goto :goto_0

    .line 93
    :cond_5
    return-object v0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    if-ne p2, p6, :cond_0

    .line 3
    if-ne p3, p7, :cond_0

    .line 5
    if-ne p4, p8, :cond_0

    .line 7
    if-eq p5, p9, :cond_5

    .line 9
    :cond_0
    invoke-static {}, Lta0;->c()Landroid/content/res/Resources;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    move-result-object p3

    .line 21
    const-string p5, "resources"

    .line 23
    const-string p6, "string"

    .line 25
    invoke-virtual {p1, p5, p6, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    move-result p1

    .line 29
    invoke-static {}, Lta0;->c()Landroid/content/res/Resources;

    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p5

    .line 37
    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 40
    move-result-object p5

    .line 41
    const-string p7, "resources_portrait"

    .line 43
    invoke-virtual {p3, p7, p6, p5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    move-result p3

    .line 47
    const/4 p5, 0x0

    .line 48
    const-string p6, "FloatLayoutStyleGuide"

    .line 50
    const-string p7, ""

    .line 52
    if-eqz p1, :cond_1

    .line 54
    :try_start_0
    invoke-static {p1}, Lta0;->d(I)Ljava/lang/String;

    .line 57
    move-result-object p7

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    if-eqz p3, :cond_2

    .line 61
    invoke-static {p3}, Lta0;->d(I)Ljava/lang/String;

    .line 64
    move-result-object p7
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    const-string p1, "occur Resources.NotFoundException~~"

    .line 68
    new-array p3, p5, [Ljava/lang/Object;

    .line 70
    invoke-static {p6, p1, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_2
    :goto_0
    const/4 p1, 0x3

    .line 74
    new-array p1, p1, [Ljava/lang/Object;

    .line 76
    sub-int/2addr p4, p2

    .line 77
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object p2

    .line 81
    aput-object p2, p1, p5

    .line 83
    const/4 p2, 0x1

    .line 84
    aput-object p7, p1, p2

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    move-result-object p3

    .line 90
    invoke-static {p3}, Lsi;->o(Landroid/content/Context;)F

    .line 93
    move-result p3

    .line 94
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 97
    move-result-object p3

    .line 98
    const/4 p5, 0x2

    .line 99
    aput-object p3, p1, p5

    .line 101
    const-string p3, "onLayoutChange width:{?},resources:{?},density:{?}"

    .line 103
    invoke-static {p6, p3, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iput p4, p0, Lkm;->u:I

    .line 108
    const/16 p1, 0x26c

    .line 110
    invoke-static {p1}, Lib;->u(I)Z

    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_3

    .line 116
    sput-object p0, Lcom/autonavi/amapauto/jni/RoadMapInteract;->floatHandler:Lcom/autonavi/amapauto/jni/RoadMapInteract$a;

    .line 118
    new-instance p1, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;

    .line 120
    invoke-direct {p1}, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;-><init>()V

    .line 123
    iput-boolean p2, p1, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->b:Z

    .line 125
    iput p2, p1, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->a:I

    .line 127
    iput p4, p1, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->c:I

    .line 129
    sget p2, Lq80;->y:I

    .line 131
    invoke-static {p2}, Lta0;->b(I)I

    .line 134
    move-result p2

    .line 135
    iput p2, p1, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->d:I

    .line 137
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/RoadMapInteract;->sendRoadMapVisibleImpl(Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;)V

    .line 140
    :cond_3
    iget p1, p0, Lkm;->t:I

    .line 142
    if-eqz p1, :cond_5

    .line 144
    iget p1, p0, Lkm;->u:I

    .line 146
    if-eqz p1, :cond_5

    .line 148
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 150
    iget-object p2, p1, Lkm$e;->c:Lgm0;

    .line 152
    if-eqz p2, :cond_5

    .line 154
    iget-object p1, p1, Lkm$e;->d:Lcom/autonavi/skin/view/SkinImageView;

    .line 156
    if-nez p1, :cond_4

    .line 158
    goto :goto_1

    .line 159
    :cond_4
    iget p1, p0, Lkm;->z:I

    .line 161
    invoke-static {}, Lrv;->H()Lrv;

    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p2}, Lrv;->z()Landroid/content/Context;

    .line 168
    move-result-object p2

    .line 169
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 172
    move-result-object p2

    .line 173
    sget p3, Lq80;->p:I

    .line 175
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 178
    move-result p2

    .line 179
    float-to-int p2, p2

    .line 180
    invoke-virtual {p0, p1, p2}, Lkm;->w(II)V

    .line 183
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 185
    iget-object p1, p1, Lkm$e;->c:Lgm0;

    .line 187
    iget p2, p0, Lkm;->u:I

    .line 189
    invoke-virtual {p1, p2}, Lgm0;->setTmcViewLength(I)V

    .line 192
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 194
    iget-object p1, p1, Lkm$e;->c:Lgm0;

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 199
    :cond_5
    :goto_1
    return-void
.end method

.method public final p([I)Ljava/util/List;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lkm;->s([I)Ljava/util/Map;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/List;

    .line 17
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 19
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/List;

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p1

    .line 38
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ljava/util/Collection;

    .line 56
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 p1, 0x0

    .line 61
    const/4 v3, 0x0

    .line 62
    :goto_1
    invoke-static {v2}, Lnh0;->b(Ljava/util/List;)I

    .line 65
    move-result v4

    .line 66
    sget v5, Lkm;->C:I

    .line 68
    if-le v4, v5, :cond_3

    .line 70
    invoke-virtual {p0, v0}, Lkm;->m(Ljava/util/List;)Z

    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_2

    .line 76
    invoke-virtual {p0, v0, v3}, Lkm;->r(Ljava/util/List;I)I

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    invoke-virtual {p0, v1}, Lkm;->m(Ljava/util/List;)Z

    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_3

    .line 86
    invoke-virtual {p0, v1, v3}, Lkm;->r(Ljava/util/List;I)I

    .line 89
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 91
    rem-int/lit8 v3, v3, 0x4

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 97
    const/4 v0, 0x1

    .line 98
    new-array v0, v0, [Ljava/lang/Object;

    .line 100
    aput-object v2, v0, p1

    .line 102
    const-string p1, "FloatLayoutStyleGuide"

    .line 104
    const-string v1, " in getMergeTollGates tollGates:{?}"

    .line 106
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    return-object v2
.end method

.method public q(II)I
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 4
    :pswitch_0
    const/4 p1, -0x1

    .line 5
    return p1

    .line 6
    :pswitch_1
    sget p1, Lt80;->j0:I

    .line 8
    return p1

    .line 9
    :pswitch_2
    sget p1, Lt80;->U:I

    .line 11
    return p1

    .line 12
    :pswitch_3
    sget p1, Lt80;->l0:I

    .line 14
    return p1

    .line 15
    :pswitch_4
    sget p1, Lt80;->n0:I

    .line 17
    return p1

    .line 18
    :pswitch_5
    sget p1, Lt80;->i0:I

    .line 20
    return p1

    .line 21
    :pswitch_6
    sget p1, Lt80;->k0:I

    .line 23
    return p1

    .line 24
    :pswitch_7
    sget p1, Lt80;->f0:I

    .line 26
    return p1

    .line 27
    :pswitch_8
    sget p1, Lt80;->g0:I

    .line 29
    return p1

    .line 30
    :pswitch_9
    sget p1, Lt80;->b0:I

    .line 32
    return p1

    .line 33
    :pswitch_a
    sget p1, Lt80;->X:I

    .line 35
    return p1

    .line 36
    :pswitch_b
    sget p1, Lt80;->c0:I

    .line 38
    return p1

    .line 39
    :pswitch_c
    sget p1, Lt80;->e0:I

    .line 41
    return p1

    .line 42
    :pswitch_d
    sget p1, Lt80;->V:I

    .line 44
    return p1

    .line 45
    :pswitch_e
    sget p1, Lt80;->W:I

    .line 47
    return p1

    .line 48
    :pswitch_f
    sget p1, Lt80;->a0:I

    .line 50
    return p1

    .line 51
    :pswitch_10
    sget p1, Lt80;->Y:I

    .line 53
    return p1

    .line 54
    :pswitch_11
    sget p1, Lt80;->d0:I

    .line 56
    return p1

    .line 57
    :pswitch_12
    sget p1, Lt80;->Z:I

    .line 59
    return p1

    .line 60
    :pswitch_13
    sget p1, Lt80;->R:I

    .line 62
    return p1

    .line 63
    :pswitch_14
    sget p1, Lt80;->o0:I

    .line 65
    return p1

    .line 66
    :pswitch_15
    sget p1, Lt80;->S:I

    .line 68
    return p1

    .line 69
    :pswitch_16
    sget p1, Lt80;->h0:I

    .line 71
    return p1

    .line 72
    :pswitch_17
    sget p1, Lt80;->T:I

    .line 74
    return p1

    .line 75
    :pswitch_18
    sget p1, Lt80;->m0:I

    .line 77
    return p1

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_17
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_17
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_17
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final r(Ljava/util/List;I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-eqz p2, :cond_6

    .line 8
    if-eq p2, v1, :cond_5

    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq p2, v2, :cond_3

    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq p2, v2, :cond_1

    .line 16
    goto/16 :goto_2

    .line 18
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    move-result p2

    .line 22
    if-ge v0, p2, :cond_7

    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Lnh0;

    .line 30
    iget-boolean p2, p2, Lnh0;->d:Z

    .line 32
    if-nez p2, :cond_2

    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Lnh0;

    .line 40
    invoke-virtual {p2}, Lnh0;->c()I

    .line 43
    move-result p2

    .line 44
    sget v2, Lkm;->B:I

    .line 46
    if-le p2, v2, :cond_2

    .line 48
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Lnh0;

    .line 54
    iput-boolean v1, p2, Lnh0;->d:Z

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 63
    move-result p2

    .line 64
    sub-int/2addr p2, v1

    .line 65
    :goto_1
    if-ltz p2, :cond_7

    .line 67
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lnh0;

    .line 73
    iget-boolean v0, v0, Lnh0;->d:Z

    .line 75
    if-nez v0, :cond_4

    .line 77
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lnh0;

    .line 83
    invoke-virtual {v0}, Lnh0;->c()I

    .line 86
    move-result v0

    .line 87
    sget v2, Lkm;->B:I

    .line 89
    if-le v0, v2, :cond_4

    .line 91
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object p2

    .line 95
    check-cast p2, Lnh0;

    .line 97
    iput-boolean v1, p2, Lnh0;->d:Z

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    add-int/lit8 p2, p2, -0x1

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object p2

    .line 107
    check-cast p2, Lnh0;

    .line 109
    invoke-virtual {p2}, Lnh0;->c()I

    .line 112
    move-result p2

    .line 113
    sget v2, Lkm;->B:I

    .line 115
    if-le p2, v2, :cond_7

    .line 117
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Lnh0;

    .line 123
    iput-boolean v1, p2, Lnh0;->d:Z

    .line 125
    goto :goto_2

    .line 126
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 129
    move-result p2

    .line 130
    sub-int/2addr p2, v1

    .line 131
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lnh0;

    .line 137
    invoke-virtual {v0}, Lnh0;->c()I

    .line 140
    move-result v0

    .line 141
    sget v2, Lkm;->B:I

    .line 143
    if-le v0, v2, :cond_7

    .line 145
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 148
    move-result-object p2

    .line 149
    check-cast p2, Lnh0;

    .line 151
    iput-boolean v1, p2, Lnh0;->d:Z

    .line 153
    :cond_7
    :goto_2
    invoke-static {p1}, Lnh0;->b(Ljava/util/List;)I

    .line 156
    move-result p1

    .line 157
    return p1
.end method

.method public s([I)Ljava/util/Map;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    array-length v3, p1

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ge v2, v3, :cond_2

    .line 11
    aget v3, p1, v2

    .line 13
    const/4 v5, 0x2

    .line 14
    if-eq v3, v5, :cond_1

    .line 16
    aput v4, p1, v2

    .line 18
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    array-length v2, p1

    .line 22
    if-lez v2, :cond_15

    .line 24
    array-length v2, p1

    .line 25
    if-ne v2, v4, :cond_4

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    new-instance v2, Lnh0;

    .line 34
    invoke-direct {v2}, Lnh0;-><init>()V

    .line 37
    iput v1, v2, Lnh0;->a:I

    .line 39
    iput v1, v2, Lnh0;->b:I

    .line 41
    aget p1, p1, v1

    .line 43
    sget v3, Lkm;->E:I

    .line 45
    if-eq p1, v3, :cond_3

    .line 47
    const/4 v1, 0x1

    .line 48
    :cond_3
    iput-boolean v1, v2, Lnh0;->c:Z

    .line 50
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance p1, Ljava/util/HashMap;

    .line 55
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 58
    iget-boolean v1, v2, Lnh0;->c:Z

    .line 60
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    move-result-object v1

    .line 64
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-object p1

    .line 68
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    .line 70
    const/4 v3, 0x6

    .line 71
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 74
    const/4 v5, -0x1

    .line 75
    const/4 v6, 0x0

    .line 76
    const/4 v7, -0x1

    .line 77
    :goto_1
    array-length v8, p1

    .line 78
    if-ge v6, v8, :cond_14

    .line 80
    aget v8, p1, v6

    .line 82
    if-nez v0, :cond_5

    .line 84
    new-instance v0, Lnh0;

    .line 86
    invoke-direct {v0}, Lnh0;-><init>()V

    .line 89
    :cond_5
    iget v9, v0, Lnh0;->a:I

    .line 91
    if-ne v9, v5, :cond_7

    .line 93
    iput v6, v0, Lnh0;->a:I

    .line 95
    sget v9, Lkm;->E:I

    .line 97
    if-eq v8, v9, :cond_6

    .line 99
    const/4 v9, 0x1

    .line 100
    goto :goto_2

    .line 101
    :cond_6
    const/4 v9, 0x0

    .line 102
    :goto_2
    iput-boolean v9, v0, Lnh0;->c:Z

    .line 104
    :cond_7
    if-eq v5, v7, :cond_13

    .line 106
    if-ne v7, v8, :cond_8

    .line 108
    array-length v9, p1

    .line 109
    sub-int/2addr v9, v4

    .line 110
    if-ne v6, v9, :cond_13

    .line 112
    :cond_8
    if-eq v7, v8, :cond_9

    .line 114
    add-int/lit8 v9, v6, -0x1

    .line 116
    iput v9, v0, Lnh0;->b:I

    .line 118
    :goto_3
    const/4 v9, 0x1

    .line 119
    goto :goto_4

    .line 120
    :cond_9
    array-length v9, p1

    .line 121
    sub-int/2addr v9, v4

    .line 122
    if-eq v6, v9, :cond_a

    .line 124
    iput v6, v0, Lnh0;->b:I

    .line 126
    goto :goto_3

    .line 127
    :cond_a
    const/4 v9, 0x0

    .line 128
    :goto_4
    if-eqz v9, :cond_c

    .line 130
    iget-boolean v9, v0, Lnh0;->c:Z

    .line 132
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 135
    move-result-object v9

    .line 136
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    move-result-object v9

    .line 140
    check-cast v9, Ljava/util/List;

    .line 142
    if-nez v9, :cond_b

    .line 144
    new-instance v9, Ljava/util/ArrayList;

    .line 146
    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-boolean v10, v0, Lnh0;->c:Z

    .line 154
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 157
    move-result-object v10

    .line 158
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    goto :goto_5

    .line 162
    :cond_b
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_c
    :goto_5
    array-length v9, p1

    .line 166
    sub-int/2addr v9, v4

    .line 167
    if-eq v6, v9, :cond_e

    .line 169
    new-instance v0, Lnh0;

    .line 171
    invoke-direct {v0}, Lnh0;-><init>()V

    .line 174
    iput v6, v0, Lnh0;->a:I

    .line 176
    sget v7, Lkm;->E:I

    .line 178
    if-eq v8, v7, :cond_d

    .line 180
    const/4 v7, 0x1

    .line 181
    goto :goto_6

    .line 182
    :cond_d
    const/4 v7, 0x0

    .line 183
    :goto_6
    iput-boolean v7, v0, Lnh0;->c:Z

    .line 185
    goto :goto_8

    .line 186
    :cond_e
    array-length v9, p1

    .line 187
    sub-int/2addr v9, v4

    .line 188
    if-ne v6, v9, :cond_13

    .line 190
    if-eq v7, v8, :cond_11

    .line 192
    new-instance v0, Lnh0;

    .line 194
    invoke-direct {v0}, Lnh0;-><init>()V

    .line 197
    iput v6, v0, Lnh0;->a:I

    .line 199
    iput v6, v0, Lnh0;->b:I

    .line 201
    sget v7, Lkm;->E:I

    .line 203
    if-eq v8, v7, :cond_f

    .line 205
    const/4 v7, 0x1

    .line 206
    goto :goto_7

    .line 207
    :cond_f
    const/4 v7, 0x0

    .line 208
    :goto_7
    iput-boolean v7, v0, Lnh0;->c:Z

    .line 210
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 213
    move-result-object v7

    .line 214
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    move-result-object v7

    .line 218
    check-cast v7, Ljava/util/List;

    .line 220
    if-nez v7, :cond_10

    .line 222
    new-instance v7, Ljava/util/ArrayList;

    .line 224
    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-boolean v9, v0, Lnh0;->c:Z

    .line 232
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 235
    move-result-object v9

    .line 236
    invoke-interface {v2, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    goto :goto_8

    .line 240
    :cond_10
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    goto :goto_8

    .line 244
    :cond_11
    iput v6, v0, Lnh0;->b:I

    .line 246
    iget-boolean v7, v0, Lnh0;->c:Z

    .line 248
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 251
    move-result-object v7

    .line 252
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    move-result-object v7

    .line 256
    check-cast v7, Ljava/util/List;

    .line 258
    if-nez v7, :cond_12

    .line 260
    new-instance v7, Ljava/util/ArrayList;

    .line 262
    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget-boolean v9, v0, Lnh0;->c:Z

    .line 270
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 273
    move-result-object v9

    .line 274
    invoke-interface {v2, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    goto :goto_8

    .line 278
    :cond_12
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_13
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 283
    move v7, v8

    .line 284
    goto/16 :goto_1

    .line 286
    :cond_14
    move-object v0, v2

    .line 287
    :cond_15
    return-object v0
.end method

.method public setArrivals(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkm;->y:Z

    .line 3
    return-void
.end method

.method public setTmcVisibility(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 3
    iget-object v0, v0, Lkm$e;->n:Landroid/view/ViewGroup;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 17
    const-string v1, "View"

    .line 19
    const-string v3, "dispatchGuideInfo needShowTmcView:{?}"

    .line 21
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 26
    iget-object v0, v0, Lkm$e;->n:Landroid/view/ViewGroup;

    .line 28
    if-eqz p1, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/16 v2, 0x8

    .line 33
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :cond_1
    return-void
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkm;->y:Z

    .line 3
    return v0
.end method

.method public final u(I)V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p1

    .line 16
    aput-object p1, v0, v1

    .line 18
    const/4 p1, 0x2

    .line 19
    aput-object v2, v0, p1

    .line 21
    const/4 p1, 0x3

    .line 22
    aput-object v2, v0, p1

    .line 24
    const/4 p1, 0x4

    .line 25
    aput-object v2, v0, p1

    .line 27
    const-string p1, "[100000264][5][%d][%d][%d][%d][%d]"

    .line 29
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    const v0, 0x5f5e208

    .line 36
    const/16 v1, 0xa

    .line 38
    const-string v2, "AUTO_BASE"

    .line 40
    invoke-static {v2, v0, p1, v1}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 43
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 3
    const/16 v1, 0x8

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, v0, Lkm$e;->y:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_0
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget-object v0, v0, Lkm$e;->E:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_1
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 27
    if-eqz v0, :cond_2

    .line 29
    iget-object v0, v0, Lkm$e;->I:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 31
    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :cond_2
    invoke-static {}, Lib;->l()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 42
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 44
    if-eqz v0, :cond_3

    .line 46
    iget-object v0, v0, Lkm$e;->M:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 48
    if-eqz v0, :cond_3

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_3
    return-void
.end method

.method public w(II)V
    .locals 6

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 13
    sget v1, Lq80;->d:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 18
    move-result v0

    .line 19
    iget v1, p0, Lkm;->u:I

    .line 21
    int-to-float v2, v1

    .line 22
    int-to-float v3, p1

    .line 23
    const/high16 v4, 0x3f800000    # 1.0f

    .line 25
    mul-float v3, v3, v4

    .line 27
    iget v4, p0, Lkm;->t:I

    .line 29
    int-to-float v5, v4

    .line 30
    div-float/2addr v3, v5

    .line 31
    div-int/lit8 v5, p2, 0x2

    .line 33
    sub-int/2addr v1, v5

    .line 34
    int-to-float v1, v1

    .line 35
    mul-float v3, v3, v1

    .line 37
    sub-float/2addr v2, v3

    .line 38
    int-to-float v1, v5

    .line 39
    sub-float/2addr v2, v1

    .line 40
    add-float/2addr v2, v0

    .line 41
    iput v2, p0, Lkm;->v:F

    .line 43
    const/4 v1, 0x6

    .line 44
    new-array v1, v1, [Ljava/lang/Object;

    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v3

    .line 51
    aput-object v3, v1, v2

    .line 53
    iget v2, p0, Lkm;->u:I

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v2

    .line 59
    const/4 v3, 0x1

    .line 60
    aput-object v2, v1, v3

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object p1

    .line 66
    const/4 v2, 0x2

    .line 67
    aput-object p1, v1, v2

    .line 69
    const/4 p1, 0x3

    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object p2

    .line 74
    aput-object p2, v1, p1

    .line 76
    const/4 p1, 0x4

    .line 77
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 80
    move-result-object p2

    .line 81
    aput-object p2, v1, p1

    .line 83
    iget p1, p0, Lkm;->v:F

    .line 85
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 88
    move-result-object p1

    .line 89
    const/4 p2, 0x5

    .line 90
    aput-object p1, v1, p2

    .line 92
    const-string p1, "WidgetHorizionalTmcBarView"

    .line 94
    const-string p2, "miRouteTotalLength:{?} ,mTmcViewLength:{?} ,cursorPosition:{?}, cursorWidth:{?}, dimen18:{?}, mCursorPos:{?}"

    .line 96
    invoke-static {p1, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Lkm;->t()Z

    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 107
    iget-object p1, p1, Lkm$e;->c:Lgm0;

    .line 109
    const p2, 0x4991a2b0    # 1193046.0f

    .line 112
    invoke-virtual {p1, p2}, Lgm0;->setCursorPos(F)V

    .line 115
    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 118
    iget-object p1, p1, Lkm$e;->c:Lgm0;

    .line 120
    iget p2, p0, Lkm;->v:F

    .line 122
    invoke-virtual {p1, p2}, Lgm0;->setCursorPos(F)V

    .line 125
    :goto_0
    return-void
.end method

.method public x(Lkm$f;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_d

    .line 3
    invoke-virtual {p0}, Lkm;->t()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto/16 :goto_2

    .line 11
    :cond_0
    iput-object p1, p0, Lkm;->x:Lkm$f;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v1, "\u5237\u65b0\u5bfc\u822a\u573a\u666f\u6570\u636e\uff0c\u5f53\u524d\u7528\u4f8b\uff1a"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    new-array v2, v1, [Ljava/lang/Object;

    .line 37
    const-string v3, "FloatLayoutStyleGuide"

    .line 39
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    sget-object v0, Lkm$f;->f:Lkm$f;

    .line 44
    const/16 v2, 0x8

    .line 46
    if-eq p1, v0, :cond_1

    .line 48
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 50
    iget-object v0, v0, Lkm$e;->w:Landroid/view/View;

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 57
    iget-object v0, v0, Lkm$e;->x:Landroid/view/View;

    .line 59
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :cond_1
    sget-object v0, Lkm$d;->a:[I

    .line 64
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 67
    move-result v4

    .line 68
    aget v0, v0, v4

    .line 70
    const/4 v4, 0x1

    .line 71
    if-eq v0, v4, :cond_a

    .line 73
    const/4 v5, 0x3

    .line 74
    if-eq v0, v5, :cond_6

    .line 76
    const/4 p1, 0x4

    .line 77
    if-eq v0, p1, :cond_4

    .line 79
    const/4 p1, 0x5

    .line 80
    if-eq v0, p1, :cond_2

    .line 82
    goto/16 :goto_2

    .line 84
    :cond_2
    invoke-virtual {p0, v4}, Lkm;->setArrivals(Z)V

    .line 87
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 89
    iget-object v0, p1, Lkm$e;->v:Landroid/view/View;

    .line 91
    if-nez v0, :cond_3

    .line 93
    iget-object v0, p1, Lkm$e;->m:Landroid/view/ViewStub;

    .line 95
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p1, Lkm$e;->v:Landroid/view/View;

    .line 101
    :cond_3
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 103
    iget-object p1, p1, Lkm$e;->v:Landroid/view/View;

    .line 105
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 110
    iget-object p1, p1, Lkm$e;->j:Landroid/view/ViewStub;

    .line 112
    invoke-virtual {p1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 117
    iget-object p1, p1, Lkm$e;->k:Landroid/view/ViewStub;

    .line 119
    invoke-virtual {p1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 122
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 124
    iget-object p1, p1, Lkm$e;->l:Landroid/view/ViewStub;

    .line 126
    invoke-virtual {p1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 131
    iget-object p1, p1, Lkm$e;->e:Lcom/autonavi/skin/view/SkinImageView;

    .line 133
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 138
    iget-object p1, p1, Lkm$e;->d:Lcom/autonavi/skin/view/SkinImageView;

    .line 140
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 145
    iget-object p1, p1, Lkm$e;->c:Lgm0;

    .line 147
    const v0, 0x4991a2b0    # 1193046.0f

    .line 150
    invoke-virtual {p1, v0}, Lgm0;->setCursorPos(F)V

    .line 153
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 155
    iget-object p1, p1, Lkm$e;->c:Lgm0;

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 160
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 162
    iget-object p1, p1, Lkm$e;->c:Lgm0;

    .line 164
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    goto/16 :goto_2

    .line 169
    :cond_4
    const-string p1, "\u5bfc\u822a\u9014\u4e2d\u504f\u822a\u91cd\u7b97-refreshUseCase \u663e\u793a\u504f\u822a\u72b6\u6001"

    .line 171
    new-array v0, v1, [Ljava/lang/Object;

    .line 173
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 178
    iget-object p1, p1, Lkm$e;->m:Landroid/view/ViewStub;

    .line 180
    invoke-virtual {p1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 185
    iget-object p1, p1, Lkm$e;->j:Landroid/view/ViewStub;

    .line 187
    invoke-virtual {p1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 192
    iget-object v0, p1, Lkm$e;->o:Landroid/view/View;

    .line 194
    if-nez v0, :cond_5

    .line 196
    iget-object v0, p1, Lkm$e;->k:Landroid/view/ViewStub;

    .line 198
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 201
    move-result-object v0

    .line 202
    iput-object v0, p1, Lkm$e;->o:Landroid/view/View;

    .line 204
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 206
    iget-object v0, p1, Lkm$e;->o:Landroid/view/View;

    .line 208
    sget v3, Ly80;->L0:I

    .line 210
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    .line 216
    iput-object v0, p1, Lkm$e;->p:Lcom/autonavi/skin/view/SkinTextView;

    .line 218
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 220
    iget-object v0, p1, Lkm$e;->o:Landroid/view/View;

    .line 222
    sget v3, Ly80;->A:I

    .line 224
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Lcom/autonavi/view/custom/CustomLoadingView;

    .line 230
    iput-object v0, p1, Lkm$e;->q:Lcom/autonavi/view/custom/CustomLoadingView;

    .line 232
    :cond_5
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 234
    iget-object p1, p1, Lkm$e;->o:Landroid/view/View;

    .line 236
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 241
    iget-object p1, p1, Lkm$e;->p:Lcom/autonavi/skin/view/SkinTextView;

    .line 243
    sget v0, Ld90;->d:I

    .line 245
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 250
    iget-object p1, p1, Lkm$e;->e:Lcom/autonavi/skin/view/SkinImageView;

    .line 252
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    goto/16 :goto_2

    .line 257
    :cond_6
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 259
    iget-object v3, v0, Lkm$e;->r:Landroid/view/View;

    .line 261
    if-nez v3, :cond_8

    .line 263
    iget-object v3, v0, Lkm$e;->j:Landroid/view/ViewStub;

    .line 265
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 268
    move-result-object v3

    .line 269
    iput-object v3, v0, Lkm$e;->r:Landroid/view/View;

    .line 271
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 273
    iget-object v3, v0, Lkm$e;->r:Landroid/view/View;

    .line 275
    sget v4, Ly80;->z0:I

    .line 277
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 280
    move-result-object v3

    .line 281
    check-cast v3, Lcom/autonavi/skin/view/SkinImageView;

    .line 283
    iput-object v3, v0, Lkm$e;->i:Lcom/autonavi/skin/view/SkinImageView;

    .line 285
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 287
    iget-object v3, v0, Lkm$e;->r:Landroid/view/View;

    .line 289
    sget v4, Ly80;->I0:I

    .line 291
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 294
    move-result-object v3

    .line 295
    check-cast v3, Lcom/autonavi/skin/view/SkinTextView;

    .line 297
    iput-object v3, v0, Lkm$e;->f:Lcom/autonavi/skin/view/SkinTextView;

    .line 299
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 301
    iget-object v3, v0, Lkm$e;->r:Landroid/view/View;

    .line 303
    sget v4, Ly80;->K0:I

    .line 305
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 308
    move-result-object v3

    .line 309
    check-cast v3, Lcom/autonavi/skin/view/SkinTextView;

    .line 311
    iput-object v3, v0, Lkm$e;->g:Lcom/autonavi/skin/view/SkinTextView;

    .line 313
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 315
    iget-object v3, v0, Lkm$e;->r:Landroid/view/View;

    .line 317
    sget v4, Ly80;->J0:I

    .line 319
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 322
    move-result-object v3

    .line 323
    check-cast v3, Lcom/autonavi/skin/view/SkinTextView;

    .line 325
    iput-object v3, v0, Lkm$e;->h:Lcom/autonavi/skin/view/SkinTextView;

    .line 327
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 329
    iget-object v3, v0, Lkm$e;->r:Landroid/view/View;

    .line 331
    sget v4, Ly80;->D0:I

    .line 333
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 336
    move-result-object v3

    .line 337
    check-cast v3, Lcom/autonavi/skin/view/SkinTextView;

    .line 339
    iput-object v3, v0, Lkm$e;->s:Lcom/autonavi/skin/view/SkinTextView;

    .line 341
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 343
    iget-object v3, v0, Lkm$e;->r:Landroid/view/View;

    .line 345
    sget v4, Ly80;->E:I

    .line 347
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 350
    move-result-object v3

    .line 351
    check-cast v3, Landroid/view/ViewGroup;

    .line 353
    iput-object v3, v0, Lkm$e;->t:Landroid/view/ViewGroup;

    .line 355
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 357
    iget-object v3, v0, Lkm$e;->r:Landroid/view/View;

    .line 359
    sget v4, Ly80;->x0:I

    .line 361
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 364
    move-result-object v3

    .line 365
    check-cast v3, Lcom/autonavi/skin/view/SkinImageView;

    .line 367
    iput-object v3, v0, Lkm$e;->u:Lcom/autonavi/skin/view/SkinImageView;

    .line 369
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 371
    sget v3, Ly80;->B:I

    .line 373
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 376
    move-result-object v3

    .line 377
    check-cast v3, Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 379
    iput-object v3, v0, Lkm$e;->y:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 381
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 383
    sget v3, Ly80;->t:I

    .line 385
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 388
    move-result-object v3

    .line 389
    check-cast v3, Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 391
    iput-object v3, v0, Lkm$e;->z:Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 393
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 395
    sget v3, Ly80;->F0:I

    .line 397
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 400
    move-result-object v3

    .line 401
    check-cast v3, Lcom/autonavi/skin/view/SkinTextView;

    .line 403
    iput-object v3, v0, Lkm$e;->A:Lcom/autonavi/skin/view/SkinTextView;

    .line 405
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 407
    sget v3, Ly80;->u:I

    .line 409
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 412
    move-result-object v3

    .line 413
    check-cast v3, Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 415
    iput-object v3, v0, Lkm$e;->B:Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 417
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 419
    sget v3, Ly80;->G0:I

    .line 421
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 424
    move-result-object v3

    .line 425
    check-cast v3, Lcom/autonavi/skin/view/SkinTextView;

    .line 427
    iput-object v3, v0, Lkm$e;->C:Lcom/autonavi/skin/view/SkinTextView;

    .line 429
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 431
    sget v3, Ly80;->E0:I

    .line 433
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 436
    move-result-object v3

    .line 437
    check-cast v3, Lcom/autonavi/skin/view/SkinTextView;

    .line 439
    iput-object v3, v0, Lkm$e;->D:Lcom/autonavi/skin/view/SkinTextView;

    .line 441
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 443
    sget v3, Ly80;->I:I

    .line 445
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 448
    move-result-object v3

    .line 449
    check-cast v3, Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 451
    iput-object v3, v0, Lkm$e;->E:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 453
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 455
    sget v3, Ly80;->w:I

    .line 457
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 460
    move-result-object v3

    .line 461
    check-cast v3, Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 463
    iput-object v3, v0, Lkm$e;->F:Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 465
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 467
    sget v3, Ly80;->O0:I

    .line 469
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 472
    move-result-object v3

    .line 473
    check-cast v3, Lcom/autonavi/skin/view/SkinTextView;

    .line 475
    iput-object v3, v0, Lkm$e;->G:Lcom/autonavi/skin/view/SkinTextView;

    .line 477
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 479
    sget v3, Ly80;->N0:I

    .line 481
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 484
    move-result-object v3

    .line 485
    check-cast v3, Lcom/autonavi/skin/view/SkinTextView;

    .line 487
    iput-object v3, v0, Lkm$e;->H:Lcom/autonavi/skin/view/SkinTextView;

    .line 489
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 491
    sget v3, Ly80;->G:I

    .line 493
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 496
    move-result-object v3

    .line 497
    check-cast v3, Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 499
    iput-object v3, v0, Lkm$e;->I:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 501
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 503
    sget v3, Ly80;->v:I

    .line 505
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 508
    move-result-object v3

    .line 509
    check-cast v3, Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 511
    iput-object v3, v0, Lkm$e;->J:Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 513
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 515
    sget v3, Ly80;->M0:I

    .line 517
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 520
    move-result-object v3

    .line 521
    check-cast v3, Lcom/autonavi/skin/view/SkinTextView;

    .line 523
    iput-object v3, v0, Lkm$e;->K:Lcom/autonavi/skin/view/SkinTextView;

    .line 525
    invoke-static {}, Lib;->l()Z

    .line 528
    move-result v0

    .line 529
    if-eqz v0, :cond_7

    .line 531
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 533
    sget v3, Ly80;->z:I

    .line 535
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 538
    move-result-object v3

    .line 539
    check-cast v3, Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 541
    iput-object v3, v0, Lkm$e;->M:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 543
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 545
    sget v3, Ly80;->s:I

    .line 547
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 550
    move-result-object v3

    .line 551
    check-cast v3, Lcom/autonavi/view/custom/CustomElectroniceyeGaoFaView;

    .line 553
    iput-object v3, v0, Lkm$e;->N:Lcom/autonavi/view/custom/CustomElectroniceyeGaoFaView;

    .line 555
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 557
    sget v3, Ly80;->C0:I

    .line 559
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 562
    move-result-object v3

    .line 563
    check-cast v3, Lcom/autonavi/skin/view/SkinTextView;

    .line 565
    iput-object v3, v0, Lkm$e;->O:Lcom/autonavi/skin/view/SkinTextView;

    .line 567
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 569
    sget v3, Ly80;->B0:I

    .line 571
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 574
    move-result-object v3

    .line 575
    check-cast v3, Lcom/autonavi/skin/view/SkinTextView;

    .line 577
    iput-object v3, v0, Lkm$e;->P:Lcom/autonavi/skin/view/SkinTextView;

    .line 579
    :cond_7
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 581
    sget v3, Ly80;->r:I

    .line 583
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 586
    move-result-object v3

    .line 587
    check-cast v3, Lcom/autonavi/view/custom/CustomCardSuspensionView;

    .line 589
    iput-object v3, v0, Lkm$e;->L:Lcom/autonavi/view/custom/CustomCardSuspensionView;

    .line 591
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 593
    iget-object v0, v0, Lkm$e;->L:Lcom/autonavi/view/custom/CustomCardSuspensionView;

    .line 595
    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 598
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 600
    sget v3, Ly80;->H:I

    .line 602
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 605
    move-result-object v3

    .line 606
    check-cast v3, Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 608
    iput-object v3, v0, Lkm$e;->Q:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 610
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 612
    sget v3, Ly80;->O:I

    .line 614
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 617
    move-result-object v3

    .line 618
    check-cast v3, Landroid/widget/LinearLayout;

    .line 620
    iput-object v3, v0, Lkm$e;->R:Landroid/widget/LinearLayout;

    .line 622
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 624
    sget v3, Ly80;->e0:I

    .line 626
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 629
    move-result-object v3

    .line 630
    iput-object v3, v0, Lkm$e;->S:Landroid/view/View;

    .line 632
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 634
    sget v3, Ly80;->y0:I

    .line 636
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 639
    move-result-object v3

    .line 640
    iput-object v3, v0, Lkm$e;->T:Landroid/view/View;

    .line 642
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 644
    iget-object v0, v0, Lkm$e;->Q:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 646
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 649
    :cond_8
    iget-object v0, p0, Lkm;->w:Lkm$e;

    .line 651
    iget-object v0, v0, Lkm$e;->r:Landroid/view/View;

    .line 653
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 656
    sget-object v0, Lkm$f;->e:Lkm$f;

    .line 658
    if-ne p1, v0, :cond_9

    .line 660
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 662
    iget-object p1, p1, Lkm$e;->j:Landroid/view/ViewStub;

    .line 664
    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 667
    goto :goto_0

    .line 668
    :cond_9
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 670
    iget-object p1, p1, Lkm$e;->j:Landroid/view/ViewStub;

    .line 672
    invoke-virtual {p1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 675
    :goto_0
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 677
    iget-object p1, p1, Lkm$e;->m:Landroid/view/ViewStub;

    .line 679
    invoke-virtual {p1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 682
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 684
    iget-object p1, p1, Lkm$e;->k:Landroid/view/ViewStub;

    .line 686
    invoke-virtual {p1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 689
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 691
    iget-object p1, p1, Lkm$e;->e:Lcom/autonavi/skin/view/SkinImageView;

    .line 693
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 696
    goto :goto_2

    .line 697
    :cond_a
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 699
    iget-object p1, p1, Lkm$e;->m:Landroid/view/ViewStub;

    .line 701
    invoke-virtual {p1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 704
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 706
    iget-object p1, p1, Lkm$e;->j:Landroid/view/ViewStub;

    .line 708
    invoke-virtual {p1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 711
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 713
    iget-object v0, p1, Lkm$e;->o:Landroid/view/View;

    .line 715
    if-nez v0, :cond_b

    .line 717
    iget-object v0, p1, Lkm$e;->k:Landroid/view/ViewStub;

    .line 719
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 722
    move-result-object v0

    .line 723
    iput-object v0, p1, Lkm$e;->o:Landroid/view/View;

    .line 725
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 727
    iget-object v0, p1, Lkm$e;->o:Landroid/view/View;

    .line 729
    sget v3, Ly80;->L0:I

    .line 731
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 734
    move-result-object v0

    .line 735
    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    .line 737
    iput-object v0, p1, Lkm$e;->p:Lcom/autonavi/skin/view/SkinTextView;

    .line 739
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 741
    iget-object v0, p1, Lkm$e;->o:Landroid/view/View;

    .line 743
    sget v3, Ly80;->A:I

    .line 745
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 748
    move-result-object v0

    .line 749
    check-cast v0, Lcom/autonavi/view/custom/CustomLoadingView;

    .line 751
    iput-object v0, p1, Lkm$e;->q:Lcom/autonavi/view/custom/CustomLoadingView;

    .line 753
    :cond_b
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 755
    iget-object p1, p1, Lkm$e;->o:Landroid/view/View;

    .line 757
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 760
    invoke-static {}, Lib;->m()Z

    .line 763
    move-result p1

    .line 764
    if-eqz p1, :cond_c

    .line 766
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 768
    iget-object p1, p1, Lkm$e;->p:Lcom/autonavi/skin/view/SkinTextView;

    .line 770
    sget v0, Ld90;->e:I

    .line 772
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 775
    goto :goto_1

    .line 776
    :cond_c
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 778
    iget-object p1, p1, Lkm$e;->p:Lcom/autonavi/skin/view/SkinTextView;

    .line 780
    sget v0, Ld90;->m:I

    .line 782
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 785
    :goto_1
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 787
    iget-object p1, p1, Lkm$e;->e:Lcom/autonavi/skin/view/SkinImageView;

    .line 789
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 792
    :cond_d
    :goto_2
    return-void
.end method

.method public y(Lno;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lkm;->t()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, v0, Lkm;->w:Lkm$e;

    .line 12
    iget-object v1, v1, Lkm$e;->r:Landroid/view/View;

    .line 14
    const/4 v2, -0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 24
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lno;->j()Ljava/lang/Integer;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v1

    .line 32
    if-ne v1, v2, :cond_2

    .line 34
    iput v3, v0, Lkm;->A:I

    .line 36
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lno;->q()Z

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-string v4, "refreshViews \u5bfc\u822a\u4fe1\u606f\uff1a"

    .line 46
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual/range {p1 .. p1}, Lno;->toString()Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    new-array v4, v3, [Ljava/lang/Object;

    .line 62
    const-string v5, "FloatLayoutStyle"

    .line 64
    invoke-static {v5, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-virtual/range {p1 .. p1}, Lno;->j()Ljava/lang/Integer;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_3

    .line 77
    invoke-virtual/range {p1 .. p1}, Lno;->j()Ljava/lang/Integer;

    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 84
    move-result v1

    .line 85
    const/16 v4, 0xff

    .line 87
    if-eq v1, v4, :cond_3

    .line 89
    invoke-virtual/range {p1 .. p1}, Lno;->j()Ljava/lang/Integer;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 96
    move-result v1

    .line 97
    iput v1, v0, Lkm;->A:I

    .line 99
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lno;->h()I

    .line 102
    move-result v1

    .line 103
    if-lez v1, :cond_5

    .line 105
    iget v1, v0, Lkm;->A:I

    .line 107
    if-lez v1, :cond_5

    .line 109
    invoke-virtual/range {p1 .. p1}, Lno;->h()I

    .line 112
    move-result v4

    .line 113
    if-ge v1, v4, :cond_4

    .line 115
    iget v1, v0, Lkm;->A:I

    .line 117
    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lno;->h()I

    .line 121
    move-result v1

    .line 122
    goto :goto_0

    .line 123
    :cond_5
    const/4 v1, 0x0

    .line 124
    :goto_0
    iget v4, v0, Lkm;->A:I

    .line 126
    if-lez v4, :cond_6

    .line 128
    move v1, v4

    .line 129
    :cond_6
    if-nez v1, :cond_7

    .line 131
    invoke-virtual/range {p1 .. p1}, Lno;->h()I

    .line 134
    move-result v1

    .line 135
    :cond_7
    if-ne v1, v2, :cond_9

    .line 137
    invoke-virtual/range {p1 .. p1}, Lno;->h()I

    .line 140
    move-result v1

    .line 141
    if-lez v1, :cond_8

    .line 143
    invoke-virtual/range {p1 .. p1}, Lno;->h()I

    .line 146
    move-result v1

    .line 147
    goto :goto_1

    .line 148
    :cond_8
    const/4 v1, 0x0

    .line 149
    :goto_1
    iput v3, v0, Lkm;->A:I

    .line 151
    :cond_9
    const/4 v4, 0x4

    .line 152
    new-array v6, v4, [Ljava/lang/Object;

    .line 154
    iget v7, v0, Lkm;->A:I

    .line 156
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    move-result-object v7

    .line 160
    aput-object v7, v6, v3

    .line 162
    invoke-virtual/range {p1 .. p1}, Lno;->h()I

    .line 165
    move-result v7

    .line 166
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    move-result-object v7

    .line 170
    const/4 v8, 0x1

    .line 171
    aput-object v7, v6, v8

    .line 173
    invoke-virtual/range {p1 .. p1}, Lno;->j()Ljava/lang/Integer;

    .line 176
    move-result-object v7

    .line 177
    const/4 v9, 0x2

    .line 178
    aput-object v7, v6, v9

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    move-result-object v1

    .line 184
    const/4 v7, 0x3

    .line 185
    aput-object v1, v6, v7

    .line 187
    const-string v1, "FloatLayoutStyleGuide"

    .line 189
    const-string v10, "\u57fa\u7840\u9053\u8def\u9650\u901f\u6df7\u5408\u7535\u5b50\u773c limitedSpeedVal:{?} \u7535\u5b50\u773c\u9650\u901f:{?} ,\u57fa\u7840\u9053\u8def\u9650\u901f\uff1a{?} ,\u5904\u7406\u540e\u7684\u9650\u901f:{?} "

    .line 191
    invoke-static {v1, v10, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-virtual/range {p1 .. p1}, Lno;->b()I

    .line 197
    move-result v6

    .line 198
    invoke-virtual/range {p0 .. p0}, Lkm;->v()V

    .line 201
    const/4 v10, 0x5

    .line 202
    const/16 v11, 0x63

    .line 204
    const/16 v12, 0x8

    .line 206
    const-string v13, ""

    .line 208
    if-eq v6, v4, :cond_1c

    .line 210
    const-string v14, "\u7c73"

    .line 212
    const/16 v15, 0x9

    .line 214
    if-eq v6, v10, :cond_17

    .line 216
    const/4 v4, 0x6

    .line 217
    if-eq v6, v4, :cond_f

    .line 219
    const/4 v4, 0x7

    .line 220
    if-eq v6, v4, :cond_17

    .line 222
    const/16 v4, 0xf

    .line 224
    if-eq v6, v4, :cond_a

    .line 226
    sget v2, Ly80;->y:I

    .line 228
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 235
    goto/16 :goto_e

    .line 237
    :cond_a
    sget v4, Ly80;->y:I

    .line 239
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    move-result-object v4

    .line 243
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 246
    invoke-virtual/range {p1 .. p1}, Lno;->h()I

    .line 249
    move-result v4

    .line 250
    if-lez v4, :cond_c

    .line 252
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 254
    iget-object v2, v2, Lkm$e;->O:Lcom/autonavi/skin/view/SkinTextView;

    .line 256
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 259
    move-result v6

    .line 260
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 263
    if-le v4, v11, :cond_b

    .line 265
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 267
    iget-object v2, v2, Lkm$e;->O:Lcom/autonavi/skin/view/SkinTextView;

    .line 269
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 272
    move-result-object v6

    .line 273
    sget v11, Lq80;->B:I

    .line 275
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 278
    move-result v6

    .line 279
    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 282
    goto :goto_2

    .line 283
    :cond_b
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 285
    iget-object v2, v2, Lkm$e;->O:Lcom/autonavi/skin/view/SkinTextView;

    .line 287
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 290
    move-result-object v6

    .line 291
    sget v11, Lq80;->C:I

    .line 293
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 296
    move-result v6

    .line 297
    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 300
    :goto_2
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 302
    iget-object v2, v2, Lkm$e;->O:Lcom/autonavi/skin/view/SkinTextView;

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    .line 306
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    move-result-object v4

    .line 319
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    goto :goto_3

    .line 323
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lno;->i()I

    .line 326
    move-result v4

    .line 327
    invoke-virtual {v0, v4, v3}, Lkm;->q(II)I

    .line 330
    move-result v4

    .line 331
    if-eq v4, v2, :cond_d

    .line 333
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 335
    iget-object v2, v2, Lkm$e;->O:Lcom/autonavi/skin/view/SkinTextView;

    .line 337
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 342
    iget-object v2, v2, Lkm$e;->O:Lcom/autonavi/skin/view/SkinTextView;

    .line 344
    invoke-virtual {v2, v4}, Lcom/autonavi/skin/view/SkinTextView;->setBackgroundResource(I)V

    .line 347
    :cond_d
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lno;->g()I

    .line 350
    move-result v2

    .line 351
    if-eq v2, v15, :cond_e

    .line 353
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 355
    iget-object v2, v2, Lkm$e;->P:Lcom/autonavi/skin/view/SkinTextView;

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    .line 359
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    invoke-virtual/range {p1 .. p1}, Lno;->d()I

    .line 365
    move-result v6

    .line 366
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    move-result-object v4

    .line 376
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    goto :goto_4

    .line 380
    :cond_e
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 382
    iget-object v2, v2, Lkm$e;->P:Lcom/autonavi/skin/view/SkinTextView;

    .line 384
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :goto_4
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 389
    iget-object v2, v2, Lkm$e;->N:Lcom/autonavi/view/custom/CustomElectroniceyeGaoFaView;

    .line 391
    invoke-virtual/range {p1 .. p1}, Lno;->s()Z

    .line 394
    move-result v4

    .line 395
    invoke-virtual {v2, v4}, Lcom/autonavi/view/custom/CustomElectroniceyeGaoFaView;->g(Z)V

    .line 398
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 400
    iget-object v2, v2, Lkm$e;->M:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 402
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 405
    goto/16 :goto_e

    .line 407
    :cond_f
    sget v4, Ly80;->y:I

    .line 409
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 412
    move-result-object v4

    .line 413
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 416
    invoke-virtual/range {p1 .. p1}, Lno;->h()I

    .line 419
    move-result v4

    .line 420
    if-lez v4, :cond_11

    .line 422
    iget-object v6, v0, Lkm;->w:Lkm$e;

    .line 424
    iget-object v6, v6, Lkm$e;->A:Lcom/autonavi/skin/view/SkinTextView;

    .line 426
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 429
    move-result v12

    .line 430
    invoke-virtual {v6, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 433
    if-le v4, v11, :cond_10

    .line 435
    iget-object v6, v0, Lkm;->w:Lkm$e;

    .line 437
    iget-object v6, v6, Lkm$e;->A:Lcom/autonavi/skin/view/SkinTextView;

    .line 439
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 442
    move-result-object v12

    .line 443
    sget v10, Lq80;->B:I

    .line 445
    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 448
    move-result v10

    .line 449
    invoke-virtual {v6, v3, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 452
    goto :goto_5

    .line 453
    :cond_10
    iget-object v6, v0, Lkm;->w:Lkm$e;

    .line 455
    iget-object v6, v6, Lkm$e;->A:Lcom/autonavi/skin/view/SkinTextView;

    .line 457
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 460
    move-result-object v10

    .line 461
    sget v12, Lq80;->C:I

    .line 463
    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    .line 466
    move-result v10

    .line 467
    invoke-virtual {v6, v3, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 470
    :goto_5
    iget-object v6, v0, Lkm;->w:Lkm$e;

    .line 472
    iget-object v6, v6, Lkm$e;->A:Lcom/autonavi/skin/view/SkinTextView;

    .line 474
    new-instance v10, Ljava/lang/StringBuilder;

    .line 476
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    move-result-object v4

    .line 489
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    goto :goto_6

    .line 493
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lno;->i()I

    .line 496
    move-result v4

    .line 497
    invoke-virtual {v0, v4, v3}, Lkm;->q(II)I

    .line 500
    move-result v4

    .line 501
    if-eq v4, v2, :cond_12

    .line 503
    iget-object v6, v0, Lkm;->w:Lkm$e;

    .line 505
    iget-object v6, v6, Lkm$e;->A:Lcom/autonavi/skin/view/SkinTextView;

    .line 507
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v6, v0, Lkm;->w:Lkm$e;

    .line 512
    iget-object v6, v6, Lkm$e;->A:Lcom/autonavi/skin/view/SkinTextView;

    .line 514
    invoke-virtual {v6, v4}, Lcom/autonavi/skin/view/SkinTextView;->setBackgroundResource(I)V

    .line 517
    :cond_12
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lno;->e()I

    .line 520
    move-result v4

    .line 521
    if-lez v4, :cond_14

    .line 523
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 525
    iget-object v2, v2, Lkm$e;->C:Lcom/autonavi/skin/view/SkinTextView;

    .line 527
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 530
    move-result v6

    .line 531
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 534
    if-le v4, v11, :cond_13

    .line 536
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 538
    iget-object v2, v2, Lkm$e;->C:Lcom/autonavi/skin/view/SkinTextView;

    .line 540
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 543
    move-result-object v6

    .line 544
    sget v10, Lq80;->B:I

    .line 546
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 549
    move-result v6

    .line 550
    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 553
    goto :goto_7

    .line 554
    :cond_13
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 556
    iget-object v2, v2, Lkm$e;->C:Lcom/autonavi/skin/view/SkinTextView;

    .line 558
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 561
    move-result-object v6

    .line 562
    sget v10, Lq80;->C:I

    .line 564
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 567
    move-result v6

    .line 568
    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 571
    :goto_7
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 573
    iget-object v2, v2, Lkm$e;->C:Lcom/autonavi/skin/view/SkinTextView;

    .line 575
    new-instance v6, Ljava/lang/StringBuilder;

    .line 577
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    move-result-object v4

    .line 590
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    goto :goto_8

    .line 594
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lno;->f()I

    .line 597
    move-result v4

    .line 598
    invoke-virtual {v0, v4, v3}, Lkm;->q(II)I

    .line 601
    move-result v4

    .line 602
    if-eq v4, v2, :cond_15

    .line 604
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 606
    iget-object v2, v2, Lkm$e;->C:Lcom/autonavi/skin/view/SkinTextView;

    .line 608
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 613
    iget-object v2, v2, Lkm$e;->C:Lcom/autonavi/skin/view/SkinTextView;

    .line 615
    invoke-virtual {v2, v4}, Lcom/autonavi/skin/view/SkinTextView;->setBackgroundResource(I)V

    .line 618
    :cond_15
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lno;->g()I

    .line 621
    move-result v2

    .line 622
    if-eq v2, v15, :cond_16

    .line 624
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 626
    iget-object v2, v2, Lkm$e;->D:Lcom/autonavi/skin/view/SkinTextView;

    .line 628
    new-instance v4, Ljava/lang/StringBuilder;

    .line 630
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    invoke-virtual/range {p1 .. p1}, Lno;->d()I

    .line 636
    move-result v6

    .line 637
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    move-result-object v4

    .line 647
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    goto :goto_9

    .line 651
    :cond_16
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 653
    iget-object v2, v2, Lkm$e;->D:Lcom/autonavi/skin/view/SkinTextView;

    .line 655
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    :goto_9
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 660
    iget-object v2, v2, Lkm$e;->y:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 662
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 665
    goto/16 :goto_e

    .line 667
    :cond_17
    sget v4, Ly80;->y:I

    .line 669
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 672
    move-result-object v4

    .line 673
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 676
    invoke-virtual/range {p1 .. p1}, Lno;->h()I

    .line 679
    move-result v4

    .line 680
    if-lez v4, :cond_19

    .line 682
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 684
    iget-object v2, v2, Lkm$e;->G:Lcom/autonavi/skin/view/SkinTextView;

    .line 686
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 689
    move-result v6

    .line 690
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 693
    if-le v4, v11, :cond_18

    .line 695
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 697
    iget-object v2, v2, Lkm$e;->G:Lcom/autonavi/skin/view/SkinTextView;

    .line 699
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 702
    move-result-object v6

    .line 703
    sget v10, Lq80;->B:I

    .line 705
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 708
    move-result v6

    .line 709
    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 712
    goto :goto_a

    .line 713
    :cond_18
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 715
    iget-object v2, v2, Lkm$e;->G:Lcom/autonavi/skin/view/SkinTextView;

    .line 717
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 720
    move-result-object v6

    .line 721
    sget v10, Lq80;->C:I

    .line 723
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 726
    move-result v6

    .line 727
    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 730
    :goto_a
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 732
    iget-object v2, v2, Lkm$e;->G:Lcom/autonavi/skin/view/SkinTextView;

    .line 734
    new-instance v6, Ljava/lang/StringBuilder;

    .line 736
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 739
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    move-result-object v4

    .line 749
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    goto :goto_b

    .line 753
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lno;->i()I

    .line 756
    move-result v4

    .line 757
    invoke-virtual {v0, v4, v3}, Lkm;->q(II)I

    .line 760
    move-result v4

    .line 761
    if-eq v4, v2, :cond_1a

    .line 763
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 765
    iget-object v2, v2, Lkm$e;->G:Lcom/autonavi/skin/view/SkinTextView;

    .line 767
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 772
    iget-object v2, v2, Lkm$e;->G:Lcom/autonavi/skin/view/SkinTextView;

    .line 774
    invoke-virtual {v2, v4}, Lcom/autonavi/skin/view/SkinTextView;->setBackgroundResource(I)V

    .line 777
    :cond_1a
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lno;->g()I

    .line 780
    move-result v2

    .line 781
    if-eq v2, v15, :cond_1b

    .line 783
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 785
    iget-object v2, v2, Lkm$e;->H:Lcom/autonavi/skin/view/SkinTextView;

    .line 787
    new-instance v4, Ljava/lang/StringBuilder;

    .line 789
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 792
    invoke-virtual/range {p1 .. p1}, Lno;->d()I

    .line 795
    move-result v6

    .line 796
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 799
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 805
    move-result-object v4

    .line 806
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    goto :goto_c

    .line 810
    :cond_1b
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 812
    iget-object v2, v2, Lkm$e;->H:Lcom/autonavi/skin/view/SkinTextView;

    .line 814
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    :goto_c
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 819
    iget-object v2, v2, Lkm$e;->E:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 821
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 824
    goto :goto_e

    .line 825
    :cond_1c
    sget v4, Ly80;->y:I

    .line 827
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 830
    move-result-object v4

    .line 831
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 834
    invoke-virtual/range {p1 .. p1}, Lno;->i()I

    .line 837
    move-result v4

    .line 838
    invoke-virtual {v0, v4, v3}, Lkm;->q(II)I

    .line 841
    move-result v4

    .line 842
    if-eq v4, v2, :cond_1d

    .line 844
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 846
    iget-object v2, v2, Lkm$e;->K:Lcom/autonavi/skin/view/SkinTextView;

    .line 848
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 853
    iget-object v2, v2, Lkm$e;->K:Lcom/autonavi/skin/view/SkinTextView;

    .line 855
    invoke-virtual {v2, v4}, Lcom/autonavi/skin/view/SkinTextView;->setBackgroundResource(I)V

    .line 858
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lno;->h()I

    .line 861
    move-result v2

    .line 862
    if-le v2, v11, :cond_1e

    .line 864
    iget-object v4, v0, Lkm;->w:Lkm$e;

    .line 866
    iget-object v4, v4, Lkm$e;->K:Lcom/autonavi/skin/view/SkinTextView;

    .line 868
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 871
    move-result-object v6

    .line 872
    sget v10, Lq80;->B:I

    .line 874
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 877
    move-result v6

    .line 878
    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 881
    goto :goto_d

    .line 882
    :cond_1e
    iget-object v4, v0, Lkm;->w:Lkm$e;

    .line 884
    iget-object v4, v4, Lkm$e;->K:Lcom/autonavi/skin/view/SkinTextView;

    .line 886
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 889
    move-result-object v6

    .line 890
    sget v10, Lq80;->C:I

    .line 892
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 895
    move-result v6

    .line 896
    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 899
    :goto_d
    iget-object v4, v0, Lkm;->w:Lkm$e;

    .line 901
    iget-object v4, v4, Lkm$e;->K:Lcom/autonavi/skin/view/SkinTextView;

    .line 903
    new-instance v6, Ljava/lang/StringBuilder;

    .line 905
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 908
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 911
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 917
    move-result-object v2

    .line 918
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 923
    iget-object v2, v2, Lkm$e;->I:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 925
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 928
    :goto_e
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 930
    iget-object v2, v2, Lkm$e;->i:Lcom/autonavi/skin/view/SkinImageView;

    .line 932
    if-nez v2, :cond_1f

    .line 934
    return-void

    .line 935
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lno;->k()[B

    .line 938
    move-result-object v2

    .line 939
    const/4 v4, 0x0

    .line 940
    if-nez v2, :cond_20

    .line 942
    invoke-virtual/range {p1 .. p1}, Lno;->p()Ljava/lang/Integer;

    .line 945
    move-result-object v1

    .line 946
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 949
    move-result v1

    .line 950
    invoke-virtual/range {p1 .. p1}, Lno;->n()Ljava/lang/Integer;

    .line 953
    move-result-object v2

    .line 954
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 957
    move-result v2

    .line 958
    invoke-static {v1, v2, v3, v8}, Lob;->h(IIZZ)Landroid/graphics/Bitmap;

    .line 961
    move-result-object v1

    .line 962
    new-array v2, v7, [Ljava/lang/Object;

    .line 964
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 966
    aput-object v6, v2, v3

    .line 968
    invoke-virtual/range {p1 .. p1}, Lno;->p()Ljava/lang/Integer;

    .line 971
    move-result-object v6

    .line 972
    aput-object v6, v2, v8

    .line 974
    invoke-virtual/range {p1 .. p1}, Lno;->n()Ljava/lang/Integer;

    .line 977
    move-result-object v6

    .line 978
    aput-object v6, v2, v9

    .line 980
    const-string v6, "online:{?} \u8f6c\u5411\u4fe1\u606f\uff1a icon:{?} roundNum:{?}"

    .line 982
    invoke-static {v5, v6, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 985
    goto :goto_10

    .line 986
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lno;->k()[B

    .line 989
    move-result-object v2

    .line 990
    invoke-static {v2}, Lob;->b([B)[I

    .line 993
    move-result-object v2

    .line 994
    invoke-virtual/range {p1 .. p1}, Lno;->m()I

    .line 997
    move-result v5

    .line 998
    invoke-virtual/range {p1 .. p1}, Lno;->l()I

    .line 1001
    move-result v6

    .line 1002
    const-string v10, "online:{?} \u8f6c\u5411\u4fe1\u606f\uff1a icon:{?} roundNum:{?} bitmapWidth:{?} bitmapHeight:{?}"

    .line 1004
    if-lez v5, :cond_2a

    .line 1006
    if-gtz v6, :cond_21

    .line 1008
    goto/16 :goto_13

    .line 1010
    :cond_21
    if-eqz v2, :cond_22

    .line 1012
    array-length v11, v2

    .line 1013
    if-lez v11, :cond_22

    .line 1015
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 1017
    invoke-static {v2, v5, v6, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 1020
    move-result-object v2

    .line 1021
    goto :goto_f

    .line 1022
    :cond_22
    move-object v2, v4

    .line 1023
    :goto_f
    const/4 v5, 0x5

    .line 1024
    new-array v5, v5, [Ljava/lang/Object;

    .line 1026
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1028
    aput-object v6, v5, v3

    .line 1030
    invoke-virtual/range {p1 .. p1}, Lno;->p()Ljava/lang/Integer;

    .line 1033
    move-result-object v6

    .line 1034
    aput-object v6, v5, v8

    .line 1036
    invoke-virtual/range {p1 .. p1}, Lno;->n()Ljava/lang/Integer;

    .line 1039
    move-result-object v6

    .line 1040
    aput-object v6, v5, v9

    .line 1042
    invoke-virtual/range {p1 .. p1}, Lno;->m()I

    .line 1045
    move-result v6

    .line 1046
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1049
    move-result-object v6

    .line 1050
    aput-object v6, v5, v7

    .line 1052
    invoke-virtual/range {p1 .. p1}, Lno;->l()I

    .line 1055
    move-result v6

    .line 1056
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1059
    move-result-object v6

    .line 1060
    const/4 v8, 0x4

    .line 1061
    aput-object v6, v5, v8

    .line 1063
    invoke-static {v1, v10, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1066
    move-object v1, v2

    .line 1067
    :goto_10
    if-eqz v1, :cond_23

    .line 1069
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 1072
    move-result v2

    .line 1073
    if-nez v2, :cond_23

    .line 1075
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1077
    iget-object v2, v2, Lkm$e;->i:Lcom/autonavi/skin/view/SkinImageView;

    .line 1079
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1082
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1084
    iget-object v2, v2, Lkm$e;->i:Lcom/autonavi/skin/view/SkinImageView;

    .line 1086
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1089
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lno;->o()Ljava/lang/String;

    .line 1092
    move-result-object v1

    .line 1093
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1096
    move-result v2

    .line 1097
    if-nez v2, :cond_29

    .line 1099
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1102
    move-result-object v2

    .line 1103
    sget v4, Ld90;->c:I

    .line 1105
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1108
    move-result-object v2

    .line 1109
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1112
    move-result v2

    .line 1113
    if-eqz v2, :cond_27

    .line 1115
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1118
    move-result-object v2

    .line 1119
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1122
    move-result-object v2

    .line 1123
    invoke-virtual {v1, v2, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1126
    move-result-object v1

    .line 1127
    invoke-static {}, Lib;->l()Z

    .line 1130
    move-result v2

    .line 1131
    if-eqz v2, :cond_26

    .line 1133
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1136
    move-result v2

    .line 1137
    if-nez v2, :cond_26

    .line 1139
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1142
    move-result v2

    .line 1143
    if-le v2, v7, :cond_24

    .line 1145
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1147
    iget-object v2, v2, Lkm$e;->f:Lcom/autonavi/skin/view/SkinTextView;

    .line 1149
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1152
    move-result-object v5

    .line 1153
    sget v6, Lq80;->j:I

    .line 1155
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1158
    move-result v5

    .line 1159
    int-to-float v5, v5

    .line 1160
    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1163
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1165
    iget-object v2, v2, Lkm$e;->g:Lcom/autonavi/skin/view/SkinTextView;

    .line 1167
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1170
    move-result-object v5

    .line 1171
    sget v6, Lq80;->c:I

    .line 1173
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1176
    move-result v5

    .line 1177
    int-to-float v5, v5

    .line 1178
    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1181
    goto :goto_11

    .line 1182
    :cond_24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1185
    move-result v2

    .line 1186
    if-ne v2, v7, :cond_25

    .line 1188
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1190
    iget-object v2, v2, Lkm$e;->f:Lcom/autonavi/skin/view/SkinTextView;

    .line 1192
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1195
    move-result-object v5

    .line 1196
    sget v6, Lq80;->n:I

    .line 1198
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1201
    move-result v5

    .line 1202
    int-to-float v5, v5

    .line 1203
    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1206
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1208
    iget-object v2, v2, Lkm$e;->g:Lcom/autonavi/skin/view/SkinTextView;

    .line 1210
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1213
    move-result-object v5

    .line 1214
    sget v6, Lq80;->f:I

    .line 1216
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1219
    move-result v5

    .line 1220
    int-to-float v5, v5

    .line 1221
    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1224
    goto :goto_11

    .line 1225
    :cond_25
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1227
    iget-object v2, v2, Lkm$e;->f:Lcom/autonavi/skin/view/SkinTextView;

    .line 1229
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1232
    move-result-object v5

    .line 1233
    sget v6, Lq80;->t:I

    .line 1235
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1238
    move-result v5

    .line 1239
    int-to-float v5, v5

    .line 1240
    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1243
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1245
    iget-object v2, v2, Lkm$e;->g:Lcom/autonavi/skin/view/SkinTextView;

    .line 1247
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1250
    move-result-object v5

    .line 1251
    sget v6, Lq80;->h:I

    .line 1253
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1256
    move-result v5

    .line 1257
    int-to-float v5, v5

    .line 1258
    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1261
    :cond_26
    :goto_11
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1263
    iget-object v2, v2, Lkm$e;->f:Lcom/autonavi/skin/view/SkinTextView;

    .line 1265
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1270
    iget-object v2, v2, Lkm$e;->g:Lcom/autonavi/skin/view/SkinTextView;

    .line 1272
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1275
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1277
    iget-object v2, v2, Lkm$e;->h:Lcom/autonavi/skin/view/SkinTextView;

    .line 1279
    const/16 v3, 0x8

    .line 1281
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1286
    iget-object v2, v2, Lkm$e;->f:Lcom/autonavi/skin/view/SkinTextView;

    .line 1288
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1291
    iget-object v1, v0, Lkm;->w:Lkm$e;

    .line 1293
    iget-object v1, v1, Lkm$e;->g:Lcom/autonavi/skin/view/SkinTextView;

    .line 1295
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1298
    move-result-object v2

    .line 1299
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1302
    move-result-object v2

    .line 1303
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1306
    goto :goto_12

    .line 1307
    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1310
    move-result-object v2

    .line 1311
    sget v4, Ld90;->h:I

    .line 1313
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1316
    move-result-object v2

    .line 1317
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1320
    move-result v2

    .line 1321
    if-eqz v2, :cond_28

    .line 1323
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1325
    iget-object v2, v2, Lkm$e;->f:Lcom/autonavi/skin/view/SkinTextView;

    .line 1327
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1330
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1332
    iget-object v2, v2, Lkm$e;->g:Lcom/autonavi/skin/view/SkinTextView;

    .line 1334
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1337
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1339
    iget-object v2, v2, Lkm$e;->h:Lcom/autonavi/skin/view/SkinTextView;

    .line 1341
    const/16 v3, 0x8

    .line 1343
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1346
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1348
    iget-object v2, v2, Lkm$e;->f:Lcom/autonavi/skin/view/SkinTextView;

    .line 1350
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1353
    move-result-object v3

    .line 1354
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1357
    move-result-object v3

    .line 1358
    invoke-virtual {v1, v3, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1361
    move-result-object v1

    .line 1362
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    iget-object v1, v0, Lkm;->w:Lkm$e;

    .line 1367
    iget-object v1, v1, Lkm$e;->g:Lcom/autonavi/skin/view/SkinTextView;

    .line 1369
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1372
    move-result-object v2

    .line 1373
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1376
    move-result-object v2

    .line 1377
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1380
    goto :goto_12

    .line 1381
    :cond_28
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1383
    iget-object v2, v2, Lkm$e;->f:Lcom/autonavi/skin/view/SkinTextView;

    .line 1385
    const/16 v4, 0x8

    .line 1387
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1390
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1392
    iget-object v2, v2, Lkm$e;->g:Lcom/autonavi/skin/view/SkinTextView;

    .line 1394
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1397
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1399
    iget-object v2, v2, Lkm$e;->h:Lcom/autonavi/skin/view/SkinTextView;

    .line 1401
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1404
    iget-object v2, v0, Lkm;->w:Lkm$e;

    .line 1406
    iget-object v2, v2, Lkm$e;->h:Lcom/autonavi/skin/view/SkinTextView;

    .line 1408
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1411
    :cond_29
    :goto_12
    return-void

    .line 1412
    :cond_2a
    :goto_13
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1414
    const-string v4, "width\u3001height must be > 0"

    .line 1416
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1419
    const/4 v4, 0x5

    .line 1420
    new-array v4, v4, [Ljava/lang/Object;

    .line 1422
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1424
    aput-object v11, v4, v3

    .line 1426
    invoke-virtual/range {p1 .. p1}, Lno;->p()Ljava/lang/Integer;

    .line 1429
    move-result-object v3

    .line 1430
    aput-object v3, v4, v8

    .line 1432
    invoke-virtual/range {p1 .. p1}, Lno;->n()Ljava/lang/Integer;

    .line 1435
    move-result-object v3

    .line 1436
    aput-object v3, v4, v9

    .line 1438
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1441
    move-result-object v3

    .line 1442
    aput-object v3, v4, v7

    .line 1444
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1447
    move-result-object v3

    .line 1448
    const/4 v5, 0x4

    .line 1449
    aput-object v3, v4, v5

    .line 1451
    invoke-static {v1, v10, v2, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1454
    return-void
.end method

.method public z(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkm;->t:I

    .line 3
    iget p1, p0, Lkm;->u:I

    .line 5
    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lkm;->w:Lkm$e;

    .line 9
    iget-object p1, p1, Lkm$e;->c:Lgm0;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lkm;->u:I

    .line 19
    :cond_0
    return-void
.end method
