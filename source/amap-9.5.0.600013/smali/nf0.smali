.class public abstract Lnf0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnf0$c;,
        Lnf0$b;
    }
.end annotation


# static fields
.field public static a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Ljava/lang/ClassLoader;Landroid/app/Application;)Z
    .locals 4

    .line 1
    const-string v0, "com.autonavi.amapauto.z.AutonaviTestPLoad"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 7
    move-result-object p0

    .line 8
    new-array v0, v1, [Ljava/lang/Class;

    .line 10
    const-class v2, Landroid/content/Context;

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v0, v3

    .line 15
    const-string v2, "isP"

    .line 17
    invoke-static {p0, v2, v0}, Lx90;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object p0

    .line 21
    new-array v0, v1, [Ljava/lang/Object;

    .line 23
    aput-object p1, v0, v3

    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/lang/Boolean;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    move-result p0

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v0, "check dex install "

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    new-array v0, v3, [Ljava/lang/Object;

    .line 55
    const-string v1, "DexTrace.SystemClassLoaderAdder"

    .line 57
    invoke-static {v1, p1, v0}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return p0
.end method

.method public static b(Ljava/util/List;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/io/File;

    .line 23
    if-nez v0, :cond_1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string v1, "changed_classes"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_2
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public static c(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    new-instance p0, Ljava/util/HashMap;

    .line 8
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/io/File;

    .line 27
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Lp10;->a:Ljava/util/regex/Pattern;

    .line 33
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 40
    move-result v3

    .line 41
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    move-result-object v3

    .line 45
    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Lnf0$a;

    .line 51
    invoke-direct {v1, p0}, Lnf0$a;-><init>(Ljava/util/Map;)V

    .line 54
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 57
    return-object v0
.end method

.method public static d(Landroid/app/Application;Ldalvik/system/PathClassLoader;Ljava/io/File;Ljava/util/List;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "installDexes dexOptDir: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ", dex size:"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 26
    move-result v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const/4 v2, 0x0

    .line 35
    new-array v3, v2, [Ljava/lang/Object;

    .line 37
    const-string v4, "DexTrace.SystemClassLoaderAdder"

    .line 39
    invoke-static {v4, v0, v3}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 48
    const-string p0, "files empty end"

    .line 50
    new-array p1, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {v4, p0, p1}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return v2

    .line 56
    :cond_0
    invoke-static {p3}, Lnf0;->c(Ljava/util/List;)Ljava/util/List;

    .line 59
    move-result-object p3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const-string v3, "sdk verion "

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    new-array v5, v2, [Ljava/lang/Object;

    .line 81
    invoke-static {v4, v0, v5}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    const/16 v0, 0x18

    .line 86
    if-lt v3, v0, :cond_1

    .line 88
    invoke-static {p3}, Lnf0;->b(Ljava/util/List;)Z

    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_1

    .line 94
    invoke-static {p1, p0}, Lpb;->b(Ldalvik/system/PathClassLoader;Landroid/app/Application;)Lpb;

    .line 97
    move-result-object p1

    .line 98
    :cond_1
    const/16 v0, 0x17

    .line 100
    if-lt v3, v0, :cond_2

    .line 102
    invoke-static {p1, p3, p2}, Lnf0$c;->a(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    invoke-static {p1, p3, p2}, Lnf0$b;->a(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    .line 109
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 112
    move-result p2

    .line 113
    sput p2, Lnf0;->a:I

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    const-string p3, "after loaded classloader: "

    .line 122
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    sget p3, Lnf0;->a:I

    .line 133
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p2

    .line 140
    new-array p3, v2, [Ljava/lang/Object;

    .line 142
    invoke-static {v4, p2, p3}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    sget p2, Lnf0;->a:I

    .line 147
    if-lez p2, :cond_3

    .line 149
    const-string p2, "check dex install"

    .line 151
    new-array p3, v2, [Ljava/lang/Object;

    .line 153
    invoke-static {v4, p2, p3}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :try_start_0
    invoke-static {p1, p0}, Lnf0;->a(Ljava/lang/ClassLoader;Landroid/app/Application;)Z

    .line 159
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    goto :goto_1

    .line 161
    :catchall_0
    move-exception p0

    .line 162
    const-string p2, "check dex install failed"

    .line 164
    new-array p3, v2, [Ljava/lang/Object;

    .line 166
    invoke-static {v4, p2, p0, p3}, Laz;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 169
    const/4 p0, 0x0

    .line 170
    :goto_1
    if-nez p0, :cond_3

    .line 172
    const-string p0, "exec uninstall ..."

    .line 174
    new-array p2, v2, [Ljava/lang/Object;

    .line 176
    invoke-static {v4, p0, p2}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    const-string p2, "after uninstalled classloader: "

    .line 186
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    sget p1, Lnf0;->a:I

    .line 197
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object p0

    .line 204
    new-array p1, v2, [Ljava/lang/Object;

    .line 206
    invoke-static {v4, p0, p1}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    return v2

    .line 210
    :cond_3
    const/4 p0, 0x1

    .line 211
    return p0
.end method
