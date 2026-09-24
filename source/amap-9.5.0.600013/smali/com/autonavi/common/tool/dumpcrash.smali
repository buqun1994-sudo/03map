.class Lcom/autonavi/common/tool/dumpcrash;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GETMAPS_FLAG_1:I = 0x1

.field public static final GETMAPS_FLAG_10:I = 0x10

.field public static final GETMAPS_FLAG_2:I = 0x2

.field public static final GETMAPS_FLAG_4:I = 0x4

.field public static final GETMAPS_FLAG_8:I = 0x8

.field public static final LIB_ANRTOOL:Ljava/lang/String; = "anr_tool"

.field public static final LIB_ANRTOOL_FULL_NAME:Ljava/lang/String; = "libanr_tool.so"

.field public static final LIB_DUMPCRASH:Ljava/lang/String; = "dumpcrash"

.field public static hasLoadLibrary:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/common/tool/dumpcrash;->loadLibrary()V

    .line 4
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/autonavi/common/tool/dumpcrash;->hasLoadLibrary:Z

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectMoreInfo(Ljava/lang/String;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;Z)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "before collectMoreInfo"

    .line 3
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuffer;

    .line 8
    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 11
    if-eqz p3, :cond_0

    .line 13
    invoke-static {p1, p2}, Lcom/autonavi/common/tool/dumpcrash;->getCurrentJavaStackTrace(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result p3

    .line 21
    if-nez p3, :cond_0

    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    :cond_0
    const-string p2, "(SIGABRT)"

    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_1

    .line 34
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 37
    move-result-object p2

    .line 38
    invoke-interface {p2}, Lbr;->O()I

    .line 41
    move-result p2

    .line 42
    const/4 p3, 0x2

    .line 43
    if-ne p3, p2, :cond_3

    .line 45
    invoke-static {p1}, Lcom/autonavi/common/tool/dumpcrash;->getOtherJavaStackTrace(Ljava/lang/Thread;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string p1, "(SI_USER)"

    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_3

    .line 60
    invoke-static {}, Lcom/autonavi/common/tool/dumpcrash;->readAnrTraces()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const-string p1, "(SIGSEGV)"

    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_2

    .line 76
    const-string p1, "(SIGBUS)"

    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_2

    .line 84
    const-string p1, "(SIGILL)"

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_3

    .line 92
    :cond_2
    invoke-static {}, Lql;->e()Lql;

    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lql;->h()V

    .line 99
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :catchall_0
    const-string p1, "after collectMoreInfo"

    .line 105
    invoke-static {p1}, Lbz;->d(Ljava/lang/String;)V

    .line 108
    return-object p0
.end method

.method public static dumpStack(Z)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/autonavi/common/tool/dumpcrash;->getLocalStackDir()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "recordFile is null"

    .line 9
    invoke-static {p0}, Lbz;->a(Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {}, Lbh;->h()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v1, v0, v2}, Lls;->f(Ljava/lang/String;Ljava/io/File;Z)V

    .line 21
    const-string v1, "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\n"

    .line 23
    invoke-static {v1, v0, v2}, Lls;->f(Ljava/lang/String;Ljava/io/File;Z)V

    .line 26
    const-string v3, "JAVA STACK:\n"

    .line 28
    invoke-static {v3, v0, v2}, Lls;->f(Ljava/lang/String;Ljava/io/File;Z)V

    .line 31
    const-string v3, "JAVA STACK"

    .line 33
    invoke-static {v3}, Lbz;->a(Ljava/lang/String;)V

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 48
    move-result-object v4

    .line 49
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v4

    .line 53
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v5

    .line 57
    const/4 v6, 0x0

    .line 58
    if-eqz v5, :cond_4

    .line 60
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Ljava/lang/Thread;

    .line 72
    const-string v8, "\nThread:"

    .line 74
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 80
    move-result-object v8

    .line 81
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v8, " id:"

    .line 86
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    .line 92
    move-result-wide v8

    .line 93
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    const-string v8, " state:"

    .line 98
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v7}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string v7, "\n"

    .line 110
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 116
    move-result-object v5

    .line 117
    check-cast v5, [Ljava/lang/StackTraceElement;

    .line 119
    if-eqz v5, :cond_2

    .line 121
    array-length v8, v5

    .line 122
    if-nez v8, :cond_1

    .line 124
    goto :goto_2

    .line 125
    :cond_1
    array-length v8, v5

    .line 126
    :goto_1
    if-ge v6, v8, :cond_3

    .line 128
    aget-object v9, v5, v6

    .line 130
    const-string v10, "\tat "

    .line 132
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 138
    move-result-object v9

    .line 139
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v6, v6, 0x1

    .line 147
    goto :goto_1

    .line 148
    :cond_2
    :goto_2
    const-string v5, "\tEmpty stack trace!"

    .line 150
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    goto :goto_0

    .line 157
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v3

    .line 161
    invoke-static {v3, v0, v2}, Lls;->f(Ljava/lang/String;Ljava/io/File;Z)V

    .line 164
    invoke-static {v1, v0, v2}, Lls;->f(Ljava/lang/String;Ljava/io/File;Z)V

    .line 167
    const-string v1, "NATIVE STACK:\n\n"

    .line 169
    invoke-static {v1, v0, v2}, Lls;->f(Ljava/lang/String;Ljava/io/File;Z)V

    .line 172
    const-string v1, "NATIVE STACK"

    .line 174
    invoke-static {v1}, Lbz;->a(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 180
    move-result-object v1

    .line 181
    const-string v3, ""

    .line 183
    invoke-static {v3, v1, v2}, Lcom/autonavi/common/tool/dumpcrash;->getNativeAnrThreadInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 186
    :try_start_0
    invoke-static {v0}, Lls;->d(Ljava/io/File;)Ljava/lang/String;

    .line 189
    move-result-object v2

    .line 190
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 193
    move-result-object v3

    .line 194
    invoke-interface {v3}, Lbr;->j0()Z

    .line 197
    move-result v3

    .line 198
    invoke-static {v2, v3}, Lcom/autonavi/common/tool/util/AESUtils;->e(Ljava/lang/String;Z)Ljava/lang/String;

    .line 201
    move-result-object v2

    .line 202
    invoke-static {v2, v0, v6}, Lls;->f(Ljava/lang/String;Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_3

    .line 206
    :catch_0
    move-exception v2

    .line 207
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 210
    :goto_3
    invoke-static {v0}, Lk10;->d(Ljava/io/File;)Ljava/lang/String;

    .line 213
    move-result-object v2

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    .line 216
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    const-string v4, "md5:"

    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object v3

    .line 231
    invoke-static {v3}, Lbz;->a(Ljava/lang/String;)V

    .line 234
    new-instance v3, Ljava/io/File;

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    .line 238
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, "_"

    .line 246
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object v1

    .line 256
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 262
    if-eqz p0, :cond_5

    .line 264
    const-string p0, "exitProcess"

    .line 266
    invoke-static {p0}, Lbz;->a(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Llj0;->e()V

    .line 272
    :cond_5
    return-void
.end method

.method public static native getApkInfo(Ljava/lang/String;Ljava/lang/String;)[I
.end method

.method private static getCurrentJavaStackTrace(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "\nJavaStack:\n"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p0, p0, p1}, Lcom/autonavi/common/tool/dumpcrash;->getJavaStackTrace(Ljava/lang/Thread;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private static getJavaStackTrace(Ljava/lang/Thread;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4

    .line 1
    if-eqz p2, :cond_6

    .line 3
    array-length v0, p2

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto :goto_2

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v1, "\n"

    .line 14
    const/4 v2, 0x0

    .line 15
    if-ne p0, p1, :cond_4

    .line 17
    const/4 p0, 0x0

    .line 18
    :goto_0
    array-length p1, p2

    .line 19
    if-ge p0, p1, :cond_2

    .line 21
    add-int/lit8 p1, p0, 0x1

    .line 23
    aget-object p0, p2, p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    const-string v3, "recordInLocal"

    .line 31
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 37
    move p0, p1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move p0, p1

    .line 40
    :cond_2
    array-length p1, p2

    .line 41
    if-lt p0, p1, :cond_3

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    move v2, p0

    .line 45
    goto :goto_1

    .line 46
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string p0, " "

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :goto_1
    array-length p0, p2

    .line 69
    if-ge v2, p0, :cond_5

    .line 71
    const-string p0, "  "

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    aget-object p0, p2, v2

    .line 78
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 90
    goto :goto_1

    .line 91
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_6
    :goto_2
    if-eqz p0, :cond_7

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    const-string v0, "dc: TN: "

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p0}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p0

    .line 119
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V

    .line 122
    :cond_7
    if-nez p2, :cond_8

    .line 124
    const-string p0, "dc: element null"

    .line 126
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V

    .line 129
    goto :goto_3

    .line 130
    :cond_8
    const-string p0, "dc: element length 0"

    .line 132
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V

    .line 135
    :goto_3
    const-string p0, ""

    .line 137
    return-object p0
.end method

.method private static getLocalStackDir()Ljava/io/File;
    .locals 6

    .line 1
    invoke-static {}, Lcom/autonavi/common/tool/b;->y()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 12
    const-string v0, "dumpcrashPath is empty"

    .line 14
    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V

    .line 17
    return-object v2

    .line 18
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 20
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 33
    const-string v0, "dumpcrashParent is empty"

    .line 35
    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V

    .line 38
    return-object v2

    .line 39
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 41
    const-string v3, "dumpstack"

    .line 43
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 55
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_3

    .line 61
    const-string v0, "dumpStack is not directory"

    .line 63
    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V

    .line 66
    return-object v2

    .line 67
    :cond_3
    new-instance v0, Lcom/autonavi/common/tool/dumpcrash$c;

    .line 69
    invoke-direct {v0}, Lcom/autonavi/common/tool/dumpcrash$c;-><init>()V

    .line 72
    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_4

    .line 78
    array-length v3, v0

    .line 79
    const/4 v4, 0x1

    .line 80
    if-le v3, v4, :cond_4

    .line 82
    new-instance v3, Lcom/autonavi/common/tool/dumpcrash$d;

    .line 84
    invoke-direct {v3}, Lcom/autonavi/common/tool/dumpcrash$d;-><init>()V

    .line 87
    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 90
    array-length v3, v0

    .line 91
    sub-int/2addr v3, v4

    .line 92
    const/4 v4, 0x0

    .line 93
    :goto_0
    if-ge v4, v3, :cond_4

    .line 95
    aget-object v5, v0, v4

    .line 97
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 100
    add-int/lit8 v4, v4, 0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 105
    const-string v3, "yyyyMMddHHmmss"

    .line 107
    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    const-string v4, "dumpstack_"

    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    new-instance v4, Ljava/util/Date;

    .line 122
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 125
    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    new-instance v3, Ljava/io/File;

    .line 138
    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_5

    .line 147
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    return-object v2

    .line 156
    :cond_5
    :goto_1
    return-object v3
.end method

.method public static native getMaps(I)Ljava/lang/String;
.end method

.method public static native getNativeAnrThreadInfo(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public static native getNativeThreadBacktrace(I)Ljava/lang/String;
.end method

.method private static getOtherJavaStackTrace(Ljava/lang/Thread;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lxf0;->n()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x2

    .line 12
    if-ge v1, v2, :cond_0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "\nOtherJavaStack:\n"

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v2

    .line 30
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_3

    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/Thread;

    .line 42
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 56
    move-result-object v4

    .line 57
    if-eq v3, v4, :cond_2

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v4

    .line 64
    check-cast v4, [Ljava/lang/StackTraceElement;

    .line 66
    invoke-static {p0, v3, v4}, Lcom/autonavi/common/tool/dumpcrash;->getJavaStackTrace(Ljava/lang/Thread;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_4
    :goto_1
    const-string p0, ""

    .line 81
    return-object p0
.end method

.method public static native getThreadInfos()Ljava/lang/String;
.end method

.method private static getThreadNativePeerValue(Ljava/lang/Thread;)J
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 3
    if-nez p0, :cond_0

    .line 5
    return-wide v0

    .line 6
    :cond_0
    :try_start_0
    const-class v2, Ljava/lang/Thread;

    .line 8
    const-string v3, "nativePeer"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 21
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :catchall_0
    return-wide v0
.end method

.method public static native getUsableSpace(Ljava/lang/String;)J
.end method

.method private static native install(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public static install(Ljava/lang/String;IZ)V
    .locals 16

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpcrash.install workMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x1

    const/16 v6, 0x17

    if-lt v3, v6, :cond_1

    .line 4
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x10000000

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    .line 5
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extractNativeLibs:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lbz;->a(Ljava/lang/String;)V

    .line 6
    new-instance v8, Ljava/io/File;

    const-string v9, "libanr_tool.so"

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_3

    .line 7
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->canExecute()Z

    move-result v10

    if-nez v10, :cond_3

    .line 8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extractNativeLibs\u88ab\u8bbe\u7f6e\u4e3atrue, \u4e14"

    .line 9
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\u65e0\u53ef\u6267\u884c\u6743\u9650\u3002\n"

    .line 11
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\u8bf7\u9009\u62e9\u5982\u4e0b\u4e24\u4e2a\u65b9\u6848\u5176\u4e2d\u4e4b\u4e00\u8fdb\u884c\u64cd\u4f5c\uff1a\n"

    .line 12
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " \u65b9\u68481\uff1a\u8bf7\u5728 AndroidManifest.xml \u4e2d\u8bbe\u7f6e extractNativeLibs=\"false\"\u3002\n"

    .line 13
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " \u65b9\u68482\uff1a\u8bf7\u7ed9libanr_tool.so\u8d4b\u4e88x\u53ef\u6267\u884c\u6743\u9650\u3002\n"

    .line 14
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " \u5176\u4e2dAndroid 10\u53ca\u4ee5\u4e0a\u7528\u6237\u63a8\u8350\u4f7f\u7528\u65b9\u68481\uff0c\u5c06extractNativeLibs\u8bbe\u7f6e\u4e3afalse\u3002"

    .line 15
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 17
    invoke-static {v10}, Lbz;->a(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    move-result-object v11

    invoke-interface {v11}, Lbr;->v()Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_2

    .line 19
    :cond_2
    new-instance v0, Ln3;

    invoke-direct {v0, v10}, Ln3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_3
    :goto_2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    const/4 v11, 0x2

    const/16 v12, 0x1c

    const/4 v13, 0x3

    const/16 v14, 0x1d

    if-eqz v10, :cond_6

    if-nez v7, :cond_4

    goto :goto_3

    .line 21
    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->canExecute()Z

    move-result v6

    if-nez v6, :cond_8

    if-lt v3, v14, :cond_5

    const/4 v6, 0x2

    goto :goto_4

    :cond_5
    if-gt v3, v12, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    .line 22
    :cond_6
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "anrtoolFile not exists or extractNativeLibs is false, anrtoolFile:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lbz;->a(Ljava/lang/String;)V

    if-lt v3, v14, :cond_7

    const/4 v6, 0x3

    goto :goto_4

    :cond_7
    if-lt v3, v6, :cond_8

    if-gt v3, v12, :cond_8

    const/4 v6, 0x1

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    :goto_4
    const/4 v7, 0x0

    .line 23
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "execlType:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lbz;->a(Ljava/lang/String;)V

    const/4 v8, 0x0

    if-eq v5, v6, :cond_f

    if-ne v11, v6, :cond_9

    goto/16 :goto_7

    :cond_9
    if-ne v13, v6, :cond_12

    .line 24
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    move-result-object v2

    const-string v4, "anr_tool"

    invoke-static {v2, v4}, Llj0;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "!"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 26
    :cond_a
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "arm64"

    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!/lib/arm64-v8a/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_b
    const-string v4, "arm"

    .line 29
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!/lib/armeabi-v7a/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_c
    const-string v4, "x86_64"

    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!/lib/x86_64/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_d
    const-string v4, "x86"

    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!/lib/x86/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_e
    :goto_6
    move-object v0, v2

    goto/16 :goto_9

    .line 35
    :cond_f
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v10

    .line 38
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 39
    invoke-static {v2}, Llj0;->j(Ljava/io/File;)J

    move-result-wide v11

    .line 40
    invoke-static {v10, v9, v7, v8}, Llj0;->q(Ljava/lang/String;Ljava/lang/String;ZLjava/io/File;)J

    move-result-wide v13

    .line 41
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "crc32Local:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " crc32Zip:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbz;->a(Ljava/lang/String;)V

    cmp-long v4, v11, v13

    if-nez v4, :cond_11

    const/4 v4, 0x1

    goto :goto_8

    .line 42
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "anrtoolFile not exists, anrtoolFile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbz;->a(Ljava/lang/String;)V

    :cond_11
    const/4 v4, 0x0

    :goto_8
    if-nez v4, :cond_12

    .line 43
    invoke-static {v10, v9, v7, v2}, Llj0;->q(Ljava/lang/String;Ljava/lang/String;ZLjava/io/File;)J

    .line 44
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_12

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "anrtoolFile not exists after unzip, anrtoolFile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbz;->a(Ljava/lang/String;)V

    .line 47
    :cond_12
    :goto_9
    invoke-static {v3}, Lcom/autonavi/common/tool/dumpcrash;->sigHandlerCanUseJava(I)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "dumpcrash.install sigHandler Can not Use Java"

    .line 48
    invoke-static {v2}, Lbz;->a(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lbh;->h()Ljava/lang/String;

    move-result-object v11

    .line 50
    invoke-static {}, Lbh;->s()Lbh;

    invoke-static {}, Lbh;->v()Ljava/io/File;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    if-nez p2, :cond_13

    .line 52
    invoke-static {}, Lbh;->s()Lbh;

    invoke-static {}, Lbh;->C()Ljava/lang/String;

    move-result-object v8

    .line 53
    invoke-static {}, Lbh;->s()Lbh;

    move-result-object v2

    sget-object v4, Lbh$d;->b:Lbh$d;

    invoke-virtual {v2, v4}, Lbh;->y(Lbh$d;)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    move-object v13, v8

    goto :goto_a

    :cond_13
    move-object v13, v8

    move-object v14, v13

    .line 54
    :goto_a
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    move-result-object v2

    invoke-interface {v2}, Lbr;->D()Z

    move-result v10

    move/from16 v9, p2

    .line 55
    invoke-static/range {v9 .. v14}, Lcom/autonavi/common/tool/dumpcrash;->setExceptionInfo(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_14
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    move-result-object v2

    invoke-interface {v2}, Lbr;->j0()Z

    move-result v9

    .line 57
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    move-result-object v2

    invoke-interface {v2}, Lbr;->L()I

    move-result v5

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpcrash.install useAes256:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " libPath:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbz;->a(Ljava/lang/String;)V

    const-string v8, "ndk27.4.0.0.9"

    move v2, v3

    move v3, v6

    move/from16 v4, p1

    move-object v6, v0

    move-object/from16 v7, p0

    .line 59
    invoke-static/range {v2 .. v9}, Lcom/autonavi/common/tool/dumpcrash;->install(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    invoke-static {}, Lcom/autonavi/common/tool/dumpcrash;->setAppFileDir()V

    return-void
.end method

.method public static declared-synchronized loadLibrary()V
    .locals 3

    .line 1
    const-class v0, Lcom/autonavi/common/tool/dumpcrash;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "dumpcrash loadLibrary"

    .line 6
    invoke-static {v1}, Lbz;->a(Ljava/lang/String;)V

    .line 9
    sget-boolean v1, Lcom/autonavi/common/tool/dumpcrash;->hasLoadLibrary:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz v1, :cond_0

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_1
    const-string v1, "openssl"

    .line 17
    invoke-static {v1}, Lt7;->i(Ljava/lang/String;)V

    .line 20
    const-string v1, "dumpcrash"

    .line 22
    invoke-static {v1}, Lt7;->i(Ljava/lang/String;)V

    .line 25
    const/4 v1, 0x1

    .line 26
    sput-boolean v1, Lcom/autonavi/common/tool/dumpcrash;->hasLoadLibrary:Z

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v2, "dumpcrash loadLibrary hasLoadLibrary = "

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    sget-boolean v2, Lcom/autonavi/common/tool/dumpcrash;->hasLoadLibrary:Z

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lbz;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0

    .line 54
    throw v1
.end method

.method public static declared-synchronized logSwitch(I)V
    .locals 1

    .line 1
    const-class v0, Lcom/autonavi/common/tool/dumpcrash;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/autonavi/common/tool/dumpcrash;->setLogSwitch(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0

    .line 11
    throw p0
.end method

.method private static readAnrTraces()Ljava/lang/String;
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 4
    const-string v2, "/data/anr"

    .line 6
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 21
    array-length v4, v1

    .line 22
    const/4 v5, 0x0

    .line 23
    :goto_0
    if-ge v5, v4, :cond_0

    .line 25
    aget-object v6, v1, v5

    .line 27
    new-instance v7, Lcom/autonavi/common/tool/dumpcrash$b;

    .line 29
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    .line 32
    move-result-wide v8

    .line 33
    invoke-direct {v7, v6, v8, v9}, Lcom/autonavi/common/tool/dumpcrash$b;-><init>(Ljava/io/File;J)V

    .line 36
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v5, v5, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 45
    move-result v1

    .line 46
    new-array v1, v1, [Lcom/autonavi/common/tool/dumpcrash$b;

    .line 48
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, [Lcom/autonavi/common/tool/dumpcrash$b;

    .line 54
    new-instance v2, Lcom/autonavi/common/tool/dumpcrash$a;

    .line 56
    invoke-direct {v2}, Lcom/autonavi/common/tool/dumpcrash$a;-><init>()V

    .line 59
    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 62
    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 63
    move-object v5, v0

    .line 64
    move-object v6, v5

    .line 65
    const/4 v4, 0x0

    .line 66
    :goto_1
    if-ge v4, v2, :cond_a

    .line 68
    :try_start_1
    aget-object v7, v1, v4

    .line 70
    iget-object v6, v7, Lcom/autonavi/common/tool/dumpcrash$b;->a:Ljava/io/File;

    .line 72
    new-instance v7, Ljava/io/BufferedReader;

    .line 74
    new-instance v8, Ljava/io/FileReader;

    .line 76
    invoke-direct {v8, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 79
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    :cond_1
    const/4 v8, 0x0

    .line 83
    const/4 v9, 0x0

    .line 84
    const/4 v10, 0x0

    .line 85
    :goto_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 88
    move-result-object v11

    .line 89
    if-eqz v11, :cond_8

    .line 91
    const/4 v12, 0x1

    .line 92
    if-nez v8, :cond_2

    .line 94
    const-string v13, "----- pid"

    .line 96
    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    move-result v13

    .line 100
    if-eqz v13, :cond_2

    .line 102
    new-instance v8, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    move-object v5, v8

    .line 108
    const/4 v8, 0x1

    .line 109
    :cond_2
    if-nez v8, :cond_3

    .line 111
    goto :goto_2

    .line 112
    :cond_3
    const-string v13, "----- end"

    .line 114
    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 117
    move-result v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    const-string v14, "\n"

    .line 120
    if-eqz v13, :cond_4

    .line 122
    if-eqz v10, :cond_1

    .line 124
    :try_start_3
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    goto :goto_3

    .line 131
    :cond_4
    if-nez v9, :cond_6

    .line 133
    const-string v13, "Cmd line:"

    .line 135
    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 138
    move-result v13

    .line 139
    if-eqz v13, :cond_6

    .line 141
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 144
    move-result-object v9

    .line 145
    invoke-static {v9}, Lxf0;->r(Landroid/content/Context;)Ljava/lang/String;

    .line 148
    move-result-object v9

    .line 149
    invoke-virtual {v11, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 152
    move-result v9

    .line 153
    if-nez v9, :cond_5

    .line 155
    move-object v5, v0

    .line 156
    :cond_5
    move v10, v9

    .line 157
    const/4 v9, 0x1

    .line 158
    :cond_6
    if-eqz v9, :cond_7

    .line 160
    if-nez v10, :cond_7

    .line 162
    goto :goto_2

    .line 163
    :cond_7
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    goto :goto_2

    .line 170
    :cond_8
    :goto_3
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 173
    goto :goto_4

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    goto :goto_5

    .line 176
    :catch_0
    move-exception v8

    .line 177
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 180
    goto :goto_3

    .line 181
    :goto_4
    if-eqz v5, :cond_9

    .line 183
    goto :goto_7

    .line 184
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 186
    goto :goto_1

    .line 187
    :goto_5
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 190
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 191
    :catchall_1
    move-exception v1

    .line 192
    move-object v0, v5

    .line 193
    goto :goto_6

    .line 194
    :catchall_2
    move-exception v1

    .line 195
    move-object v6, v0

    .line 196
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    move-object v5, v0

    .line 200
    :cond_a
    :goto_7
    if-eqz v5, :cond_b

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    const-string v1, "\nANR("

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, "):\n"

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    move-result-object v0

    .line 235
    return-object v0

    .line 236
    :cond_b
    const-string v0, ""

    .line 238
    return-object v0
.end method

.method public static recordInLocal(Ljava/lang/String;JZ)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2
    invoke-static {p0, v0, p3}, Lcom/autonavi/common/tool/d;->f(Ljava/lang/String;Ljava/lang/Thread;Z)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lxf0;->n()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    invoke-static {v3}, Lcom/autonavi/common/tool/dumpcrash;->getThreadNativePeerValue(Ljava/lang/Thread;)J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_2

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Thread;

    invoke-static {p0, p1, p3}, Lcom/autonavi/common/tool/d;->f(Ljava/lang/String;Ljava/lang/Thread;Z)V

    return-void

    .line 9
    :cond_3
    invoke-static {p0, v0, p3}, Lcom/autonavi/common/tool/d;->f(Ljava/lang/String;Ljava/lang/Thread;Z)V

    goto :goto_1

    .line 10
    :cond_4
    :goto_0
    invoke-static {p0, v0, p3}, Lcom/autonavi/common/tool/d;->f(Ljava/lang/String;Ljava/lang/Thread;Z)V

    :goto_1
    return-void
.end method

.method public static recordInLocal(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcom/autonavi/common/tool/d;->f(Ljava/lang/String;Ljava/lang/Thread;Z)V

    return-void
.end method

.method public static setAppFileDir()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v2, "filePath:"

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Lbz;->d(Ljava/lang/String;)V

    .line 46
    invoke-static {v0}, Lcom/autonavi/common/tool/dumpcrash;->setFileDir(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static native setAppVersion(Ljava/lang/String;)V
.end method

.method public static native setCrashNotifyDir(Ljava/lang/String;)V
.end method

.method public static native setCrashNotifyFilePath(Ljava/lang/String;)V
.end method

.method public static native setExceptionInfo(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setFileDir(Ljava/lang/String;)V
.end method

.method private static native setLogSwitch(I)V
.end method

.method public static native setRepotOtherThread(Z)V
.end method

.method public static native sigHandlerCanUseJava(I)Z
.end method

.method public static native stopDumpCrash(Z)V
.end method

.method public static native testNativeCrash()V
.end method

.method public static native uninstall()V
.end method
