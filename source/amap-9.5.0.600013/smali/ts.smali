.class public abstract synthetic Lts;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lus;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p0}, Lus;->getPluginsAttached()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-eqz p0, :cond_1

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ld00;->a(Ljava/lang/Object;)V

    .line 26
    throw p1

    .line 27
    :cond_1
    :goto_0
    return-object p1
.end method
