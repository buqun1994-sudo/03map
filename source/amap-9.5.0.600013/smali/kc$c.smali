.class public Lkc$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkc;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lkc;


# direct methods
.method public constructor <init>(Lkc;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkc$c;->b:Lkc;

    .line 3
    iput-object p2, p0, Lkc$c;->a:Landroid/view/View;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    sget-boolean v0, Lyg0;->a:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lkc$c;->b:Lkc;

    .line 7
    invoke-static {v0}, Lkc;->d(Lkc;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Lkc$c;->a:Landroid/view/View;

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 25
    const/4 v0, 0x1

    .line 26
    return v0
.end method
