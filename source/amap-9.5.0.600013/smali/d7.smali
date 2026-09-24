.class public Ld7;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:Landroid/view/View$OnClickListener;

.field public e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Ld7;->b:I

    .line 7
    iput-boolean p3, p0, Ld7;->c:Z

    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ld7;->c:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    const v0, 0x7f0801c0

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    .line 14
    iget v1, p0, Ld7;->b:I

    .line 16
    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Ld7;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_1
    :goto_0
    const v0, 0x7f0801b6

    .line 30
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    const v1, 0x7f0801bd

    .line 37
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Ld7;->d:Landroid/view/View$OnClickListener;

    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Ld7;->e:Landroid/view/View$OnClickListener;

    .line 48
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld7;->e:Landroid/view/View$OnClickListener;

    .line 3
    return-void
.end method

.method public c(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld7;->d:Landroid/view/View$OnClickListener;

    .line 3
    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Ld7;->b:I

    .line 3
    const-string p1, ""

    .line 5
    iput-object p1, p0, Ld7;->a:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ld7;->b:I

    .line 4
    iput-object p1, p0, Ld7;->a:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onContentChanged()V

    .line 4
    invoke-virtual {p0}, Ld7;->a()V

    .line 7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 4
    iget-boolean p1, p0, Ld7;->c:Z

    .line 6
    if-eqz p1, :cond_0

    .line 8
    const p1, 0x7f0b0058

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const p1, 0x7f0b0057

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 21
    :goto_0
    invoke-virtual {p0}, Ld7;->a()V

    .line 24
    return-void
.end method
