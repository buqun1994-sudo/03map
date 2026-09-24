.class Lcom/amap/location/sdk/e/c$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/location/sdk/e/c$a;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->b(Lcom/amap/location/sdk/e/c$a;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, "_"

    .line 8
    if-ne v0, v1, :cond_1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->c(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1, v0}, Lcom/amap/location/sdk/e/c$a;->a(Lcom/amap/location/sdk/e/c$a;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/amap/location/sdk/e/c;->b:Lcom/amap/location/sdk/e/a;

    .line 41
    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/amap/location/sdk/e/c;->b:Lcom/amap/location/sdk/e/a;

    .line 45
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->c(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->d(Lcom/amap/location/sdk/e/c$a;)J

    .line 52
    move-result-wide v2

    .line 53
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->e(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amap/location/sdk/e/a;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 60
    :cond_0
    sget-boolean v0, Lcom/amap/location/sdk/e/c;->a:Z

    .line 62
    sget-object v0, Lcom/amap/location/sdk/e/c;->c:Lcom/amap/location/sdk/e/a;

    .line 64
    if-eqz v0, :cond_7

    .line 66
    sget-object v0, Lcom/amap/location/sdk/e/c;->c:Lcom/amap/location/sdk/e/a;

    .line 68
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->c(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->d(Lcom/amap/location/sdk/e/c$a;)J

    .line 75
    move-result-wide v2

    .line 76
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->e(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/amap/location/sdk/e/a;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 83
    goto/16 :goto_0

    .line 85
    :cond_1
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->b(Lcom/amap/location/sdk/e/c$a;)I

    .line 88
    move-result v0

    .line 89
    const/4 v1, 0x2

    .line 90
    if-ne v0, v1, :cond_3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->c(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    invoke-static {p1, v0}, Lcom/amap/location/sdk/e/c$a;->a(Lcom/amap/location/sdk/e/c$a;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/amap/location/sdk/e/c;->b:Lcom/amap/location/sdk/e/a;

    .line 123
    if-eqz v0, :cond_2

    .line 125
    sget-object v1, Lcom/amap/location/sdk/e/c;->b:Lcom/amap/location/sdk/e/a;

    .line 127
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->c(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 130
    move-result-object v2

    .line 131
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->d(Lcom/amap/location/sdk/e/c$a;)J

    .line 134
    move-result-wide v3

    .line 135
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->e(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 138
    move-result-object v5

    .line 139
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->f(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 142
    move-result-object v6

    .line 143
    invoke-interface/range {v1 .. v6}, Lcom/amap/location/sdk/e/a;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_2
    sget-boolean v0, Lcom/amap/location/sdk/e/c;->a:Z

    .line 148
    sget-object v0, Lcom/amap/location/sdk/e/c;->c:Lcom/amap/location/sdk/e/a;

    .line 150
    if-eqz v0, :cond_7

    .line 152
    sget-object v1, Lcom/amap/location/sdk/e/c;->c:Lcom/amap/location/sdk/e/a;

    .line 154
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->c(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 157
    move-result-object v2

    .line 158
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->d(Lcom/amap/location/sdk/e/c$a;)J

    .line 161
    move-result-wide v3

    .line 162
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->e(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 165
    move-result-object v5

    .line 166
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->f(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 169
    move-result-object v6

    .line 170
    invoke-interface/range {v1 .. v6}, Lcom/amap/location/sdk/e/a;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 173
    goto/16 :goto_0

    .line 175
    :cond_3
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->b(Lcom/amap/location/sdk/e/c$a;)I

    .line 178
    move-result v0

    .line 179
    const/4 v1, 0x3

    .line 180
    if-ne v0, v1, :cond_5

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->c(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object v0

    .line 208
    invoke-static {p1, v0}, Lcom/amap/location/sdk/e/c$a;->a(Lcom/amap/location/sdk/e/c$a;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    sget-object v0, Lcom/amap/location/sdk/e/c;->b:Lcom/amap/location/sdk/e/a;

    .line 213
    if-eqz v0, :cond_4

    .line 215
    sget-object v0, Lcom/amap/location/sdk/e/c;->b:Lcom/amap/location/sdk/e/a;

    .line 217
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->c(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 220
    move-result-object v1

    .line 221
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->d(Lcom/amap/location/sdk/e/c$a;)J

    .line 224
    move-result-wide v2

    .line 225
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->e(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 228
    move-result-object v4

    .line 229
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amap/location/sdk/e/a;->b(Ljava/lang/String;JLjava/lang/String;)V

    .line 232
    :cond_4
    sget-boolean v0, Lcom/amap/location/sdk/e/c;->a:Z

    .line 234
    sget-object v0, Lcom/amap/location/sdk/e/c;->c:Lcom/amap/location/sdk/e/a;

    .line 236
    if-eqz v0, :cond_7

    .line 238
    sget-object v0, Lcom/amap/location/sdk/e/c;->c:Lcom/amap/location/sdk/e/a;

    .line 240
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->c(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 243
    move-result-object v1

    .line 244
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->d(Lcom/amap/location/sdk/e/c$a;)J

    .line 247
    move-result-wide v2

    .line 248
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->e(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 251
    move-result-object p1

    .line 252
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/amap/location/sdk/e/a;->b(Ljava/lang/String;JLjava/lang/String;)V

    .line 255
    goto :goto_0

    .line 256
    :cond_5
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->b(Lcom/amap/location/sdk/e/c$a;)I

    .line 259
    move-result v0

    .line 260
    const/4 v1, 0x4

    .line 261
    if-ne v0, v1, :cond_7

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    .line 265
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->c(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    move-result-object v0

    .line 289
    invoke-static {p1, v0}, Lcom/amap/location/sdk/e/c$a;->a(Lcom/amap/location/sdk/e/c$a;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    sget-object v0, Lcom/amap/location/sdk/e/c;->b:Lcom/amap/location/sdk/e/a;

    .line 294
    if-eqz v0, :cond_6

    .line 296
    sget-object v0, Lcom/amap/location/sdk/e/c;->b:Lcom/amap/location/sdk/e/a;

    .line 298
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->c(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 301
    move-result-object v1

    .line 302
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->d(Lcom/amap/location/sdk/e/c$a;)J

    .line 305
    move-result-wide v2

    .line 306
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->e(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 309
    move-result-object v4

    .line 310
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amap/location/sdk/e/a;->c(Ljava/lang/String;JLjava/lang/String;)V

    .line 313
    :cond_6
    sget-boolean v0, Lcom/amap/location/sdk/e/c;->a:Z

    .line 315
    sget-object v0, Lcom/amap/location/sdk/e/c;->c:Lcom/amap/location/sdk/e/a;

    .line 317
    if-eqz v0, :cond_7

    .line 319
    sget-object v0, Lcom/amap/location/sdk/e/c;->c:Lcom/amap/location/sdk/e/a;

    .line 321
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->c(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 324
    move-result-object v1

    .line 325
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->d(Lcom/amap/location/sdk/e/c$a;)J

    .line 328
    move-result-wide v2

    .line 329
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->e(Lcom/amap/location/sdk/e/c$a;)Ljava/lang/String;

    .line 332
    move-result-object p1

    .line 333
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/amap/location/sdk/e/a;->c(Ljava/lang/String;JLjava/lang/String;)V

    .line 336
    :cond_7
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    instance-of v0, p1, Lcom/amap/location/sdk/e/c$a;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    check-cast p1, Lcom/amap/location/sdk/e/c$a;

    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/location/sdk/e/c$b;->a(Lcom/amap/location/sdk/e/c$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    :cond_0
    return-void
.end method
