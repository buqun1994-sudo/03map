.class public Lcom/autonavi/view/custom/CustomCardSuspensionView;
.super Lcom/autonavi/skin/view/SkinImageView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/view/custom/CustomCardSuspensionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/skin/view/SkinImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p0}, Lcom/autonavi/view/custom/CustomCardSuspensionView;->f()V

    .line 4
    invoke-virtual {p0, p2}, Lcom/autonavi/view/custom/CustomCardSuspensionView;->e(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final e(Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget p1, Lt80;->h:I

    .line 3
    sget v0, Lt80;->i:I

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/autonavi/skin/view/SkinImageView;->d(II)V

    .line 8
    invoke-static {}, Lee0;->c()Lee0;

    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, p0, v0}, Lee0;->f(Landroid/view/View;Z)Lee0$b;

    .line 16
    return-void
.end method

.method public final f()V
    .locals 0

    .line 1
    return-void
.end method
