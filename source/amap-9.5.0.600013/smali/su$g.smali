.class public Lsu$g;
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
    iput-object p1, p0, Lsu$g;->a:Lsu;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lsu$g;->a:Lsu;

    .line 3
    invoke-static {v0}, Lsu;->b(Lsu;)Llh;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lsu$g;->a:Lsu;

    .line 11
    invoke-static {v0}, Lsu;->b(Lsu;)Llh;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 18
    move-result v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v2, "CustomEditText.post requestFocus result is "

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    new-array v2, v1, [Ljava/lang/Object;

    .line 39
    const-string v3, "InputMethodWrapper"

    .line 41
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lsu$g;->a:Lsu;

    .line 46
    invoke-static {v0}, Lsu;->j(Lsu;)V

    .line 49
    iget-object v0, p0, Lsu$g;->a:Lsu;

    .line 51
    invoke-static {v0}, Lsu;->b(Lsu;)Llh;

    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lsu;->k(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lsu$g;->a:Lsu;

    .line 60
    invoke-static {v0}, Lsu;->g(Lsu;)I

    .line 63
    move-result v0

    .line 64
    const/4 v2, -0x1

    .line 65
    if-eq v0, v2, :cond_1

    .line 67
    const/4 v0, 0x1

    .line 68
    new-array v0, v0, [Ljava/lang/Object;

    .line 70
    iget-object v2, p0, Lsu$g;->a:Lsu;

    .line 72
    invoke-static {v2}, Lsu;->g(Lsu;)I

    .line 75
    move-result v2

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v2

    .line 80
    aput-object v2, v0, v1

    .line 82
    const-string v2, "initEditText mTextSelection:{?}"

    .line 84
    invoke-static {v3, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lsu$g;->a:Lsu;

    .line 89
    invoke-static {v0}, Lsu;->b(Lsu;)Llh;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 96
    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 100
    move-result v0

    .line 101
    iget-object v2, p0, Lsu$g;->a:Lsu;

    .line 103
    invoke-static {v2}, Lsu;->g(Lsu;)I

    .line 106
    move-result v2

    .line 107
    if-le v2, v0, :cond_0

    .line 109
    iget-object v1, p0, Lsu$g;->a:Lsu;

    .line 111
    invoke-static {v1}, Lsu;->b(Lsu;)Llh;

    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1, v0}, Llh;->setTransformSelection(I)V

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lsu$g;->a:Lsu;

    .line 121
    invoke-static {v0}, Lsu;->b(Lsu;)Llh;

    .line 124
    move-result-object v0

    .line 125
    iget-object v2, p0, Lsu$g;->a:Lsu;

    .line 127
    invoke-static {v2}, Lsu;->g(Lsu;)I

    .line 130
    move-result v2

    .line 131
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 134
    move-result v1

    .line 135
    invoke-virtual {v0, v1}, Llh;->setTransformSelection(I)V

    .line 138
    :cond_1
    :goto_0
    return-void
.end method
