.class public Lpb;
.super Ldalvik/system/PathClassLoader;
.source "SourceFile"


# static fields
.field public static c:Ljava/lang/Object;

.field public static d:Ljava/lang/String;


# instance fields
.field public final a:Ldalvik/system/PathClassLoader;

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ldalvik/system/PathClassLoader;Landroid/app/Application;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 8
    iput-object p2, p0, Lpb;->a:Ldalvik/system/PathClassLoader;

    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string p2, "android.app.Application"

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_0

    .line 26
    iput-object p1, p0, Lpb;->b:Ljava/lang/String;

    .line 28
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    sput-object p1, Lpb;->d:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static a(Ldalvik/system/PathClassLoader;Landroid/app/Application;)Lpb;
    .locals 2

    .line 1
    new-instance v0, Lpb;

    .line 3
    const-string v1, ""

    .line 5
    invoke-direct {v0, v1, p0, p1}, Lpb;-><init>(Ljava/lang/String;Ldalvik/system/PathClassLoader;Landroid/app/Application;)V

    .line 8
    const-string p1, "pathList"

    .line 10
    invoke-static {p0, p1}, Lx90;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {p0, v0, v1}, Lpb;->c(Ljava/lang/Object;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    const-string p1, "definingContext"

    .line 28
    invoke-static {p0, p1}, Lx90;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    sput-object p0, Lpb;->c:Ljava/lang/Object;

    .line 37
    return-object v0
.end method

.method public static b(Ldalvik/system/PathClassLoader;Landroid/app/Application;)Lpb;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lpb;->a(Ldalvik/system/PathClassLoader;Landroid/app/Application;)Lpb;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p0}, Lpb;->d(Landroid/app/Application;Ljava/lang/ClassLoader;)V

    .line 8
    return-object p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v2, v1, [Ljava/lang/Class;

    .line 6
    const-class v3, Ljava/lang/ClassLoader;

    .line 8
    const/4 v4, 0x0

    .line 9
    aput-object v3, v2, v4

    .line 11
    const/4 v3, 0x1

    .line 12
    const-class v5, Ljava/lang/String;

    .line 14
    aput-object v5, v2, v3

    .line 16
    const/4 v6, 0x2

    .line 17
    aput-object v5, v2, v6

    .line 19
    const-class v5, Ljava/io/File;

    .line 21
    const/4 v7, 0x3

    .line 22
    aput-object v5, v2, v7

    .line 24
    invoke-static {v0, v2}, Lx90;->b(Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 27
    move-result-object v2

    .line 28
    const/4 v5, 0x0

    .line 29
    if-eqz p2, :cond_0

    .line 31
    new-array v0, v1, [Ljava/lang/Object;

    .line 33
    aput-object p1, v0, v4

    .line 35
    const-string v1, ""

    .line 37
    aput-object v1, v0, v3

    .line 39
    aput-object v5, v0, v6

    .line 41
    aput-object v5, v0, v7

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    return-object v0

    .line 48
    :cond_0
    const-string v8, "dexElements"

    .line 50
    invoke-static {v0, v8}, Lx90;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 53
    move-result-object v8

    .line 54
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v8

    .line 58
    check-cast v8, [Ljava/lang/Object;

    .line 60
    const-string v9, "nativeLibraryDirectories"

    .line 62
    invoke-static {v0, v9}, Lx90;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 65
    move-result-object v9

    .line 66
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/util/List;

    .line 72
    new-instance v9, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    move-result-object v10

    .line 81
    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 84
    move-result-object v10

    .line 85
    const-string v11, "dexFile"

    .line 87
    invoke-static {v10, v11}, Lx90;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 90
    move-result-object v10

    .line 91
    array-length v11, v8

    .line 92
    const/4 v12, 0x0

    .line 93
    const/4 v13, 0x1

    .line 94
    :goto_0
    if-ge v12, v11, :cond_5

    .line 96
    aget-object v14, v8, v12

    .line 98
    invoke-virtual {v10, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-result-object v14

    .line 102
    check-cast v14, Ldalvik/system/DexFile;

    .line 104
    if-eqz v14, :cond_4

    .line 106
    invoke-virtual {v14}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    .line 109
    move-result-object v15

    .line 110
    if-nez v15, :cond_1

    .line 112
    goto :goto_2

    .line 113
    :cond_1
    invoke-virtual {v14}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    .line 116
    move-result-object v15

    .line 117
    sget-object v5, Lpb;->d:Ljava/lang/String;

    .line 119
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v5

    .line 123
    if-nez v5, :cond_2

    .line 125
    goto :goto_2

    .line 126
    :cond_2
    if-eqz v13, :cond_3

    .line 128
    const/4 v13, 0x0

    .line 129
    goto :goto_1

    .line 130
    :cond_3
    sget-object v5, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 132
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :goto_1
    invoke-virtual {v14}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    .line 138
    move-result-object v5

    .line 139
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 144
    const/4 v5, 0x0

    .line 145
    goto :goto_0

    .line 146
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v5

    .line 150
    new-instance v8, Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 158
    move-result-object v0

    .line 159
    const/4 v9, 0x1

    .line 160
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    move-result v10

    .line 164
    if-eqz v10, :cond_8

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    move-result-object v10

    .line 170
    check-cast v10, Ljava/io/File;

    .line 172
    if-nez v10, :cond_6

    .line 174
    goto :goto_3

    .line 175
    :cond_6
    if-eqz v9, :cond_7

    .line 177
    const/4 v9, 0x0

    .line 178
    goto :goto_4

    .line 179
    :cond_7
    sget-object v11, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 181
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :goto_4
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 187
    move-result-object v10

    .line 188
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    goto :goto_3

    .line 192
    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 196
    new-array v1, v1, [Ljava/lang/Object;

    .line 198
    aput-object p1, v1, v4

    .line 200
    aput-object v5, v1, v3

    .line 202
    aput-object v0, v1, v6

    .line 204
    const/4 v0, 0x0

    .line 205
    aput-object v0, v1, v7

    .line 207
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    move-result-object v0

    .line 211
    return-object v0
.end method

.method public static d(Landroid/app/Application;Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    const-string v0, "mBase"

    .line 3
    invoke-static {p0, v0}, Lx90;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/Context;

    .line 13
    const-string v1, "mPackageInfo"

    .line 15
    invoke-static {v0, v1}, Lx90;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "mClassLoader"

    .line 25
    invoke-static {v0, v1}, Lx90;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    const/16 v2, 0x1b

    .line 36
    if-ge v0, v2, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0, v1}, Lx90;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    const-string v0, "mDrawableInflater"

    .line 51
    invoke-static {p0, v0}, Lx90;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 59
    if-eqz p0, :cond_0

    .line 61
    invoke-static {p0, v1}, Lx90;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 75
    return-void
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lpb;->b:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lpb;->a:Ldalvik/system/PathClassLoader;

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 24
    return-object v0

    .line 25
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p1

    .line 30
    :catch_0
    iget-object v0, p0, Lpb;->a:Ldalvik/system/PathClassLoader;

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
