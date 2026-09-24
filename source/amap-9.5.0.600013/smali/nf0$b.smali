.class public abstract Lnf0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnf0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public static synthetic a(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lnf0$b;->c(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lnf0$b;->d(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static c(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 2

    .line 1
    const-string v0, "pathList"

    .line 3
    invoke-static {p0, v0}, Lx90;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-static {p0, v1, p2, v0}, Lnf0$b;->d(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    const-string p2, "dexElements"

    .line 27
    invoke-static {p0, p2, p1}, Lx90;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    move-result p0

    .line 34
    if-lez p0, :cond_1

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object p0

    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Ljava/io/IOException;

    .line 53
    const/4 p1, 0x0

    .line 54
    new-array p1, p1, [Ljava/lang/Object;

    .line 56
    const-string p2, "DexTrace.SystemClassLoaderAdder"

    .line 58
    const-string v0, "Exception in makeDexElement"

    .line 60
    invoke-static {p2, v0, p0, p1}, Laz;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 63
    throw p0

    .line 64
    :cond_1
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 11

    .line 1
    const-class v0, Ljava/util/List;

    .line 3
    const-class v1, Ljava/io/File;

    .line 5
    const-class v2, Ljava/util/ArrayList;

    .line 7
    const-string v3, "makeDexElements"

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x3

    .line 12
    const/4 v7, 0x0

    .line 13
    :try_start_0
    new-array v8, v6, [Ljava/lang/Class;

    .line 15
    aput-object v2, v8, v7

    .line 17
    aput-object v1, v8, v5

    .line 19
    aput-object v2, v8, v4

    .line 21
    invoke-static {p0, v3, v8}, Lx90;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v2

    .line 27
    const-string v8, "NoSuchMethodException: makeDexElements(ArrayList,File,ArrayList) failure"

    .line 29
    new-array v9, v7, [Ljava/lang/Object;

    .line 31
    const-string v10, "DexTrace.SystemClassLoaderAdder"

    .line 33
    invoke-static {v10, v8, v2, v9}, Laz;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 36
    :try_start_1
    new-array v8, v6, [Ljava/lang/Class;

    .line 38
    aput-object v0, v8, v7

    .line 40
    aput-object v1, v8, v5

    .line 42
    aput-object v0, v8, v4

    .line 44
    invoke-static {p0, v3, v8}, Lx90;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    :goto_0
    new-array v1, v6, [Ljava/lang/Object;

    .line 50
    aput-object p1, v1, v7

    .line 52
    aput-object p2, v1, v5

    .line 54
    aput-object p3, v1, v4

    .line 56
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object p0

    .line 60
    check-cast p0, [Ljava/lang/Object;

    .line 62
    return-object p0

    .line 63
    :catch_1
    move-exception p0

    .line 64
    const-string p1, "NoSuchMethodException: makeDexElements(List,File,List) failure"

    .line 66
    new-array p2, v7, [Ljava/lang/Object;

    .line 68
    invoke-static {v10, p1, v2, p2}, Laz;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 71
    throw p0
.end method
