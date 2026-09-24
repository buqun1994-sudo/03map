.class public abstract Lqw;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/CharSequence;

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Ljava/lang/CharSequence;

.field public h:[Ljava/lang/Object;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "http://schemas.android.com/apk/res/android"

    .line 2
    iput-object p1, p0, Lqw;->a:Ljava/lang/String;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lqw;->b:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lqw;->c:Ljava/lang/CharSequence;

    .line 5
    iput-object v0, p0, Lqw;->d:Ljava/lang/CharSequence;

    .line 6
    iput p1, p0, Lqw;->e:I

    .line 7
    iput-object v0, p0, Lqw;->f:Ljava/lang/CharSequence;

    .line 8
    iput-object v0, p0, Lqw;->g:Ljava/lang/CharSequence;

    .line 9
    iput-object v0, p0, Lqw;->h:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lqw;->i:Z

    .line 11
    iput-boolean p1, p0, Lqw;->j:Z

    .line 12
    invoke-virtual {p0, p2}, Lqw;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "http://schemas.android.com/apk/res/android"

    .line 14
    iput-object p1, p0, Lqw;->a:Ljava/lang/String;

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lqw;->b:I

    const/4 p3, 0x0

    .line 16
    iput-object p3, p0, Lqw;->c:Ljava/lang/CharSequence;

    .line 17
    iput-object p3, p0, Lqw;->d:Ljava/lang/CharSequence;

    .line 18
    iput p1, p0, Lqw;->e:I

    .line 19
    iput-object p3, p0, Lqw;->f:Ljava/lang/CharSequence;

    .line 20
    iput-object p3, p0, Lqw;->g:Ljava/lang/CharSequence;

    .line 21
    iput-object p3, p0, Lqw;->h:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lqw;->i:Z

    .line 23
    iput-boolean p1, p0, Lqw;->j:Z

    .line 24
    invoke-virtual {p0, p2}, Lqw;->a(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    const-string v0, "http://schemas.android.com/apk/res/android"

    .line 3
    const-string v1, "text"

    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 9
    move-result v1

    .line 10
    iput v1, p0, Lqw;->b:I

    .line 12
    const-string v1, "hint"

    .line 14
    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lqw;->e:I

    .line 20
    return-void
.end method

.method public setHintById(I)V
    .locals 1

    .line 1
    iput p1, p0, Lqw;->e:I

    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lqw;->f:Ljava/lang/CharSequence;

    .line 6
    iput-object v0, p0, Lqw;->g:Ljava/lang/CharSequence;

    .line 8
    invoke-super {p0, p1}, Landroid/widget/TextView;->setHint(I)V

    .line 11
    return-void
.end method

.method public setHintByStr(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lqw;->e:I

    .line 4
    iput-object p1, p0, Lqw;->f:Ljava/lang/CharSequence;

    .line 6
    iput-object p1, p0, Lqw;->g:Ljava/lang/CharSequence;

    .line 8
    invoke-super {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 11
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4
    iget-boolean p2, p0, Lqw;->j:Z

    .line 6
    if-eqz p2, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    const/4 p2, -0x1

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 17
    iget-boolean v1, p0, Lqw;->i:Z

    .line 19
    if-eqz v1, :cond_1

    .line 21
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lqw;->i:Z

    .line 24
    return-void

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 32
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lqw;->b:I

    .line 38
    iput-object v1, p0, Lqw;->h:[Ljava/lang/Object;

    .line 40
    iput-object v1, p0, Lqw;->c:Ljava/lang/CharSequence;

    .line 42
    iput-object v1, p0, Lqw;->d:Ljava/lang/CharSequence;

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iput p2, p0, Lqw;->b:I

    .line 47
    iput-object v1, p0, Lqw;->h:[Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Lqw;->c:Ljava/lang/CharSequence;

    .line 51
    iput-object p1, p0, Lqw;->d:Ljava/lang/CharSequence;

    .line 53
    :goto_0
    return-void
.end method

.method public setTextById(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lqw;->i:Z

    .line 4
    iput p1, p0, Lqw;->b:I

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lqw;->c:Ljava/lang/CharSequence;

    .line 9
    iput-object v0, p0, Lqw;->d:Ljava/lang/CharSequence;

    .line 11
    iput-object v0, p0, Lqw;->h:[Ljava/lang/Object;

    .line 13
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 16
    return-void
.end method

.method public setTextByStr(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lqw;->i:Z

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lqw;->b:I

    .line 7
    iput-object p1, p0, Lqw;->c:Ljava/lang/CharSequence;

    .line 9
    iput-object p1, p0, Lqw;->d:Ljava/lang/CharSequence;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lqw;->h:[Ljava/lang/Object;

    .line 14
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    return-void
.end method
