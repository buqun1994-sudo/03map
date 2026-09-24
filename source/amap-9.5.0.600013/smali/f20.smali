.class public abstract Lf20;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf20$q;,
        Lf20$t;,
        Lf20$s;,
        Lf20$r;,
        Lf20$p;,
        Lf20$o;,
        Lf20$n;,
        Lf20$m;,
        Lf20$l;,
        Lf20$k;,
        Lf20$d;,
        Lf20$g;,
        Lf20$j;,
        Lf20$i;,
        Lf20$h;,
        Lf20$f;,
        Lf20$e;,
        Lf20$c;,
        Lf20$b;
    }
.end annotation


# static fields
.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Ljava/util/regex/Pattern;

.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/logging/Logger;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public volatile c:Ljava/net/ServerSocket;

.field public d:Lf20$q;

.field public e:Ljava/lang/Thread;

.field public f:Lf20$b;

.field public g:Lf20$t;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lf20;->h:Ljava/util/regex/Pattern;

    .line 10
    const-string v0, "([ |\t]*content-type[ |\t]*:)(.*)"

    .line 12
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lf20;->i:Ljava/util/regex/Pattern;

    .line 18
    const-string v0, "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

    .line 20
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lf20;->j:Ljava/util/regex/Pattern;

    .line 26
    const-class v0, Lf20;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lf20;->k:Ljava/util/logging/Logger;

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lf20;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lf20$g;

    invoke-direct {v0}, Lf20$g;-><init>()V

    iput-object v0, p0, Lf20;->d:Lf20$q;

    .line 4
    iput-object p1, p0, Lf20;->a:Ljava/lang/String;

    .line 5
    iput p2, p0, Lf20;->b:I

    .line 6
    new-instance p1, Lf20$j;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lf20$j;-><init>(Lf20;Lf20$a;)V

    invoke-virtual {p0, p1}, Lf20;->u(Lf20$t;)V

    .line 7
    new-instance p1, Lf20$f;

    invoke-direct {p1}, Lf20$f;-><init>()V

    invoke-virtual {p0, p1}, Lf20;->t(Lf20$b;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lf20;->r(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lf20;)Lf20$t;
    .locals 0

    .line 1
    iget-object p0, p0, Lf20;->g:Lf20$t;

    .line 3
    return-object p0
.end method

.method public static synthetic c()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lf20;->k:Ljava/util/logging/Logger;

    .line 3
    return-object v0
.end method

.method public static synthetic d()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    sget-object v0, Lf20;->h:Ljava/util/regex/Pattern;

    .line 3
    return-object v0
.end method

.method public static synthetic e()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    sget-object v0, Lf20;->j:Ljava/util/regex/Pattern;

    .line 3
    return-object v0
.end method

.method public static synthetic f(Lf20;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lf20;->a:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic g(Lf20;)I
    .locals 0

    .line 1
    iget p0, p0, Lf20;->b:I

    .line 3
    return p0
.end method

.method public static synthetic h(Lf20;)Ljava/net/ServerSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lf20;->c:Ljava/net/ServerSocket;

    .line 3
    return-object p0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "UTF8"

    .line 3
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    const-string v1, "decodePercent"

    .line 14
    const-string v2, "UnsupportedEncodingException UnsupportedEncodingException"

    .line 16
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    sget-object v0, Lf20;->k:Ljava/util/logging/Logger;

    .line 21
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 23
    const-string v2, "Encoding not supported, ignored"

    .line 25
    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    const/4 p0, 0x0

    .line 29
    :goto_0
    return-object p0
.end method

.method public static o(Lf20$n$c;Ljava/lang/String;Ljava/io/InputStream;J)Lf20$n;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "newFixedLengthResponse"

    .line 6
    const-string v2, "newFixedLengthResponse 111"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lf20$n;

    .line 13
    move-object v3, v0

    .line 14
    move-object v4, p0

    .line 15
    move-object v5, p1

    .line 16
    move-object v6, p2

    .line 17
    move-wide v7, p3

    .line 18
    invoke-direct/range {v3 .. v8}, Lf20$n;-><init>(Lf20$n$c;Ljava/lang/String;Ljava/io/InputStream;J)V

    .line 21
    return-object v0
.end method

.method public static p(Lf20$n$c;Ljava/lang/String;Ljava/lang/String;)Lf20$n;
    .locals 4

    .line 1
    new-instance v0, Lf20$d;

    .line 3
    invoke-direct {v0, p1}, Lf20$d;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v1, "newFixedLengthResponse"

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 11
    const-string p2, "newFixedLengthResponse 222"

    .line 13
    new-array v0, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {v1, p2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance p2, Ljava/io/ByteArrayInputStream;

    .line 20
    new-array v0, v2, [B

    .line 22
    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 25
    const-wide/16 v0, 0x0

    .line 27
    invoke-static {p0, p1, p2, v0, v1}, Lf20;->o(Lf20$n$c;Ljava/lang/String;Ljava/io/InputStream;J)Lf20$n;

    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lf20$d;->e()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_1

    .line 50
    invoke-virtual {v0}, Lf20$d;->g()Lf20$d;

    .line 53
    move-result-object v0

    .line 54
    :cond_1
    invoke-virtual {v0}, Lf20$d;->e()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 61
    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    const-string v3, "newFixedLengthResponse 333 "

    .line 71
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p2

    .line 85
    new-array v3, v2, [Ljava/lang/Object;

    .line 87
    invoke-static {v1, p2, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    sget-object p2, Lf20;->k:Ljava/util/logging/Logger;

    .line 92
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 94
    const-string v3, "encoding problem, responding nothing"

    .line 96
    invoke-virtual {p2, v1, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    new-array p1, v2, [B

    .line 101
    :goto_0
    invoke-virtual {v0}, Lf20$d;->c()Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 105
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 107
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 110
    array-length p1, p1

    .line 111
    int-to-long v1, p1

    .line 112
    invoke-static {p0, p2, v0, v1, v2}, Lf20;->o(Lf20$n$c;Ljava/lang/String;Ljava/io/InputStream;J)Lf20$n;

    .line 115
    move-result-object p0

    .line 116
    return-object p0
.end method

.method public static q(Ljava/lang/String;)Lf20$n;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "newFixedLengthResponse 444 "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const-string v2, "newFixedLengthResponse"

    .line 23
    invoke-static {v2, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    sget-object v0, Lf20$n$d;->d:Lf20$n$d;

    .line 28
    const-string v1, "text/html"

    .line 30
    invoke-static {v0, v1, p0}, Lf20;->p(Lf20$n$c;Ljava/lang/String;Ljava/lang/String;)Lf20$n;

    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static final r(Ljava/lang/Object;)V
    .locals 4

    .line 1
    const-string v0, "Unknown object to close"

    .line 3
    const-string v1, "safeClose"

    .line 5
    if-eqz p0, :cond_3

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    instance-of v3, p0, Ljava/io/Closeable;

    .line 10
    if-eqz v3, :cond_0

    .line 12
    check-cast p0, Ljava/io/Closeable;

    .line 14
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v3, p0, Ljava/net/Socket;

    .line 20
    if-eqz v3, :cond_1

    .line 22
    check-cast p0, Ljava/net/Socket;

    .line 24
    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    instance-of v3, p0, Ljava/net/ServerSocket;

    .line 30
    if-eqz v3, :cond_2

    .line 32
    check-cast p0, Ljava/net/ServerSocket;

    .line 34
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    new-array p0, v2, [Ljava/lang/Object;

    .line 40
    invoke-static {v1, v0, p0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    const-string v0, "IOException Could not close"

    .line 52
    new-array v2, v2, [Ljava/lang/Object;

    .line 54
    invoke-static {v1, v0, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    sget-object v0, Lf20;->k:Ljava/util/logging/Logger;

    .line 59
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 61
    const-string v2, "Could not close"

    .line 63
    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf20;->c:Ljava/net/ServerSocket;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lf20;->e:Ljava/lang/Thread;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public i()V
    .locals 4

    .line 1
    const-string v0, "lala"

    .line 3
    :try_start_0
    const-string v1, "cancelReceivingData"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lf20;->f:Lf20$b;

    .line 10
    invoke-interface {v1}, Lf20$b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v3, "cancelReceivingData--> "

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    :goto_0
    return-void
.end method

.method public j(Ljava/net/Socket;Ljava/io/InputStream;)Lf20$c;
    .locals 2

    .line 1
    new-instance v0, Lf20$c;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p2, p1, v1}, Lf20$c;-><init>(Lf20;Ljava/io/InputStream;Ljava/net/Socket;Lf20$a;)V

    .line 7
    return-object v0
.end method

.method public k(I)Lf20$p;
    .locals 2

    .line 1
    new-instance v0, Lf20$p;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lf20$p;-><init>(Lf20;ILf20$a;)V

    .line 7
    return-object v0
.end method

.method public m()Lf20$q;
    .locals 1

    .line 1
    iget-object v0, p0, Lf20;->d:Lf20$q;

    .line 3
    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf20;->A()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lf20;->c:Ljava/net/ServerSocket;

    .line 9
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lf20;->e:Ljava/lang/Thread;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public abstract s(Lf20$l;)Lf20$n;
.end method

.method public t(Lf20$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf20;->f:Lf20$b;

    .line 3
    return-void
.end method

.method public u(Lf20$t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf20;->g:Lf20$t;

    .line 3
    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    const/16 v0, 0x7530

    .line 3
    invoke-virtual {p0, v0}, Lf20;->w(I)V

    .line 6
    return-void
.end method

.method public w(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lf20;->x(IZ)V

    .line 5
    return-void
.end method

.method public x(IZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf20;->m()Lf20$q;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lf20$q;->a()Ljava/net/ServerSocket;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lf20;->c:Ljava/net/ServerSocket;

    .line 11
    iget-object v0, p0, Lf20;->c:Ljava/net/ServerSocket;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 17
    invoke-virtual {p0, p1}, Lf20;->k(I)Lf20$p;

    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Ljava/lang/Thread;

    .line 23
    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 26
    iput-object v0, p0, Lf20;->e:Ljava/lang/Thread;

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 31
    iget-object p2, p0, Lf20;->e:Ljava/lang/Thread;

    .line 33
    const-string v0, "NanoHttpd Main Listener"

    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lf20;->e:Ljava/lang/Thread;

    .line 40
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 43
    :goto_0
    invoke-static {p1}, Lf20$p;->a(Lf20$p;)Z

    .line 46
    move-result p2

    .line 47
    const/4 v0, 0x0

    .line 48
    const-string v1, "start"

    .line 50
    if-nez p2, :cond_0

    .line 52
    invoke-static {p1}, Lf20$p;->b(Lf20$p;)Ljava/io/IOException;

    .line 55
    move-result-object p2

    .line 56
    if-nez p2, :cond_0

    .line 58
    const-wide/16 v2, 0xa

    .line 60
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p2

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v3, "Throwable--> "

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p2

    .line 86
    new-array v0, v0, [Ljava/lang/Object;

    .line 88
    invoke-static {v1, p2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    invoke-static {p1}, Lf20$p;->b(Lf20$p;)Ljava/io/IOException;

    .line 95
    move-result-object p2

    .line 96
    if-nez p2, :cond_1

    .line 98
    return-void

    .line 99
    :cond_1
    const-string p2, "serverRunnable.bindException != null--> "

    .line 101
    new-array v0, v0, [Ljava/lang/Object;

    .line 103
    invoke-static {v1, p2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-static {p1}, Lf20$p;->b(Lf20$p;)Ljava/io/IOException;

    .line 109
    move-result-object p1

    .line 110
    throw p1
.end method

.method public y()V
    .locals 5

    .line 1
    const-string v0, "stop"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "http--> stop"

    .line 6
    new-array v3, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v2, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v2, p0, Lf20;->c:Ljava/net/ServerSocket;

    .line 13
    invoke-static {v2}, Lf20;->r(Ljava/lang/Object;)V

    .line 16
    iget-object v2, p0, Lf20;->f:Lf20$b;

    .line 18
    invoke-interface {v2}, Lf20$b;->a()V

    .line 21
    iget-object v2, p0, Lf20;->e:Ljava/lang/Thread;

    .line 23
    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 28
    const/4 v2, 0x0

    .line 29
    iput-object v2, p0, Lf20;->e:Ljava/lang/Thread;

    .line 31
    const-string v2, "http--> stop--> this.myThread = null;"

    .line 33
    new-array v3, v1, [Ljava/lang/Object;

    .line 35
    invoke-static {v0, v2, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v2

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const-string v4, "Could not stop all connections --> "

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v3

    .line 61
    new-array v1, v1, [Ljava/lang/Object;

    .line 63
    invoke-static {v0, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    sget-object v0, Lf20;->k:Ljava/util/logging/Logger;

    .line 68
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 70
    const-string v3, "Could not stop all connections"

    .line 72
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :cond_0
    :goto_0
    return-void
.end method

.method public z(Lf20$n;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lf20$n;->c()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lf20$n;->c()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    const-string v0, "text/"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    return p1
.end method
