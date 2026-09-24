.class public Ldz$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Ljava/io/File;

.field public e:Ljava/lang/StringBuffer;

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ldz$b;->b:Z

    .line 7
    iput-boolean v0, p0, Ldz$b;->c:Z

    .line 9
    new-instance v0, Ljava/lang/StringBuffer;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 14
    iput-object v0, p0, Ldz$b;->e:Ljava/lang/StringBuffer;

    .line 16
    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Ldz$b;->f:J

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Ldz$b;->f:J

    .line 26
    return-void
.end method

.method public static synthetic a(Ldz$b;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldz$b;->b()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public final b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Ldz$b;->d:Ljava/io/File;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/io/File;

    .line 7
    iget-object v1, p0, Ldz$b;->a:Ljava/lang/String;

    .line 9
    const-string v2, "linkSdk.log"

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-object v0, p0, Ldz$b;->d:Ljava/io/File;

    .line 16
    :cond_0
    :try_start_0
    iget-object v0, p0, Ldz$b;->d:Ljava/io/File;

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 24
    invoke-static {}, Ldz;->a()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p0}, Ldz$b;->c()V

    .line 33
    :cond_1
    iget-object v0, p0, Ldz$b;->d:Ljava/io/File;

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 38
    move-result v0

    .line 39
    return v0

    .line 40
    :cond_2
    iget-object v0, p0, Ldz$b;->d:Ljava/io/File;

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 45
    move-result-wide v0

    .line 46
    const-wide/32 v2, 0x1400000

    .line 49
    cmp-long v4, v0, v2

    .line 51
    if-lez v4, :cond_3

    .line 53
    invoke-virtual {p0}, Ldz$b;->d()Z

    .line 56
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return v0

    .line 58
    :cond_3
    const/4 v0, 0x1

    .line 59
    return v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    const/4 v0, 0x0

    .line 65
    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-static {}, Ldx;->c()Ldx;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ldx;->a()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v0, "/autolog/"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Ldz$b;->a:Ljava/lang/String;

    .line 35
    :try_start_0
    invoke-static {}, Ldz;->a()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 41
    new-instance v0, Ljava/io/File;

    .line 43
    iget-object v1, p0, Ldz$b;->a:Ljava/lang/String;

    .line 45
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_2

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    :cond_2
    :goto_0
    return-void
.end method

.method public final d()Z
    .locals 8

    .line 1
    iget-object v0, p0, Ldz$b;->d:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ldz$b;->d:Ljava/io/File;

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/io/File;

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    iget-object v4, p0, Ldz$b;->d:Ljava/io/File;

    .line 22
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v4, "."

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const/16 v5, 0x33

    .line 36
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v5, "deleteFile ="

    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v5, ","

    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 71
    move-result v5

    .line 72
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    const-string v5, "tag_wuxd"

    .line 81
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 93
    :cond_0
    const/16 v2, 0x32

    .line 95
    :goto_0
    if-lez v2, :cond_2

    .line 97
    new-instance v3, Ljava/io/File;

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    iget-object v6, p0, Ldz$b;->d:Ljava/io/File;

    .line 106
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v5

    .line 123
    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_1

    .line 132
    new-instance v5, Ljava/io/File;

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    .line 136
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    iget-object v7, p0, Ldz$b;->d:Ljava/io/File;

    .line 141
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 144
    move-result-object v7

    .line 145
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    add-int/lit8 v7, v2, 0x1

    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v6

    .line 160
    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 166
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 168
    goto :goto_0

    .line 169
    :cond_2
    iget-object v2, p0, Ldz$b;->d:Ljava/io/File;

    .line 171
    new-instance v3, Ljava/io/File;

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    iget-object v6, p0, Ldz$b;->d:Ljava/io/File;

    .line 180
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const/4 v4, 0x1

    .line 191
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v4

    .line 198
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 204
    new-instance v2, Ljava/io/File;

    .line 206
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iput-object v2, p0, Ldz$b;->d:Ljava/io/File;

    .line 211
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 214
    move-result v0

    .line 215
    return v0
.end method

.method public varargs e(Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p2, p0, Ldz$b;->e:Ljava/lang/StringBuffer;

    .line 3
    new-instance p3, Ljava/util/Date;

    .line 5
    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    .line 8
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 11
    const-string p3, "##"

    .line 13
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    iget-object p2, p0, Ldz$b;->e:Ljava/lang/StringBuffer;

    .line 18
    const-string p3, "/"

    .line 20
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    const-string p1, ":"

    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    iget-object p1, p0, Ldz$b;->e:Ljava/lang/StringBuffer;

    .line 33
    invoke-static {p1, p4, p5}, Ldz;->b(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Ldz$b;->e:Ljava/lang/StringBuffer;

    .line 38
    const-string p2, "\r\n"

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    iget-object p1, p0, Ldz$b;->e:Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 52
    move-result-object p1

    .line 53
    const/4 p2, 0x1

    .line 54
    invoke-virtual {p0, p1, p2}, Ldz$b;->f([BZ)Z

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 60
    move-result-wide p1

    .line 61
    iput-wide p1, p0, Ldz$b;->f:J

    .line 63
    iget-object p1, p0, Ldz$b;->e:Ljava/lang/StringBuffer;

    .line 65
    const/4 p2, 0x0

    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 69
    return-void
.end method

.method public final f([BZ)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 4
    iget-object v2, p0, Ldz$b;->d:Ljava/io/File;

    .line 6
    invoke-direct {v1, v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 15
    :catch_0
    const/4 p1, 0x1

    .line 16
    goto :goto_2

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    move-object v0, v1

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    nop

    .line 21
    move-object v0, v1

    .line 22
    goto :goto_1

    .line 23
    :catchall_1
    move-exception p1

    .line 24
    :goto_0
    if-eqz v0, :cond_0

    .line 26
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 29
    :catch_2
    :cond_0
    throw p1

    .line 30
    :catch_3
    nop

    .line 31
    :goto_1
    if-eqz v0, :cond_1

    .line 33
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 36
    :catch_4
    :cond_1
    const/4 p1, 0x0

    .line 37
    :goto_2
    return p1
.end method
