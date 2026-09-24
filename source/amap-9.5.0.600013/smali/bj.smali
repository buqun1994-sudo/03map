.class public abstract Lbj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbj$d;,
        Lbj$c;,
        Lbj$b;,
        Lbj$e;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Comparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbj$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lbj$b;-><init>(Lbj$a;)V

    .line 7
    sput-object v0, Lbj;->a:Ljava/util/Comparator;

    .line 9
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Lbj$d;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    const/4 p0, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, p1, p0, v1, p2}, Lbj;->b(Ljava/util/List;Ljava/io/File;ZLjava/lang/String;Lbj$d;)Z

    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static b(Ljava/util/List;Ljava/io/File;ZLjava/lang/String;Lbj$d;)Z
    .locals 7

    .line 1
    sget-object v0, Lbj;->a:Ljava/util/Comparator;

    .line 3
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    move-object v2, v0

    .line 21
    check-cast v2, Ljava/io/File;

    .line 23
    new-instance v0, Lbj$c;

    .line 25
    move-object v1, v0

    .line 26
    move-object v3, p1

    .line 27
    move v4, p2

    .line 28
    move-object v5, p3

    .line 29
    move-object v6, p4

    .line 30
    invoke-direct/range {v1 .. v6}, Lbj$c;-><init>(Ljava/io/File;Ljava/io/File;ZLjava/lang/String;Lbj$d;)V

    .line 33
    invoke-virtual {v0}, Lbj$c;->b()Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 39
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_1
    const/4 p0, 0x1

    .line 42
    return p0
.end method
