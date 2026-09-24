.class public Lej;
.super Lei;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lei;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final e(Landroid/view/Window;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 8
    move-result v0

    .line 9
    or-int/lit8 v0, v0, 0x4

    .line 11
    or-int/lit8 v0, v0, 0x2

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 16
    return-void
.end method

.method public onActivityLifecycleChanged(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lbc;->onActivityLifecycleChanged(Landroid/app/Activity;I)V

    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p2, v0, :cond_0

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p2, v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lej;->e(Landroid/view/Window;)V

    .line 18
    :goto_0
    return-void
.end method
