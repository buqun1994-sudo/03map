.class public abstract Leg0;
.super Lzf0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leg0$a;
    }
.end annotation


# static fields
.field public static final a:Leg0$a;

.field public static b:Lcg0;

.field public static c:Lcg0;

.field public static d:Lcg0;

.field public static e:Lcg0;

.field public static f:Lcg0;

.field public static g:Lcg0;

.field public static h:Lcg0;

.field public static i:Lcg0;

.field public static j:Lcg0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Leg0$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Leg0$a;-><init>(Ldg0;)V

    .line 7
    sput-object v0, Leg0;->a:Leg0$a;

    .line 9
    new-instance v0, Lcg0;

    .line 11
    invoke-direct {v0}, Lcg0;-><init>()V

    .line 14
    sput-object v0, Leg0;->b:Lcg0;

    .line 16
    sput-object v1, Leg0;->c:Lcg0;

    .line 18
    sput-object v1, Leg0;->d:Lcg0;

    .line 20
    sput-object v1, Leg0;->e:Lcg0;

    .line 22
    sput-object v1, Leg0;->f:Lcg0;

    .line 24
    sput-object v1, Leg0;->g:Lcg0;

    .line 26
    sput-object v1, Leg0;->h:Lcg0;

    .line 28
    sput-object v1, Leg0;->i:Lcg0;

    .line 30
    sput-object v1, Leg0;->j:Lcg0;

    .line 32
    return-void
.end method

.method public static declared-synchronized a(Lag0;)Lcg0;
    .locals 4

    .line 1
    const-class v0, Leg0;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lag0;->b:Lag0;

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_2

    .line 12
    sget-object p0, Leg0;->b:Lcg0;

    .line 14
    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcg0;->isShutdown()Z

    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 22
    :cond_0
    new-instance p0, Lcg0;

    .line 24
    new-instance v1, Lfg0;

    .line 26
    const-string v2, "Default"

    .line 28
    invoke-direct {v1, v2}, Lfg0;-><init>(Ljava/lang/String;)V

    .line 31
    const/4 v2, 0x3

    .line 32
    invoke-direct {p0, v2, v1}, Lcg0;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 35
    sput-object p0, Leg0;->b:Lcg0;

    .line 37
    :cond_1
    sget-object p0, Leg0;->b:Lcg0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit v0

    .line 40
    return-object p0

    .line 41
    :cond_2
    :try_start_1
    sget-object v1, Lag0;->c:Lag0;

    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_5

    .line 49
    sget-object p0, Leg0;->c:Lcg0;

    .line 51
    if-eqz p0, :cond_3

    .line 53
    invoke-virtual {p0}, Lcg0;->isShutdown()Z

    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_4

    .line 59
    :cond_3
    new-instance p0, Lcg0;

    .line 61
    new-instance v1, Lfg0;

    .line 63
    const-string v2, "Search"

    .line 65
    invoke-direct {v1, v2}, Lfg0;-><init>(Ljava/lang/String;)V

    .line 68
    const/4 v2, 0x2

    .line 69
    invoke-direct {p0, v2, v1}, Lcg0;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 72
    sput-object p0, Leg0;->c:Lcg0;

    .line 74
    :cond_4
    sget-object p0, Leg0;->c:Lcg0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    monitor-exit v0

    .line 77
    return-object p0

    .line 78
    :cond_5
    :try_start_2
    sget-object v1, Lag0;->d:Lag0;

    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v1

    .line 84
    const/4 v2, 0x1

    .line 85
    if-eqz v1, :cond_8

    .line 87
    sget-object p0, Leg0;->d:Lcg0;

    .line 89
    if-eqz p0, :cond_6

    .line 91
    invoke-virtual {p0}, Lcg0;->isShutdown()Z

    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_7

    .line 97
    :cond_6
    new-instance p0, Lcg0;

    .line 99
    new-instance v1, Lfg0;

    .line 101
    const-string v3, "Net"

    .line 103
    invoke-direct {v1, v3}, Lfg0;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, v2, v1}, Lcg0;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 109
    sput-object p0, Leg0;->d:Lcg0;

    .line 111
    :cond_7
    sget-object p0, Leg0;->d:Lcg0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    monitor-exit v0

    .line 114
    return-object p0

    .line 115
    :cond_8
    :try_start_3
    sget-object v1, Lag0;->e:Lag0;

    .line 117
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_b

    .line 123
    sget-object p0, Leg0;->e:Lcg0;

    .line 125
    if-eqz p0, :cond_9

    .line 127
    invoke-virtual {p0}, Lcg0;->isShutdown()Z

    .line 130
    move-result p0

    .line 131
    if-eqz p0, :cond_a

    .line 133
    :cond_9
    new-instance p0, Lcg0;

    .line 135
    new-instance v1, Lfg0;

    .line 137
    const-string v3, "DECODER_HANDLER"

    .line 139
    invoke-direct {v1, v3}, Lfg0;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, v2, v1}, Lcg0;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 145
    sput-object p0, Leg0;->e:Lcg0;

    .line 147
    :cond_a
    sget-object p0, Leg0;->e:Lcg0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    monitor-exit v0

    .line 150
    return-object p0

    .line 151
    :cond_b
    :try_start_4
    sget-object v1, Lag0;->f:Lag0;

    .line 153
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_e

    .line 159
    sget-object p0, Leg0;->f:Lcg0;

    .line 161
    if-eqz p0, :cond_c

    .line 163
    invoke-virtual {p0}, Lcg0;->isShutdown()Z

    .line 166
    move-result p0

    .line 167
    if-eqz p0, :cond_d

    .line 169
    :cond_c
    new-instance p0, Lcg0;

    .line 171
    new-instance v1, Lfg0;

    .line 173
    const-string v3, "DECODER_HANDLER_OUT"

    .line 175
    invoke-direct {v1, v3}, Lfg0;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, v2, v1}, Lcg0;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 181
    sput-object p0, Leg0;->f:Lcg0;

    .line 183
    :cond_d
    sget-object p0, Leg0;->f:Lcg0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 185
    monitor-exit v0

    .line 186
    return-object p0

    .line 187
    :cond_e
    :try_start_5
    sget-object v1, Lag0;->h:Lag0;

    .line 189
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_11

    .line 195
    sget-object p0, Leg0;->h:Lcg0;

    .line 197
    if-eqz p0, :cond_f

    .line 199
    invoke-virtual {p0}, Lcg0;->isShutdown()Z

    .line 202
    move-result p0

    .line 203
    if-eqz p0, :cond_10

    .line 205
    :cond_f
    new-instance p0, Lcg0;

    .line 207
    new-instance v1, Lfg0;

    .line 209
    const-string v3, "SYNC_SDK_IO_HANDLE"

    .line 211
    invoke-direct {v1, v3}, Lfg0;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-direct {p0, v2, v1}, Lcg0;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 217
    sput-object p0, Leg0;->h:Lcg0;

    .line 219
    :cond_10
    sget-object p0, Leg0;->h:Lcg0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 221
    monitor-exit v0

    .line 222
    return-object p0

    .line 223
    :cond_11
    :try_start_6
    sget-object v1, Lag0;->g:Lag0;

    .line 225
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_14

    .line 231
    sget-object p0, Leg0;->h:Lcg0;

    .line 233
    if-eqz p0, :cond_12

    .line 235
    invoke-virtual {p0}, Lcg0;->isShutdown()Z

    .line 238
    move-result p0

    .line 239
    if-eqz p0, :cond_13

    .line 241
    :cond_12
    new-instance p0, Lcg0;

    .line 243
    new-instance v1, Lfg0;

    .line 245
    const-string v3, "USER_BL"

    .line 247
    invoke-direct {v1, v3}, Lfg0;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, v2, v1}, Lcg0;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 253
    sput-object p0, Leg0;->h:Lcg0;

    .line 255
    :cond_13
    sget-object p0, Leg0;->h:Lcg0;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 257
    monitor-exit v0

    .line 258
    return-object p0

    .line 259
    :cond_14
    :try_start_7
    sget-object v1, Lag0;->i:Lag0;

    .line 261
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_17

    .line 267
    sget-object p0, Leg0;->i:Lcg0;

    .line 269
    if-eqz p0, :cond_15

    .line 271
    invoke-virtual {p0}, Lcg0;->isShutdown()Z

    .line 274
    move-result p0

    .line 275
    if-eqz p0, :cond_16

    .line 277
    :cond_15
    new-instance p0, Lcg0;

    .line 279
    new-instance v1, Lfg0;

    .line 281
    const-string v3, "ADAPTER"

    .line 283
    invoke-direct {v1, v3}, Lfg0;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-direct {p0, v2, v1}, Lcg0;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 289
    sput-object p0, Leg0;->i:Lcg0;

    .line 291
    :cond_16
    sget-object p0, Leg0;->i:Lcg0;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 293
    monitor-exit v0

    .line 294
    return-object p0

    .line 295
    :cond_17
    :try_start_8
    sget-object v1, Lag0;->j:Lag0;

    .line 297
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 300
    move-result p0

    .line 301
    if-eqz p0, :cond_1a

    .line 303
    sget-object p0, Leg0;->j:Lcg0;

    .line 305
    if-eqz p0, :cond_18

    .line 307
    invoke-virtual {p0}, Lcg0;->isShutdown()Z

    .line 310
    move-result p0

    .line 311
    if-eqz p0, :cond_19

    .line 313
    :cond_18
    new-instance p0, Lcg0;

    .line 315
    new-instance v1, Lfg0;

    .line 317
    const-string v2, "DIM"

    .line 319
    invoke-direct {v1, v2}, Lfg0;-><init>(Ljava/lang/String;)V

    .line 322
    const/4 v2, 0x4

    .line 323
    invoke-direct {p0, v2, v1}, Lcg0;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 326
    sput-object p0, Leg0;->j:Lcg0;

    .line 328
    :cond_19
    sget-object p0, Leg0;->j:Lcg0;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 330
    monitor-exit v0

    .line 331
    return-object p0

    .line 332
    :cond_1a
    :try_start_9
    sget-object p0, Leg0;->b:Lcg0;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 334
    monitor-exit v0

    .line 335
    return-object p0

    .line 336
    :catchall_0
    move-exception p0

    .line 337
    monitor-exit v0

    .line 338
    throw p0
.end method

.method public static declared-synchronized b(Lag0;)V
    .locals 4

    .line 1
    const-class v0, Leg0;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "byron"

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v3, "[TaskProxy] shutDown:= "

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object v1, Lag0;->c:Lag0;

    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v1, :cond_0

    .line 35
    sget-object p0, Leg0;->c:Lcg0;

    .line 37
    if-eqz p0, :cond_7

    .line 39
    invoke-virtual {p0}, Lcg0;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 46
    sput-object v2, Leg0;->c:Lcg0;

    .line 48
    goto/16 :goto_0

    .line 50
    :cond_0
    sget-object v1, Lag0;->d:Lag0;

    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 58
    sget-object p0, Leg0;->d:Lcg0;

    .line 60
    if-eqz p0, :cond_7

    .line 62
    invoke-virtual {p0}, Lcg0;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 69
    sput-object v2, Leg0;->d:Lcg0;

    .line 71
    goto/16 :goto_0

    .line 73
    :cond_1
    sget-object v1, Lag0;->e:Lag0;

    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_2

    .line 81
    sget-object p0, Leg0;->e:Lcg0;

    .line 83
    if-eqz p0, :cond_7

    .line 85
    invoke-virtual {p0}, Lcg0;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 92
    sput-object v2, Leg0;->e:Lcg0;

    .line 94
    goto/16 :goto_0

    .line 96
    :cond_2
    sget-object v1, Lag0;->f:Lag0;

    .line 98
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_3

    .line 104
    sget-object p0, Leg0;->f:Lcg0;

    .line 106
    if-eqz p0, :cond_7

    .line 108
    invoke-virtual {p0}, Lcg0;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 115
    sput-object v2, Leg0;->f:Lcg0;

    .line 117
    goto :goto_0

    .line 118
    :cond_3
    sget-object v1, Lag0;->h:Lag0;

    .line 120
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_4

    .line 126
    sget-object p0, Leg0;->h:Lcg0;

    .line 128
    if-eqz p0, :cond_7

    .line 130
    invoke-virtual {p0}, Lcg0;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 137
    sput-object v2, Leg0;->h:Lcg0;

    .line 139
    goto :goto_0

    .line 140
    :cond_4
    sget-object v1, Lag0;->g:Lag0;

    .line 142
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_5

    .line 148
    sget-object p0, Leg0;->h:Lcg0;

    .line 150
    if-eqz p0, :cond_7

    .line 152
    invoke-virtual {p0}, Lcg0;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 159
    sput-object v2, Leg0;->h:Lcg0;

    .line 161
    goto :goto_0

    .line 162
    :cond_5
    sget-object v1, Lag0;->i:Lag0;

    .line 164
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_6

    .line 170
    sget-object p0, Leg0;->i:Lcg0;

    .line 172
    if-eqz p0, :cond_7

    .line 174
    invoke-virtual {p0}, Lcg0;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 177
    move-result-object p0

    .line 178
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 181
    sput-object v2, Leg0;->i:Lcg0;

    .line 183
    goto :goto_0

    .line 184
    :cond_6
    sget-object v1, Lag0;->j:Lag0;

    .line 186
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 189
    move-result p0

    .line 190
    if-eqz p0, :cond_7

    .line 192
    sget-object p0, Leg0;->j:Lcg0;

    .line 194
    if-eqz p0, :cond_7

    .line 196
    invoke-virtual {p0}, Lcg0;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 203
    sput-object v2, Leg0;->j:Lcg0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_7
    :goto_0
    monitor-exit v0

    .line 206
    return-void

    .line 207
    :catchall_0
    move-exception p0

    .line 208
    monitor-exit v0

    .line 209
    throw p0
.end method
