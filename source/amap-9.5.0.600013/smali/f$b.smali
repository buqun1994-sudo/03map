.class public Lf$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static h:I = 0x8


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Ljava/io/File;

.field public e:Ljava/lang/StringBuilder;

.field public f:J

.field public final g:I


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
    iput-object v0, p0, Lf$b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lf$b;->b:Z

    .line 4
    iput-boolean v0, p0, Lf$b;->c:Z

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lf$b;->e:Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lf$b;->f:J

    const v0, 0x32000

    .line 7
    iput v0, p0, Lf$b;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Lf$a;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lf$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lf$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf$b;->c()V

    .line 4
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf$b;->d:Ljava/io/File;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/io/File;

    .line 7
    iget-object v1, p0, Lf$b;->a:Ljava/lang/String;

    .line 9
    const-string v2, "autologLoc.log"

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-object v0, p0, Lf$b;->d:Ljava/io/File;

    .line 16
    :cond_0
    :try_start_0
    iget-object v0, p0, Lf$b;->d:Ljava/io/File;

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 24
    iget-object v0, p0, Lf$b;->d:Ljava/io/File;

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
    iget-object v0, p0, Lf$b;->d:Ljava/io/File;

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lf$b;->d:Ljava/io/File;

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
    invoke-virtual {p0}, Lf$b;->e()V
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

.method public final c()V
    .locals 3

    .line 1
    invoke-static {}, Lf;->d()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lf;->d()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lf;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lf$b;->a:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/io/File;

    .line 20
    iget-object v1, p0, Lf$b;->a:Ljava/lang/String;

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
    iput-boolean v0, p0, Lf$b;->b:Z

    .line 43
    invoke-static {}, Lf;->a()Z

    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_2

    .line 49
    return-void

    .line 50
    :cond_2
    new-instance v1, Ljava/io/File;

    .line 52
    iget-object v2, p0, Lf$b;->a:Ljava/lang/String;

    .line 54
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_3

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 69
    iput-boolean v0, p0, Lf$b;->c:Z

    .line 71
    :cond_3
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf$b;->b:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lf$b;->c()V

    .line 8
    :cond_0
    iget-boolean v0, p0, Lf$b;->b:Z

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Lf;->a()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget-boolean v0, p0, Lf$b;->c:Z

    .line 20
    if-eqz v0, :cond_1

    .line 22
    const/4 v0, 0x1

    .line 23
    return v0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public final e()V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lf$b;->d:Ljava/io/File;

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lf$b;->d:Ljava/io/File;

    .line 13
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    new-instance v4, Ljava/io/File;

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    iget-object v6, p0, Lf$b;->d:Ljava/io/File;

    .line 26
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v6, "."

    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    sget v7, Lf$b;->h:I

    .line 40
    const/4 v8, 0x1

    .line 41
    add-int/2addr v7, v8

    .line 42
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v5

    .line 49
    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_0

    .line 58
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 61
    :cond_0
    sget v4, Lf$b;->h:I

    .line 63
    :goto_0
    if-lez v4, :cond_2

    .line 65
    new-instance v5, Ljava/io/File;

    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    iget-object v9, p0, Lf$b;->d:Ljava/io/File;

    .line 74
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v7

    .line 91
    invoke-direct {v5, v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_1

    .line 100
    new-instance v7, Ljava/io/File;

    .line 102
    new-instance v9, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    iget-object v10, p0, Lf$b;->d:Ljava/io/File;

    .line 109
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v10, v4, 0x1

    .line 121
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v9

    .line 128
    invoke-direct {v7, v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v5, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 134
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 136
    goto :goto_0

    .line 137
    :cond_2
    iget-object v4, p0, Lf$b;->d:Ljava/io/File;

    .line 139
    new-instance v5, Ljava/io/File;

    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    .line 143
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    iget-object v9, p0, Lf$b;->d:Ljava/io/File;

    .line 148
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 151
    move-result-object v9

    .line 152
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v6

    .line 165
    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 171
    new-instance v4, Ljava/io/File;

    .line 173
    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iput-object v4, p0, Lf$b;->d:Ljava/io/File;

    .line 178
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 184
    move-result-wide v2

    .line 185
    sub-long/2addr v2, v0

    .line 186
    iget-object v0, p0, Lf$b;->e:Ljava/lang/StringBuilder;

    .line 188
    const-string v1, "-------resetLogFiles\u82b1\u4e86"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, "\u6beb\u79d2-------\r\n"

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    return-void
.end method

.method public varargs f(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf$b;->e:Ljava/lang/StringBuilder;

    .line 3
    invoke-static {v0, p2, p3}, Lf;->e(Ljava/lang/StringBuilder;J)V

    .line 6
    iget-object p2, p0, Lf$b;->e:Ljava/lang/StringBuilder;

    .line 8
    const-string p3, "##"

    .line 10
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object p2, p0, Lf$b;->e:Ljava/lang/StringBuilder;

    .line 15
    const-string p3, "/"

    .line 17
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string p1, ":"

    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object p1, p0, Lf$b;->e:Ljava/lang/StringBuilder;

    .line 30
    const-string p2, "["

    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string p2, "]"

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object p1, p0, Lf$b;->e:Ljava/lang/StringBuilder;

    .line 45
    invoke-static {p1, p5, p6}, Lf;->f(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object p1, p0, Lf$b;->e:Ljava/lang/StringBuilder;

    .line 50
    const-string p2, "\r\n"

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object p1, p0, Lf$b;->e:Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 60
    move-result p1

    .line 61
    const p2, 0x32000

    .line 64
    const/4 p3, 0x1

    .line 65
    const/4 p4, 0x0

    .line 66
    if-lt p1, p2, :cond_0

    .line 68
    iget-object p1, p0, Lf$b;->e:Ljava/lang/StringBuilder;

    .line 70
    const-string p2, "-------------\uff01\uff01\uff01\uff01\u8b66\u544a\uff01\uff01\uff01\uff01\u8b66\u544a \u3010log\u8f93\u51fa\u592a\u9891\u7e41\uff0c\u8bf7\u68c0\u67e52\u79d2\u5185\u7684log\u8f93\u51fa\u60c5\u51b5\u3011-------------\r\n"

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :goto_0
    const/4 p1, 0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 80
    move-result-wide p1

    .line 81
    iget-wide p5, p0, Lf$b;->f:J

    .line 83
    sub-long/2addr p1, p5

    .line 84
    const-wide/16 p5, 0x7d0

    .line 86
    cmp-long v0, p1, p5

    .line 88
    if-lez v0, :cond_1

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const/4 p1, 0x0

    .line 92
    :goto_1
    if-eqz p1, :cond_2

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    move-result-wide p1

    .line 98
    :try_start_0
    invoke-static {}, Lf;->c()Lf$b;

    .line 101
    move-result-object p5

    .line 102
    invoke-virtual {p5}, Lf$b;->b()V

    .line 105
    iget-object p5, p0, Lf$b;->e:Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p5

    .line 111
    const-string p6, "UTF-8"

    .line 113
    invoke-virtual {p5, p6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 116
    move-result-object p5

    .line 117
    invoke-virtual {p0, p5, p3}, Lf$b;->g([BZ)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_2

    .line 121
    :catch_0
    move-exception p3

    .line 122
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 128
    move-result-wide p5

    .line 129
    sub-long/2addr p5, p1

    .line 130
    iget-object p1, p0, Lf$b;->e:Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 135
    move-result p1

    .line 136
    int-to-long p1, p1

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 140
    move-result-wide v0

    .line 141
    iput-wide v0, p0, Lf$b;->f:J

    .line 143
    iget-object p3, p0, Lf$b;->e:Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 148
    const-wide/16 p3, 0x3e8

    .line 150
    cmp-long v0, p5, p3

    .line 152
    if-lez v0, :cond_2

    .line 154
    iget-object p3, p0, Lf$b;->e:Ljava/lang/StringBuilder;

    .line 156
    const-string p4, "-------\u5199Log\u6587\u4ef6\u8d85\u65f6\uff0c"

    .line 158
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string p4, "\u5f53\u524d\u961f\u5217\u4e2a\u6570\uff1a"

    .line 163
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {}, Lf$c;->a()Lf$c;

    .line 169
    move-result-object p4

    .line 170
    invoke-static {p4}, Lf$c;->e(Lf$c;)Ljava/util/List;

    .line 173
    move-result-object p4

    .line 174
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 177
    move-result p4

    .line 178
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    const-string p4, ",\u5f53\u524d\u5199"

    .line 183
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    const-string p1, "\u4e2a\u5b57\u7b26,\u8017\u65f6"

    .line 191
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 197
    const-string p1, "\u6beb\u79d2-------\r\n"

    .line 199
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_2
    return-void
.end method

.method public final g([BZ)Z
    .locals 4

    .line 1
    invoke-static {}, Lf;->d()Landroid/content/Context;

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
    iget-object v3, p0, Lf$b;->d:Ljava/io/File;

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
