.class public Lje0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lde0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/TextView;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lje0;->a:Lde0;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lde0;->g()Lsa0;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lje0;->a:Lde0;

    .line 18
    invoke-virtual {v1}, Lde0;->g()Lsa0;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, v0, v1, p2}, Lje0;->b(Landroid/content/Context;Lsa0;Z)Landroid/content/res/ColorStateList;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 29
    :cond_1
    iget-object v0, p0, Lje0;->a:Lde0;

    .line 31
    invoke-virtual {v0}, Lde0;->h()Lsa0;

    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lje0;->a:Lde0;

    .line 43
    invoke-virtual {v1}, Lde0;->h()Lsa0;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0, v0, v1, p2}, Lje0;->b(Landroid/content/Context;Lsa0;Z)Landroid/content/res/ColorStateList;

    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 54
    :cond_2
    return-void
.end method

.method public final b(Landroid/content/Context;Lsa0;Z)Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lsa0;->a()I

    .line 4
    move-result v0

    .line 5
    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p2}, Lsa0;->b()I

    .line 10
    move-result v0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public c(Landroid/content/Context;Lde0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lje0;->a:Lde0;

    .line 3
    return-void
.end method
