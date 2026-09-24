.class public Lrx$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lrx;


# direct methods
.method public constructor <init>(Lrx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx$e;->a:Lrx;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    if-ne p2, p1, :cond_0

    .line 4
    iget-object p1, p0, Lrx$e;->a:Lrx;

    .line 6
    invoke-virtual {p1}, Lrx;->m()Z

    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 12
    iget-object p1, p0, Lrx$e;->a:Lrx;

    .line 14
    iget-object p1, p1, Lrx;->F:Landroid/widget/PopupWindow;

    .line 16
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lrx$e;->a:Lrx;

    .line 24
    iget-object p2, p1, Lrx;->B:Landroid/os/Handler;

    .line 26
    iget-object p1, p1, Lrx;->w:Lrx$g;

    .line 28
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    iget-object p1, p0, Lrx$e;->a:Lrx;

    .line 33
    iget-object p1, p1, Lrx;->w:Lrx$g;

    .line 35
    invoke-virtual {p1}, Lrx$g;->run()V

    .line 38
    :cond_0
    return-void
.end method
