.class public Lsu$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lsu$d;->a:Lsu;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsu$d;->a:Lsu;

    .line 3
    invoke-static {v0}, Lsu;->b(Lsu;)Llh;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lsu$d;->a:Lsu;

    .line 12
    invoke-static {v0}, Lsu;->b(Lsu;)Llh;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x2

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    aput-object v2, v1, v3

    .line 34
    iget-object v2, p0, Lsu$d;->a:Lsu;

    .line 36
    invoke-static {v2}, Lsu;->g(Lsu;)I

    .line 39
    move-result v2

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v2

    .line 44
    const/4 v4, 0x1

    .line 45
    aput-object v2, v1, v4

    .line 47
    const-string v2, "InputMethodWrapper"

    .line 49
    const-string v4, "setEditTextSelection contentSize={?} textSelection:{?}"

    .line 51
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v1, p0, Lsu$d;->a:Lsu;

    .line 56
    invoke-static {v1}, Lsu;->g(Lsu;)I

    .line 59
    move-result v1

    .line 60
    if-le v1, v0, :cond_1

    .line 62
    iget-object v1, p0, Lsu$d;->a:Lsu;

    .line 64
    invoke-static {v1}, Lsu;->b(Lsu;)Llh;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Llh;->setTransformSelection(I)V

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lsu$d;->a:Lsu;

    .line 74
    invoke-static {v0}, Lsu;->b(Lsu;)Llh;

    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lsu$d;->a:Lsu;

    .line 80
    invoke-static {v1}, Lsu;->g(Lsu;)I

    .line 83
    move-result v1

    .line 84
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 87
    move-result v1

    .line 88
    invoke-virtual {v0, v1}, Llh;->setTransformSelection(I)V

    .line 91
    :goto_0
    iget-object v0, p0, Lsu$d;->a:Lsu;

    .line 93
    invoke-static {v0}, Lsu;->b(Lsu;)Llh;

    .line 96
    move-result-object v0

    .line 97
    iget-object v1, p0, Lsu$d;->a:Lsu;

    .line 99
    invoke-static {v1}, Lsu;->b(Lsu;)Llh;

    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 106
    move-result v1

    .line 107
    invoke-virtual {v0, v1}, Llh;->e(I)I

    .line 110
    move-result v0

    .line 111
    iget-object v1, p0, Lsu$d;->a:Lsu;

    .line 113
    invoke-static {v1}, Lsu;->b(Lsu;)Llh;

    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    invoke-static {v1, v0}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard;->sendSoftInputContent(Ljava/lang/String;I)V

    .line 128
    return-void
.end method
