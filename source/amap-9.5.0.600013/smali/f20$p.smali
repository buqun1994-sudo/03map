.class public Lf20$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "p"
.end annotation


# instance fields
.field public final a:I

.field public b:Ljava/io/IOException;

.field public c:Z

.field public final synthetic d:Lf20;


# direct methods
.method public constructor <init>(Lf20;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lf20$p;->d:Lf20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lf20$p;->c:Z

    .line 4
    iput p2, p0, Lf20$p;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lf20;ILf20$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lf20$p;-><init>(Lf20;I)V

    return-void
.end method

.method public static synthetic a(Lf20$p;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lf20$p;->c:Z

    .line 3
    return p0
.end method

.method public static synthetic b(Lf20$p;)Ljava/io/IOException;
    .locals 0

    .line 1
    iget-object p0, p0, Lf20$p;->b:Ljava/io/IOException;

    .line 3
    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const-string v0, "ServerRunnable"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lf20$p;->d:Lf20;

    .line 6
    invoke-static {v2}, Lf20;->h(Lf20;)Ljava/net/ServerSocket;

    .line 9
    move-result-object v2

    .line 10
    iget-object v3, p0, Lf20$p;->d:Lf20;

    .line 12
    invoke-static {v3}, Lf20;->f(Lf20;)Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    if-eqz v3, :cond_0

    .line 18
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 20
    iget-object v4, p0, Lf20$p;->d:Lf20;

    .line 22
    invoke-static {v4}, Lf20;->f(Lf20;)Ljava/lang/String;

    .line 25
    move-result-object v4

    .line 26
    iget-object v5, p0, Lf20$p;->d:Lf20;

    .line 28
    invoke-static {v5}, Lf20;->g(Lf20;)I

    .line 31
    move-result v5

    .line 32
    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 38
    iget-object v4, p0, Lf20$p;->d:Lf20;

    .line 40
    invoke-static {v4}, Lf20;->g(Lf20;)I

    .line 43
    move-result v4

    .line 44
    invoke-direct {v3, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 47
    :goto_0
    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 50
    const/4 v2, 0x1

    .line 51
    iput-boolean v2, p0, Lf20$p;->c:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :cond_1
    :try_start_1
    iget-object v2, p0, Lf20$p;->d:Lf20;

    .line 55
    invoke-static {v2}, Lf20;->h(Lf20;)Ljava/net/ServerSocket;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 62
    move-result-object v2

    .line 63
    const-string v3, "NanoHTTPD"

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v5, "accept socket: "

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v4

    .line 82
    new-array v5, v1, [Ljava/lang/Object;

    .line 84
    invoke-static {v3, v4, v5}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget v3, p0, Lf20$p;->a:I

    .line 89
    if-lez v3, :cond_2

    .line 91
    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 94
    :cond_2
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 97
    move-result-object v3

    .line 98
    iget-object v4, p0, Lf20$p;->d:Lf20;

    .line 100
    iget-object v5, v4, Lf20;->f:Lf20$b;

    .line 102
    invoke-virtual {v4, v2, v3}, Lf20;->j(Ljava/net/Socket;Ljava/io/InputStream;)Lf20$c;

    .line 105
    move-result-object v2

    .line 106
    invoke-interface {v5, v2}, Lf20$b;->b(Lf20$c;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-exception v2

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    const-string v4, "222 IOException() Communication with the client broken--> "

    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v3

    .line 132
    new-array v4, v1, [Ljava/lang/Object;

    .line 134
    invoke-static {v0, v3, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Lf20;->c()Ljava/util/logging/Logger;

    .line 140
    move-result-object v3

    .line 141
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 143
    const-string v5, "Communication with the client broken"

    .line 145
    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    :goto_1
    iget-object v2, p0, Lf20$p;->d:Lf20;

    .line 150
    invoke-static {v2}, Lf20;->h(Lf20;)Ljava/net/ServerSocket;

    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v2}, Ljava/net/ServerSocket;->isClosed()Z

    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_1

    .line 160
    return-void

    .line 161
    :catch_1
    move-exception v2

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    const-string v4, "111 IOException() --> "

    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v3

    .line 183
    new-array v1, v1, [Ljava/lang/Object;

    .line 185
    invoke-static {v0, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iput-object v2, p0, Lf20$p;->b:Ljava/io/IOException;

    .line 190
    return-void
.end method
