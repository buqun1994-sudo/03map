.class public Lf20$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf20$n$b;,
        Lf20$n$d;,
        Lf20$n$c;
    }
.end annotation


# instance fields
.field public a:Lf20$n$c;

.field public b:Ljava/lang/String;

.field public c:Ljava/io/InputStream;

.field public d:J

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;

.field public g:Lf20$m;

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lf20$n$c;Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lf20$n$a;

    .line 6
    invoke-direct {v0, p0}, Lf20$n$a;-><init>(Lf20$n;)V

    .line 9
    iput-object v0, p0, Lf20$n;->e:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lf20$n;->f:Ljava/util/Map;

    .line 18
    iput-object p1, p0, Lf20$n;->a:Lf20$n$c;

    .line 20
    iput-object p2, p0, Lf20$n;->b:Ljava/lang/String;

    .line 22
    const-wide/16 p1, 0x0

    .line 24
    const/4 v0, 0x0

    .line 25
    if-nez p3, :cond_0

    .line 27
    new-instance p3, Ljava/io/ByteArrayInputStream;

    .line 29
    new-array p4, v0, [B

    .line 31
    invoke-direct {p3, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 34
    iput-object p3, p0, Lf20$n;->c:Ljava/io/InputStream;

    .line 36
    iput-wide p1, p0, Lf20$n;->d:J

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object p3, p0, Lf20$n;->c:Ljava/io/InputStream;

    .line 41
    iput-wide p4, p0, Lf20$n;->d:J

    .line 43
    :goto_0
    iget-wide p3, p0, Lf20$n;->d:J

    .line 45
    const/4 p5, 0x1

    .line 46
    cmp-long v1, p3, p1

    .line 48
    if-gez v1, :cond_1

    .line 50
    const/4 v0, 0x1

    .line 51
    :cond_1
    iput-boolean v0, p0, Lf20$n;->h:Z

    .line 53
    iput-boolean p5, p0, Lf20$n;->j:Z

    .line 55
    return-void
.end method

.method public static synthetic a(Lf20$n;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lf20$n;->f:Ljava/util/Map;

    .line 3
    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf20$n;->f:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 13
    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf20$n;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf20$n;->c:Ljava/io/InputStream;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 8
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    const-string v0, "connection"

    .line 3
    invoke-virtual {p0, v0}, Lf20$n;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "close"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public e(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4
    move-result-object p1

    .line 5
    const-string p2, ": "

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 14
    move-result-object p1

    .line 15
    const-string p2, "\r\n"

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 20
    return-void
.end method

.method public f(Ljava/io/OutputStream;)V
    .locals 8

    .line 1
    const-string v0, "sendResponse(): Status can\'t be null."

    .line 3
    const-string v1, "send"

    .line 5
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 7
    const-string v3, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    .line 9
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 14
    const-string v3, "GMT"

    .line 16
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 23
    const/4 v3, 0x0

    .line 24
    :try_start_0
    iget-object v4, p0, Lf20$n;->a:Lf20$n$c;

    .line 26
    if-eqz v4, :cond_a

    .line 28
    new-instance v0, Ljava/io/PrintWriter;

    .line 30
    new-instance v4, Ljava/io/BufferedWriter;

    .line 32
    new-instance v5, Ljava/io/OutputStreamWriter;

    .line 34
    new-instance v6, Lf20$d;

    .line 36
    iget-object v7, p0, Lf20$n;->b:Ljava/lang/String;

    .line 38
    invoke-direct {v6, v7}, Lf20$d;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v6}, Lf20$d;->e()Ljava/lang/String;

    .line 44
    move-result-object v6

    .line 45
    invoke-direct {v5, p1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 48
    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 51
    invoke-direct {v0, v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 54
    const-string v4, "HTTP/1.1 "

    .line 56
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 59
    move-result-object v4

    .line 60
    iget-object v5, p0, Lf20$n;->a:Lf20$n$c;

    .line 62
    invoke-interface {v5}, Lf20$n$c;->a()Ljava/lang/String;

    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 69
    move-result-object v4

    .line 70
    const-string v5, " \r\n"

    .line 72
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 75
    iget-object v4, p0, Lf20$n;->b:Ljava/lang/String;

    .line 77
    if-eqz v4, :cond_0

    .line 79
    const-string v5, "Content-Type"

    .line 81
    invoke-virtual {p0, v0, v5, v4}, Lf20$n;->e(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    const-string v4, "date"

    .line 86
    invoke-virtual {p0, v4}, Lf20$n;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v4

    .line 90
    if-nez v4, :cond_1

    .line 92
    const-string v4, "Date"

    .line 94
    new-instance v5, Ljava/util/Date;

    .line 96
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 99
    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {p0, v0, v4, v2}, Lf20$n;->e(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_1
    iget-object v2, p0, Lf20$n;->e:Ljava/util/Map;

    .line 108
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 111
    move-result-object v2

    .line 112
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 115
    move-result-object v2

    .line 116
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_2

    .line 122
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    move-result-object v4

    .line 126
    check-cast v4, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Ljava/lang/String;

    .line 134
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Ljava/lang/String;

    .line 140
    invoke-virtual {p0, v0, v5, v4}, Lf20$n;->e(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    goto :goto_0

    .line 144
    :cond_2
    const-string v2, "connection"

    .line 146
    invoke-virtual {p0, v2}, Lf20$n;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object v2

    .line 150
    if-nez v2, :cond_4

    .line 152
    const-string v2, "Connection"

    .line 154
    iget-boolean v4, p0, Lf20$n;->j:Z

    .line 156
    if-eqz v4, :cond_3

    .line 158
    const-string v4, "keep-alive"

    .line 160
    goto :goto_1

    .line 161
    :cond_3
    const-string v4, "close"

    .line 163
    :goto_1
    invoke-virtual {p0, v0, v2, v4}, Lf20$n;->e(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_4
    const-string v2, "content-length"

    .line 168
    invoke-virtual {p0, v2}, Lf20$n;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    move-result-object v2

    .line 172
    if-eqz v2, :cond_5

    .line 174
    iput-boolean v3, p0, Lf20$n;->i:Z

    .line 176
    :cond_5
    iget-boolean v2, p0, Lf20$n;->i:Z

    .line 178
    if-eqz v2, :cond_6

    .line 180
    const-string v2, "Content-Encoding"

    .line 182
    const-string v4, "gzip"

    .line 184
    invoke-virtual {p0, v0, v2, v4}, Lf20$n;->e(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v2, 0x1

    .line 188
    invoke-virtual {p0, v2}, Lf20$n;->k(Z)V

    .line 191
    :cond_6
    iget-object v2, p0, Lf20$n;->c:Ljava/io/InputStream;

    .line 193
    if-eqz v2, :cond_7

    .line 195
    iget-wide v4, p0, Lf20$n;->d:J

    .line 197
    goto :goto_2

    .line 198
    :cond_7
    const-wide/16 v4, 0x0

    .line 200
    :goto_2
    iget-object v2, p0, Lf20$n;->g:Lf20$m;

    .line 202
    sget-object v6, Lf20$m;->e:Lf20$m;

    .line 204
    if-eq v2, v6, :cond_8

    .line 206
    iget-boolean v2, p0, Lf20$n;->h:Z

    .line 208
    if-eqz v2, :cond_8

    .line 210
    const-string v2, "Transfer-Encoding"

    .line 212
    const-string v6, "chunked"

    .line 214
    invoke-virtual {p0, v0, v2, v6}, Lf20$n;->e(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    goto :goto_3

    .line 218
    :cond_8
    iget-boolean v2, p0, Lf20$n;->i:Z

    .line 220
    if-nez v2, :cond_9

    .line 222
    invoke-virtual {p0, v0, v4, v5}, Lf20$n;->j(Ljava/io/PrintWriter;J)J

    .line 225
    move-result-wide v4

    .line 226
    :cond_9
    :goto_3
    const-string v2, "\r\n"

    .line 228
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 231
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 234
    invoke-virtual {p0, p1, v4, v5}, Lf20$n;->i(Ljava/io/OutputStream;J)V

    .line 237
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 240
    iget-object p1, p0, Lf20$n;->c:Ljava/io/InputStream;

    .line 242
    invoke-static {p1}, Lf20;->a(Ljava/lang/Object;)V

    .line 245
    goto :goto_4

    .line 246
    :cond_a
    new-array p1, v3, [Ljava/lang/Object;

    .line 248
    invoke-static {v1, v0, p1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    new-instance p1, Ljava/lang/Error;

    .line 253
    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 256
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :catch_0
    move-exception p1

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    .line 260
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    const-string v2, "IOException() --> "

    .line 265
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    move-result-object v0

    .line 279
    new-array v2, v3, [Ljava/lang/Object;

    .line 281
    invoke-static {v1, v0, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    invoke-static {}, Lf20;->c()Ljava/util/logging/Logger;

    .line 287
    move-result-object v0

    .line 288
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 290
    const-string v2, "Could not send response to the client"

    .line 292
    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    :goto_4
    return-void
.end method

.method public final g(Ljava/io/OutputStream;J)V
    .locals 8

    .line 1
    const-wide/16 v0, 0x4000

    .line 3
    long-to-int v2, v0

    .line 4
    new-array v2, v2, [B

    .line 6
    const-wide/16 v3, -0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    cmp-long v6, p2, v3

    .line 11
    if-nez v6, :cond_0

    .line 13
    const/4 v3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    :cond_1
    :goto_0
    const-wide/16 v6, 0x0

    .line 18
    cmp-long v4, p2, v6

    .line 20
    if-gtz v4, :cond_2

    .line 22
    if-eqz v3, :cond_4

    .line 24
    :cond_2
    if-eqz v3, :cond_3

    .line 26
    move-wide v6, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_3
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 31
    move-result-wide v6

    .line 32
    :goto_1
    iget-object v4, p0, Lf20$n;->c:Ljava/io/InputStream;

    .line 34
    long-to-int v7, v6

    .line 35
    invoke-virtual {v4, v2, v5, v7}, Ljava/io/InputStream;->read([BII)I

    .line 38
    move-result v4

    .line 39
    if-gtz v4, :cond_5

    .line 41
    :cond_4
    return-void

    .line 42
    :cond_5
    invoke-virtual {p1, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 45
    if-nez v3, :cond_1

    .line 47
    int-to-long v6, v4

    .line 48
    sub-long/2addr p2, v6

    .line 49
    goto :goto_0
.end method

.method public final h(Ljava/io/OutputStream;J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf20$n;->i:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance p2, Ljava/util/zip/GZIPOutputStream;

    .line 7
    invoke-direct {p2, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 10
    const-wide/16 v0, -0x1

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lf20$n;->g(Ljava/io/OutputStream;J)V

    .line 15
    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lf20$n;->g(Ljava/io/OutputStream;J)V

    .line 22
    :goto_0
    return-void
.end method

.method public final i(Ljava/io/OutputStream;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf20$n;->g:Lf20$m;

    .line 3
    sget-object v1, Lf20$m;->e:Lf20$m;

    .line 5
    if-eq v0, v1, :cond_0

    .line 7
    iget-boolean v0, p0, Lf20$n;->h:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    new-instance p2, Lf20$n$b;

    .line 13
    invoke-direct {p2, p1}, Lf20$n$b;-><init>(Ljava/io/OutputStream;)V

    .line 16
    const-wide/16 v0, -0x1

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lf20$n;->h(Ljava/io/OutputStream;J)V

    .line 21
    invoke-virtual {p2}, Lf20$n$b;->a()V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lf20$n;->h(Ljava/io/OutputStream;J)V

    .line 28
    :goto_0
    return-void
.end method

.method public j(Ljava/io/PrintWriter;J)J
    .locals 4

    .line 1
    const-string v0, "content-length"

    .line 3
    invoke-virtual {p0, v0}, Lf20$n;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    invoke-static {}, Lf20;->c()Ljava/util/logging/Logger;

    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-string v3, "content-length was no number "

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 38
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v1, "Content-Length: "

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "\r\n"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    return-wide p2
.end method

.method public k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf20$n;->h:Z

    .line 3
    return-void
.end method

.method public l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf20$n;->i:Z

    .line 3
    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf20$n;->j:Z

    .line 3
    return-void
.end method

.method public n(Lf20$m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf20$n;->g:Lf20$m;

    .line 3
    return-void
.end method
