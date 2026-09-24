.class public Lcom/autonavi/skin/view/SkinTextView;
.super Lqw;
.source "SourceFile"

# interfaces
.implements Lmt;


# static fields
.field public static m:Ljava/lang/String; = "Oswald-Regular"

.field public static n:Ljava/lang/String; = "Roboto-Bold"

.field public static o:Landroid/graphics/Typeface;

.field public static p:Landroid/graphics/Typeface;


# instance fields
.field public k:Lxg0;

.field public l:Lod0;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lqw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/autonavi/skin/view/SkinTextView;->c(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lqw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/autonavi/skin/view/SkinTextView;->c(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinTextView;->l:Lod0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lod0;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 8
    :cond_0
    return-void
.end method

.method public final c(Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 5
    new-instance v1, Lxg0;

    .line 7
    invoke-direct {v1, p0, p1}, Lxg0;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 10
    iput-object v1, p0, Lcom/autonavi/skin/view/SkinTextView;->k:Lxg0;

    .line 12
    invoke-virtual {v1, p0}, Ljl0;->h(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/autonavi/skin/view/SkinTextView;->d(Landroid/util/AttributeSet;)V

    .line 18
    if-eqz p1, :cond_4

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lj90;->D:[I

    .line 26
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_4

    .line 32
    sget v1, Lj90;->E:I

    .line 34
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Lcom/autonavi/skin/view/SkinTextView;->m:Ljava/lang/String;

    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v2

    .line 44
    const-string v3, "load Roboto-Bold.ttf"

    .line 46
    const-string v4, "SkinTextView"

    .line 48
    if-eqz v2, :cond_1

    .line 50
    sget-object v1, Lcom/autonavi/skin/view/SkinTextView;->o:Landroid/graphics/Typeface;

    .line 52
    if-nez v1, :cond_0

    .line 54
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 61
    move-result-object v1

    .line 62
    const-string v2, "res/HmiRes/gframe_style/assets/Oswald-Regular.ttf"

    .line 64
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 67
    move-result-object v1

    .line 68
    sput-object v1, Lcom/autonavi/skin/view/SkinTextView;->o:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    .line 74
    invoke-static {v4, v3, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 77
    :cond_0
    :goto_0
    sget-object v0, Lcom/autonavi/skin/view/SkinTextView;->o:Landroid/graphics/Typeface;

    .line 79
    if-eqz v0, :cond_3

    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    sget-object v2, Lcom/autonavi/skin/view/SkinTextView;->n:Ljava/lang/String;

    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_3

    .line 93
    invoke-static {}, Lib;->l()Z

    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_3

    .line 99
    sget-object v1, Lcom/autonavi/skin/view/SkinTextView;->p:Landroid/graphics/Typeface;

    .line 101
    if-nez v1, :cond_2

    .line 103
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 110
    move-result-object v1

    .line 111
    const-string v2, "res/HmiRes/gframe_style/assets/Roboto-Bold.ttf"

    .line 113
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 116
    move-result-object v1

    .line 117
    sput-object v1, Lcom/autonavi/skin/view/SkinTextView;->p:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    goto :goto_1

    .line 120
    :catch_1
    move-exception v1

    .line 121
    new-array v0, v0, [Ljava/lang/Object;

    .line 123
    invoke-static {v4, v3, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 126
    :cond_2
    :goto_1
    sget-object v0, Lcom/autonavi/skin/view/SkinTextView;->p:Landroid/graphics/Typeface;

    .line 128
    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 133
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    :cond_4
    return-void
.end method

.method public d(Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinTextView;->l:Lod0;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lod0;

    .line 7
    invoke-direct {v0, p0, p1}, Lod0;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 10
    iput-object v0, p0, Lcom/autonavi/skin/view/SkinTextView;->l:Lod0;

    .line 12
    :cond_0
    return-void
.end method

.method public getAdpter()Lmt$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinTextView;->k:Lxg0;

    .line 3
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p0, p1, p0}, Lcom/autonavi/skin/view/SkinTextView;->b(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 7
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 4
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 4
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 16
    move-result v3

    .line 17
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 20
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 23
    return-void
.end method

.method public setIsShowShadow(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinTextView;->l:Lod0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lod0;->d(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method public setShadowVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinTextView;->l:Lod0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lod0;->c(I)V

    .line 8
    :cond_0
    return-void
.end method
