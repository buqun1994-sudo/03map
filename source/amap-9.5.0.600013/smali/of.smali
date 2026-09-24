.class public abstract Lof;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->C()I

    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lrv;->C()I

    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 22
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 32
    move-result-object p0

    .line 33
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 35
    return p0
.end method
