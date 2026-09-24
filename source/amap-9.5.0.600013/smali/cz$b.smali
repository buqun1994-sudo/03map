.class public Lcz$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static j:I = 0x8


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Ljava/io/File;

.field public g:Ljava/lang/StringBuilder;

.field public h:J

.field public final i:I


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
    iput-object v0, p0, Lcz$b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcz$b;->b:Z

    .line 4
    iput-boolean v0, p0, Lcz$b;->c:Z

    .line 5
    iput-boolean v0, p0, Lcz$b;->d:Z

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcz$b;->g:Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcz$b;->h:J

    const v0, 0x32000

    .line 8
    iput v0, p0, Lcz$b;->i:I

    return-void
.end method

.method public synthetic constructor <init>(Lcz$a;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcz$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcz$b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcz$b;->d:Z

    .line 3
    return p1
.end method

.method public static synthetic b(Lcz$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcz$b;->e()V

    .line 4
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    invoke-static {}, Lcz;->c()Lc80;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcz$b$a;

    .line 7
    invoke-direct {v1, p0}, Lcz$b$a;-><init>(Lcz$b;)V

    .line 10
    invoke-virtual {v0, v1}, Lc80;->execute(Ljava/lang/Runnable;)V

    .line 13
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcz$b;->f:Ljava/io/File;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/io/File;

    .line 7
    iget-object v1, p0, Lcz$b;->a:Ljava/lang/String;

    .line 9
    const-string v2, "autolog.log"

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-object v0, p0, Lcz$b;->f:Ljava/io/File;

    .line 16
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcz$b;->f:Ljava/io/File;

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 24
    iget-object v0, p0, Lcz$b;->f:Ljava/io/File;

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
    iget-object v0, p0, Lcz$b;->f:Ljava/io/File;

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcz$b;->f:Ljava/io/File;

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
    invoke-virtual {p0}, Lcz$b;->g()V
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

.method public final e()V
    .locals 4

    .line 1
    invoke-static {}, Lcz;->d()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcz;->d()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcz;->q(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcz$b;->a:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/io/File;

    .line 20
    iget-object v1, p0, Lcz$b;->a:Ljava/lang/String;

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
    iput-boolean v0, p0, Lcz$b;->b:Z

    .line 43
    invoke-virtual {p0}, Lcz$b;->c()V

    .line 46
    invoke-static {}, Lcz;->d()Landroid/content/Context;

    .line 49
    move-result-object v1

    .line 50
    const-string v2, "SharedPreferences"

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 56
    move-result-object v1

    .line 57
    const-string v2, "isWriteLog"

    .line 59
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 62
    move-result v1

    .line 63
    iput-boolean v1, p0, Lcz$b;->e:Z

    .line 65
    if-nez v1, :cond_2

    .line 67
    return-void

    .line 68
    :cond_2
    new-instance v1, Ljava/io/File;

    .line 70
    iget-object v2, p0, Lcz$b;->a:Ljava/lang/String;

    .line 72
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_3

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_3

    .line 87
    iput-boolean v0, p0, Lcz$b;->c:Z

    .line 89
    :cond_3
    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcz$b;->b:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcz$b;->e()V

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcz$b;->b:Z

    .line 10
    if-eqz v0, :cond_1

    .line 12
    iget-boolean v0, p0, Lcz$b;->e:Z

    .line 14
    if-eqz v0, :cond_1

    .line 16
    iget-boolean v0, p0, Lcz$b;->c:Z

    .line 18
    if-eqz v0, :cond_1

    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_1
    iget-boolean v0, p0, Lcz$b;->d:Z

    .line 24
    return v0
.end method

.method public final g()V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcz$b;->f:Ljava/io/File;

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcz$b;->f:Ljava/io/File;

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
    iget-object v6, p0, Lcz$b;->f:Ljava/io/File;

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
    sget v7, Lcz$b;->j:I

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
    sget v4, Lcz$b;->j:I

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
    iget-object v9, p0, Lcz$b;->f:Ljava/io/File;

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
    iget-object v10, p0, Lcz$b;->f:Ljava/io/File;

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
    iget-object v4, p0, Lcz$b;->f:Ljava/io/File;

    .line 139
    new-instance v5, Ljava/io/File;

    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    .line 143
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    iget-object v9, p0, Lcz$b;->f:Ljava/io/File;

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
    iput-object v4, p0, Lcz$b;->f:Ljava/io/File;

    .line 178
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 184
    move-result-wide v2

    .line 185
    sub-long/2addr v2, v0

    .line 186
    iget-object v0, p0, Lcz$b;->g:Ljava/lang/StringBuilder;

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

.method public varargs h(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v0, ""

    .line 3
    iget-object v1, p0, Lcz$b;->g:Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v1, p2, p3}, Lcz;->e(Ljava/lang/StringBuilder;J)V

    .line 8
    iget-object p2, p0, Lcz$b;->g:Ljava/lang/StringBuilder;

    .line 10
    const-string p3, "##"

    .line 12
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object p2, p0, Lcz$b;->g:Ljava/lang/StringBuilder;

    .line 17
    const-string p3, "/"

    .line 19
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, ":"

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object p1, p0, Lcz$b;->g:Ljava/lang/StringBuilder;

    .line 32
    const-string p2, "["

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string p2, "]"

    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object p1, p0, Lcz$b;->g:Ljava/lang/StringBuilder;

    .line 47
    invoke-static {p1, p5, p6}, Lcz;->f(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object p1, p0, Lcz$b;->g:Ljava/lang/StringBuilder;

    .line 52
    const-string p2, "\r\n"

    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object p1, p0, Lcz$b;->g:Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 62
    move-result p1

    .line 63
    const p2, 0x32000

    .line 66
    const/4 p3, 0x1

    .line 67
    const/4 p4, 0x0

    .line 68
    if-lt p1, p2, :cond_0

    .line 70
    iget-object p1, p0, Lcz$b;->g:Ljava/lang/StringBuilder;

    .line 72
    const-string p2, "-------------\uff01\uff01\uff01\uff01\u8b66\u544a\uff01\uff01\uff01\uff01\u8b66\u544a \u3010log\u8f93\u51fa\u592a\u9891\u7e41\uff0c\u8bf7\u68c0\u67e52\u79d2\u5185\u7684log\u8f93\u51fa\u60c5\u51b5\u3011-------------\r\n"

    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :goto_0
    const/4 p1, 0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 82
    move-result-wide p1

    .line 83
    iget-wide p5, p0, Lcz$b;->h:J

    .line 85
    sub-long/2addr p1, p5

    .line 86
    const-wide/16 p5, 0x7d0

    .line 88
    cmp-long v1, p1, p5

    .line 90
    if-lez v1, :cond_1

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    const/4 p1, 0x0

    .line 94
    :goto_1
    if-eqz p1, :cond_5

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    move-result-wide p1

    .line 100
    :try_start_0
    invoke-static {}, Lcz;->g()Lcz$b;

    .line 103
    move-result-object p5

    .line 104
    invoke-virtual {p5}, Lcz$b;->d()V

    .line 107
    invoke-static {}, Lcz;->h()I

    .line 110
    move-result p5

    .line 111
    const/16 p6, 0x8

    .line 113
    invoke-static {p5, p6}, Lcz;->s(II)Z

    .line 116
    move-result p5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    const-string p6, "UTF-8"

    .line 119
    if-eqz p5, :cond_3

    .line 121
    :try_start_1
    new-instance p5, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    move-result-wide v1

    .line 130
    invoke-static {p5, v1, v2}, Lcz;->e(Ljava/lang/StringBuilder;J)V

    .line 133
    const-string v1, "$TIME $PID $TID D [AMAP]  : "

    .line 135
    const-string v2, "$TIME"

    .line 137
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p5

    .line 141
    invoke-virtual {v1, v2, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 144
    move-result-object p5

    .line 145
    const-string v1, "$PID"

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 149
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 155
    move-result v3

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {p5, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 169
    move-result-object p5

    .line 170
    const-string v1, "$TID"

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 184
    move-result-wide v3

    .line 185
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p5, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 198
    move-result-object p5

    .line 199
    const-string v0, "(1/1/1)[AMAP]_#_"

    .line 201
    iget-object v1, p0, Lcz$b;->g:Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 210
    move-result-object v1

    .line 211
    array-length v2, v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 212
    const/16 v3, 0x400

    .line 214
    const-string v4, "\n"

    .line 216
    if-le v2, v3, :cond_2

    .line 218
    :try_start_2
    iget-object v1, p0, Lcz$b;->g:Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 227
    move-result-object v1

    .line 228
    array-length v2, v1

    .line 229
    const/4 v3, 0x0

    .line 230
    :goto_2
    if-ge v3, v2, :cond_4

    .line 232
    aget-object v5, v1, v3

    .line 234
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 237
    move-result-object v5

    .line 238
    invoke-static {v5}, Lyy;->a([B)Ljava/lang/String;

    .line 241
    move-result-object v5

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    .line 244
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    move-result-object v5

    .line 263
    invoke-virtual {v5, p6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 266
    move-result-object v5

    .line 267
    invoke-virtual {p0, v5, p3}, Lcz$b;->i([BZ)Z

    .line 270
    add-int/lit8 v3, v3, 0x1

    .line 272
    goto :goto_2

    .line 273
    :cond_2
    invoke-static {v1}, Lyy;->a([B)Ljava/lang/String;

    .line 276
    move-result-object v1

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    .line 279
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object p5

    .line 298
    invoke-virtual {p5, p6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 301
    move-result-object p5

    .line 302
    invoke-virtual {p0, p5, p3}, Lcz$b;->i([BZ)Z

    .line 305
    goto :goto_3

    .line 306
    :cond_3
    iget-object p5, p0, Lcz$b;->g:Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    move-result-object p5

    .line 312
    invoke-virtual {p5, p6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 315
    move-result-object p5

    .line 316
    invoke-virtual {p0, p5, p3}, Lcz$b;->i([BZ)Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 319
    goto :goto_3

    .line 320
    :catch_0
    move-exception p3

    .line 321
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 324
    :cond_4
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 327
    move-result-wide p5

    .line 328
    sub-long/2addr p5, p1

    .line 329
    iget-object p1, p0, Lcz$b;->g:Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 334
    move-result p1

    .line 335
    int-to-long p1, p1

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 339
    move-result-wide v0

    .line 340
    iput-wide v0, p0, Lcz$b;->h:J

    .line 342
    iget-object p3, p0, Lcz$b;->g:Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 347
    const-wide/16 p3, 0x3e8

    .line 349
    cmp-long v0, p5, p3

    .line 351
    if-lez v0, :cond_5

    .line 353
    iget-object p3, p0, Lcz$b;->g:Ljava/lang/StringBuilder;

    .line 355
    const-string p4, "-------\u5199Log\u6587\u4ef6\u8d85\u65f6\uff0c"

    .line 357
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string p4, "\u5f53\u524d\u961f\u5217\u4e2a\u6570\uff1a"

    .line 362
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static {}, Lcz$c;->a()Lcz$c;

    .line 368
    move-result-object p4

    .line 369
    invoke-static {p4}, Lcz$c;->b(Lcz$c;)Ljava/util/List;

    .line 372
    move-result-object p4

    .line 373
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 376
    move-result p4

    .line 377
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    const-string p4, ",\u5f53\u524d\u5199"

    .line 382
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 388
    const-string p1, "\u4e2a\u5b57\u7b26,\u8017\u65f6"

    .line 390
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 396
    const-string p1, "\u6beb\u79d2-------\r\n"

    .line 398
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_5
    return-void
.end method

.method public final i([BZ)Z
    .locals 4

    .line 1
    invoke-static {}, Lcz;->d()Landroid/content/Context;

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
    iget-object v3, p0, Lcz$b;->f:Ljava/io/File;

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
