.class public abstract Lbi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lbi;->u(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static synthetic b()I
    .locals 1

    .line 1
    sget v0, Lbi;->b:I

    .line 3
    return v0
.end method

.method public static synthetic c(I)I
    .locals 0

    .line 1
    sput p0, Lbi;->b:I

    .line 3
    return p0
.end method

.method public static synthetic d(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lbi;->r(Z)V

    .line 4
    return-void
.end method

.method public static synthetic e(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lbi;->f(Z)V

    .line 4
    return-void
.end method

.method public static f(Z)V
    .locals 2

    .line 1
    invoke-static {p0}, Lbi;->w(Z)I

    .line 4
    const-wide/16 v0, 0x3e8

    .line 6
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    nop

    .line 11
    :goto_0
    invoke-static {p0}, Lbi;->w(Z)I

    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 17
    invoke-static {}, Lbi;->q()V

    .line 20
    :cond_0
    return-void
.end method

.method public static g()V
    .locals 7

    .line 1
    const-string v0, "dump.out"

    .line 3
    invoke-static {}, Lrv;->H()Lrv;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2}, Lbi;->p(Ljava/lang/String;)Z

    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-nez v2, :cond_0

    .line 22
    const-string v0, "\u53ea\u652f\u6301auto\u662f\u7cfb\u7edf\u5e94\u7528\u65b9\u5f0f\u83b7\u53d6"

    .line 24
    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 31
    return-void

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 36
    move-result-object v2

    .line 37
    const-string v4, "activity"

    .line 39
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 42
    move-result-object v5

    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-static {v4, v5, v6}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z

    .line 47
    const-string v4, "SurfaceFlinger"

    .line 49
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 52
    move-result-object v5

    .line 53
    invoke-static {v4, v5, v6}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z

    .line 56
    const-string v4, "window"

    .line 58
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 61
    move-result-object v5

    .line 62
    invoke-static {v4, v5, v6}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z

    .line 65
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-static {}, Lrv;->H()Lrv;

    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v4}, Lrv;->z()Landroid/content/Context;

    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v4, "/dump.out"

    .line 94
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v2

    .line 101
    invoke-static {}, Lze0;->h()Lze0;

    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v4, v0}, Lze0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    invoke-static {v2, v0}, Lbi;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "\u7cfb\u7edf\u4fe1\u606f\u6536\u96c6\u5b8c\u6210"

    .line 114
    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Ljava/io/FileInputStream;

    .line 14
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance p0, Ljava/io/FileOutputStream;

    .line 19
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 22
    const/16 p1, 0x5a4

    .line 24
    new-array p1, p1, [B

    .line 26
    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    .line 31
    move-result v3

    .line 32
    const/4 v4, -0x1

    .line 33
    if-eq v3, v4, :cond_0

    .line 35
    add-int/2addr v2, v3

    .line 36
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 38
    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(I)V

    .line 41
    invoke-virtual {p0, p1, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    :cond_1
    :goto_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 9
    new-instance v0, Ljava/io/File;

    .line 11
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    array-length v3, v0

    .line 21
    if-ge v2, v3, :cond_4

    .line 23
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 25
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 31
    new-instance v3, Ljava/io/File;

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    aget-object v5, v0, v2

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    new-instance v4, Ljava/io/File;

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    aget-object v3, v0, v2

    .line 69
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 76
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    move-object v3, v4

    .line 80
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 83
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const-string v5, "/"

    .line 86
    if-eqz v4, :cond_2

    .line 88
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    .line 90
    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 93
    new-instance v6, Ljava/io/FileOutputStream;

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v7

    .line 121
    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 124
    const/16 v7, 0x1400

    .line 126
    new-array v7, v7, [B

    .line 128
    :goto_2
    invoke-virtual {v4, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 131
    move-result v8

    .line 132
    const/4 v9, -0x1

    .line 133
    if-eq v8, v9, :cond_1

    .line 135
    invoke-virtual {v6, v7, v1, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 138
    goto :goto_2

    .line 139
    :cond_1
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 142
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 145
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 148
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_3

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    aget-object v4, v0, v2

    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v3

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    aget-object v5, v0, v2

    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v4

    .line 194
    invoke-static {v3, v4}, Lbi;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 199
    goto/16 :goto_0

    .line 201
    :catch_0
    move-exception p0

    .line 202
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    :cond_4
    return-void
.end method

.method public static j()V
    .locals 14

    .line 1
    const-string v0, ""

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/autonavi/common/tool/b;->D()Ljava/util/List;

    .line 8
    move-result-object v3

    .line 9
    if-eqz v3, :cond_3

    .line 11
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 14
    move-result v4

    .line 15
    if-lez v4, :cond_3

    .line 17
    const-string v4, "AUTO_AL"

    .line 19
    invoke-static {}, Lf30;->A()Ljava/lang/String;

    .line 22
    move-result-object v5

    .line 23
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v3

    .line 27
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_2

    .line 33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Lo30;

    .line 39
    if-nez v6, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v6}, Lo30;->d()V

    .line 45
    invoke-virtual {v6}, Lo30;->a()V

    .line 48
    iget-object v7, v6, Lo30;->g:Ljava/lang/String;

    .line 50
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v7

    .line 54
    const/4 v8, 0x4

    .line 55
    if-nez v7, :cond_1

    .line 57
    iget-object v7, v6, Lo30;->g:Ljava/lang/String;

    .line 59
    const-string v9, "ANDA"

    .line 61
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_1

    .line 67
    iget-object v7, v6, Lo30;->g:Ljava/lang/String;

    .line 69
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 72
    move-result-object v7

    .line 73
    iput-object v7, v6, Lo30;->g:Ljava/lang/String;

    .line 75
    :cond_1
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 77
    const-string v9, "[%s][27][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s][%s]"

    .line 79
    const/16 v10, 0x1c

    .line 81
    new-array v10, v10, [Ljava/lang/Object;

    .line 83
    const v11, 0x5f5e1b0

    .line 86
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v12

    .line 90
    aput-object v12, v10, v1

    .line 92
    iget-object v12, v6, Lo30;->a:Ljava/lang/String;

    .line 94
    aput-object v12, v10, v2

    .line 96
    iget-object v12, v6, Lo30;->b:Ljava/lang/String;

    .line 98
    const/4 v13, 0x2

    .line 99
    aput-object v12, v10, v13

    .line 101
    iget-object v12, v6, Lo30;->c:Ljava/lang/String;

    .line 103
    const/4 v13, 0x3

    .line 104
    aput-object v12, v10, v13

    .line 106
    iget-object v12, v6, Lo30;->d:Ljava/lang/String;

    .line 108
    aput-object v12, v10, v8

    .line 110
    const/4 v8, 0x5

    .line 111
    aput-object v5, v10, v8

    .line 113
    iget-object v8, v6, Lo30;->e:Ljava/lang/String;

    .line 115
    const/4 v12, 0x6

    .line 116
    aput-object v8, v10, v12

    .line 118
    iget-object v8, v6, Lo30;->f:Ljava/lang/String;

    .line 120
    const/4 v12, 0x7

    .line 121
    aput-object v8, v10, v12

    .line 123
    iget-object v8, v6, Lo30;->g:Ljava/lang/String;

    .line 125
    const/16 v12, 0x8

    .line 127
    aput-object v8, v10, v12

    .line 129
    iget-object v8, v6, Lo30;->h:Ljava/lang/String;

    .line 131
    const/16 v12, 0x9

    .line 133
    aput-object v8, v10, v12

    .line 135
    iget-object v8, v6, Lo30;->j:Ljava/lang/String;

    .line 137
    const/16 v12, 0xa

    .line 139
    aput-object v8, v10, v12

    .line 141
    iget-object v8, v6, Lo30;->k:Ljava/lang/String;

    .line 143
    const/16 v13, 0xb

    .line 145
    aput-object v8, v10, v13

    .line 147
    iget-object v8, v6, Lo30;->l:Ljava/lang/String;

    .line 149
    const/16 v13, 0xc

    .line 151
    aput-object v8, v10, v13

    .line 153
    iget-object v8, v6, Lo30;->m:Ljava/lang/String;

    .line 155
    const/16 v13, 0xd

    .line 157
    aput-object v8, v10, v13

    .line 159
    iget-object v8, v6, Lo30;->n:Ljava/lang/String;

    .line 161
    const/16 v13, 0xe

    .line 163
    aput-object v8, v10, v13

    .line 165
    iget-object v8, v6, Lo30;->o:Ljava/lang/String;

    .line 167
    const/16 v13, 0xf

    .line 169
    aput-object v8, v10, v13

    .line 171
    iget-object v8, v6, Lo30;->i:Ljava/lang/String;

    .line 173
    const/16 v13, 0x10

    .line 175
    aput-object v8, v10, v13

    .line 177
    iget-object v8, v6, Lo30;->p:Ljava/lang/String;

    .line 179
    const/16 v13, 0x11

    .line 181
    aput-object v8, v10, v13

    .line 183
    iget-object v8, v6, Lo30;->q:Ljava/lang/String;

    .line 185
    const/16 v13, 0x12

    .line 187
    aput-object v8, v10, v13

    .line 189
    iget-object v8, v6, Lo30;->r:Ljava/lang/String;

    .line 191
    const/16 v13, 0x13

    .line 193
    aput-object v8, v10, v13

    .line 195
    iget-object v8, v6, Lo30;->s:Ljava/lang/String;

    .line 197
    const/16 v13, 0x14

    .line 199
    aput-object v8, v10, v13

    .line 201
    iget-object v8, v6, Lo30;->t:Ljava/lang/String;

    .line 203
    const/16 v13, 0x15

    .line 205
    aput-object v8, v10, v13

    .line 207
    iget-object v8, v6, Lo30;->u:Ljava/lang/String;

    .line 209
    const/16 v13, 0x16

    .line 211
    aput-object v8, v10, v13

    .line 213
    iget-object v8, v6, Lo30;->v:Ljava/lang/String;

    .line 215
    const/16 v13, 0x17

    .line 217
    aput-object v8, v10, v13

    .line 219
    iget-object v6, v6, Lo30;->w:Ljava/lang/String;

    .line 221
    const/16 v8, 0x18

    .line 223
    aput-object v6, v10, v8

    .line 225
    const/16 v6, 0x19

    .line 227
    aput-object v0, v10, v6

    .line 229
    const/16 v6, 0x1a

    .line 231
    aput-object v0, v10, v6

    .line 233
    const/16 v6, 0x1b

    .line 235
    aput-object v0, v10, v6

    .line 237
    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    move-result-object v6

    .line 241
    const-string v7, "CrashCollection"

    .line 243
    const-string v8, "collectionInfo = {?}"

    .line 245
    new-array v9, v2, [Ljava/lang/Object;

    .line 247
    aput-object v6, v9, v1

    .line 249
    invoke-static {v7, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    invoke-static {v4, v11, v6, v12}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 255
    goto/16 :goto_0

    .line 257
    :cond_2
    invoke-static {}, Lcom/autonavi/common/tool/b;->S()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    new-array v2, v2, [Ljava/lang/Object;

    .line 264
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 267
    move-result-object v0

    .line 268
    aput-object v0, v2, v1

    .line 270
    const-string v0, "NormalCollection"

    .line 272
    const-string v1, "error msg = {?}"

    .line 274
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    :cond_3
    :goto_1
    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "AUTONAVI_STANDARD_BROADCAST_RECV"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    const-string v1, "KEY_TYPE"

    .line 17
    const/16 v2, 0x4eea

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    const-string v1, "POPUP_ID"

    .line 24
    const/16 v2, 0x64

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 32
    return-void
.end method

.method public static l()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->i()V

    .line 8
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const-string v2, ""

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-virtual {v0, v3, v1, v2}, Lcom/autonavi/amapauto/framework/AutoLoader;->native_reportInfo(IILjava/lang/String;)V

    .line 19
    return-void
.end method

.method public static m()V
    .locals 2

    .line 1
    invoke-static {}, Lze0;->h()Lze0;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "systrace.debug"

    .line 7
    invoke-virtual {v0, v1}, Lze0;->b(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lbi;->a:Z

    .line 16
    :cond_0
    return-void
.end method

.method public static n()Z
    .locals 2

    .line 1
    invoke-static {}, Lze0;->h()Lze0;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "crash.debug"

    .line 7
    invoke-virtual {v0, v1}, Lze0;->b(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public static o()Z
    .locals 1

    .line 1
    sget-boolean v0, Lbi;->a:Z

    .line 3
    return v0
.end method

.method public static p(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 21
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    if-eqz p0, :cond_3

    .line 26
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 28
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 30
    and-int/lit8 v1, p0, 0x1

    .line 32
    const/4 v2, 0x1

    .line 33
    if-ne v1, v2, :cond_0

    .line 35
    const/4 v1, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 38
    :goto_1
    and-int/lit16 p0, p0, 0x80

    .line 40
    if-ne p0, v2, :cond_1

    .line 42
    const/4 p0, 0x1

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    :goto_2
    if-nez v1, :cond_2

    .line 47
    if-eqz p0, :cond_3

    .line 49
    :cond_2
    const/4 v0, 0x1

    .line 50
    :cond_3
    return v0
.end method

.method public static q()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, ""

    .line 8
    const/4 v3, 0x2

    .line 9
    invoke-virtual {v0, v3, v1, v2}, Lcom/autonavi/amapauto/framework/AutoLoader;->native_reportInfo(IILjava/lang/String;)V

    .line 12
    return-void
.end method

.method public static r(Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    invoke-static {p0}, Lbi;->f(Z)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Li7;->a()Li7;

    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lbi$d;

    .line 23
    invoke-direct {v1, p0}, Lbi$d;-><init>(Z)V

    .line 26
    invoke-virtual {v0, v1}, Li7;->c(Ljava/lang/Runnable;)V

    .line 29
    :goto_0
    return-void
.end method

.method public static s(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1, p0, p1}, Lcom/autonavi/amapauto/framework/AutoLoader;->native_reportInfo(IILjava/lang/String;)V

    .line 9
    return-void
.end method

.method public static t(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "\u8fd0\u884c\u65f6\u4fe1\u606f\u5bfc\u51fa"

    .line 3
    const-string v1, "\u8bca\u65ad"

    .line 5
    const-string v2, "\u95ee\u9898\u4e0a\u62a5"

    .line 7
    const-string v3, "\u63a7\u4ef6\u6811\u4fe1\u606f\u5bfc\u51fa"

    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 15
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v2, Lbi$a;

    .line 20
    invoke-direct {v2, p0}, Lbi$a;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 26
    move-result-object p0

    .line 27
    const-string v0, "\u5173\u95ed"

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 33
    move-result-object p0

    .line 34
    const-string v0, "\u8c03\u8bd5"

    .line 36
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 53
    :cond_0
    return-void
.end method

.method public static u(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "\u5361\u987f/\u5361\u6b7b"

    .line 3
    const-string v1, "\u9ed1\u5c4f"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 11
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance p0, Lbi$c;

    .line 16
    invoke-direct {p0}, Lbi$c;-><init>()V

    .line 19
    const/4 v2, -0x1

    .line 20
    invoke-virtual {v1, v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 23
    move-result-object p0

    .line 24
    new-instance v0, Lbi$b;

    .line 26
    invoke-direct {v0}, Lbi$b;-><init>()V

    .line 29
    const-string v1, "\u4e0a\u62a5"

    .line 31
    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 34
    move-result-object p0

    .line 35
    const-string v0, "\u53d6\u6d88"

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    move-result-object p0

    .line 42
    const-string v0, "\u8bf7\u9009\u62e9\u4e0a\u62a5\u95ee\u9898\u7c7b\u578b"

    .line 44
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 47
    move-result-object p0

    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 60
    return-void
.end method

.method public static v(Landroid/app/Application;)V
    .locals 14

    .line 1
    const-string v0, "TamperCollection"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :try_start_0
    invoke-static {p0}, Lcom/autonavi/common/tool/b;->H(Landroid/app/Application;)Ljava/util/List;

    .line 8
    move-result-object v3

    .line 9
    if-eqz v3, :cond_1

    .line 11
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 14
    move-result v4

    .line 15
    if-lez v4, :cond_1

    .line 17
    const-string v4, "AUTO_HMI"

    .line 19
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 21
    const-string v6, "yyyy-MM-dd HH:mm:ss.SSSS"

    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 26
    move-result-object v7

    .line 27
    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 30
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v3

    .line 34
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_0

    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Lyf0;

    .line 46
    new-instance v7, Ljava/util/Date;

    .line 48
    iget-wide v8, v6, Lyf0;->b:J

    .line 50
    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 53
    invoke-virtual {v5, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 56
    move-result-object v7

    .line 57
    new-instance v8, Ljava/util/Date;

    .line 59
    iget-wide v9, v6, Lyf0;->c:J

    .line 61
    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 64
    invoke-virtual {v5, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 67
    move-result-object v8

    .line 68
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 70
    const-string v10, "[%s][6][%s][%s][%s][%d][%d][%d]"

    .line 72
    const/4 v11, 0x7

    .line 73
    new-array v11, v11, [Ljava/lang/Object;

    .line 75
    const v12, 0x5f5e152

    .line 78
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v13

    .line 82
    aput-object v13, v11, v1

    .line 84
    iget-object v13, v6, Lyf0;->a:Ljava/lang/String;

    .line 86
    aput-object v13, v11, v2

    .line 88
    const/4 v13, 0x2

    .line 89
    aput-object v7, v11, v13

    .line 91
    const/4 v7, 0x3

    .line 92
    aput-object v8, v11, v7

    .line 94
    iget v7, v6, Lyf0;->d:I

    .line 96
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v7

    .line 100
    const/4 v8, 0x4

    .line 101
    aput-object v7, v11, v8

    .line 103
    iget v7, v6, Lyf0;->e:I

    .line 105
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object v7

    .line 109
    const/4 v8, 0x5

    .line 110
    aput-object v7, v11, v8

    .line 112
    iget v6, v6, Lyf0;->f:I

    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v6

    .line 118
    const/4 v7, 0x6

    .line 119
    aput-object v6, v11, v7

    .line 121
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    move-result-object v6

    .line 125
    const-string v7, "collectionInfo = {?}"

    .line 127
    new-array v8, v2, [Ljava/lang/Object;

    .line 129
    aput-object v6, v8, v1

    .line 131
    invoke-static {v0, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    const/16 v7, 0xa

    .line 136
    invoke-static {v4, v12, v6, v7}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 139
    goto :goto_0

    .line 140
    :cond_0
    invoke-static {p0}, Lcom/autonavi/common/tool/b;->T(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_1

    .line 144
    :catch_0
    move-exception p0

    .line 145
    new-array v2, v2, [Ljava/lang/Object;

    .line 147
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 150
    move-result-object p0

    .line 151
    aput-object p0, v2, v1

    .line 153
    const-string p0, "error msg = {?}"

    .line 155
    invoke-static {v0, p0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_1
    :goto_1
    return-void
.end method

.method public static w(Z)I
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 9
    invoke-static {}, Lrv;->H()Lrv;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/io/File;

    .line 19
    const-string v2, "/data/anr/"

    .line 21
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 27
    move-result v3

    .line 28
    const-string v4, ""

    .line 30
    const/4 v5, 0x1

    .line 31
    if-eqz v3, :cond_3

    .line 33
    invoke-static {}, Lze0;->h()Lze0;

    .line 36
    move-result-object v3

    .line 37
    const-string v6, "anr_test"

    .line 39
    invoke-virtual {v3, v6}, Lze0;->c(Ljava/lang/String;)Ljava/io/File;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 46
    move-result v6

    .line 47
    if-nez v6, :cond_0

    .line 49
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 52
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    if-nez v1, :cond_1

    .line 58
    if-eqz p0, :cond_4

    .line 60
    const-string v1, "\u76ee\u5f55\u8bfb\u53d6\u5931\u8d25,\u65e0\u6cd5\u590d\u5236anr"

    .line 62
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    array-length v1, v1

    .line 79
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    invoke-static {v2, v3}, Lbi;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    if-eqz p0, :cond_2

    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    const-string v2, "\u6210\u529f\u4e86:"

    .line 102
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    invoke-static {v0, p0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 119
    :cond_2
    const/4 p0, 0x0

    .line 120
    return p0

    .line 121
    :cond_3
    if-eqz p0, :cond_4

    .line 123
    const-string v1, "\u5931\u76ee\u5f55\u8bfb\u53d6\u5931\u8d25,\u65e0\u6cd5\u590d\u5236anr"

    .line 125
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 132
    :cond_4
    :goto_0
    new-instance v1, Ljava/lang/Throwable;

    .line 134
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 137
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 140
    move-result-object v1

    .line 141
    invoke-static {v4, v1, v4}, Lcom/autonavi/common/tool/b;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-eqz p0, :cond_5

    .line 146
    const-string p0, "auto\u65b9\u5f0f\u751f\u6210anr"

    .line 148
    invoke-static {v0, p0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 155
    :cond_5
    return v5
.end method
