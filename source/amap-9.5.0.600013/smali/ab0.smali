.class public Lab0;
.super Lqc;
.source "SourceFile"


# direct methods
.method public constructor <init>([B[Ljava/io/File;Lbr;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lqc;-><init>([B[Ljava/io/File;Lbr;)V

    .line 4
    const-string p1, "Using RestUploadFile"

    .line 6
    invoke-static {p1}, Lbz;->d(Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public i()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lqc;->f()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string v0, "upload param error"

    .line 9
    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lqc;->c:Lbr;

    .line 15
    invoke-interface {v0}, Lbr;->w()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lqc;->c:Lbr;

    .line 21
    invoke-interface {v1}, Lbr;->G()I

    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lqc;->c:Lbr;

    .line 31
    invoke-interface {v2}, Lbr;->h()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    iget-object v3, p0, Lqc;->c:Lbr;

    .line 37
    invoke-interface {v3}, Lbr;->Z()Ljava/lang/String;

    .line 40
    move-result-object v9

    .line 41
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_2

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_2

    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_1

    .line 59
    goto/16 :goto_1

    .line 61
    :cond_1
    iget-object v3, p0, Lqc;->c:Lbr;

    .line 63
    invoke-interface {v3}, Lbr;->d()Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    iget-object v4, p0, Lqc;->c:Lbr;

    .line 69
    invoke-interface {v4}, Lbr;->getDiu()Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    iget-object v5, p0, Lqc;->c:Lbr;

    .line 75
    invoke-interface {v5}, Lbr;->A()Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    iget-object v6, p0, Lqc;->c:Lbr;

    .line 81
    invoke-interface {v6}, Lbr;->l0()Ljava/lang/String;

    .line 84
    move-result-object v6

    .line 85
    iget-object v7, p0, Lqc;->c:Lbr;

    .line 87
    invoke-interface {v7}, Lbr;->j0()Z

    .line 90
    move-result v7

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    move-result-wide v10

    .line 95
    const-wide/16 v12, 0x3e8

    .line 97
    div-long/2addr v10, v12

    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    const-string v12, "key="

    .line 105
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v12, "&timestamp="

    .line 113
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    const-string v12, ":"

    .line 121
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v2

    .line 131
    invoke-static {v2}, Lk10;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v2

    .line 135
    new-instance v8, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    const-string v12, "product"

    .line 142
    invoke-virtual {p0, v8, v12, v1}, Lab0;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "type"

    .line 147
    const-string v12, "1"

    .line 149
    invoke-virtual {p0, v8, v1, v12}, Lab0;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "platform"

    .line 154
    invoke-virtual {p0, v8, v1, v12}, Lab0;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "dip"

    .line 159
    invoke-virtual {p0, v8, v1, v3}, Lab0;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "diu"

    .line 164
    invoke-virtual {p0, v8, v1, v4}, Lab0;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "div"

    .line 169
    invoke-virtual {p0, v8, v1, v5}, Lab0;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v1, "dic"

    .line 174
    invoke-virtual {p0, v8, v1, v6}, Lab0;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object v1

    .line 181
    :try_start_0
    invoke-static {v1}, Lcom/autonavi/common/tool/util/AESUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    move-result-object v1

    .line 185
    new-instance v4, Lsp;

    .line 187
    invoke-direct {v4}, Lsp;-><init>()V

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    .line 192
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v0, "?"

    .line 200
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v6

    .line 210
    iget-object v0, p0, Lqc;->a:[B

    .line 212
    move v5, v7

    .line 213
    move-wide v7, v10

    .line 214
    move-object v10, v2

    .line 215
    move-object v11, v0

    .line 216
    move-object v12, p0

    .line 217
    invoke-virtual/range {v4 .. v12}, Lsp;->c(ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;[BLrp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_0

    .line 221
    :catch_0
    invoke-static {}, Lbh;->s()Lbh;

    .line 224
    move-result-object v0

    .line 225
    iget-object v1, p0, Lqc;->b:[Ljava/io/File;

    .line 227
    const-string v2, " uploadFailed."

    .line 229
    invoke-virtual {v0, v1, v2}, Lbh;->f([Ljava/io/File;Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 233
    :cond_2
    :goto_1
    const-string v0, "upload param lack"

    .line 235
    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public final j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_3

    .line 10
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 23
    const-string v0, "&"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string p2, "="

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_3
    :goto_0
    return-void
.end method
