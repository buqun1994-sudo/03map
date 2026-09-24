.class public Lbd0$d;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lbd0;


# direct methods
.method public constructor <init>(Lbd0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbd0$d;->b:Lbd0;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lbd0$d;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(Lbd0;Lbd0$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lbd0$d;-><init>(Lbd0;)V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lbd0$d;->a:Z

    .line 4
    iget-object v0, p0, Lbd0$d;->b:Lbd0;

    .line 6
    invoke-static {v0}, Lbd0;->f(Lbd0;)Ljava/net/MulticastSocket;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lbd0$d;->b:Lbd0;

    .line 14
    invoke-static {v0}, Lbd0;->f(Lbd0;)Ljava/net/MulticastSocket;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lbd0$d;->b:Lbd0;

    .line 26
    invoke-static {v0}, Lbd0;->g(Lbd0;)Ljava/net/InetAddress;

    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lbd0$d;->b:Lbd0;

    .line 34
    invoke-static {v0}, Lbd0;->f(Lbd0;)Ljava/net/MulticastSocket;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 41
    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 44
    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    const-string v0, " send broadcast --> {e}"

    .line 3
    :goto_0
    iget-boolean v1, p0, Lbd0$d;->a:Z

    .line 5
    if-eqz v1, :cond_1

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    iget-object v2, p0, Lbd0$d;->b:Lbd0;

    .line 10
    invoke-static {}, Lpd0;->s()Lpd0;

    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-virtual {v3, v4}, Lpd0;->t(Z)Ljava/net/InetAddress;

    .line 18
    move-result-object v3

    .line 19
    invoke-static {v2, v3}, Lbd0;->h(Lbd0;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 22
    invoke-static {}, Lbd0;->a()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v4, " send broadcast --> "

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v4, p0, Lbd0$d;->b:Lbd0;

    .line 38
    invoke-static {v4}, Lbd0;->g(Lbd0;)Ljava/net/InetAddress;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    new-array v4, v1, [Ljava/lang/Object;

    .line 51
    invoke-static {v2, v3, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v2, p0, Lbd0$d;->b:Lbd0;

    .line 56
    invoke-static {v2}, Lbd0;->g(Lbd0;)Ljava/net/InetAddress;

    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_0

    .line 62
    invoke-static {}, Lbd0;->a()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    const-string v4, " send broadcast != null send --> "

    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v4, p0, Lbd0$d;->b:Lbd0;

    .line 78
    invoke-static {v4}, Lbd0;->g(Lbd0;)Ljava/net/InetAddress;

    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v3

    .line 89
    new-array v4, v1, [Ljava/lang/Object;

    .line 91
    invoke-static {v2, v3, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Lpd0;->s()Lpd0;

    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lpd0;->o()Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    const/4 v3, 0x0

    .line 103
    invoke-static {v3, v2, v3}, Lnw;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    .line 106
    move-result-object v2

    .line 107
    iget-object v3, p0, Lbd0$d;->b:Lbd0;

    .line 109
    invoke-static {v3}, Lbd0;->f(Lbd0;)Ljava/net/MulticastSocket;

    .line 112
    move-result-object v3

    .line 113
    new-instance v4, Ljava/net/DatagramPacket;

    .line 115
    array-length v5, v2

    .line 116
    iget-object v6, p0, Lbd0$d;->b:Lbd0;

    .line 118
    invoke-static {v6}, Lbd0;->g(Lbd0;)Ljava/net/InetAddress;

    .line 121
    move-result-object v6

    .line 122
    const/16 v7, 0x26b7

    .line 124
    invoke-direct {v4, v2, v5, v6, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 127
    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_1

    .line 131
    :catch_0
    move-exception v2

    .line 132
    invoke-static {}, Lbd0;->a()Ljava/lang/String;

    .line 135
    move-result-object v3

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v2

    .line 151
    new-array v1, v1, [Ljava/lang/Object;

    .line 153
    invoke-static {v3, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    goto :goto_1

    .line 157
    :catch_1
    move-exception v2

    .line 158
    invoke-static {}, Lbd0;->a()Ljava/lang/String;

    .line 161
    move-result-object v3

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object v2

    .line 177
    new-array v1, v1, [Ljava/lang/Object;

    .line 179
    invoke-static {v3, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    goto :goto_1

    .line 183
    :catch_2
    move-exception v2

    .line 184
    invoke-static {}, Lbd0;->a()Ljava/lang/String;

    .line 187
    move-result-object v3

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    .line 190
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v2

    .line 203
    new-array v1, v1, [Ljava/lang/Object;

    .line 205
    invoke-static {v3, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    goto :goto_1

    .line 209
    :catch_3
    move-exception v2

    .line 210
    invoke-static {}, Lbd0;->a()Ljava/lang/String;

    .line 213
    move-result-object v3

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    .line 216
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v2

    .line 229
    new-array v1, v1, [Ljava/lang/Object;

    .line 231
    invoke-static {v3, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    :cond_0
    :goto_1
    const-wide/16 v1, 0x3e8

    .line 236
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    .line 239
    goto/16 :goto_0

    .line 241
    :catch_4
    :cond_1
    return-void
.end method
