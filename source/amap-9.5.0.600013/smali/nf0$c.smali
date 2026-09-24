.class public abstract Lnf0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnf0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public static synthetic a(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lnf0$c;->b(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    .line 4
    return-void
.end method

.method public static b(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
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
    invoke-static {p0, v1, p2, v0}, Lnf0$c;->c(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;

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
    const/4 p1, 0x1

    .line 54
    new-array p1, p1, [Ljava/lang/Object;

    .line 56
    const/4 p2, 0x0

    .line 57
    aput-object p0, p1, p2

    .line 59
    const-string p2, "DexTrace.SystemClassLoaderAdder"

    .line 61
    const-string v0, "Exception in makePathElement"

    .line 63
    invoke-static {p2, v0, p1}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    throw p0

    .line 67
    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 11

    .line 1
    const-class v0, Ljava/util/ArrayList;

    .line 3
    const-class v1, Ljava/io/File;

    .line 5
    const-class v2, Ljava/util/List;

    .line 7
    const-string v3, "makePathElements"

    .line 9
    const-string v4, "DexTrace.SystemClassLoaderAdder"

    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x3

    .line 14
    const/4 v8, 0x0

    .line 15
    :try_start_0
    new-array v9, v7, [Ljava/lang/Class;

    .line 17
    aput-object v2, v9, v8

    .line 19
    aput-object v1, v9, v6

    .line 21
    aput-object v2, v9, v5

    .line 23
    invoke-static {p0, v3, v9}, Lx90;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    move-result-object v2

    .line 27
    new-instance v9, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    const-string v10, "optimizedDirectory = "

    .line 34
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v9

    .line 44
    new-array v10, v8, [Ljava/lang/Object;

    .line 46
    invoke-static {v4, v9, v10}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    :try_start_1
    new-array v2, v7, [Ljava/lang/Class;

    .line 52
    aput-object v0, v2, v8

    .line 54
    aput-object v1, v2, v6

    .line 56
    aput-object v0, v2, v5

    .line 58
    invoke-static {p0, v3, v2}, Lx90;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 61
    move-result-object v2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v1, "optimizedDirectory 2  = "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    new-array v1, v8, [Ljava/lang/Object;

    .line 81
    invoke-static {v4, v0, v1}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    :goto_0
    new-array v0, v7, [Ljava/lang/Object;

    .line 86
    aput-object p1, v0, v8

    .line 88
    aput-object p2, v0, v6

    .line 90
    aput-object p3, v0, v5

    .line 92
    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object p0

    .line 96
    check-cast p0, [Ljava/lang/Object;

    .line 98
    return-object p0

    .line 99
    :catch_1
    move-exception v0

    .line 100
    :try_start_2
    const-string v1, "NoSuchMethodException: try use v19 instead"

    .line 102
    new-array v2, v8, [Ljava/lang/Object;

    .line 104
    invoke-static {v4, v1, v0, v2}, Laz;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 107
    invoke-static {p0, p1, p2, p3}, Lnf0$b;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;

    .line 110
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 111
    return-object p0

    .line 112
    :catch_2
    move-exception p0

    .line 113
    const-string p1, "NoSuchMethodException: makeDexElements(List,File,List) failure"

    .line 115
    new-array p2, v8, [Ljava/lang/Object;

    .line 117
    invoke-static {v4, p1, p0, p2}, Laz;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 120
    throw p0
.end method
