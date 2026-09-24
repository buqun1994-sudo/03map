.class public final Lh4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/view/textclassifier/TextClassifier;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lj70;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/widget/TextView;

    .line 10
    iput-object p1, p0, Lh4;->a:Landroid/widget/TextView;

    .line 12
    return-void
.end method


# virtual methods
.method public a()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    .line 1
    iget-object v0, p0, Lh4;->b:Landroid/view/textclassifier/TextClassifier;

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lh4;->a:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lc4;->a()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Ld4;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Le4;->a(Ljava/lang/Object;)Landroid/view/textclassifier/TextClassificationManager;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    invoke-static {v0}, Lf4;->a(Landroid/view/textclassifier/TextClassificationManager;)Landroid/view/textclassifier/TextClassifier;

    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_0
    invoke-static {}, Lg4;->a()Landroid/view/textclassifier/TextClassifier;

    .line 33
    move-result-object v0

    .line 34
    :cond_1
    return-object v0
.end method

.method public b(Landroid/view/textclassifier/TextClassifier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh4;->b:Landroid/view/textclassifier/TextClassifier;

    .line 3
    return-void
.end method
