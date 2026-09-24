.class public Lsu$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lsu$f;->a:Lsu;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lsu$f;->a:Lsu;

    .line 3
    invoke-static {p1}, Lsu;->b(Lsu;)Llh;

    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 16
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 19
    move-result p1

    .line 20
    new-instance p3, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    const-string v0, "OnKeyListener KeyEvent Code:"

    .line 27
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p3

    .line 37
    new-array v0, p2, [Ljava/lang/Object;

    .line 39
    const-string v1, "InputMethodWrapper"

    .line 41
    invoke-static {v1, p3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    const/16 p3, 0x43

    .line 46
    if-ne p1, p3, :cond_0

    .line 48
    iget-object p3, p0, Lsu$f;->a:Lsu;

    .line 50
    invoke-static {p3}, Lsu;->b(Lsu;)Llh;

    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 57
    move-result-object p3

    .line 58
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    move-result-object p3

    .line 62
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result p3

    .line 66
    if-eqz p3, :cond_0

    .line 68
    const-string p3, "OnKeyListener EditText getText is null"

    .line 70
    new-array v0, p2, [Ljava/lang/Object;

    .line 72
    invoke-static {v1, p3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard;->nativeClickDelKeyOnEmpty()V

    .line 78
    :cond_0
    invoke-static {}, Lzm;->d()Lzm;

    .line 81
    move-result-object p3

    .line 82
    sget-object v0, Lzm;->U:Ljava/lang/String;

    .line 84
    invoke-virtual {p3, v0, p2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 87
    move-result p3

    .line 88
    if-eqz p3, :cond_1

    .line 90
    iget-object p3, p0, Lsu$f;->a:Lsu;

    .line 92
    invoke-static {p3, p1}, Lsu;->i(Lsu;I)V

    .line 95
    :cond_1
    return p2
.end method
