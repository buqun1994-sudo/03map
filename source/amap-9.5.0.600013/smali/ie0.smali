.class public Lie0;
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
.method public a(Landroid/widget/ImageView;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lie0;->a:Lde0;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lde0;->f()Lsa0;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 14
    iget-object p2, p0, Lie0;->a:Lde0;

    .line 16
    invoke-virtual {p2}, Lde0;->f()Lsa0;

    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lsa0;->b()I

    .line 23
    move-result p2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p2, p0, Lie0;->a:Lde0;

    .line 27
    invoke-virtual {p2}, Lde0;->f()Lsa0;

    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lsa0;->a()I

    .line 34
    move-result p2

    .line 35
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    :cond_2
    :goto_1
    return-void
.end method

.method public b(Landroid/content/Context;Lde0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lie0;->a:Lde0;

    .line 3
    return-void
.end method
