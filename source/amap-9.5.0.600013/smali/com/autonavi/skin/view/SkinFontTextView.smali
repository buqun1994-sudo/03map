.class public Lcom/autonavi/skin/view/SkinFontTextView;
.super Lcom/autonavi/skin/view/SkinTextView;
.source "SourceFile"


# static fields
.field public static r:Landroid/graphics/Typeface;


# instance fields
.field public q:Landroid/graphics/Paint$FontMetricsInt;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/skin/view/SkinFontTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/skin/view/SkinTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Lcom/autonavi/skin/view/SkinFontTextView;->e()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/skin/view/SkinFontTextView;->r:Landroid/graphics/Typeface;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "res/HmiRes/gframe_style/assets/icomoon.ttf"

    .line 15
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/autonavi/skin/view/SkinFontTextView;->r:Landroid/graphics/Typeface;

    .line 21
    :cond_0
    sget-object v0, Lcom/autonavi/skin/view/SkinFontTextView;->r:Landroid/graphics/Typeface;

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/autonavi/skin/view/SkinTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinFontTextView;->q:Landroid/graphics/Paint$FontMetricsInt;

    .line 6
    if-nez v0, :cond_0

    .line 8
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    .line 10
    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/autonavi/skin/view/SkinFontTextView;->q:Landroid/graphics/Paint$FontMetricsInt;

    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/autonavi/skin/view/SkinFontTextView;->q:Landroid/graphics/Paint$FontMetricsInt;

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinFontTextView;->q:Landroid/graphics/Paint$FontMetricsInt;

    .line 26
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 28
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 30
    sub-int/2addr v1, v0

    .line 31
    int-to-float v0, v1

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 36
    return-void
.end method
