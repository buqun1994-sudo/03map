.class public Lsp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "https"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 6
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 13
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    .line 16
    move-result-object v1

    .line 17
    array-length v2, v1

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ne v2, v3, :cond_1

    .line 21
    const/4 v2, 0x0

    .line 22
    aget-object v2, v1, v2

    .line 24
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    .line 26
    if-nez v3, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .line 31
    return-object v2

    .line 32
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v3, "Unexpected default trust managers:"

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Lbz;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-object v0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v3, "Unexpected exception"

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    invoke-static {v1}, Lbz;->d(Ljava/lang/String;)V

    .line 82
    return-object v0
.end method

.method public b(Ljava/lang/String;[BLrp;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    if-eqz p2, :cond_8

    .line 9
    array-length v0, p2

    .line 10
    if-nez v0, :cond_0

    .line 12
    goto/16 :goto_3

    .line 14
    :cond_0
    const-string v0, "postFileInBody"

    .line 16
    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    .line 20
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 22
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    sget-object v2, Lsp;->a:Ljava/lang/String;

    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    move-result p1

    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x1

    .line 43
    if-eqz p1, :cond_3

    .line 45
    invoke-static {}, Lcom/autonavi/common/tool/b;->M()Z

    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 51
    invoke-static {}, Lcom/autonavi/common/tool/b;->n()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_1

    .line 61
    invoke-virtual {p0}, Lsp;->a()Ljavax/net/ssl/X509TrustManager;

    .line 64
    move-result-object p1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance v4, Lzi0;

    .line 68
    invoke-direct {v4, v3, p1}, Lzi0;-><init>(ZLjava/lang/String;)V

    .line 71
    move-object p1, v4

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    new-instance p1, Lzi0;

    .line 75
    const-string v4, ""

    .line 77
    invoke-direct {p1, v2, v4}, Lzi0;-><init>(ZLjava/lang/String;)V

    .line 80
    :goto_0
    const-string v4, "SSL"

    .line 82
    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 85
    move-result-object v4

    .line 86
    new-array v5, v3, [Ljavax/net/ssl/TrustManager;

    .line 88
    aput-object p1, v5, v2

    .line 90
    new-instance p1, Ljava/security/SecureRandom;

    .line 92
    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    .line 95
    invoke-virtual {v4, v0, v5, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 98
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 101
    move-result-object p1

    .line 102
    move-object v0, v1

    .line 103
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 105
    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 108
    :cond_3
    const-string p1, "upload.zip"

    .line 110
    const-string v0, "POST"

    .line 112
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 115
    const-string v0, "Content-Type"

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    const-string v5, "multipart/form-data;file="

    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v1, v0, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 140
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 143
    const/16 p1, 0x1388

    .line 145
    invoke-virtual {v1, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 148
    invoke-virtual {v1, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 151
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 154
    move-result-object p1

    .line 155
    array-length v0, p2

    .line 156
    invoke-virtual {p1, p2, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 159
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 162
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 165
    if-eqz p3, :cond_4

    .line 167
    invoke-interface {p3, v1}, Lrp;->a(Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 173
    goto :goto_2

    .line 174
    :catchall_0
    move-exception p1

    .line 175
    move-object v0, v1

    .line 176
    goto :goto_1

    .line 177
    :catchall_1
    move-exception p1

    .line 178
    :goto_1
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    const-string v1, "upload error "

    .line 185
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object p2

    .line 199
    invoke-static {p2}, Lbz;->a(Ljava/lang/String;)V

    .line 202
    if-eqz p3, :cond_5

    .line 204
    invoke-interface {p3, p1}, Lrp;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 207
    :cond_5
    if-eqz v0, :cond_6

    .line 209
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 212
    :catchall_2
    :cond_6
    :goto_2
    return-void

    .line 213
    :catchall_3
    move-exception p1

    .line 214
    if-eqz v0, :cond_7

    .line 216
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 219
    :catchall_4
    :cond_7
    throw p1

    .line 220
    :cond_8
    :goto_3
    const-string p1, "postFileInBody param error"

    .line 222
    invoke-static {p1}, Lbz;->a(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public c(ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;[BLrp;)V
    .locals 7

    .line 1
    const-string v0, "v2"

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_9

    .line 9
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_9

    .line 15
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_9

    .line 21
    if-eqz p7, :cond_9

    .line 23
    array-length v1, p7

    .line 24
    if-nez v1, :cond_0

    .line 26
    goto/16 :goto_3

    .line 28
    :cond_0
    const-string v1, "restPostFileInBody"

    .line 30
    invoke-static {v1}, Lbz;->a(Ljava/lang/String;)V

    .line 33
    const/4 v1, 0x0

    .line 34
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 36
    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 48
    move-result-object p2

    .line 49
    sget-object v3, Lsp;->a:Ljava/lang/String;

    .line 51
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 54
    move-result p2

    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v4, 0x1

    .line 57
    if-eqz p2, :cond_3

    .line 59
    invoke-static {}, Lcom/autonavi/common/tool/b;->M()Z

    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_2

    .line 65
    invoke-static {}, Lcom/autonavi/common/tool/b;->n()Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 69
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_1

    .line 75
    invoke-virtual {p0}, Lsp;->a()Ljavax/net/ssl/X509TrustManager;

    .line 78
    move-result-object p2

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    new-instance v5, Lzi0;

    .line 82
    invoke-direct {v5, v4, p2}, Lzi0;-><init>(ZLjava/lang/String;)V

    .line 85
    move-object p2, v5

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    new-instance p2, Lzi0;

    .line 89
    const-string v5, ""

    .line 91
    invoke-direct {p2, v3, v5}, Lzi0;-><init>(ZLjava/lang/String;)V

    .line 94
    :goto_0
    const-string v5, "SSL"

    .line 96
    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 99
    move-result-object v5

    .line 100
    new-array v6, v4, [Ljavax/net/ssl/TrustManager;

    .line 102
    aput-object p2, v6, v3

    .line 104
    new-instance p2, Ljava/security/SecureRandom;

    .line 106
    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    .line 109
    invoke-virtual {v5, v1, v6, p2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 112
    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 115
    move-result-object p2

    .line 116
    move-object v1, v2

    .line 117
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 119
    invoke-virtual {v1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 122
    :cond_3
    const-string p2, "upload.zip"

    .line 124
    const-string v1, "POST"

    .line 126
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 129
    const-string v1, "Content-Type"

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    .line 133
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    const-string v6, "multipart/form-data;file="

    .line 138
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {v2, v1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string p2, "timestamp"

    .line 153
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 156
    move-result-object p3

    .line 157
    invoke-virtual {v2, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string p2, "key"

    .line 162
    invoke-virtual {v2, p2, p5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string p2, "signature"

    .line 167
    invoke-virtual {v2, p2, p6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string p2, "Accept-Encoding"

    .line 172
    const-string p3, "gzip"

    .line 174
    invoke-virtual {v2, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string p2, "SignatureMethod"

    .line 179
    invoke-virtual {v2, p2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string p2, "CryptoMethod"

    .line 184
    if-eqz p1, :cond_4

    .line 186
    const-string v0, "v3"

    .line 188
    :cond_4
    invoke-virtual {v2, p2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 194
    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 197
    const/16 p1, 0x1388

    .line 199
    invoke-virtual {v2, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 202
    invoke-virtual {v2, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 205
    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 208
    move-result-object p1

    .line 209
    invoke-static {p7}, Lcom/autonavi/common/tool/util/AESUtils;->b([B)Ljava/lang/String;

    .line 212
    move-result-object p2

    .line 213
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 216
    move-result-object p3

    .line 217
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 220
    move-result-object p2

    .line 221
    array-length p3, p2

    .line 222
    invoke-virtual {p1, p2, v3, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 225
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 228
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 231
    if-eqz p8, :cond_5

    .line 233
    invoke-interface {p8, v2}, Lrp;->a(Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 239
    goto :goto_2

    .line 240
    :catchall_0
    move-exception p1

    .line 241
    move-object v1, v2

    .line 242
    goto :goto_1

    .line 243
    :catchall_1
    move-exception p1

    .line 244
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 247
    if-eqz p8, :cond_6

    .line 249
    invoke-interface {p8, p1}, Lrp;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 252
    :cond_6
    if-eqz v1, :cond_7

    .line 254
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 257
    :catchall_2
    :cond_7
    :goto_2
    return-void

    .line 258
    :catchall_3
    move-exception p1

    .line 259
    if-eqz v1, :cond_8

    .line 261
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 264
    :catchall_4
    :cond_8
    throw p1

    .line 265
    :cond_9
    :goto_3
    const-string p1, "restPostFileInBody param error"

    .line 267
    invoke-static {p1}, Lbz;->a(Ljava/lang/String;)V

    .line 270
    return-void
.end method
