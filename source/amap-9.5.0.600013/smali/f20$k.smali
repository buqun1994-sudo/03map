.class public Lf20$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf20$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field public final a:Lf20$s;

.field public final b:Ljava/io/OutputStream;

.field public final c:Ljava/io/BufferedInputStream;

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Lf20$m;

.field public h:Ljava/util/Map;

.field public i:Ljava/util/Map;

.field public j:Lf20$e;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Z

.field public p:I

.field public final synthetic q:Lf20;


# direct methods
.method public constructor <init>(Lf20;Lf20$s;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf20$k;->q:Lf20;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lf20$k;->p:I

    .line 9
    iput-object p2, p0, Lf20$k;->a:Lf20$s;

    .line 11
    new-instance p1, Ljava/io/BufferedInputStream;

    .line 13
    const/16 p2, 0x2000

    .line 15
    invoke-direct {p1, p3, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 18
    iput-object p1, p0, Lf20$k;->c:Ljava/io/BufferedInputStream;

    .line 20
    iput-object p4, p0, Lf20$k;->b:Ljava/io/OutputStream;

    .line 22
    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 28
    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    const-string p1, "127.0.0.1"

    .line 46
    :goto_1
    iput-object p1, p0, Lf20$k;->l:Ljava/lang/String;

    .line 48
    :try_start_0
    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_3

    .line 54
    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    :goto_2
    const-string p1, "localhost"

    .line 72
    :goto_3
    iput-object p1, p0, Lf20$k;->m:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :catchall_0
    new-instance p1, Ljava/util/HashMap;

    .line 76
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 79
    iput-object p1, p0, Lf20$k;->i:Ljava/util/Map;

    .line 81
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lf20$k;->h:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public b(Ljava/util/Map;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lf20$k;->o(Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf20$k;->f:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public final d([BI)Z
    .locals 5

    .line 1
    const-string v0, "checkPermissions"

    .line 3
    const/16 v1, 0x40

    .line 5
    if-le p2, v1, :cond_0

    .line 7
    const/16 p2, 0x40

    .line 9
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 11
    new-instance v2, Ljava/io/InputStreamReader;

    .line 13
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v3, p1, v4, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 19
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 22
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 25
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    invoke-static {}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->d()Lcom/autonavi/link/transmit/proxy/LinkProxy;

    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2, p1}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->b(Ljava/lang/String;)Z

    .line 36
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p2

    .line 42
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    new-array v2, v4, [Ljava/lang/Object;

    .line 48
    invoke-static {v0, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    :goto_0
    move v4, p1

    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :catch_1
    move-exception p1

    .line 59
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    move-result-object p2

    .line 63
    new-array v2, v4, [Ljava/lang/Object;

    .line 65
    invoke-static {v0, p2, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 74
    goto :goto_1

    .line 75
    :catch_2
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    move-result-object p2

    .line 80
    new-array v1, v4, [Ljava/lang/Object;

    .line 82
    invoke-static {v0, p2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    :goto_1
    return v4

    .line 89
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 92
    goto :goto_3

    .line 93
    :catch_3
    move-exception p2

    .line 94
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    new-array v2, v4, [Ljava/lang/Object;

    .line 100
    invoke-static {v0, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    :goto_3
    throw p1
.end method

.method public final e(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6

    .line 1
    const-string v0, "decodeHeader"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 7
    move-result-object v2

    .line 8
    if-nez v2, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v3, Ljava/util/StringTokenizer;

    .line 13
    invoke-direct {v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_6

    .line 22
    const-string v2, "method"

    .line 24
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    invoke-interface {p2, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_5

    .line 37
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    const/16 v4, 0x3f

    .line 43
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    .line 46
    move-result v4

    .line 47
    if-ltz v4, :cond_1

    .line 49
    add-int/lit8 v5, v4, 0x1

    .line 51
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {p0, v5, p3}, Lf20$k;->f(Ljava/lang/String;Ljava/util/Map;)V

    .line 58
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    move-result-object p3

    .line 62
    invoke-static {p3}, Lf20;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p3

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-static {v2}, Lf20;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p3

    .line 71
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_2

    .line 77
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    iput-object v2, p0, Lf20$k;->n:Ljava/lang/String;

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const-string v2, "HTTP/1.1"

    .line 86
    iput-object v2, p0, Lf20$k;->n:Ljava/lang/String;

    .line 88
    invoke-static {}, Lf20;->c()Ljava/util/logging/Logger;

    .line 91
    move-result-object v2

    .line 92
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 94
    const-string v4, "no protocol version specified, strange. Assuming HTTP/1.1."

    .line 96
    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 99
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 103
    :goto_2
    if-eqz v2, :cond_4

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_4

    .line 115
    const/16 v3, 0x3a

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 120
    move-result v3

    .line 121
    if-ltz v3, :cond_3

    .line 123
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 130
    move-result-object v4

    .line 131
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 136
    move-result-object v4

    .line 137
    add-int/lit8 v3, v3, 0x1

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 146
    move-result-object v2

    .line 147
    invoke-interface {p4, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 153
    move-result-object v2

    .line 154
    goto :goto_2

    .line 155
    :cond_4
    const-string p1, "uri"

    .line 157
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void

    .line 161
    :cond_5
    const-string p1, "222----hasMoreTokens-------> "

    .line 163
    new-array p2, v1, [Ljava/lang/Object;

    .line 165
    invoke-static {v0, p1, p2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    new-instance p1, Lf20$o;

    .line 170
    sget-object p2, Lf20$n$d;->m:Lf20$n$d;

    .line 172
    const-string p3, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    .line 174
    invoke-direct {p1, p2, p3}, Lf20$o;-><init>(Lf20$n$d;Ljava/lang/String;)V

    .line 177
    throw p1

    .line 178
    :cond_6
    const-string p1, "111----hasMoreTokens-------> "

    .line 180
    new-array p2, v1, [Ljava/lang/Object;

    .line 182
    invoke-static {v0, p1, p2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    new-instance p1, Lf20$o;

    .line 187
    sget-object p2, Lf20$n$d;->m:Lf20$n$d;

    .line 189
    const-string p3, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    .line 191
    invoke-direct {p1, p2, p3}, Lf20$o;-><init>(Lf20$n$d;Ljava/lang/String;)V

    .line 194
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :catch_0
    move-exception p1

    .line 196
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 199
    move-result-object p2

    .line 200
    new-array p3, v1, [Ljava/lang/Object;

    .line 202
    invoke-static {v0, p2, p3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    new-instance p2, Lf20$o;

    .line 207
    sget-object p3, Lf20$n$d;->v:Lf20$n$d;

    .line 209
    new-instance p4, Ljava/lang/StringBuilder;

    .line 211
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    const-string v0, "SERVER INTERNAL ERROR: IOException: "

    .line 216
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object p4

    .line 230
    invoke-direct {p2, p3, p4, p1}, Lf20$o;-><init>(Lf20$n$d;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 233
    throw p2
.end method

.method public final f(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    .line 1
    const-string v0, ""

    .line 3
    if-nez p1, :cond_0

    .line 5
    iput-object v0, p0, Lf20$k;->k:Ljava/lang/String;

    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Lf20$k;->k:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/util/StringTokenizer;

    .line 12
    const-string v2, "&"

    .line 14
    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    const/16 v2, 0x3d

    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 32
    move-result v2

    .line 33
    if-ltz v2, :cond_1

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3}, Lf20;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lf20;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-interface {p2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-static {p1}, Lf20;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    return-void
.end method

.method public g()V
    .locals 13

    .line 1
    const-string v0, "method"

    .line 3
    const-string v1, "text/plain"

    .line 5
    const-string v2, "NanoHttpd Shutdown"

    .line 7
    const-string v3, "execute"

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lf20$k;->m()Ljava/lang/String;

    .line 14
    move-result-object v6

    .line 15
    const/4 v7, 0x1

    .line 16
    if-eqz v6, :cond_0

    .line 18
    invoke-virtual {p0}, Lf20$k;->m()Ljava/lang/String;

    .line 21
    move-result-object v6

    .line 22
    const-string v8, "127.0.0.1"

    .line 24
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_0

    .line 30
    const/4 v6, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v6, 0x0

    .line 33
    :goto_0
    iget-boolean v8, p0, Lf20$k;->o:Z

    .line 35
    if-nez v8, :cond_3

    .line 37
    if-eqz v6, :cond_3

    .line 39
    const/16 v8, 0x40

    .line 41
    new-array v9, v8, [B

    .line 43
    iget-object v10, p0, Lf20$k;->c:Ljava/io/BufferedInputStream;

    .line 45
    invoke-virtual {v10, v9, v4, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 48
    move-result v8

    .line 49
    if-lez v8, :cond_2

    .line 51
    invoke-virtual {p0, v9, v8}, Lf20$k;->d([BI)Z

    .line 54
    move-result v8

    .line 55
    if-eqz v8, :cond_1

    .line 57
    iput-boolean v7, p0, Lf20$k;->o:Z

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const-string v0, "222--->  throw new ResponseException --> permission denied,checkPermissions failed"

    .line 62
    new-array v6, v4, [Ljava/lang/Object;

    .line 64
    invoke-static {v3, v0, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    new-instance v0, Lf20$o;

    .line 69
    sget-object v6, Lf20$n$d;->o:Lf20$n$d;

    .line 71
    const-string v7, "permission denied,checkPermissions failed"

    .line 73
    invoke-direct {v0, v6, v7}, Lf20$o;-><init>(Lf20$n$d;Ljava/lang/String;)V

    .line 76
    throw v0

    .line 77
    :cond_2
    const-string v0, "111---> NanoHttpd\u901a\u8fc7\u8be5\u5f02\u5e38\u5173\u95ed\u8fde\u63a5"

    .line 79
    new-array v6, v4, [Ljava/lang/Object;

    .line 81
    invoke-static {v3, v0, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    new-instance v0, Ljava/net/SocketException;

    .line 86
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 89
    throw v0

    .line 90
    :cond_3
    :goto_1
    const/16 v8, 0x2000

    .line 92
    new-array v9, v8, [B

    .line 94
    iput v4, p0, Lf20$k;->d:I

    .line 96
    iput v4, p0, Lf20$k;->e:I

    .line 98
    iget-object v10, p0, Lf20$k;->c:Ljava/io/BufferedInputStream;

    .line 100
    invoke-virtual {v10, v8}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lf20$o; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    iget-object v10, p0, Lf20$k;->c:Ljava/io/BufferedInputStream;

    .line 105
    invoke-virtual {v10, v9, v4, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 108
    move-result v8
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lf20$o; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    const/4 v10, -0x1

    .line 110
    if-eq v8, v10, :cond_11

    .line 112
    :goto_2
    if-lez v8, :cond_5

    .line 114
    :try_start_2
    iget v10, p0, Lf20$k;->e:I

    .line 116
    add-int/2addr v10, v8

    .line 117
    iput v10, p0, Lf20$k;->e:I

    .line 119
    invoke-virtual {p0, v9, v10}, Lf20$k;->h([BI)I

    .line 122
    move-result v8

    .line 123
    iput v8, p0, Lf20$k;->d:I

    .line 125
    if-lez v8, :cond_4

    .line 127
    goto :goto_3

    .line 128
    :cond_4
    iget-object v8, p0, Lf20$k;->c:Ljava/io/BufferedInputStream;

    .line 130
    iget v10, p0, Lf20$k;->e:I

    .line 132
    rsub-int v11, v10, 0x2000

    .line 134
    invoke-virtual {v8, v9, v10, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 137
    move-result v8

    .line 138
    goto :goto_2

    .line 139
    :cond_5
    :goto_3
    iget v8, p0, Lf20$k;->d:I

    .line 141
    iget v10, p0, Lf20$k;->e:I

    .line 143
    if-ge v8, v10, :cond_6

    .line 145
    iget-object v8, p0, Lf20$k;->c:Ljava/io/BufferedInputStream;

    .line 147
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->reset()V

    .line 150
    iget-object v8, p0, Lf20$k;->c:Ljava/io/BufferedInputStream;

    .line 152
    iget v10, p0, Lf20$k;->d:I

    .line 154
    int-to-long v10, v10

    .line 155
    invoke-virtual {v8, v10, v11}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 158
    :cond_6
    new-instance v8, Ljava/util/HashMap;

    .line 160
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 163
    iput-object v8, p0, Lf20$k;->h:Ljava/util/Map;

    .line 165
    iget-object v8, p0, Lf20$k;->i:Ljava/util/Map;

    .line 167
    if-nez v8, :cond_7

    .line 169
    new-instance v8, Ljava/util/HashMap;

    .line 171
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 174
    iput-object v8, p0, Lf20$k;->i:Ljava/util/Map;

    .line 176
    goto :goto_4

    .line 177
    :cond_7
    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 180
    :goto_4
    new-instance v8, Ljava/io/BufferedReader;

    .line 182
    new-instance v10, Ljava/io/InputStreamReader;

    .line 184
    new-instance v11, Ljava/io/ByteArrayInputStream;

    .line 186
    iget v12, p0, Lf20$k;->e:I

    .line 188
    invoke-direct {v11, v9, v4, v12}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 191
    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 194
    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 197
    new-instance v9, Ljava/util/HashMap;

    .line 199
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 202
    iget-object v10, p0, Lf20$k;->h:Ljava/util/Map;

    .line 204
    iget-object v11, p0, Lf20$k;->i:Ljava/util/Map;

    .line 206
    invoke-virtual {p0, v8, v9, v10, v11}, Lf20$k;->e(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 209
    iget-object v8, p0, Lf20$k;->l:Ljava/lang/String;

    .line 211
    if-eqz v8, :cond_8

    .line 213
    iget-object v10, p0, Lf20$k;->i:Ljava/util/Map;

    .line 215
    const-string v11, "remote-addr"

    .line 217
    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v8, p0, Lf20$k;->i:Ljava/util/Map;

    .line 222
    const-string v10, "http-client-ip"

    .line 224
    iget-object v11, p0, Lf20$k;->l:Ljava/lang/String;

    .line 226
    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_8
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    move-result-object v8

    .line 233
    check-cast v8, Ljava/lang/String;

    .line 235
    invoke-static {v8}, Lf20$m;->a(Ljava/lang/String;)Lf20$m;

    .line 238
    move-result-object v8

    .line 239
    iput-object v8, p0, Lf20$k;->g:Lf20$m;

    .line 241
    if-eqz v8, :cond_10

    .line 243
    const-string v0, "uri"

    .line 245
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Ljava/lang/String;

    .line 251
    iput-object v0, p0, Lf20$k;->f:Ljava/lang/String;

    .line 253
    new-instance v0, Lf20$e;

    .line 255
    iget-object v8, p0, Lf20$k;->q:Lf20;

    .line 257
    iget-object v9, p0, Lf20$k;->i:Ljava/util/Map;

    .line 259
    invoke-direct {v0, v8, v9}, Lf20$e;-><init>(Lf20;Ljava/util/Map;)V

    .line 262
    iput-object v0, p0, Lf20$k;->j:Lf20$e;

    .line 264
    iget-object v0, p0, Lf20$k;->i:Ljava/util/Map;

    .line 266
    const-string v8, "connection"

    .line 268
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Ljava/lang/String;

    .line 274
    const-string v8, "HTTP/1.1"

    .line 276
    iget-object v9, p0, Lf20$k;->n:Ljava/lang/String;

    .line 278
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    move-result v8

    .line 282
    if-eqz v8, :cond_a

    .line 284
    if-eqz v0, :cond_9

    .line 286
    const-string v8, "(?i).*close.*"

    .line 288
    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 291
    move-result v0

    .line 292
    if-nez v0, :cond_a

    .line 294
    :cond_9
    const/4 v0, 0x1

    .line 295
    goto :goto_5

    .line 296
    :cond_a
    const/4 v0, 0x0

    .line 297
    :goto_5
    if-nez v6, :cond_c

    .line 299
    iget-object v6, p0, Lf20$k;->h:Ljava/util/Map;

    .line 301
    const-string v8, "connectionId"

    .line 303
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    move-result-object v6

    .line 307
    check-cast v6, Ljava/lang/String;

    .line 309
    invoke-static {}, Lpc0;->d()Lpc0;

    .line 312
    move-result-object v8

    .line 313
    invoke-virtual {v8, v6}, Lpc0;->e(Ljava/lang/String;)Z

    .line 316
    move-result v6

    .line 317
    if-eqz v6, :cond_b

    .line 319
    iput-boolean v7, p0, Lf20$k;->o:Z

    .line 321
    goto :goto_6

    .line 322
    :cond_b
    const-string v0, "777---> permission denied,invalid connectionId"

    .line 324
    new-array v6, v4, [Ljava/lang/Object;

    .line 326
    invoke-static {v3, v0, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    new-instance v0, Lf20$o;

    .line 331
    sget-object v6, Lf20$n$d;->o:Lf20$n$d;

    .line 333
    const-string v7, "permission denied,invalid connectionId"

    .line 335
    invoke-direct {v0, v6, v7}, Lf20$o;-><init>(Lf20$n$d;Ljava/lang/String;)V

    .line 338
    throw v0

    .line 339
    :cond_c
    :goto_6
    iget-object v6, p0, Lf20$k;->q:Lf20;

    .line 341
    invoke-virtual {v6, p0}, Lf20;->s(Lf20$l;)Lf20$n;

    .line 344
    move-result-object v5

    .line 345
    if-eqz v5, :cond_f

    .line 347
    iget-object v6, p0, Lf20$k;->i:Ljava/util/Map;

    .line 349
    const-string v8, "accept-encoding"

    .line 351
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    move-result-object v6

    .line 355
    check-cast v6, Ljava/lang/String;

    .line 357
    iget-object v8, p0, Lf20$k;->j:Lf20$e;

    .line 359
    invoke-virtual {v8, v5}, Lf20$e;->a(Lf20$n;)V

    .line 362
    iget-object v8, p0, Lf20$k;->g:Lf20$m;

    .line 364
    invoke-virtual {v5, v8}, Lf20$n;->n(Lf20$m;)V

    .line 367
    iget-object v8, p0, Lf20$k;->q:Lf20;

    .line 369
    invoke-virtual {v8, v5}, Lf20;->z(Lf20$n;)Z

    .line 372
    move-result v8

    .line 373
    if-eqz v8, :cond_d

    .line 375
    if-eqz v6, :cond_d

    .line 377
    const-string v8, "gzip"

    .line 379
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 382
    move-result v6

    .line 383
    if-eqz v6, :cond_d

    .line 385
    goto :goto_7

    .line 386
    :cond_d
    const/4 v7, 0x0

    .line 387
    :goto_7
    invoke-virtual {v5, v7}, Lf20$n;->l(Z)V

    .line 390
    invoke-virtual {v5, v0}, Lf20$n;->m(Z)V

    .line 393
    iget-object v6, p0, Lf20$k;->b:Ljava/io/OutputStream;

    .line 395
    invoke-virtual {v5, v6}, Lf20$n;->f(Ljava/io/OutputStream;)V

    .line 398
    if-eqz v0, :cond_e

    .line 400
    invoke-virtual {v5}, Lf20$n;->d()Z

    .line 403
    move-result v0

    .line 404
    if-nez v0, :cond_e

    .line 406
    goto/16 :goto_8

    .line 408
    :cond_e
    const-string v0, "999---> NanoHttpd Shutdown"

    .line 410
    new-array v6, v4, [Ljava/lang/Object;

    .line 412
    invoke-static {v3, v0, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    new-instance v0, Ljava/net/SocketException;

    .line 417
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 420
    throw v0

    .line 421
    :cond_f
    const-string v0, "888---> SERVER INTERNAL ERROR: Serve() returned a null response."

    .line 423
    new-array v6, v4, [Ljava/lang/Object;

    .line 425
    invoke-static {v3, v0, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    new-instance v0, Lf20$o;

    .line 430
    sget-object v6, Lf20$n$d;->v:Lf20$n$d;

    .line 432
    const-string v7, "SERVER INTERNAL ERROR: Serve() returned a null response."

    .line 434
    invoke-direct {v0, v6, v7}, Lf20$o;-><init>(Lf20$n$d;Ljava/lang/String;)V

    .line 437
    throw v0

    .line 438
    :cond_10
    const-string v6, "666---> this.method == null"

    .line 440
    new-array v7, v4, [Ljava/lang/Object;

    .line 442
    invoke-static {v3, v6, v7}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    new-instance v6, Lf20$o;

    .line 447
    sget-object v7, Lf20$n$d;->m:Lf20$n$d;

    .line 449
    new-instance v8, Ljava/lang/StringBuilder;

    .line 451
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    const-string v10, "BAD REQUEST: Syntax error. HTTP verb "

    .line 456
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    move-result-object v0

    .line 463
    check-cast v0, Ljava/lang/String;

    .line 465
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v0, " unhandled."

    .line 470
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    move-result-object v0

    .line 477
    invoke-direct {v6, v7, v0}, Lf20$o;-><init>(Lf20$n$d;Ljava/lang/String;)V

    .line 480
    throw v6

    .line 481
    :cond_11
    const-string v0, "555---> read == -1"

    .line 483
    new-array v6, v4, [Ljava/lang/Object;

    .line 485
    invoke-static {v3, v0, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    iget-object v0, p0, Lf20$k;->c:Ljava/io/BufferedInputStream;

    .line 490
    invoke-static {v0}, Lf20;->a(Ljava/lang/Object;)V

    .line 493
    iget-object v0, p0, Lf20$k;->b:Ljava/io/OutputStream;

    .line 495
    invoke-static {v0}, Lf20;->a(Ljava/lang/Object;)V

    .line 498
    new-instance v0, Ljava/net/SocketException;

    .line 500
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 503
    throw v0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    new-instance v6, Ljava/lang/StringBuilder;

    .line 507
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    const-string v7, "444---> "

    .line 512
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 518
    move-result-object v0

    .line 519
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    move-result-object v0

    .line 526
    new-array v6, v4, [Ljava/lang/Object;

    .line 528
    invoke-static {v3, v0, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    iget-object v0, p0, Lf20$k;->c:Ljava/io/BufferedInputStream;

    .line 533
    invoke-static {v0}, Lf20;->a(Ljava/lang/Object;)V

    .line 536
    iget-object v0, p0, Lf20$k;->b:Ljava/io/OutputStream;

    .line 538
    invoke-static {v0}, Lf20;->a(Ljava/lang/Object;)V

    .line 541
    new-instance v0, Ljava/net/SocketException;

    .line 543
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 546
    throw v0

    .line 547
    :catch_1
    move-exception v0

    .line 548
    new-instance v6, Ljava/lang/StringBuilder;

    .line 550
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    const-string v7, "333---> "

    .line 555
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 561
    move-result-object v7

    .line 562
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    move-result-object v6

    .line 569
    new-array v7, v4, [Ljava/lang/Object;

    .line 571
    invoke-static {v3, v6, v7}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    throw v0
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lf20$o; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 575
    :catchall_0
    move-exception v0

    .line 576
    goto/16 :goto_a

    .line 578
    :catch_2
    move-exception v0

    .line 579
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 581
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    const-string v7, "eee---> "

    .line 586
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 592
    move-result-object v7

    .line 593
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    move-result-object v6

    .line 600
    new-array v7, v4, [Ljava/lang/Object;

    .line 602
    invoke-static {v3, v6, v7}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    invoke-virtual {v0}, Lf20$o;->a()Lf20$n$d;

    .line 608
    move-result-object v6

    .line 609
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 612
    move-result-object v7

    .line 613
    invoke-static {v6, v1, v7}, Lf20;->p(Lf20$n$c;Ljava/lang/String;Ljava/lang/String;)Lf20$n;

    .line 616
    move-result-object v1

    .line 617
    iget-object v6, p0, Lf20$k;->b:Ljava/io/OutputStream;

    .line 619
    invoke-virtual {v1, v6}, Lf20$n;->f(Ljava/io/OutputStream;)V

    .line 622
    iget-object v1, p0, Lf20$k;->b:Ljava/io/OutputStream;

    .line 624
    invoke-static {v1}, Lf20;->a(Ljava/lang/Object;)V

    .line 627
    iget-boolean v1, p0, Lf20$k;->o:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 629
    if-eqz v1, :cond_12

    .line 631
    :goto_8
    invoke-static {v5}, Lf20;->a(Ljava/lang/Object;)V

    .line 634
    iget-object v0, p0, Lf20$k;->a:Lf20$s;

    .line 636
    invoke-interface {v0}, Lf20$s;->clear()V

    .line 639
    goto/16 :goto_9

    .line 641
    :cond_12
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 643
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 646
    const-string v6, "fff---> NanoHttpd\u901a\u8fc7\u8be5\u5f02\u5e38\u5173\u95ed\u8fde\u63a5"

    .line 648
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 654
    move-result-object v0

    .line 655
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    move-result-object v0

    .line 662
    new-array v1, v4, [Ljava/lang/Object;

    .line 664
    invoke-static {v3, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    new-instance v0, Ljava/net/SocketException;

    .line 669
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 672
    throw v0

    .line 673
    :catch_3
    move-exception v0

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    .line 676
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    const-string v6, "ddd---> "

    .line 681
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 687
    move-result-object v6

    .line 688
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    move-result-object v2

    .line 695
    new-array v4, v4, [Ljava/lang/Object;

    .line 697
    invoke-static {v3, v2, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    sget-object v2, Lf20$n$d;->v:Lf20$n$d;

    .line 702
    new-instance v3, Ljava/lang/StringBuilder;

    .line 704
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    const-string v4, "SERVER INTERNAL ERROR: IOException: "

    .line 709
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 715
    move-result-object v0

    .line 716
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 722
    move-result-object v0

    .line 723
    invoke-static {v2, v1, v0}, Lf20;->p(Lf20$n$c;Ljava/lang/String;Ljava/lang/String;)Lf20$n;

    .line 726
    move-result-object v0

    .line 727
    iget-object v1, p0, Lf20$k;->b:Ljava/io/OutputStream;

    .line 729
    invoke-virtual {v0, v1}, Lf20$n;->f(Ljava/io/OutputStream;)V

    .line 732
    iget-object v0, p0, Lf20$k;->b:Ljava/io/OutputStream;

    .line 734
    invoke-static {v0}, Lf20;->a(Ljava/lang/Object;)V

    .line 737
    goto :goto_8

    .line 738
    :catch_4
    move-exception v0

    .line 739
    new-instance v2, Ljava/lang/StringBuilder;

    .line 741
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    const-string v6, "ccc---> "

    .line 746
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 752
    move-result-object v6

    .line 753
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 759
    move-result-object v2

    .line 760
    new-array v4, v4, [Ljava/lang/Object;

    .line 762
    invoke-static {v3, v2, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    sget-object v2, Lf20$n$d;->v:Lf20$n$d;

    .line 767
    new-instance v3, Ljava/lang/StringBuilder;

    .line 769
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 772
    const-string v4, "SSL PROTOCOL FAILURE: "

    .line 774
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 780
    move-result-object v0

    .line 781
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 787
    move-result-object v0

    .line 788
    invoke-static {v2, v1, v0}, Lf20;->p(Lf20$n$c;Ljava/lang/String;Ljava/lang/String;)Lf20$n;

    .line 791
    move-result-object v0

    .line 792
    iget-object v1, p0, Lf20$k;->b:Ljava/io/OutputStream;

    .line 794
    invoke-virtual {v0, v1}, Lf20$n;->f(Ljava/io/OutputStream;)V

    .line 797
    iget-object v0, p0, Lf20$k;->b:Ljava/io/OutputStream;

    .line 799
    invoke-static {v0}, Lf20;->a(Ljava/lang/Object;)V

    .line 802
    goto/16 :goto_8

    .line 804
    :goto_9
    return-void

    .line 805
    :catch_5
    move-exception v0

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    .line 808
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    const-string v2, "bbb---> "

    .line 813
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 819
    move-result-object v2

    .line 820
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 826
    move-result-object v1

    .line 827
    new-array v2, v4, [Ljava/lang/Object;

    .line 829
    invoke-static {v3, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 832
    throw v0

    .line 833
    :catch_6
    move-exception v0

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    .line 836
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    const-string v2, "aaa---> "

    .line 841
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 847
    move-result-object v2

    .line 848
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 854
    move-result-object v1

    .line 855
    new-array v2, v4, [Ljava/lang/Object;

    .line 857
    invoke-static {v3, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 860
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 861
    :goto_a
    invoke-static {v5}, Lf20;->a(Ljava/lang/Object;)V

    .line 864
    iget-object v1, p0, Lf20$k;->a:Lf20$s;

    .line 866
    invoke-interface {v1}, Lf20$s;->clear()V

    .line 869
    throw v0
.end method

.method public final h([BI)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 5
    if-ge v2, p2, :cond_2

    .line 7
    aget-byte v3, p1, v1

    .line 9
    const/16 v4, 0xd

    .line 11
    const/16 v5, 0xa

    .line 13
    if-ne v3, v4, :cond_0

    .line 15
    aget-byte v6, p1, v2

    .line 17
    if-ne v6, v5, :cond_0

    .line 19
    add-int/lit8 v6, v1, 0x3

    .line 21
    if-ge v6, p2, :cond_0

    .line 23
    add-int/lit8 v7, v1, 0x2

    .line 25
    aget-byte v7, p1, v7

    .line 27
    if-ne v7, v4, :cond_0

    .line 29
    aget-byte v4, p1, v6

    .line 31
    if-ne v4, v5, :cond_0

    .line 33
    add-int/lit8 v1, v1, 0x4

    .line 35
    return v1

    .line 36
    :cond_0
    if-ne v3, v5, :cond_1

    .line 38
    aget-byte v3, p1, v2

    .line 40
    if-ne v3, v5, :cond_1

    .line 42
    add-int/lit8 v1, v1, 0x2

    .line 44
    return v1

    .line 45
    :cond_1
    move v1, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return v0
.end method

.method public final i([B)[I
    .locals 6

    .line 1
    const/16 v0, 0x100

    .line 3
    new-array v1, v0, [I

    .line 5
    if-nez p1, :cond_0

    .line 7
    return-object v1

    .line 8
    :cond_0
    array-length v2, p1

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    if-ge v4, v0, :cond_1

    .line 13
    add-int/lit8 v5, v2, 0x1

    .line 15
    aput v5, v1, v4

    .line 17
    add-int/lit8 v4, v4, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    :goto_1
    if-ge v3, v2, :cond_2

    .line 22
    aget-byte v0, p1, v3

    .line 24
    sub-int v4, v2, v3

    .line 26
    aput v4, v1, v0

    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    return-object v1
.end method

.method public j()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf20$k;->i:Ljava/util/Map;

    .line 3
    const-string v1, "content-length"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lf20$k;->i:Ljava/util/Map;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 19
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 22
    move-result-wide v0

    .line 23
    return-wide v0

    .line 24
    :cond_0
    iget v0, p0, Lf20$k;->d:I

    .line 26
    iget v1, p0, Lf20$k;->e:I

    .line 28
    if-ge v0, v1, :cond_1

    .line 30
    sub-int/2addr v1, v0

    .line 31
    int-to-long v0, v1

    .line 32
    return-wide v0

    .line 33
    :cond_1
    const-wide/16 v0, 0x0

    .line 35
    return-wide v0
.end method

.method public final k(Lf20$d;[B[II)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "getBoundaryData"

    .line 3
    const/16 v1, 0x400

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-array v3, v1, [B

    .line 8
    aget v4, p3, v2

    .line 10
    sub-int/2addr p4, v4

    .line 11
    if-ge p4, v1, :cond_0

    .line 13
    move v1, p4

    .line 14
    :cond_0
    invoke-static {p2, v4, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    new-instance p2, Ljava/io/BufferedReader;

    .line 19
    new-instance p4, Ljava/io/InputStreamReader;

    .line 21
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 23
    invoke-direct {v4, v3, v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 26
    invoke-virtual {p1}, Lf20$d;->e()Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 33
    move-result-object v5

    .line 34
    invoke-direct {p4, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 37
    invoke-direct {p2, p4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 40
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 43
    move-result-object p4

    .line 44
    if-eqz p4, :cond_6

    .line 46
    invoke-virtual {p1}, Lf20$d;->a()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_6

    .line 56
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    const/4 p4, 0x2

    .line 61
    const/4 v4, 0x0

    .line 62
    const/4 v5, 0x2

    .line 63
    :goto_0
    if-eqz p1, :cond_3

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 72
    move-result v6

    .line 73
    if-lez v6, :cond_3

    .line 75
    invoke-static {}, Lf20;->d()Ljava/util/regex/Pattern;

    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_2

    .line 89
    invoke-virtual {p1, p4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    invoke-static {}, Lf20;->e()Ljava/util/regex/Pattern;

    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 100
    move-result-object p1

    .line 101
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_2

    .line 107
    const/4 v6, 0x1

    .line 108
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 111
    move-result-object v6

    .line 112
    const-string v7, "name"

    .line 114
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_1

    .line 120
    invoke-virtual {p1, p4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 123
    move-result-object v4

    .line 124
    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    add-int/lit8 v5, v5, 0x1

    .line 131
    goto :goto_0

    .line 132
    :cond_3
    const/4 p1, 0x0

    .line 133
    :goto_2
    add-int/lit8 p2, v5, -0x1

    .line 135
    if-lez v5, :cond_4

    .line 137
    invoke-virtual {p0, v3, p1}, Lf20$k;->p([BI)I

    .line 140
    move-result p1

    .line 141
    move v5, p2

    .line 142
    goto :goto_2

    .line 143
    :cond_4
    add-int/lit8 v1, v1, -0x4

    .line 145
    if-ge p1, v1, :cond_5

    .line 147
    aget p2, p3, v2

    .line 149
    add-int/2addr p2, p1

    .line 150
    iput p2, p0, Lf20$k;->p:I

    .line 152
    return-object v4

    .line 153
    :cond_5
    const-string p1, "Multipart header size exceeds MAX_HEADER_SIZE. "

    .line 155
    new-array p2, v2, [Ljava/lang/Object;

    .line 157
    invoke-static {v0, p1, p2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    new-instance p1, Lf20$o;

    .line 162
    sget-object p2, Lf20$n$d;->v:Lf20$n$d;

    .line 164
    const-string p3, "Multipart header size exceeds MAX_HEADER_SIZE."

    .line 166
    invoke-direct {p1, p2, p3}, Lf20$o;-><init>(Lf20$n$d;Ljava/lang/String;)V

    .line 169
    throw p1

    .line 170
    :cond_6
    const-string p1, "BAD REQUEST: Content type is multipart/form-data but chunk does not start with boundary. "

    .line 172
    new-array p2, v2, [Ljava/lang/Object;

    .line 174
    invoke-static {v0, p1, p2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    new-instance p1, Lf20$o;

    .line 179
    sget-object p2, Lf20$n$d;->m:Lf20$n$d;

    .line 181
    const-string p3, "BAD REQUEST: Content type is multipart/form-data but chunk does not start with boundary."

    .line 183
    invoke-direct {p1, p2, p3}, Lf20$o;-><init>(Lf20$n$d;Ljava/lang/String;)V

    .line 186
    throw p1
    :try_end_0
    .catch Lf20$o; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :catch_0
    move-exception p1

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    .line 190
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    const-string p3, "222---> "

    .line 195
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 201
    move-result-object p3

    .line 202
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object p2

    .line 209
    new-array p3, v2, [Ljava/lang/Object;

    .line 211
    invoke-static {v0, p2, p3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    new-instance p2, Lf20$o;

    .line 216
    sget-object p3, Lf20$n$d;->v:Lf20$n$d;

    .line 218
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 221
    move-result-object p1

    .line 222
    invoke-direct {p2, p3, p1}, Lf20$o;-><init>(Lf20$n$d;Ljava/lang/String;)V

    .line 225
    throw p2

    .line 226
    :catch_1
    move-exception p1

    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    const-string p3, "111---> "

    .line 234
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 240
    move-result-object p3

    .line 241
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object p2

    .line 248
    new-array p3, v2, [Ljava/lang/Object;

    .line 250
    invoke-static {v0, p2, p3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    throw p1
.end method

.method public final l([B[B[II)[I
    .locals 1

    .line 1
    array-length v0, p2

    .line 2
    if-ge p4, v0, :cond_0

    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lf20$k;->q([B[B[II)Ljava/util/List;

    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    move-result p2

    .line 14
    new-array p2, p2, [I

    .line 16
    const/4 p3, 0x0

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    move-result p4

    .line 21
    if-ge p3, p4, :cond_1

    .line 23
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object p4

    .line 27
    check-cast p4, Ljava/lang/Integer;

    .line 29
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result p4

    .line 33
    aput p4, p2, p3

    .line 35
    add-int/lit8 p3, p3, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-object p2
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf20$k;->l:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public final n()Ljava/io/RandomAccessFile;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lf20$k;->a:Lf20$s;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lf20$s;->a(Ljava/lang/String;)Lf20$r;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 10
    invoke-interface {v0}, Lf20$r;->getName()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const-string v2, "rw"

    .line 16
    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object v1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v2, "getTmpBucket "

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    new-array v2, v2, [Ljava/lang/Object;

    .line 45
    const-string v3, "getTmpBucket"

    .line 47
    invoke-static {v3, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    new-instance v1, Ljava/lang/Error;

    .line 52
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 55
    throw v1
.end method

.method public o(Ljava/util/Map;Ljava/util/Map;)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p2

    .line 5
    const-string v2, " , currentBufferReadLength--> "

    .line 7
    const/4 v3, 0x0

    .line 8
    new-array v4, v3, [Ljava/lang/Object;

    .line 10
    const-string v5, "parseBody"

    .line 12
    const-string v6, "parseBody --> to begin"

    .line 14
    invoke-static {v5, v6, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    const/4 v4, 0x1

    .line 18
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    iget-object v7, v1, Lf20$k;->g:Lf20$m;

    .line 22
    aput-object v7, v6, v3

    .line 24
    const-string v7, "method = {?}"

    .line 26
    invoke-static {v5, v7, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    sget-object v6, Lf20$m;->c:Lf20$m;

    .line 31
    iget-object v7, v1, Lf20$k;->g:Lf20$m;

    .line 33
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v6

    .line 37
    const-string v7, "content-type"

    .line 39
    if-eqz v6, :cond_e

    .line 41
    new-instance v6, Lf20$d;

    .line 43
    iget-object v11, v1, Lf20$k;->i:Ljava/util/Map;

    .line 45
    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v11

    .line 49
    check-cast v11, Ljava/lang/String;

    .line 51
    invoke-direct {v6, v11}, Lf20$d;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v6}, Lf20$d;->f()Z

    .line 57
    move-result v11

    .line 58
    new-array v12, v4, [Ljava/lang/Object;

    .line 60
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    move-result-object v13

    .line 64
    aput-object v13, v12, v3

    .line 66
    const-string v13, "contentType isMultipart =  {?}"

    .line 68
    invoke-static {v5, v13, v12}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    if-eqz v11, :cond_e

    .line 73
    const/16 v7, 0x5000

    .line 75
    new-array v11, v7, [B

    .line 77
    const v12, 0xa000

    .line 80
    new-array v12, v12, [B

    .line 82
    invoke-virtual/range {p0 .. p0}, Lf20$k;->j()J

    .line 85
    move-result-wide v13

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    iput v3, v1, Lf20$k;->p:I

    .line 91
    :try_start_0
    invoke-virtual {v6}, Lf20$d;->a()Ljava/lang/String;

    .line 94
    move-result-object v15

    .line 95
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    .line 98
    move-result-object v15

    .line 99
    invoke-virtual {v1, v15}, Lf20$k;->i([B)[I

    .line 102
    move-result-object v10

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 106
    const-wide/16 v17, 0x0

    .line 108
    const/16 v19, 0x0

    .line 110
    const/16 v20, 0x0

    .line 112
    :goto_0
    :try_start_1
    const-string v4, "read begin---------------------> ================================"

    .line 114
    new-array v8, v3, [Ljava/lang/Object;

    .line 116
    invoke-static {v5, v4, v8}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 119
    move-wide/from16 v8, v17

    .line 121
    move/from16 v4, v19

    .line 123
    :goto_1
    if-gt v4, v7, :cond_0

    .line 125
    :try_start_2
    iget v7, v1, Lf20$k;->e:I

    .line 127
    if-lez v7, :cond_0

    .line 129
    const-wide/16 v17, 0x0

    .line 131
    cmp-long v7, v13, v17

    .line 133
    if-lez v7, :cond_0

    .line 135
    iget-object v7, v1, Lf20$k;->c:Ljava/io/BufferedInputStream;

    .line 137
    move/from16 v18, v4

    .line 139
    const-wide/16 v3, 0x5000

    .line 141
    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 144
    move-result-wide v3

    .line 145
    long-to-int v4, v3

    .line 146
    const/4 v3, 0x0

    .line 147
    invoke-virtual {v7, v11, v3, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 150
    move-result v4

    .line 151
    iput v4, v1, Lf20$k;->e:I

    .line 153
    move-object v3, v6

    .line 154
    int-to-long v6, v4

    .line 155
    add-long/2addr v8, v6

    .line 156
    int-to-long v6, v4

    .line 157
    sub-long/2addr v13, v6

    .line 158
    move/from16 v6, v18

    .line 160
    const/4 v7, 0x0

    .line 161
    invoke-static {v11, v7, v12, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    add-int/2addr v4, v6

    .line 165
    move-object v6, v3

    .line 166
    const/4 v3, 0x0

    .line 167
    const/16 v7, 0x5000

    .line 169
    goto :goto_1

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    move-object/from16 v10, v20

    .line 173
    goto/16 :goto_a

    .line 175
    :catch_0
    move-exception v0

    .line 176
    move-object/from16 v10, v20

    .line 178
    goto/16 :goto_8

    .line 180
    :cond_0
    move-object v3, v6

    .line 181
    move v6, v4

    .line 182
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    const-string v7, "read begin end----------------> this.rlen->"

    .line 189
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget v7, v1, Lf20$k;->e:I

    .line 194
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object v4

    .line 207
    move-object/from16 v18, v11

    .line 209
    const/4 v7, 0x0

    .line 210
    new-array v11, v7, [Ljava/lang/Object;

    .line 212
    invoke-static {v5, v4, v11}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v1, v12, v15, v10, v6}, Lf20$k;->l([B[B[II)[I

    .line 218
    move-result-object v4

    .line 219
    array-length v7, v4

    .line 220
    if-eqz v7, :cond_b

    .line 222
    const-string v7, "\u6709boundary"

    .line 224
    move-object/from16 v21, v10

    .line 226
    const/4 v11, 0x0

    .line 227
    new-array v10, v11, [Ljava/lang/Object;

    .line 229
    invoke-static {v5, v7, v10}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    array-length v7, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 233
    const-string v10, "no set file path"

    .line 235
    const-string v11, "rw"

    .line 237
    move-object/from16 v22, v15

    .line 239
    const-string v15, "222 no set file path "

    .line 241
    move-wide/from16 v23, v8

    .line 243
    const/4 v8, 0x1

    .line 244
    if-le v7, v8, :cond_4

    .line 246
    :try_start_4
    const-string v7, "\u591a\u4e2aboundary"

    .line 248
    const/4 v8, 0x0

    .line 249
    new-array v9, v8, [Ljava/lang/Object;

    .line 251
    invoke-static {v5, v7, v9}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 254
    move-object/from16 v7, v20

    .line 256
    if-eqz v7, :cond_1

    .line 258
    :try_start_5
    const-string v9, "randomAccessFile\u4e0d\u4e3anull\uff0c\u8bf4\u660e\u5df2\u7ecf\u6709\u6587\u4ef6\u5199\u5165\u6d41\u4e86\uff0c\u5f97\u5c06\u4e0b\u4e00\u4e2aboundary\u7684\u8d77\u59cb\u4f4d\u7f6e\u4e4b\u524d\u7684\u6570\u636e\u6d41\u5199\u5230\u6587\u4ef6\u91cc\u9762 2222222222222"

    .line 260
    new-array v10, v8, [Ljava/lang/Object;

    .line 262
    invoke-static {v5, v9, v10}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    aget v4, v4, v8

    .line 267
    iget v8, v1, Lf20$k;->p:I

    .line 269
    add-int/lit8 v9, v4, -0x4

    .line 271
    sub-int/2addr v9, v8

    .line 272
    invoke-virtual {v7, v12, v8, v9}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 275
    sub-int/2addr v6, v4

    .line 276
    const/4 v8, 0x0

    .line 277
    invoke-static {v12, v4, v12, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    iput v8, v1, Lf20$k;->p:I

    .line 282
    move-object/from16 v20, v2

    .line 284
    move/from16 v19, v6

    .line 286
    :goto_2
    const/4 v7, 0x0

    .line 287
    goto/16 :goto_5

    .line 289
    :cond_1
    const-string v8, "randomAccessFile\u4e3anull\uff0c\u8bf4\u660e\u8fd8\u6ca1\u6709\u6587\u4ef6\u5199\u5165\u6d41 22222222"

    .line 291
    move-object/from16 v20, v2

    .line 293
    const/4 v9, 0x0

    .line 294
    new-array v2, v9, [Ljava/lang/Object;

    .line 296
    invoke-static {v5, v8, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-virtual {v1, v3, v12, v4, v6}, Lf20$k;->k(Lf20$d;[B[II)Ljava/lang/String;

    .line 302
    move-result-object v2

    .line 303
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    move-result-object v2

    .line 307
    check-cast v2, Ljava/lang/String;

    .line 309
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 312
    move-result v8

    .line 313
    if-nez v8, :cond_3

    .line 315
    new-instance v8, Ljava/io/File;

    .line 317
    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 323
    move-result-object v9

    .line 324
    if-eqz v9, :cond_2

    .line 326
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 329
    move-result-object v8

    .line 330
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 333
    :cond_2
    new-instance v8, Ljava/io/RandomAccessFile;

    .line 335
    invoke-direct {v8, v2, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 338
    :try_start_6
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    .line 341
    move-result-wide v9

    .line 342
    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 345
    const/4 v2, 0x1

    .line 346
    aget v4, v4, v2

    .line 348
    iget v2, v1, Lf20$k;->p:I

    .line 350
    add-int/lit8 v7, v4, -0x4

    .line 352
    sub-int/2addr v7, v2

    .line 353
    invoke-virtual {v8, v12, v2, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 356
    sub-int v2, v6, v4

    .line 358
    const/4 v6, 0x0

    .line 359
    invoke-static {v12, v4, v12, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    iput v6, v1, Lf20$k;->p:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 364
    move/from16 v19, v2

    .line 366
    goto :goto_2

    .line 367
    :catchall_1
    move-exception v0

    .line 368
    move-object v10, v8

    .line 369
    goto/16 :goto_a

    .line 371
    :catch_1
    move-exception v0

    .line 372
    move-object v10, v8

    .line 373
    goto/16 :goto_8

    .line 375
    :cond_3
    const/4 v2, 0x0

    .line 376
    :try_start_7
    new-array v0, v2, [Ljava/lang/Object;

    .line 378
    invoke-static {v5, v15, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    new-instance v0, Ljava/io/IOException;

    .line 383
    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 386
    throw v0

    .line 387
    :cond_4
    move-object/from16 v7, v20

    .line 389
    move-object/from16 v20, v2

    .line 391
    const-string v2, "\u4e00\u4e2a boundary"

    .line 393
    const/4 v8, 0x0

    .line 394
    new-array v9, v8, [Ljava/lang/Object;

    .line 396
    invoke-static {v5, v2, v9}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    if-eqz v7, :cond_5

    .line 401
    const-string v2, "randomAccessFile\u4e0d\u4e3anull\uff0c\u8bf4\u660e\u5df2\u7ecf\u6709\u6587\u4ef6\u5199\u5165\u6d41\u4e86\uff0c\u5f97\u5c06\u4e0b\u4e00\u4e2aboundary\u7684\u8d77\u59cb\u4f4d\u7f6e\u4e4b\u524d\u7684\u6570\u636e\u6d41\u5199\u5230\u6587\u4ef6\u91cc\u9762 1111111111"

    .line 403
    new-array v9, v8, [Ljava/lang/Object;

    .line 405
    invoke-static {v5, v2, v9}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    aget v2, v4, v8

    .line 410
    new-instance v4, Ljava/lang/StringBuilder;

    .line 412
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    const-string v8, "go----mFileOffset---> "

    .line 417
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iget v8, v1, Lf20$k;->p:I

    .line 422
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    move-result-object v4

    .line 429
    const/4 v8, 0x0

    .line 430
    new-array v9, v8, [Ljava/lang/Object;

    .line 432
    invoke-static {v5, v4, v9}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    new-instance v4, Ljava/lang/StringBuilder;

    .line 437
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    const-string v8, "go----boundaryIndex---> "

    .line 442
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    move-result-object v4

    .line 452
    const/4 v8, 0x0

    .line 453
    new-array v9, v8, [Ljava/lang/Object;

    .line 455
    invoke-static {v5, v4, v9}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    .line 460
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    const-string v8, "go----currentBufferReadLength---> "

    .line 465
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    move-result-object v4

    .line 475
    const/4 v8, 0x0

    .line 476
    new-array v9, v8, [Ljava/lang/Object;

    .line 478
    invoke-static {v5, v4, v9}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    iget v4, v1, Lf20$k;->p:I

    .line 483
    add-int/lit8 v8, v2, -0x4

    .line 485
    sub-int/2addr v8, v4

    .line 486
    invoke-virtual {v7, v12, v4, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 489
    sub-int v4, v6, v2

    .line 491
    const/4 v6, 0x0

    .line 492
    invoke-static {v12, v2, v12, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    iput v6, v1, Lf20$k;->p:I

    .line 497
    move/from16 v19, v4

    .line 499
    goto/16 :goto_2

    .line 501
    :cond_5
    const-string v2, "randomAccessFile\u4e3anull\uff0c\u8bf4\u660e\u8fd8\u6ca1\u6709\u6587\u4ef6\u5199\u5165\u6d41 111111111"

    .line 503
    const/4 v8, 0x0

    .line 504
    new-array v9, v8, [Ljava/lang/Object;

    .line 506
    invoke-static {v5, v2, v9}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    const-string v2, "haha"

    .line 511
    new-instance v8, Ljava/lang/StringBuilder;

    .line 513
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    const-string v9, "size--> "

    .line 518
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 524
    move-object/from16 v9, v20

    .line 526
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    move-result-object v8

    .line 536
    move/from16 v25, v6

    .line 538
    move-object/from16 v20, v9

    .line 540
    const/4 v9, 0x0

    .line 541
    new-array v6, v9, [Ljava/lang/Object;

    .line 543
    invoke-static {v2, v8, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    const-wide/16 v8, 0x0

    .line 548
    cmp-long v2, v13, v8

    .line 550
    if-nez v2, :cond_6

    .line 552
    const/4 v2, 0x0

    .line 553
    goto :goto_3

    .line 554
    :cond_6
    move/from16 v2, v25

    .line 556
    :goto_3
    if-eqz v2, :cond_a

    .line 558
    invoke-virtual {v1, v3, v12, v4, v2}, Lf20$k;->k(Lf20$d;[B[II)Ljava/lang/String;

    .line 561
    move-result-object v4

    .line 562
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    move-result-object v4

    .line 566
    check-cast v4, Ljava/lang/String;

    .line 568
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 571
    move-result v6

    .line 572
    if-nez v6, :cond_9

    .line 574
    new-instance v6, Ljava/io/File;

    .line 576
    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 582
    move-result-object v8

    .line 583
    if-eqz v8, :cond_7

    .line 585
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 588
    move-result-object v6

    .line 589
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 592
    :cond_7
    new-instance v6, Ljava/io/RandomAccessFile;

    .line 594
    invoke-direct {v6, v4, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 597
    :try_start_8
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    .line 600
    move-result-wide v7

    .line 601
    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 604
    add-int/lit8 v4, v2, -0x1e

    .line 606
    iget v7, v1, Lf20$k;->p:I

    .line 608
    sub-int v8, v4, v7

    .line 610
    if-lez v8, :cond_8

    .line 612
    sub-int v2, v4, v7

    .line 614
    invoke-virtual {v6, v12, v7, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 617
    const/16 v2, 0x1e

    .line 619
    const/4 v7, 0x0

    .line 620
    invoke-static {v12, v4, v12, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    iput v7, v1, Lf20$k;->p:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 625
    const/16 v11, 0x1e

    .line 627
    goto :goto_4

    .line 628
    :cond_8
    move v11, v2

    .line 629
    :goto_4
    move-object v7, v6

    .line 630
    move/from16 v19, v11

    .line 632
    goto :goto_5

    .line 633
    :catchall_2
    move-exception v0

    .line 634
    move-object v10, v6

    .line 635
    goto/16 :goto_a

    .line 637
    :catch_2
    move-exception v0

    .line 638
    move-object v10, v6

    .line 639
    goto/16 :goto_8

    .line 641
    :cond_9
    const/4 v2, 0x0

    .line 642
    :try_start_9
    new-array v0, v2, [Ljava/lang/Object;

    .line 644
    invoke-static {v5, v15, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    new-instance v0, Ljava/io/IOException;

    .line 649
    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 652
    throw v0

    .line 653
    :cond_a
    move/from16 v19, v2

    .line 655
    goto :goto_5

    .line 656
    :cond_b
    move/from16 v25, v6

    .line 658
    move-wide/from16 v23, v8

    .line 660
    move-object/from16 v21, v10

    .line 662
    move-object/from16 v22, v15

    .line 664
    move-object/from16 v7, v20

    .line 666
    move-object/from16 v20, v2

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    .line 670
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    const-string v4, "\u6ca1\u6709boundary-->randomAccessFile---> "

    .line 675
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 684
    move-result-object v2

    .line 685
    const/4 v4, 0x0

    .line 686
    new-array v6, v4, [Ljava/lang/Object;

    .line 688
    invoke-static {v5, v2, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    if-eqz v7, :cond_c

    .line 693
    add-int/lit8 v4, v25, -0x1e

    .line 695
    iget v2, v1, Lf20$k;->p:I

    .line 697
    sub-int v6, v4, v2

    .line 699
    invoke-virtual {v7, v12, v2, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 702
    const/16 v2, 0x1e

    .line 704
    const/4 v6, 0x0

    .line 705
    invoke-static {v12, v4, v12, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    iput v6, v1, Lf20$k;->p:I

    .line 710
    const/16 v19, 0x1e

    .line 712
    goto :goto_5

    .line 713
    :cond_c
    move/from16 v19, v25

    .line 715
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 717
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 720
    const-string v4, "end---------------------> ================================readNum--> "

    .line 722
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    move-wide/from16 v8, v23

    .line 727
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    move-result-object v2

    .line 734
    const/4 v4, 0x0

    .line 735
    new-array v6, v4, [Ljava/lang/Object;

    .line 737
    invoke-static {v5, v2, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 743
    if-nez v19, :cond_d

    .line 745
    const-wide/16 v10, 0x0

    .line 747
    cmp-long v2, v13, v10

    .line 749
    if-nez v2, :cond_d

    .line 751
    invoke-static {v7}, Lf20;->a(Ljava/lang/Object;)V

    .line 754
    goto :goto_9

    .line 755
    :cond_d
    move-object v6, v3

    .line 756
    move-object/from16 v11, v18

    .line 758
    move-object/from16 v2, v20

    .line 760
    move-object/from16 v10, v21

    .line 762
    move-object/from16 v15, v22

    .line 764
    const/4 v3, 0x0

    .line 765
    const/4 v4, 0x1

    .line 766
    move-object/from16 v20, v7

    .line 768
    move-wide/from16 v17, v8

    .line 770
    const/16 v7, 0x5000

    .line 772
    goto/16 :goto_0

    .line 774
    :catchall_3
    move-exception v0

    .line 775
    goto :goto_6

    .line 776
    :catch_3
    move-exception v0

    .line 777
    goto :goto_7

    .line 778
    :catchall_4
    move-exception v0

    .line 779
    move-object/from16 v7, v20

    .line 781
    :goto_6
    move-object v10, v7

    .line 782
    goto :goto_a

    .line 783
    :catch_4
    move-exception v0

    .line 784
    move-object/from16 v7, v20

    .line 786
    :goto_7
    move-object v10, v7

    .line 787
    goto :goto_8

    .line 788
    :catchall_5
    move-exception v0

    .line 789
    const/4 v10, 0x0

    .line 790
    goto :goto_a

    .line 791
    :catch_5
    move-exception v0

    .line 792
    const/4 v10, 0x0

    .line 793
    :goto_8
    :try_start_a
    const-string v2, "parse body error message = {?}"

    .line 795
    const/4 v3, 0x1

    .line 796
    new-array v3, v3, [Ljava/lang/Object;

    .line 798
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 801
    move-result-object v0

    .line 802
    const/4 v4, 0x0

    .line 803
    aput-object v0, v3, v4

    .line 805
    invoke-static {v5, v2, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 808
    invoke-static {v10}, Lf20;->a(Ljava/lang/Object;)V

    .line 811
    :goto_9
    return-void

    .line 812
    :catchall_6
    move-exception v0

    .line 813
    :goto_a
    invoke-static {v10}, Lf20;->a(Ljava/lang/Object;)V

    .line 816
    throw v0

    .line 817
    :cond_e
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lf20$k;->j()J

    .line 820
    move-result-wide v2

    .line 821
    const-wide/16 v8, 0x400

    .line 823
    cmp-long v0, v2, v8

    .line 825
    if-gez v0, :cond_f

    .line 827
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 829
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 832
    new-instance v4, Ljava/io/DataOutputStream;

    .line 834
    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 837
    move-object/from16 v16, v0

    .line 839
    const/4 v10, 0x0

    .line 840
    goto :goto_b

    .line 841
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lf20$k;->n()Ljava/io/RandomAccessFile;

    .line 844
    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 845
    move-object v4, v0

    .line 846
    move-object v10, v4

    .line 847
    const/16 v16, 0x0

    .line 849
    :goto_b
    const/16 v0, 0x200

    .line 851
    :try_start_c
    new-array v0, v0, [B

    .line 853
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 856
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 859
    :goto_c
    iget v6, v1, Lf20$k;->e:I

    .line 861
    if-ltz v6, :cond_11

    .line 863
    const-wide/16 v8, 0x0

    .line 865
    cmp-long v6, v2, v8

    .line 867
    if-lez v6, :cond_11

    .line 869
    iget-object v6, v1, Lf20$k;->c:Ljava/io/BufferedInputStream;

    .line 871
    const-wide/16 v8, 0x200

    .line 873
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 876
    move-result-wide v8

    .line 877
    long-to-int v9, v8

    .line 878
    const/4 v8, 0x0

    .line 879
    invoke-virtual {v6, v0, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 882
    move-result v6

    .line 883
    iput v6, v1, Lf20$k;->e:I

    .line 885
    int-to-long v11, v6

    .line 886
    sub-long/2addr v2, v11

    .line 887
    if-lez v6, :cond_10

    .line 889
    invoke-interface {v4, v0, v8, v6}, Ljava/io/DataOutput;->write([BII)V

    .line 892
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 895
    goto :goto_c

    .line 896
    :cond_11
    const-wide/16 v8, 0x0

    .line 898
    cmp-long v0, v2, v8

    .line 900
    if-eqz v16, :cond_12

    .line 902
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 905
    move-result-object v0

    .line 906
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 909
    move-result v2

    .line 910
    const/4 v3, 0x0

    .line 911
    invoke-static {v0, v3, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 914
    move-result-object v0

    .line 915
    goto :goto_d

    .line 916
    :cond_12
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 919
    move-result-object v11

    .line 920
    sget-object v12, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 922
    const-wide/16 v13, 0x0

    .line 924
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    .line 927
    move-result-wide v15

    .line 928
    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 931
    move-result-object v0

    .line 932
    const-wide/16 v2, 0x0

    .line 934
    invoke-virtual {v10, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 937
    :goto_d
    sget-object v2, Lf20$m;->c:Lf20$m;

    .line 939
    iget-object v3, v1, Lf20$k;->g:Lf20$m;

    .line 941
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 944
    move-result v2

    .line 945
    if-eqz v2, :cond_14

    .line 947
    new-instance v2, Lf20$d;

    .line 949
    iget-object v3, v1, Lf20$k;->i:Ljava/util/Map;

    .line 951
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    move-result-object v3

    .line 955
    check-cast v3, Ljava/lang/String;

    .line 957
    invoke-direct {v2, v3}, Lf20$d;-><init>(Ljava/lang/String;)V

    .line 960
    invoke-virtual {v2}, Lf20$d;->f()Z

    .line 963
    move-result v3

    .line 964
    if-nez v3, :cond_14

    .line 966
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 969
    move-result v3

    .line 970
    new-array v6, v3, [B

    .line 972
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 975
    new-instance v0, Ljava/lang/String;

    .line 977
    invoke-virtual {v2}, Lf20$d;->e()Ljava/lang/String;

    .line 980
    move-result-object v7

    .line 981
    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 984
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 987
    move-result-object v0

    .line 988
    const-string v7, "application/x-www-form-urlencoded"

    .line 990
    invoke-virtual {v2}, Lf20$d;->b()Ljava/lang/String;

    .line 993
    move-result-object v2

    .line 994
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 997
    move-result v2

    .line 998
    if-eqz v2, :cond_13

    .line 1000
    iget-object v2, v1, Lf20$k;->h:Ljava/util/Map;

    .line 1002
    invoke-virtual {v1, v0, v2}, Lf20$k;->f(Ljava/lang/String;Ljava/util/Map;)V

    .line 1005
    goto :goto_e

    .line 1006
    :cond_13
    const-string v0, "add postByte to files with length = {?}"

    .line 1008
    const/4 v2, 0x1

    .line 1009
    new-array v2, v2, [Ljava/lang/Object;

    .line 1011
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1014
    move-result-object v7

    .line 1015
    const/4 v8, 0x0

    .line 1016
    aput-object v7, v2, v8

    .line 1018
    invoke-static {v5, v0, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1021
    if-eqz v3, :cond_14

    .line 1023
    const-string v0, "rawContent"

    .line 1025
    move-object/from16 v2, p1

    .line 1027
    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 1030
    :cond_14
    :goto_e
    invoke-static {v10}, Lf20;->a(Ljava/lang/Object;)V

    .line 1033
    invoke-static {v4}, Lf20;->a(Ljava/lang/Object;)V

    .line 1036
    return-void

    .line 1037
    :catchall_7
    move-exception v0

    .line 1038
    goto :goto_f

    .line 1039
    :catchall_8
    move-exception v0

    .line 1040
    const/4 v4, 0x0

    .line 1041
    const/4 v10, 0x0

    .line 1042
    :goto_f
    invoke-static {v10}, Lf20;->a(Ljava/lang/Object;)V

    .line 1045
    invoke-static {v4}, Lf20;->a(Ljava/lang/Object;)V

    .line 1048
    throw v0
.end method

.method public final p([BI)I
    .locals 2

    .line 1
    :goto_0
    aget-byte v0, p1, p2

    .line 3
    const/16 v1, 0xa

    .line 5
    if-eq v0, v1, :cond_0

    .line 7
    add-int/lit8 p2, p2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 12
    return p2
.end method

.method public final q([B[B[II)Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 9
    return-object v1

    .line 10
    :cond_0
    if-nez p2, :cond_1

    .line 12
    return-object v1

    .line 13
    :cond_1
    array-length v1, p2

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    :cond_2
    add-int v5, v3, v1

    .line 19
    add-int/2addr v4, p4

    .line 20
    if-gt v5, v4, :cond_7

    .line 22
    move v4, v3

    .line 23
    const/4 v6, 0x0

    .line 24
    :goto_0
    if-ge v6, v1, :cond_4

    .line 26
    :try_start_0
    aget-byte v7, p2, v6

    .line 28
    aget-byte v8, p1, v4

    .line 30
    if-eq v7, v8, :cond_3

    .line 32
    goto :goto_1

    .line 33
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 35
    add-int/lit8 v4, v4, 0x1

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    goto :goto_4

    .line 40
    :cond_4
    :goto_1
    const/4 v7, 0x1

    .line 41
    if-ne v6, v1, :cond_5

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v6

    .line 47
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    const/4 v6, 0x1

    .line 51
    goto :goto_2

    .line 52
    :cond_5
    const/4 v6, 0x0

    .line 53
    :goto_2
    if-ne v6, v7, :cond_6

    .line 55
    move v3, v5

    .line 56
    goto :goto_3

    .line 57
    :cond_6
    aget-byte v5, p1, v5

    .line 59
    and-int/lit16 v5, v5, 0xff

    .line 61
    aget v5, p3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    add-int/2addr v3, v5

    .line 64
    :goto_3
    add-int v5, v3, v1

    .line 66
    if-lt v5, p4, :cond_2

    .line 68
    goto :goto_5

    .line 69
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    :cond_7
    :goto_5
    return-object v0
.end method
