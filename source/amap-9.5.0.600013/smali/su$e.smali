.class public Lsu$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsu;


# direct methods
.method public constructor <init>(Lsu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsu$e;->a:Lsu;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 p1, 0x2

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object p2

    .line 8
    const/4 v0, 0x0

    .line 9
    aput-object p2, p1, v0

    .line 11
    if-nez p3, :cond_0

    .line 13
    const/4 p2, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 18
    move-result p2

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p2

    .line 23
    :goto_0
    const/4 p3, 0x1

    .line 24
    aput-object p2, p1, p3

    .line 26
    const-string p2, "InputMethodWrapper"

    .line 28
    const-string p3, "onEditorAction actionId:{?} event.keyCode:{?}"

    .line 30
    invoke-static {p2, p3, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lsu$e;->a:Lsu;

    .line 35
    invoke-static {p1}, Lsu;->h(Lsu;)Lsu$j;

    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_1

    .line 41
    iget-object p1, p0, Lsu$e;->a:Lsu;

    .line 43
    invoke-static {p1}, Lsu;->h(Lsu;)Lsu$j;

    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Lsu$j;->b()Z

    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    :cond_1
    return v0
.end method
