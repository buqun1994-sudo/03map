.class public Lgw0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgw0;


# direct methods
.method public constructor <init>(Lgw0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgw0$a;->a:Lgw0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lgw0$a;->a:Lgw0;

    .line 3
    invoke-static {v0}, Lgw0;->f(Lgw0;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    iget-object v0, p0, Lgw0$a;->a:Lgw0;

    .line 11
    invoke-static {v0}, Lgw0;->g(Lgw0;)Lcom/amap/location/support/handler/AmapHandler;

    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    goto/16 :goto_2

    .line 19
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 21
    invoke-direct {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>()V

    .line 24
    iget-object v1, p0, Lgw0$a;->a:Lgw0;

    .line 26
    invoke-static {v1}, Lgw0;->i(Lgw0;)Lgw0$e;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Lgw0$e;->a(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    .line 33
    move-result v9

    .line 34
    iget-object v1, p0, Lgw0$a;->a:Lgw0;

    .line 36
    invoke-static {v1}, Lgw0;->j(Lgw0;)Lgw0$e;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Lgw0$e;->a(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    .line 43
    move-result v10

    .line 44
    iget-object v1, p0, Lgw0$a;->a:Lgw0;

    .line 46
    invoke-static {v1}, Lgw0;->k(Lgw0;)Lgw0$e;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Lgw0$e;->a(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    .line 53
    move-result v11

    .line 54
    iget-object v1, p0, Lgw0$a;->a:Lgw0;

    .line 56
    iget v1, v1, Lgw0;->d:I

    .line 58
    if-nez v1, :cond_1

    .line 60
    const-string v1, "V5"

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 65
    move-result v2

    .line 66
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getManufacturer()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 73
    move-result v3

    .line 74
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDeviceMode()Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 81
    move-result v4

    .line 82
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDiv()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 89
    move-result v6

    .line 90
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 97
    move-result v7

    .line 98
    const-string v1, ""

    .line 100
    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 103
    move-result v8

    .line 104
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    .line 107
    move-result v5

    .line 108
    move-object v1, v0

    .line 109
    invoke-static/range {v1 .. v8}, Lwv0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;IIIIIII)I

    .line 112
    move-result v1

    .line 113
    goto :goto_0

    .line 114
    :cond_1
    const/4 v1, -0x1

    .line 115
    :goto_0
    iget-object v2, p0, Lgw0$a;->a:Lgw0;

    .line 117
    iget v3, v2, Lgw0;->d:I

    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 121
    iput v3, v2, Lgw0;->d:I

    .line 123
    invoke-static {v2}, Lgw0;->l(Lgw0;)Ljava/lang/StringBuffer;

    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    .line 130
    move-result v2

    .line 131
    const/4 v3, 0x0

    .line 132
    if-lez v2, :cond_2

    .line 134
    iget-object v2, p0, Lgw0$a;->a:Lgw0;

    .line 136
    invoke-static {v2}, Lgw0;->l(Lgw0;)Ljava/lang/StringBuffer;

    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 147
    move-result v2

    .line 148
    iget-object v4, p0, Lgw0$a;->a:Lgw0;

    .line 150
    invoke-static {v4}, Lgw0;->l(Lgw0;)Ljava/lang/StringBuffer;

    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 157
    move v3, v2

    .line 158
    :cond_2
    invoke-static {}, Lew0;->b()Ljava/lang/String;

    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 165
    move-result v2

    .line 166
    invoke-static {v0}, Lwp0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 169
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 172
    move-result-object v4

    .line 173
    invoke-interface {v4}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 176
    move-result-wide v4

    .line 177
    invoke-static {v0, v4, v5}, Lwp0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 180
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 183
    move-result-object v4

    .line 184
    invoke-interface {v4}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 187
    move-result-wide v4

    .line 188
    invoke-static {v0, v4, v5}, Lwp0;->b(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 191
    if-lez v2, :cond_3

    .line 193
    invoke-static {v0, v2}, Lwp0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 196
    :cond_3
    if-lez v1, :cond_4

    .line 198
    invoke-static {v0, v1}, Lwp0;->f(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 201
    :cond_4
    if-lez v9, :cond_5

    .line 203
    invoke-static {v0, v9}, Lwp0;->c(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 206
    :cond_5
    if-lez v10, :cond_6

    .line 208
    invoke-static {v0, v10}, Lwp0;->d(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 211
    :cond_6
    if-lez v11, :cond_7

    .line 213
    invoke-static {v0, v11}, Lwp0;->g(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 216
    :cond_7
    if-lez v3, :cond_8

    .line 218
    invoke-static {v0, v3}, Lwp0;->h(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 221
    :cond_8
    invoke-static {v0}, Lwp0;->b(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    .line 224
    move-result v1

    .line 225
    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 228
    invoke-virtual {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    .line 231
    move-result-object v0

    .line 232
    invoke-static {v0}, Lcom/amap/location/support/util/GZipUtils;->compress([B)[B

    .line 235
    move-result-object v0

    .line 236
    const/4 v1, 0x2

    .line 237
    invoke-static {v0, v1}, Lcom/amap/location/support/security/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 244
    move-result-object v0

    .line 245
    const v1, 0x18ef3

    .line 248
    invoke-static {v1, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    goto :goto_1

    .line 252
    :catch_0
    move-exception v0

    .line 253
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 256
    :goto_1
    iget-object v0, p0, Lgw0$a;->a:Lgw0;

    .line 258
    invoke-static {v0}, Lgw0;->g(Lgw0;)Lcom/amap/location/support/handler/AmapHandler;

    .line 261
    move-result-object v0

    .line 262
    iget-object v1, p0, Lgw0$a;->a:Lgw0;

    .line 264
    invoke-static {v1}, Lgw0;->m(Lgw0;)Ljava/lang/Runnable;

    .line 267
    move-result-object v1

    .line 268
    const-wide/16 v2, 0x7d0

    .line 270
    invoke-interface {v0, v1, v2, v3}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    :cond_9
    :goto_2
    return-void
.end method
