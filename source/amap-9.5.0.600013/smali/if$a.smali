.class public Lif$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lif;


# direct methods
.method public constructor <init>(Lif;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lif$a;->a:Lif;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p1, v0}, Lif;->i(Lif;Z)Z

    .line 10
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lif$a;->a:Lif;

    .line 3
    invoke-static {v0}, Lif;->h(Lif;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lif$a;->a:Lif;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lif;->i(Lif;Z)Z

    .line 7
    const-string v0, "EncodeRunnable quit"

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    const-string v2, "CommonEncodeHandler"

    .line 13
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public run()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lif$a;->a:Lif;

    .line 6
    invoke-static {v2}, Lif;->h(Lif;)Z

    .line 9
    move-result v2

    .line 10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v1, v3

    .line 17
    iget-object v2, p0, Lif$a;->a:Lif;

    .line 19
    iget-boolean v2, v2, Lq;->j:Z

    .line 21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object v2

    .line 25
    const/4 v4, 0x1

    .line 26
    aput-object v2, v1, v4

    .line 28
    const-string v2, "CommonEncodeHandler"

    .line 30
    const-string v5, "EncodeRunnable 0 mIsRunning={?}, mIsWriteToFile={?}"

    .line 32
    invoke-static {v2, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v1, p0, Lif$a;->a:Lif;

    .line 37
    iget-boolean v1, v1, Lq;->j:Z

    .line 39
    if-eqz v1, :cond_2

    .line 41
    new-instance v1, Ljava/io/File;

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-static {}, Lr50;->j()Ljava/lang/String;

    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v6, "/amapautolink.264"

    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v5

    .line 64
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_0

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 76
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_1

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 85
    :cond_1
    iget-object v5, p0, Lif$a;->a:Lif;

    .line 87
    new-instance v6, Ljava/io/RandomAccessFile;

    .line 89
    const-string v7, "rw"

    .line 91
    invoke-direct {v6, v1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    iput-object v6, v5, Lq;->n:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    const-string v5, "EncodeRunnable Exception = "

    .line 100
    new-array v6, v3, [Ljava/lang/Object;

    .line 102
    invoke-static {v2, v5, v1, v6}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 105
    :cond_2
    :goto_0
    iget-object v1, p0, Lif$a;->a:Lif;

    .line 107
    invoke-static {v1}, Lif;->h(Lif;)Z

    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_8

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 116
    move-result-wide v5

    .line 117
    iget-object v1, p0, Lif$a;->a:Lif;

    .line 119
    iget-boolean v1, v1, Lq;->l:Z

    .line 121
    if-eqz v1, :cond_3

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    const-string v7, "EncodeRunnable 4 mIsForTest = "

    .line 130
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v7, p0, Lif$a;->a:Lif;

    .line 135
    iget-boolean v7, v7, Lq;->l:Z

    .line 137
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 144
    new-array v7, v3, [Ljava/lang/Object;

    .line 146
    invoke-static {v2, v1, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v1, p0, Lif$a;->a:Lif;

    .line 151
    invoke-static {v1}, Lif;->j(Lif;)Z

    .line 154
    move-result v1

    .line 155
    goto :goto_1

    .line 156
    :cond_3
    const/4 v1, 0x1

    .line 157
    :goto_1
    if-eqz v1, :cond_6

    .line 159
    iget-object v1, p0, Lif$a;->a:Lif;

    .line 161
    invoke-static {v1}, Lif;->k(Lif;)I

    .line 164
    move-result v1

    .line 165
    sget-object v7, Lbk0;->d:Lbk0;

    .line 167
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 170
    move-result v7

    .line 171
    if-ne v1, v7, :cond_5

    .line 173
    iget-object v1, p0, Lif$a;->a:Lif;

    .line 175
    invoke-static {v1}, Lif;->l(Lif;)Z

    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_4

    .line 181
    iget-object v1, p0, Lif$a;->a:Lif;

    .line 183
    invoke-static {v1}, Lif;->m(Lif;)V

    .line 186
    goto :goto_2

    .line 187
    :cond_4
    const-string v0, "EncodeRunnable mIsRtpPrepared == false"

    .line 189
    new-array v1, v3, [Ljava/lang/Object;

    .line 191
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    goto :goto_5

    .line 195
    :cond_5
    iget-object v1, p0, Lif$a;->a:Lif;

    .line 197
    invoke-static {v1}, Lif;->m(Lif;)V

    .line 200
    :cond_6
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 203
    move-result-wide v7

    .line 204
    sub-long/2addr v7, v5

    .line 205
    const-wide/16 v5, 0x64

    .line 207
    cmp-long v1, v7, v5

    .line 209
    if-gez v1, :cond_7

    .line 211
    const-wide/16 v5, 0x32

    .line 213
    goto :goto_3

    .line 214
    :cond_7
    const-wide/16 v5, 0x14

    .line 216
    :goto_3
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    goto :goto_4

    .line 220
    :catch_1
    nop

    .line 221
    :goto_4
    sget-boolean v1, Lxj0;->b:Z

    .line 223
    if-eqz v1, :cond_2

    .line 225
    new-array v1, v0, [Ljava/lang/Object;

    .line 227
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 230
    move-result-object v7

    .line 231
    aput-object v7, v1, v3

    .line 233
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 236
    move-result-object v5

    .line 237
    aput-object v5, v1, v4

    .line 239
    const-string v5, "EncodeRunnable interval={?}, sleep={?}"

    .line 241
    invoke-static {v2, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    goto/16 :goto_0

    .line 246
    :cond_8
    :goto_5
    iget-object v0, p0, Lif$a;->a:Lif;

    .line 248
    invoke-static {v0}, Lif;->n(Lif;)V

    .line 251
    return-void
.end method
