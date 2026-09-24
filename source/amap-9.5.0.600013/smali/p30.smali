.class public Lp30;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp30$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Bundle;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public final c:[Laa0;

.field public final d:[Laa0;

.field public e:Z

.field public f:Z

.field public final g:I

.field public final h:Z

.field public i:I

.field public j:Ljava/lang/CharSequence;

.field public k:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Laa0;[Laa0;ZIZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lp30;->f:Z

    .line 7
    iput-object p1, p0, Lp30;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->g()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_0

    .line 18
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lp30;->i:I

    .line 24
    :cond_0
    invoke-static {p2}, Lr30;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lp30;->j:Ljava/lang/CharSequence;

    .line 30
    iput-object p3, p0, Lp30;->k:Landroid/app/PendingIntent;

    .line 32
    if-eqz p4, :cond_1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance p4, Landroid/os/Bundle;

    .line 37
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 40
    :goto_0
    iput-object p4, p0, Lp30;->a:Landroid/os/Bundle;

    .line 42
    iput-object p5, p0, Lp30;->c:[Laa0;

    .line 44
    iput-object p6, p0, Lp30;->d:[Laa0;

    .line 46
    iput-boolean p7, p0, Lp30;->e:Z

    .line 48
    iput p8, p0, Lp30;->g:I

    .line 50
    iput-boolean p9, p0, Lp30;->f:Z

    .line 52
    iput-boolean p10, p0, Lp30;->h:Z

    .line 54
    return-void
.end method


# virtual methods
.method public a()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lp30;->k:Landroid/app/PendingIntent;

    .line 3
    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp30;->e:Z

    .line 3
    return v0
.end method

.method public c()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lp30;->a:Landroid/os/Bundle;

    .line 3
    return-object v0
.end method

.method public d()Landroidx/core/graphics/drawable/IconCompat;
    .locals 3

    .line 1
    iget-object v0, p0, Lp30;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget v0, p0, Lp30;->i:I

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, ""

    .line 12
    invoke-static {v1, v2, v0}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lp30;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 18
    :cond_0
    iget-object v0, p0, Lp30;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 20
    return-object v0
.end method

.method public e()[Laa0;
    .locals 1

    .line 1
    iget-object v0, p0, Lp30;->c:[Laa0;

    .line 3
    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lp30;->g:I

    .line 3
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp30;->f:Z

    .line 3
    return v0
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lp30;->j:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp30;->h:Z

    .line 3
    return v0
.end method
