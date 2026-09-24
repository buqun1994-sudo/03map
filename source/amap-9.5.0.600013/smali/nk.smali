.class public abstract Lnk;
.super Lge;
.source "SourceFile"


# instance fields
.field public y:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lge;-><init>(Landroid/content/Context;III)V

    .line 5
    return-void
.end method


# virtual methods
.method public getDriveWayContainer()Landroid/widget/LinearLayout;
    .locals 3

    .line 1
    iget-object v0, p0, Lnk;->y:Landroid/widget/LinearLayout;

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
    iput-object v0, p0, Lnk;->y:Landroid/widget/LinearLayout;

    .line 17
    sget v1, Lt80;->j:I

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object v0

    .line 30
    sget v1, Lq80;->e:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    move-result v0

    .line 36
    invoke-static {}, Lib;->n()Z

    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 42
    iget-object v1, p0, Lnk;->y:Landroid/widget/LinearLayout;

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 48
    :cond_1
    iget-object v0, p0, Lnk;->y:Landroid/widget/LinearLayout;

    .line 50
    return-object v0
.end method

.method public n(Landroid/content/Context;I)V
    .locals 3

    .line 1
    iget p2, p0, Lge;->a:I

    .line 3
    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p2

    .line 9
    sget v0, Lq80;->u:I

    .line 11
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 14
    move-result p2

    .line 15
    float-to-int p2, p2

    .line 16
    :cond_0
    iput p2, p0, Lge;->a:I

    .line 18
    iget p2, p0, Lge;->b:I

    .line 20
    if-nez p2, :cond_1

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object p2

    .line 26
    sget v0, Lq80;->z:I

    .line 28
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 31
    move-result p2

    .line 32
    float-to-int p2, p2

    .line 33
    :cond_1
    iput p2, p0, Lge;->b:I

    .line 35
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 37
    iget v0, p0, Lge;->f:I

    .line 39
    iget v1, p0, Lge;->b:I

    .line 41
    iget v2, p0, Lge;->e:I

    .line 43
    sub-int/2addr v1, v2

    .line 44
    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    iput-object p2, p0, Lge;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    const/16 v0, 0x10

    .line 51
    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 53
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 55
    iget v0, p0, Lge;->a:I

    .line 57
    iget v1, p0, Lge;->b:I

    .line 59
    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    iput-object p2, p0, Lge;->i:Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    invoke-static {}, Lib;->n()Z

    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_2

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object p1

    .line 74
    sget p2, Lq80;->k:I

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 79
    move-result p1

    .line 80
    iput p1, p0, Lge;->d:I

    .line 82
    :cond_2
    iget-object p1, p0, Lge;->i:Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    iget p2, p0, Lge;->d:I

    .line 86
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 88
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 90
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    const/4 p2, -0x2

    .line 93
    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    const/16 p2, 0x11

    .line 98
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 100
    invoke-virtual {p0}, Lnk;->getDriveWayContainer()Landroid/widget/LinearLayout;

    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    return-void
.end method
