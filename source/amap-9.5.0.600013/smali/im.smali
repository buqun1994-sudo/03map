.class public abstract Lim;
.super Lge;
.source "SourceFile"


# instance fields
.field public y:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lge;-><init>(Landroid/content/Context;III)V

    .line 4
    return-void
.end method


# virtual methods
.method public getDriveWayContainer()Landroid/widget/LinearLayout;
    .locals 3

    .line 1
    iget-object v0, p0, Lim;->y:Landroid/widget/LinearLayout;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v0, p0, Lim;->y:Landroid/widget/LinearLayout;

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v0

    .line 25
    sget v1, Lq80;->e:I

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Lim;->y:Landroid/widget/LinearLayout;

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    iget-object v0, p0, Lim;->y:Landroid/widget/LinearLayout;

    .line 39
    return-object v0
.end method

.method public n(Landroid/content/Context;I)V
    .locals 3

    .line 1
    iget v0, p0, Lge;->a:I

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    sget v1, Lq80;->u:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 14
    move-result v0

    .line 15
    float-to-int v0, v0

    .line 16
    :cond_0
    iput v0, p0, Lge;->a:I

    .line 18
    iget v0, p0, Lge;->b:I

    .line 20
    if-nez v0, :cond_1

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v0

    .line 26
    sget v1, Lq80;->z:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 31
    move-result v0

    .line 32
    float-to-int v0, v0

    .line 33
    :cond_1
    iput v0, p0, Lge;->b:I

    .line 35
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 37
    iget v1, p0, Lge;->a:I

    .line 39
    iget v2, p0, Lge;->b:I

    .line 41
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44
    iput-object v0, p0, Lge;->i:Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    int-to-float p2, p2

    .line 47
    const/high16 v1, 0x40000000    # 2.0f

    .line 49
    div-float/2addr p2, v1

    .line 50
    float-to-int p2, p2

    .line 51
    iput p2, p0, Lge;->c:I

    .line 53
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 55
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object p1

    .line 61
    sget p2, Lq80;->k:I

    .line 63
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    move-result p1

    .line 67
    iput p1, p0, Lge;->d:I

    .line 69
    iget-object p2, p0, Lge;->i:Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 73
    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 75
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 77
    const/4 p2, -0x2

    .line 78
    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    const/16 p2, 0x11

    .line 83
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 85
    invoke-virtual {p0}, Lim;->getDriveWayContainer()Landroid/widget/LinearLayout;

    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method
