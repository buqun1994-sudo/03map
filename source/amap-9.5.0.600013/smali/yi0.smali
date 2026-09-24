.class public Lyi0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi0$d;
    }
.end annotation


# static fields
.field public static c:Lyi0;


# instance fields
.field public a:Ljava/lang/Thread;

.field public b:Lbr;


# direct methods
.method public constructor <init>(Lbr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lyi0;->b:Lbr;

    .line 6
    return-void
.end method

.method public static synthetic a(Lyi0;)Lbr;
    .locals 0

    .line 1
    iget-object p0, p0, Lyi0;->b:Lbr;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lyi0;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lyi0;->e()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static d(Lbr;)Lyi0;
    .locals 2

    .line 1
    sget-object v0, Lyi0;->c:Lyi0;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-class v0, Lyi0;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Lyi0;

    .line 10
    invoke-direct {v1, p0}, Lyi0;-><init>(Lbr;)V

    .line 13
    sput-object v1, Lyi0;->c:Lyi0;

    .line 15
    monitor-exit v0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0

    .line 20
    :cond_0
    :goto_0
    sget-object p0, Lyi0;->c:Lyi0;

    .line 22
    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 13

    .line 1
    const-string v0, ":"

    .line 3
    :try_start_0
    iget-object v1, p0, Lyi0;->b:Lbr;

    .line 5
    invoke-interface {v1}, Lbr;->f()Ljava/io/File;

    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_d

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_d

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 23
    goto/16 :goto_5

    .line 25
    :cond_0
    new-instance v2, Lxi0;

    .line 27
    invoke-direct {v2, v1}, Lxi0;-><init>(Ljava/io/File;)V

    .line 30
    invoke-virtual {v2}, Lxi0;->b()[Ljava/io/File;

    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_c

    .line 36
    array-length v3, v2

    .line 37
    if-nez v3, :cond_1

    .line 39
    goto/16 :goto_4

    .line 41
    :cond_1
    new-instance v3, Ljava/io/File;

    .line 43
    const-string v4, ".record"

    .line 45
    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_2

    .line 54
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 57
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 59
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v4, Ljava/io/BufferedReader;

    .line 64
    new-instance v5, Ljava/io/FileReader;

    .line 66
    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 69
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 75
    move-result-object v5

    .line 76
    if-eqz v5, :cond_3

    .line 78
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 85
    new-instance v4, Ljava/util/ArrayList;

    .line 87
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 90
    array-length v5, v2

    .line 91
    const/4 v6, 0x0

    .line 92
    const/4 v7, 0x0

    .line 93
    :goto_1
    if-ge v7, v5, :cond_9

    .line 95
    aget-object v8, v2, v7

    .line 97
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 99
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object v10

    .line 103
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v11

    .line 107
    if-eqz v11, :cond_7

    .line 109
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object v11

    .line 113
    check-cast v11, Ljava/lang/String;

    .line 115
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 118
    move-result-object v12

    .line 119
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 122
    move-result v12

    .line 123
    if-eqz v12, :cond_4

    .line 125
    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 128
    move-result-object v9

    .line 129
    const/4 v10, 0x1

    .line 130
    aget-object v9, v9, v10

    .line 132
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 135
    move-result v9

    .line 136
    const/4 v10, 0x5

    .line 137
    if-lt v9, v10, :cond_5

    .line 139
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 142
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 145
    move-result v9

    .line 146
    if-eqz v9, :cond_6

    .line 148
    new-instance v9, Ljava/io/FileWriter;

    .line 150
    invoke-direct {v9, v8, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 153
    invoke-virtual {v9}, Ljava/io/Writer;->close()V

    .line 156
    goto :goto_2

    .line 157
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 159
    new-instance v10, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 167
    move-result-object v11

    .line 168
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object v9

    .line 181
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_6
    :goto_2
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 186
    :cond_7
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 189
    move-result v9

    .line 190
    if-nez v9, :cond_8

    .line 192
    new-instance v9, Ljava/lang/StringBuilder;

    .line 194
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 200
    move-result-object v8

    .line 201
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v8, ":1"

    .line 206
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object v8

    .line 213
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 218
    goto :goto_1

    .line 219
    :cond_9
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_a

    .line 225
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 228
    :cond_a
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 231
    new-instance v0, Ljava/io/FileWriter;

    .line 233
    invoke-direct {v0, v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 236
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 239
    move-result-object v1

    .line 240
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_b

    .line 246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    move-result-object v2

    .line 250
    check-cast v2, Ljava/lang/String;

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    .line 254
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v2, "\n"

    .line 262
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 272
    goto :goto_3

    .line 273
    :cond_b
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 276
    goto :goto_6

    .line 277
    :catchall_0
    move-exception v0

    .line 278
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 281
    throw v0

    .line 282
    :cond_c
    :goto_4
    const-string v0, "null == crashFiles || crashFiles.length == 0"

    .line 284
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 287
    return-void

    .line 288
    :cond_d
    :goto_5
    const-string v0, "null == crashDir || crashDir.exists() || crashDir.isDirectory()"

    .line 290
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 293
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    .line 297
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    const-string v2, "checkUpload:"

    .line 302
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    move-result-object v0

    .line 312
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 315
    :goto_6
    return-void
.end method

.method public final e()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/autonavi/common/tool/b;->L()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string v0, "in debug mode!"

    .line 10
    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V

    .line 13
    return v1

    .line 14
    :cond_0
    iget-object v0, p0, Lyi0;->b:Lbr;

    .line 16
    invoke-interface {v0}, Lbr;->W()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 22
    const-string v0, "net error!"

    .line 24
    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V

    .line 27
    return v1

    .line 28
    :cond_1
    const-string v0, "realUpLoadCrash work"

    .line 30
    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lyi0;->c()V

    .line 36
    :try_start_0
    iget-object v0, p0, Lyi0;->b:Lbr;

    .line 38
    invoke-interface {v0}, Lbr;->f()Ljava/io/File;

    .line 41
    move-result-object v0

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v3, Lxi0;

    .line 49
    invoke-direct {v3, v0}, Lxi0;-><init>(Ljava/io/File;)V

    .line 52
    iget-object v0, p0, Lyi0;->b:Lbr;

    .line 54
    invoke-interface {v0}, Lbr;->j0()Z

    .line 57
    move-result v0

    .line 58
    invoke-virtual {v3, v2, v0}, Lxi0;->c(Ljava/util/List;Z)[B

    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_2

    .line 68
    const-string v0, "crash file is empty"

    .line 70
    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V

    .line 73
    return v1

    .line 74
    :cond_2
    if-eqz v0, :cond_5

    .line 76
    array-length v3, v0

    .line 77
    if-nez v3, :cond_3

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    const-string v4, "upload.zip size = "

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    array-length v4, v0

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    invoke-static {v3}, Lbz;->a(Ljava/lang/String;)V

    .line 101
    new-array v3, v1, [Ljava/io/File;

    .line 103
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 106
    move-result-object v2

    .line 107
    check-cast v2, [Ljava/io/File;

    .line 109
    invoke-static {}, Lbh;->s()Lbh;

    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v3, v2}, Lbh;->e([Ljava/io/File;)V

    .line 116
    new-instance v3, Lwi0;

    .line 118
    invoke-direct {v3}, Lwi0;-><init>()V

    .line 121
    iget-object v4, p0, Lyi0;->b:Lbr;

    .line 123
    invoke-virtual {v3, v0, v2, v4}, Lwi0;->a([B[Ljava/io/File;Lbr;)Lqc;

    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_4

    .line 129
    invoke-virtual {v0}, Lqc;->e()V

    .line 132
    invoke-virtual {v0}, Lqc;->g()Z

    .line 135
    move-result v0

    .line 136
    return v0

    .line 137
    :cond_4
    return v1

    .line 138
    :cond_5
    :goto_0
    const-string v0, "upload zip file generate error"

    .line 140
    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    return v1

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    return v1
.end method

.method public final declared-synchronized f(Lyi0$d;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/autonavi/common/tool/b;->L()Z

    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v0, p0, Lyi0;->a:Ljava/lang/Thread;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 17
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    if-eqz v0, :cond_1

    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/Thread;

    .line 24
    new-instance v1, Lyi0$c;

    .line 26
    invoke-direct {v1, p0, p1}, Lyi0$c;-><init>(Lyi0;Lyi0$d;)V

    .line 29
    const-string p1, "DP-UP"

    .line 31
    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 34
    iput-object v0, p0, Lyi0;->a:Ljava/lang/Thread;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0

    .line 43
    throw p1
.end method

.method public g()V
    .locals 1

    .line 1
    const-string v0, "uploadAllCrash"

    .line 3
    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lyi0$b;

    .line 8
    invoke-direct {v0, p0}, Lyi0$b;-><init>(Lyi0;)V

    .line 11
    invoke-virtual {p0, v0}, Lyi0;->f(Lyi0$d;)V

    .line 14
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    const-string v0, "begin uploadSingleCrash"

    .line 3
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lyi0$a;

    .line 8
    invoke-direct {v0, p0}, Lyi0$a;-><init>(Lyi0;)V

    .line 11
    invoke-virtual {p0, v0}, Lyi0;->f(Lyi0$d;)V

    .line 14
    return-void
.end method
