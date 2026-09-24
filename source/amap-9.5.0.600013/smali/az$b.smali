.class public Laz$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static i:I = 0xa


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Ljava/io/File;

.field public f:Ljava/lang/StringBuffer;

.field public g:J

.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Laz$b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Laz$b;->b:Z

    .line 4
    iput-boolean v0, p0, Laz$b;->c:Z

    .line 5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Laz$b;->f:Ljava/lang/StringBuffer;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Laz$b;->g:J

    const v0, 0x32000

    .line 7
    iput v0, p0, Laz$b;->h:I

    return-void
.end method

.method public synthetic constructor <init>(Laz$a;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Laz$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Laz$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Laz$b;->c()V

    .line 4
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    invoke-static {}, Laz;->a()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Laz;->a()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Laz;->h(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Laz$b;->a:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/io/File;

    .line 20
    iget-object v1, p0, Laz$b;->a:Ljava/lang/String;

    .line 22
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 40
    :cond_1
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Laz$b;->b:Z

    .line 43
    invoke-static {}, Lug;->b()Lug;

    .line 46
    move-result-object v1

    .line 47
    invoke-static {}, Laz;->a()Landroid/content/Context;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lug;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 54
    move-result-object v1

    .line 55
    const-string v2, "SharedPreferences"

    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 61
    move-result-object v1

    .line 62
    const-string v2, "isWriteLog"

    .line 64
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 67
    move-result v1

    .line 68
    iput-boolean v1, p0, Laz$b;->d:Z

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const-string v2, "isWriteLog "

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-boolean v2, p0, Laz$b;->d:Z

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    const-string v2, "LogProxy"

    .line 91
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v1, p0, Laz$b;->d:Z

    .line 96
    if-nez v1, :cond_2

    .line 98
    return-void

    .line 99
    :cond_2
    new-instance v1, Ljava/io/File;

    .line 101
    iget-object v2, p0, Laz$b;->a:Ljava/lang/String;

    .line 103
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_3

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_3

    .line 118
    iput-boolean v0, p0, Laz$b;->c:Z

    .line 120
    :cond_3
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Laz$b;->e:Ljava/io/File;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/io/File;

    .line 7
    iget-object v1, p0, Laz$b;->a:Ljava/lang/String;

    .line 9
    const-string v2, "autolaunch.log"

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-object v0, p0, Laz$b;->e:Ljava/io/File;

    .line 16
    :cond_0
    :try_start_0
    iget-object v0, p0, Laz$b;->e:Ljava/io/File;

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 24
    iget-object v0, p0, Laz$b;->e:Ljava/io/File;

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Laz$b;->e:Ljava/io/File;

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Laz$b;->e:Ljava/io/File;

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 48
    move-result-wide v0

    .line 49
    const-wide/32 v2, 0x1400000

    .line 52
    cmp-long v4, v0, v2

    .line 54
    if-lez v4, :cond_3

    .line 56
    invoke-virtual {p0}, Laz$b;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    :cond_3
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Laz$b;->b:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Laz$b;->b()V

    .line 8
    :cond_0
    iget-boolean v0, p0, Laz$b;->b:Z

    .line 10
    if-eqz v0, :cond_1

    .line 12
    iget-boolean v0, p0, Laz$b;->d:Z

    .line 14
    if-eqz v0, :cond_1

    .line 16
    iget-boolean v0, p0, Laz$b;->c:Z

    .line 18
    if-eqz v0, :cond_1

    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public final e()V
    .locals 9

    .line 1
    iget-object v0, p0, Laz$b;->e:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Laz$b;->e:Ljava/io/File;

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
    iget-object v4, p0, Laz$b;->e:Ljava/io/File;

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
    sget v5, Laz$b;->i:I

    .line 36
    const/4 v6, 0x1

    .line 37
    add-int/2addr v5, v6

    .line 38
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 57
    :cond_0
    sget v2, Laz$b;->i:I

    .line 59
    :goto_0
    if-lez v2, :cond_2

    .line 61
    new-instance v3, Ljava/io/File;

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    iget-object v7, p0, Laz$b;->e:Ljava/io/File;

    .line 70
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v5

    .line 87
    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_1

    .line 96
    new-instance v5, Ljava/io/File;

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    iget-object v8, p0, Laz$b;->e:Ljava/io/File;

    .line 105
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v8, v2, 0x1

    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v7

    .line 124
    invoke-direct {v5, v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 130
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 132
    goto :goto_0

    .line 133
    :cond_2
    iget-object v2, p0, Laz$b;->e:Ljava/io/File;

    .line 135
    new-instance v3, Ljava/io/File;

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    iget-object v7, p0, Laz$b;->e:Ljava/io/File;

    .line 144
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 147
    move-result-object v7

    .line 148
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v4

    .line 161
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 167
    new-instance v2, Ljava/io/File;

    .line 169
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iput-object v2, p0, Laz$b;->e:Ljava/io/File;

    .line 174
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 177
    return-void
.end method

.method public varargs f(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Laz$b;->f:Ljava/lang/StringBuffer;

    .line 3
    invoke-static {v0, p2, p3}, Laz;->b(Ljava/lang/StringBuffer;J)V

    .line 6
    iget-object p2, p0, Laz$b;->f:Ljava/lang/StringBuffer;

    .line 8
    const-string p3, "##"

    .line 10
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    iget-object p2, p0, Laz$b;->f:Ljava/lang/StringBuffer;

    .line 15
    const-string p3, "/"

    .line 17
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    const-string p1, ":"

    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    iget-object p1, p0, Laz$b;->f:Ljava/lang/StringBuffer;

    .line 30
    const-string p2, "["

    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    const-string p2, "]"

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    iget-object p1, p0, Laz$b;->f:Ljava/lang/StringBuffer;

    .line 45
    invoke-static {p1, p5, p6}, Laz;->c(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object p1, p0, Laz$b;->f:Ljava/lang/StringBuffer;

    .line 50
    const-string p2, "\r\n"

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    iget-object p1, p0, Laz$b;->f:Ljava/lang/StringBuffer;

    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    .line 60
    move-result p1

    .line 61
    const p2, 0x32000

    .line 64
    if-lt p1, p2, :cond_0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 70
    :goto_0
    :try_start_0
    iget-object p1, p0, Laz$b;->f:Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    const-string p2, "UTF-8"

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 81
    move-result-object p1

    .line 82
    const/4 p2, 0x1

    .line 83
    invoke-virtual {p0, p1, p2}, Laz$b;->g([BZ)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 94
    move-result-wide p1

    .line 95
    iput-wide p1, p0, Laz$b;->g:J

    .line 97
    iget-object p1, p0, Laz$b;->f:Ljava/lang/StringBuffer;

    .line 99
    const/4 p2, 0x0

    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 103
    return-void
.end method

.method public final g([BZ)Z
    .locals 4

    .line 1
    invoke-static {}, Laz;->a()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 12
    iget-object v3, p0, Laz$b;->e:Ljava/io/File;

    .line 14
    invoke-direct {v2, v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 23
    :catch_0
    const/4 v1, 0x1

    .line 24
    goto :goto_2

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    move-object v0, v2

    .line 27
    goto :goto_0

    .line 28
    :catch_1
    nop

    .line 29
    move-object v0, v2

    .line 30
    goto :goto_1

    .line 31
    :catchall_1
    move-exception p1

    .line 32
    :goto_0
    if-eqz v0, :cond_1

    .line 34
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 37
    :catch_2
    :cond_1
    throw p1

    .line 38
    :catch_3
    nop

    .line 39
    :goto_1
    if-eqz v0, :cond_2

    .line 41
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 44
    :catch_4
    :cond_2
    :goto_2
    return v1
.end method
