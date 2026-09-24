.class public Lj;
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
.method public final enterImmersiveMode(Landroid/view/Window;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x1706

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 10
    new-instance v0, Lj$a;

    .line 12
    invoke-direct {v0, p0, p1}, Lj$a;-><init>(Lj;Landroid/view/View;)V

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 18
    return-void
.end method

.method public onActivityLifecycleChanged(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lbc;->onActivityLifecycleChanged(Landroid/app/Activity;I)V

    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p2, v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lj;->enterImmersiveMode(Landroid/view/Window;)V

    .line 15
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lbc;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    .line 4
    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lj;->enterImmersiveMode(Landroid/view/Window;)V

    .line 13
    :cond_0
    return-void
.end method
