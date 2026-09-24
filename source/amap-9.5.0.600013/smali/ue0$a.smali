.class public abstract Lue0$a;
.super Lhk$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lue0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public J:[[I


# direct methods
.method public constructor <init>(Lue0$a;Lue0;Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lhk$c;-><init>(Lhk$c;Lhk;Landroid/content/res/Resources;)V

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p1, Lue0$a;->J:[[I

    .line 8
    iput-object p1, p0, Lue0$a;->J:[[I

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lhk$c;->f()I

    .line 14
    move-result p1

    .line 15
    new-array p1, p1, [[I

    .line 17
    iput-object p1, p0, Lue0$a;->J:[[I

    .line 19
    :goto_0
    return-void
.end method


# virtual methods
.method public A([I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lue0$a;->J:[[I

    .line 3
    invoke-virtual {p0}, Lhk$c;->h()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    aget-object v3, v0, v2

    .line 12
    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 18
    return v2

    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, -0x1

    .line 23
    return p1
.end method

.method public o(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lhk$c;->o(II)V

    .line 4
    new-array p2, p2, [[I

    .line 6
    iget-object v0, p0, Lue0$a;->J:[[I

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iput-object p2, p0, Lue0$a;->J:[[I

    .line 14
    return-void
.end method

.method public abstract r()V
.end method

.method public z([ILandroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lhk$c;->a(Landroid/graphics/drawable/Drawable;)I

    .line 4
    move-result p2

    .line 5
    iget-object v0, p0, Lue0$a;->J:[[I

    .line 7
    aput-object p1, v0, p2

    .line 9
    return p2
.end method
