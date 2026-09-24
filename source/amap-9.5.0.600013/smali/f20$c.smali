.class public Lf20$c;
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
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Ljava/net/Socket;

.field public final synthetic c:Lf20;


# direct methods
.method public constructor <init>(Lf20;Ljava/io/InputStream;Ljava/net/Socket;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lf20$c;->c:Lf20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lf20$c;->a:Ljava/io/InputStream;

    .line 4
    iput-object p3, p0, Lf20$c;->b:Ljava/net/Socket;

    return-void
.end method

.method public synthetic constructor <init>(Lf20;Ljava/io/InputStream;Ljava/net/Socket;Lf20$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lf20$c;-><init>(Lf20;Ljava/io/InputStream;Ljava/net/Socket;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf20$c;->a:Ljava/io/InputStream;

    .line 3
    invoke-static {v0}, Lf20;->a(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lf20$c;->b:Ljava/net/Socket;

    .line 8
    invoke-static {v0}, Lf20;->a(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lf20$c;->b:Ljava/net/Socket;

    .line 4
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lf20$c;->c:Lf20;

    .line 10
    invoke-static {v1}, Lf20;->b(Lf20;)Lf20$t;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Lf20$t;->a()Lf20$s;

    .line 17
    move-result-object v4

    .line 18
    new-instance v1, Lf20$k;

    .line 20
    iget-object v3, p0, Lf20$c;->c:Lf20;

    .line 22
    iget-object v5, p0, Lf20$c;->a:Ljava/io/InputStream;

    .line 24
    iget-object v2, p0, Lf20$c;->b:Ljava/net/Socket;

    .line 26
    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 29
    move-result-object v7

    .line 30
    move-object v2, v1

    .line 31
    move-object v6, v0

    .line 32
    invoke-direct/range {v2 .. v7}, Lf20$k;-><init>(Lf20;Lf20$s;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    .line 35
    :goto_0
    iget-object v2, p0, Lf20$c;->b:Ljava/net/Socket;

    .line 37
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 43
    invoke-virtual {v1}, Lf20$k;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception v1

    .line 50
    :try_start_1
    const-string v2, "ClientHandler"

    .line 52
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    const/4 v4, 0x0

    .line 57
    new-array v4, v4, [Ljava/lang/Object;

    .line 59
    invoke-static {v2, v3, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    instance-of v2, v1, Ljava/net/SocketException;

    .line 64
    if-eqz v2, :cond_0

    .line 66
    const-string v2, "NanoHttpd Shutdown"

    .line 68
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_1

    .line 78
    :cond_0
    instance-of v2, v1, Ljava/net/SocketTimeoutException;

    .line 80
    if-nez v2, :cond_1

    .line 82
    invoke-static {}, Lf20;->c()Ljava/util/logging/Logger;

    .line 85
    move-result-object v2

    .line 86
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 88
    const-string v4, "Communication with the client broken, or an bug in the handler code"

    .line 90
    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :cond_1
    invoke-static {v0}, Lf20;->a(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lf20$c;->a:Ljava/io/InputStream;

    .line 98
    invoke-static {v0}, Lf20;->a(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lf20$c;->b:Ljava/net/Socket;

    .line 103
    invoke-static {v0}, Lf20;->a(Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lf20$c;->c:Lf20;

    .line 108
    iget-object v0, v0, Lf20;->f:Lf20$b;

    .line 110
    invoke-interface {v0, p0}, Lf20$b;->c(Lf20$c;)V

    .line 113
    return-void

    .line 114
    :goto_1
    invoke-static {v0}, Lf20;->a(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lf20$c;->a:Ljava/io/InputStream;

    .line 119
    invoke-static {v0}, Lf20;->a(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lf20$c;->b:Ljava/net/Socket;

    .line 124
    invoke-static {v0}, Lf20;->a(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lf20$c;->c:Lf20;

    .line 129
    iget-object v0, v0, Lf20;->f:Lf20$b;

    .line 131
    invoke-interface {v0, p0}, Lf20$b;->c(Lf20$c;)V

    .line 134
    throw v1
.end method
