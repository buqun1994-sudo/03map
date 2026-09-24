.class public final Ly$a;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ly;


# direct methods
.method public constructor <init>(Ly;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 4
    iput-object p1, p0, Ly$a;->a:Ly;

    .line 6
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly$a;->a:Ly;

    .line 3
    invoke-virtual {v0, p1, p2}, Ly;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Ly$a;->a:Ly;

    .line 3
    invoke-virtual {v0, p1}, Ly;->b(Landroid/view/View;)Lv0;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lv0;->a()Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly$a;->a:Ly;

    .line 3
    invoke-virtual {v0, p1, p2}, Ly;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lu0;->O(Landroid/view/accessibility/AccessibilityNodeInfo;)Lu0;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lzk0;->r(Landroid/view/View;)Z

    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lu0;->K(Z)V

    .line 12
    invoke-static {p1}, Lzk0;->p(Landroid/view/View;)Z

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lu0;->I(Z)V

    .line 19
    invoke-static {p1}, Lzk0;->g(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lu0;->J(Ljava/lang/CharSequence;)V

    .line 26
    invoke-static {p1}, Lzk0;->n(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lu0;->M(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v1, p0, Ly$a;->a:Ly;

    .line 35
    invoke-virtual {v1, p1, v0}, Ly;->g(Landroid/view/View;Lu0;)V

    .line 38
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {v0, p2, p1}, Lu0;->c(Ljava/lang/CharSequence;Landroid/view/View;)V

    .line 45
    invoke-static {p1}, Ly;->c(Landroid/view/View;)Ljava/util/List;

    .line 48
    move-result-object p1

    .line 49
    const/4 p2, 0x0

    .line 50
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 53
    move-result v1

    .line 54
    if-ge p2, v1, :cond_0

    .line 56
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lu0$a;

    .line 62
    invoke-virtual {v0, v1}, Lu0;->a(Lu0$a;)V

    .line 65
    add-int/lit8 p2, p2, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly$a;->a:Ly;

    .line 3
    invoke-virtual {v0, p1, p2}, Ly;->h(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly$a;->a:Ly;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ly;->i(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly$a;->a:Ly;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ly;->j(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly$a;->a:Ly;

    .line 3
    invoke-virtual {v0, p1, p2}, Ly;->l(Landroid/view/View;I)V

    .line 6
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly$a;->a:Ly;

    .line 3
    invoke-virtual {v0, p1, p2}, Ly;->m(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    return-void
.end method
