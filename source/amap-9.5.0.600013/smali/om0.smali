.class public Lom0;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:I

.field public c:I

.field public d:F

.field public e:Z

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:I

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lom0;->e:Z

    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lom0;->h:I

    .line 10
    iput v0, p0, Lom0;->i:I

    .line 12
    iput-boolean p1, p0, Lom0;->j:Z

    .line 14
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;I)V
    .locals 7

    .line 1
    iget v0, p0, Lom0;->b:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 6
    iget v2, p0, Lom0;->c:I

    .line 8
    if-eqz v2, :cond_3

    .line 10
    if-eqz p1, :cond_3

    .line 12
    iget-object v3, p0, Lom0;->f:Landroid/view/View;

    .line 14
    if-eqz v3, :cond_3

    .line 16
    iget-object v3, p0, Lom0;->a:Landroid/widget/ImageView;

    .line 18
    if-nez v3, :cond_0

    .line 20
    goto/16 :goto_1

    .line 22
    :cond_0
    int-to-double v3, p2

    .line 23
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 25
    mul-double v3, v3, v5

    .line 27
    int-to-double v5, v0

    .line 28
    div-double/2addr v3, v5

    .line 29
    int-to-double v5, v2

    .line 30
    mul-double v3, v3, v5

    .line 32
    double-to-float p2, v3

    .line 33
    iput p2, p0, Lom0;->d:F

    .line 35
    invoke-static {}, Lrv;->H()Lrv;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v0

    .line 47
    sget v2, Lq80;->A:I

    .line 49
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 52
    move-result v0

    .line 53
    sub-float/2addr p2, v0

    .line 54
    float-to-int p2, p2

    .line 55
    if-gez p2, :cond_1

    .line 57
    const/4 p2, 0x0

    .line 58
    :cond_1
    iget-object v0, p0, Lom0;->a:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    invoke-virtual {v0, v1, p2, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 69
    iget-object v2, p0, Lom0;->a:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v0, p0, Lom0;->a:Landroid/widget/ImageView;

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 79
    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lom0;->e:Z

    .line 82
    invoke-static {}, Lib;->l()Z

    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_2

    .line 88
    iget-object v2, p0, Lom0;->f:Landroid/view/View;

    .line 90
    check-cast v2, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;

    .line 92
    iget v3, p0, Lom0;->b:I

    .line 94
    invoke-virtual {v2, p1, v3}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->f(Ljava/util/List;I)V

    .line 97
    iget-object p1, p0, Lom0;->f:Landroid/view/View;

    .line 99
    check-cast p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;

    .line 101
    iget v2, p0, Lom0;->d:F

    .line 103
    invoke-virtual {p1, v2}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->setCursorPos(F)V

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    iget-object v2, p0, Lom0;->f:Landroid/view/View;

    .line 109
    check-cast v2, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;

    .line 111
    iget v3, p0, Lom0;->b:I

    .line 113
    invoke-virtual {v2, p1, v3}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->d(Ljava/util/List;I)V

    .line 116
    iget-object p1, p0, Lom0;->f:Landroid/view/View;

    .line 118
    check-cast p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;

    .line 120
    iget v2, p0, Lom0;->d:F

    .line 122
    invoke-virtual {p1, v2}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->setCursorPos(F)V

    .line 125
    :goto_0
    new-array p1, v0, [Ljava/lang/Object;

    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object p2

    .line 131
    aput-object p2, p1, v1

    .line 133
    const-string p2, "WidgetTmcContainer"

    .line 135
    const-string v2, " createTmcBar topMargin:{?} seq:4"

    .line 137
    invoke-static {p2, v2, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object p1, p0, Lom0;->f:Landroid/view/View;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 145
    move-result-object p1

    .line 146
    iget v2, p0, Lom0;->c:I

    .line 148
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 150
    iget-object v2, p0, Lom0;->f:Landroid/view/View;

    .line 152
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-array p1, v0, [Ljava/lang/Object;

    .line 157
    iget v2, p0, Lom0;->c:I

    .line 159
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    move-result-object v2

    .line 163
    aput-object v2, p1, v1

    .line 165
    const-string v1, " createTmcBar:{?} seq:4"

    .line 167
    invoke-static {p2, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object p1, p0, Lom0;->f:Landroid/view/View;

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 175
    iput-boolean v0, p0, Lom0;->j:Z

    .line 177
    return-void

    .line 178
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lom0;->j:Z

    .line 180
    return-void
.end method

.method public b(I)V
    .locals 5

    .line 1
    invoke-static {}, Lib;->l()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    move-result-object v0

    .line 15
    sget v1, Lb90;->o:I

    .line 17
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lom0;->g:Landroid/view/View;

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 31
    move-result-object v0

    .line 32
    sget v1, Lb90;->n:I

    .line 34
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lom0;->g:Landroid/view/View;

    .line 40
    :goto_0
    iget-object v0, p0, Lom0;->g:Landroid/view/View;

    .line 42
    sget v1, Ly80;->i0:I

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/ImageView;

    .line 50
    iput-object v0, p0, Lom0;->a:Landroid/widget/ImageView;

    .line 52
    const/4 v0, 0x1

    .line 53
    new-array v1, v0, [Ljava/lang/Object;

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v2

    .line 59
    const/4 v3, 0x0

    .line 60
    aput-object v2, v1, v3

    .line 62
    const-string v2, "WidgetTmcContainer"

    .line 64
    const-string v4, "initView tmcViewLength:{?} seq:1"

    .line 66
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iput p1, p0, Lom0;->c:I

    .line 71
    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object p1

    .line 77
    aput-object p1, v0, v3

    .line 79
    const-string p1, "initView tmcViewLength:{?} seq:2"

    .line 81
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lom0;->g:Landroid/view/View;

    .line 86
    sget v0, Ly80;->R0:I

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object p1

    .line 92
    iput-object p1, p0, Lom0;->f:Landroid/view/View;

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 97
    move-result-object p1

    .line 98
    iget v0, p0, Lom0;->c:I

    .line 100
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    iget-object v0, p0, Lom0;->f:Landroid/view/View;

    .line 104
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1
    iput p1, p0, Lom0;->b:I

    .line 3
    iget p1, p0, Lom0;->c:I

    .line 5
    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lom0;->f:Landroid/view/View;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lom0;->c:I

    .line 17
    const/4 v0, 0x1

    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v0, v1

    .line 27
    const-string p1, "WidgetTmcContainer"

    .line 29
    const-string v1, "updateRouteTotalLength mTmcViewLength:{?}  seq:3"

    .line 31
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lom0;->j:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 9
    const/4 v1, -0x2

    .line 10
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 20
    move-result v1

    .line 21
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 28
    iget-object v1, p0, Lom0;->g:Landroid/view/View;

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 33
    move-result v1

    .line 34
    iput v1, p0, Lom0;->i:I

    .line 36
    iget-object v1, p0, Lom0;->g:Landroid/view/View;

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 41
    move-result v1

    .line 42
    iput v1, p0, Lom0;->h:I

    .line 44
    iget v2, p0, Lom0;->i:I

    .line 46
    invoke-virtual {p0, v0, v0, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
