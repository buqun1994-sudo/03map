.class Lcom/amap/location/e/a$1;
.super Lcom/amap/location/support/network/FileLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/e/a;-><init>(Lcom/amap/location/support/handler/AmapLooper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/e/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/a;Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/a$1;->a:Lcom/amap/location/e/a;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/amap/location/support/network/FileLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    const-string v0, "https://shanjing.cn-hangzhou.oss-pub.aliyun-inc.com/gnss-3model"

    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lcom/amap/location/e/a/d;->I:Ljava/lang/String;

    .line 14
    return-object v0
.end method

.method public parseFile(Ljava/io/File;Z)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 4
    move-result v0

    .line 5
    const-string v1, "GnssAlgo3DMADetector"

    .line 7
    const/16 v2, 0x8

    .line 9
    if-ne v0, v2, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v3, "mModelDownLoader parseFile, file"

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    if-nez p1, :cond_1

    .line 37
    return-void

    .line 38
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    iget-object v3, p0, Lcom/amap/location/e/a$1;->a:Lcom/amap/location/e/a;

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v5, "m.zip"

    .line 51
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 54
    move-result v5

    .line 55
    const/4 v6, 0x0

    .line 56
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v0, "out"

    .line 65
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-static {v3, v0}, Lcom/amap/location/e/a;->a(Lcom/amap/location/e/a;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/io/File;

    .line 77
    iget-object v3, p0, Lcom/amap/location/e/a$1;->a:Lcom/amap/location/e/a;

    .line 79
    invoke-static {v3}, Lcom/amap/location/e/a;->a(Lcom/amap/location/e/a;)Ljava/lang/String;

    .line 82
    move-result-object v3

    .line 83
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 89
    move-result-object v0

    .line 90
    const/4 v3, 0x1

    .line 91
    if-eqz v0, :cond_2

    .line 93
    array-length v0, v0

    .line 94
    const/4 v4, 0x3

    .line 95
    if-lt v0, v4, :cond_2

    .line 97
    const/4 v0, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    const/4 v0, 0x0

    .line 100
    :goto_0
    if-eqz v0, :cond_3

    .line 102
    if-eqz p2, :cond_4

    .line 104
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/amap/location/e/a$1;->a:Lcom/amap/location/e/a;

    .line 110
    invoke-static {p2}, Lcom/amap/location/e/a;->a(Lcom/amap/location/e/a;)Ljava/lang/String;

    .line 113
    move-result-object p2

    .line 114
    invoke-static {p1, p2, v3}, Lcom/amap/location/support/util/FileUtils;->unZipFolder(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    const/4 v0, 0x1

    .line 118
    goto :goto_1

    .line 119
    :catchall_0
    move-exception p1

    .line 120
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 123
    :cond_4
    :goto_1
    if-eqz v0, :cond_8

    .line 125
    iget-object p1, p0, Lcom/amap/location/e/a$1;->a:Lcom/amap/location/e/a;

    .line 127
    invoke-static {p1}, Lcom/amap/location/e/a;->b(Lcom/amap/location/e/a;)Z

    .line 130
    move-result p1

    .line 131
    if-nez p1, :cond_8

    .line 133
    iget-object p1, p0, Lcom/amap/location/e/a$1;->a:Lcom/amap/location/e/a;

    .line 135
    invoke-static {p1}, Lcom/amap/location/e/a;->c(Lcom/amap/location/e/a;)I

    .line 138
    move-result p1

    .line 139
    const/4 p2, 0x5

    .line 140
    if-ge p1, p2, :cond_8

    .line 142
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    .line 145
    move-result-object p1

    .line 146
    iget-object p2, p0, Lcom/amap/location/e/a$1;->a:Lcom/amap/location/e/a;

    .line 148
    invoke-static {p2}, Lcom/amap/location/e/a;->a(Lcom/amap/location/e/a;)Ljava/lang/String;

    .line 151
    move-result-object p2

    .line 152
    invoke-interface {p1, p2}, Lcom/amap/location/support/security/INativeAbility;->init3DMA(Ljava/lang/String;)I

    .line 155
    move-result p1

    .line 156
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 159
    move-result p2

    .line 160
    if-ne p2, v2, :cond_5

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    const-string v0, "init3DMA:"

    .line 169
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v0, p0, Lcom/amap/location/e/a$1;->a:Lcom/amap/location/e/a;

    .line 174
    invoke-static {v0}, Lcom/amap/location/e/a;->a(Lcom/amap/location/e/a;)Ljava/lang/String;

    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v0, ", init:"

    .line 183
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object p2

    .line 193
    invoke-static {v1, p2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_5
    iget-object p2, p0, Lcom/amap/location/e/a$1;->a:Lcom/amap/location/e/a;

    .line 198
    if-ne p1, v3, :cond_6

    .line 200
    goto :goto_2

    .line 201
    :cond_6
    const/4 v3, 0x0

    .line 202
    :goto_2
    invoke-static {p2, v3}, Lcom/amap/location/e/a;->a(Lcom/amap/location/e/a;Z)Z

    .line 205
    iget-object p1, p0, Lcom/amap/location/e/a$1;->a:Lcom/amap/location/e/a;

    .line 207
    invoke-static {p1}, Lcom/amap/location/e/a;->b(Lcom/amap/location/e/a;)Z

    .line 210
    move-result p2

    .line 211
    if-nez p2, :cond_7

    .line 213
    iget-object p2, p0, Lcom/amap/location/e/a$1;->a:Lcom/amap/location/e/a;

    .line 215
    invoke-static {p2}, Lcom/amap/location/e/a;->d(Lcom/amap/location/e/a;)I

    .line 218
    move-result v6

    .line 219
    :cond_7
    invoke-static {p1, v6}, Lcom/amap/location/e/a;->a(Lcom/amap/location/e/a;I)I

    .line 222
    :cond_8
    return-void
.end method
