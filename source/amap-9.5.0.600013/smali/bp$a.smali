.class public Lbp$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public final synthetic d:Lbp;


# direct methods
.method public constructor <init>(Lbp;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lbp$a;->d:Lbp;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-wide/16 v0, 0xbb8

    .line 8
    iput-wide v0, p0, Lbp$a;->a:J

    .line 10
    iput-wide v0, p0, Lbp$a;->b:J

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lbp$a;->c:J

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :goto_0
    iget-object v0, p0, Lbp$a;->d:Lbp;

    .line 3
    invoke-static {v0}, Lbp;->f(Lbp;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_7

    .line 9
    iget-object v0, p0, Lbp$a;->d:Lbp;

    .line 11
    invoke-static {v0}, Lbp;->d(Lbp;)Ljava/net/Socket;

    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    sget-boolean v0, Lxj0;->a:Z

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-boolean v0, Lxj0;->a:Z

    .line 22
    const/4 v1, 0x0

    .line 23
    const-string v2, "HeartBeatServer.rzc"

    .line 25
    if-eqz v0, :cond_1

    .line 27
    const-string v0, "KeepAliveWatchDog mSocket != null   start..."

    .line 29
    new-array v3, v1, [Ljava/lang/Object;

    .line 31
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    move-result-wide v3

    .line 38
    iget-wide v5, p0, Lbp$a;->c:J

    .line 40
    sub-long/2addr v3, v5

    .line 41
    iget-wide v5, p0, Lbp$a;->b:J

    .line 43
    cmp-long v0, v3, v5

    .line 45
    if-ltz v0, :cond_5

    .line 47
    :try_start_0
    iget-object v0, p0, Lbp$a;->d:Lbp;

    .line 49
    invoke-static {v0}, Lbp;->h(Lbp;)Lx70;

    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lbp$a;->d:Lbp;

    .line 57
    invoke-static {v0}, Lbp;->h(Lbp;)Lx70;

    .line 60
    move-result-object v0

    .line 61
    iget-object v3, p0, Lbp$a;->d:Lbp;

    .line 63
    invoke-static {v3}, Lbp;->d(Lbp;)Ljava/net/Socket;

    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v0, v3}, Lx70;->a(Ljava/net/Socket;)V

    .line 70
    iget-object v0, p0, Lbp$a;->d:Lbp;

    .line 72
    invoke-static {v0}, Lbp;->h(Lbp;)Lx70;

    .line 75
    move-result-object v0

    .line 76
    const/4 v3, 0x1

    .line 77
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 80
    sget-boolean v0, Lxj0;->a:Z

    .line 82
    if-eqz v0, :cond_2

    .line 84
    const-string v0, "KeepAliveWatchDog send package"

    .line 86
    new-array v3, v1, [Ljava/lang/Object;

    .line 88
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    move-result-wide v3

    .line 95
    iput-wide v3, p0, Lbp$a;->c:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    sget-boolean v3, Lxj0;->a:Z

    .line 101
    if-eqz v3, :cond_3

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    const-string v4, "KeepAliveWatchDog IOException e = "

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v3

    .line 124
    new-array v4, v1, [Ljava/lang/Object;

    .line 126
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    iget-object v0, p0, Lbp$a;->d:Lbp;

    .line 134
    invoke-virtual {v0}, Lbp;->p()V

    .line 137
    :goto_1
    :try_start_1
    iget-wide v3, p0, Lbp$a;->a:J

    .line 139
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    goto/16 :goto_0

    .line 144
    :catch_1
    move-exception v0

    .line 145
    sget-boolean v3, Lxj0;->a:Z

    .line 147
    if-eqz v3, :cond_4

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    const-string v4, "KeepAliveWatchDog InterruptedException 1 e = "

    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v3

    .line 170
    new-array v1, v1, [Ljava/lang/Object;

    .line 172
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    iget-object v0, p0, Lbp$a;->d:Lbp;

    .line 180
    invoke-virtual {v0}, Lbp;->p()V

    .line 183
    goto/16 :goto_0

    .line 185
    :cond_5
    :try_start_2
    iget-wide v3, p0, Lbp$a;->a:J

    .line 187
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 190
    goto/16 :goto_0

    .line 192
    :catch_2
    move-exception v0

    .line 193
    sget-boolean v3, Lxj0;->a:Z

    .line 195
    if-eqz v3, :cond_6

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    .line 199
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    const-string v4, "KeepAliveWatchDog InterruptedException 2 e = "

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object v3

    .line 218
    new-array v1, v1, [Ljava/lang/Object;

    .line 220
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 226
    iget-object v0, p0, Lbp$a;->d:Lbp;

    .line 228
    invoke-virtual {v0}, Lbp;->p()V

    .line 231
    goto/16 :goto_0

    .line 233
    :cond_7
    return-void
.end method
