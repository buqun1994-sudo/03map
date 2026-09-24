.class public Lnb0$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lpu;

.field public b:Lpr;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lpr;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    iput-object p2, p0, Lnb0$a;->b:Lpr;

    .line 6
    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 9

    .line 1
    sget-boolean v0, Lxj0;->a:Z

    .line 3
    const-string v1, "0"

    .line 5
    const-string v2, "RtpSessionManager"

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v4, " Communication sendDataWithRtp  data.length = "

    .line 17
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    if-eqz p1, :cond_0

    .line 22
    array-length v4, p1

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v4, v1

    .line 29
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    const-string v4, " data[] = "

    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {p1, v3}, Luo;->e([BI)Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    new-array v4, v3, [Ljava/lang/Object;

    .line 50
    invoke-static {v2, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_1
    iget-object v0, p0, Lnb0$a;->a:Lpu;

    .line 55
    if-eqz v0, :cond_d

    .line 57
    sget-boolean v0, Lxj0;->a:Z

    .line 59
    if-eqz v0, :cond_2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    const-string v4, "Communication sendDataWithRtp initSession.rtpSession.seqNum = "

    .line 68
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    sget-object v4, Lpu;->a:Lr90;

    .line 73
    invoke-virtual {v4}, Lr90;->i()I

    .line 76
    move-result v4

    .line 77
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    new-array v4, v3, [Ljava/lang/Object;

    .line 86
    invoke-static {v2, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_2
    if-eqz p1, :cond_c

    .line 91
    sget-boolean v0, Lxj0;->a:Z

    .line 93
    if-eqz v0, :cond_3

    .line 95
    const-string v0, "Communication sendDataWithRtp data != null"

    .line 97
    new-array v4, v3, [Ljava/lang/Object;

    .line 99
    invoke-static {v2, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    move-result-wide v4

    .line 106
    sget-object v0, Lpu;->a:Lr90;

    .line 108
    invoke-static {v0, p1}, Luo;->b(Lr90;[B)[B

    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Luo;->c([B)[B

    .line 115
    move-result-object p1

    .line 116
    sget-boolean v0, Lxj0;->a:Z

    .line 118
    if-eqz v0, :cond_5

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const-string v6, " Communication sendDataWithRtp newData.length = "

    .line 127
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    if-eqz p1, :cond_4

    .line 132
    array-length v1, p1

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v1

    .line 137
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, " newData[] = "

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {p1, v3}, Luo;->e([BI)Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    new-array v1, v3, [Ljava/lang/Object;

    .line 158
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_5
    if-eqz p1, :cond_a

    .line 163
    sget-boolean v0, Lxj0;->a:Z

    .line 165
    if-eqz v0, :cond_6

    .line 167
    const-string v0, "Communication sendDataWithRtp newData != null"

    .line 169
    new-array v1, v3, [Ljava/lang/Object;

    .line 171
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_6
    sget-boolean v0, Lxj0;->a:Z

    .line 176
    if-eqz v0, :cond_7

    .line 178
    const-string v0, "Communication sendDataWithRtp single package"

    .line 180
    new-array v1, v3, [Ljava/lang/Object;

    .line 182
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_7
    array-length v0, p1

    .line 186
    if-lez v0, :cond_b

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 191
    move-result-wide v0

    .line 192
    sget-boolean v6, Lxj0;->a:Z

    .line 194
    if-eqz v6, :cond_8

    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    .line 198
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    const-string v7, "Communication sendDataWithRtp ControlConfig.isPackStart = "

    .line 203
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    sget-boolean v7, Lwg;->a:Z

    .line 208
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object v6

    .line 215
    new-array v7, v3, [Ljava/lang/Object;

    .line 217
    invoke-static {v2, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :cond_8
    sget-boolean v6, Lwg;->a:Z

    .line 222
    if-eqz v6, :cond_9

    .line 224
    sget-object v6, Lpu;->a:Lr90;

    .line 226
    invoke-virtual {v6, p1}, Lr90;->k([B)[J

    .line 229
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 232
    move-result-wide v6

    .line 233
    sget-boolean p1, Lxj0;->a:Z

    .line 235
    if-eqz p1, :cond_b

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    .line 239
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    const-string v8, "Communication sendDataWithRtp \u53d1\u9001\u7528\u65f6\uff1a"

    .line 244
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    sub-long/2addr v6, v0

    .line 248
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object p1

    .line 255
    new-array v0, v3, [Ljava/lang/Object;

    .line 257
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    goto :goto_1

    .line 261
    :cond_a
    sget-boolean p1, Lxj0;->a:Z

    .line 263
    if-eqz p1, :cond_b

    .line 265
    const-string p1, "Communication sendDataWithRtp newData == null"

    .line 267
    new-array v0, v3, [Ljava/lang/Object;

    .line 269
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    :cond_b
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 275
    move-result-wide v0

    .line 276
    sget-boolean p1, Lxj0;->a:Z

    .line 278
    if-eqz p1, :cond_e

    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    .line 282
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    const-string v6, "Communication sendDataWithRtp \u8f6c\u6362+\u53d1\u9001\u7528\u65f6\uff1a"

    .line 287
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    sub-long/2addr v0, v4

    .line 291
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object p1

    .line 298
    new-array v0, v3, [Ljava/lang/Object;

    .line 300
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    goto :goto_2

    .line 304
    :cond_c
    sget-boolean p1, Lxj0;->a:Z

    .line 306
    if-eqz p1, :cond_e

    .line 308
    const-string p1, "Communication sendDataWithRtp data == null"

    .line 310
    new-array v0, v3, [Ljava/lang/Object;

    .line 312
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    goto :goto_2

    .line 316
    :cond_d
    sget-boolean p1, Lxj0;->a:Z

    .line 318
    if-eqz p1, :cond_e

    .line 320
    const-string p1, "Communication sendDataWithRtp initSession == null"

    .line 322
    new-array v0, v3, [Ljava/lang/Object;

    .line 324
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    :cond_e
    :goto_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_2

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p1, v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-boolean p1, Lxj0;->a:Z

    .line 15
    if-eqz p1, :cond_1

    .line 17
    const-string p1, " Communication RtpHandler::handleMessage  MSG_ID_SEND"

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    const-string v1, "RtpSessionManager"

    .line 23
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_1
    invoke-static {}, Llb0;->b()[B

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lnb0$a;->a([B)V

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget-boolean p1, Lxj0;->a:Z

    .line 36
    const-string v1, "RtpSessionManager.rzc"

    .line 38
    if-eqz p1, :cond_3

    .line 40
    const-string p1, "MSG_ID_OPEN"

    .line 42
    new-array v2, v0, [Ljava/lang/Object;

    .line 44
    invoke-static {v1, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :cond_3
    :try_start_0
    new-instance p1, Lpu;

    .line 49
    iget-object v2, p0, Lnb0$a;->b:Lpr;

    .line 51
    invoke-direct {p1, v2}, Lpu;-><init>(Lpr;)V

    .line 54
    iput-object p1, p0, Lnb0$a;->a:Lpu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    sget-boolean v2, Lxj0;->a:Z

    .line 63
    if-eqz v2, :cond_4

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v3, "RTP\u53d1\u9001\u6570\u636e\u5f02\u5e38:"

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    new-array v0, v0, [Ljava/lang/Object;

    .line 84
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :cond_4
    :goto_0
    return-void
.end method
