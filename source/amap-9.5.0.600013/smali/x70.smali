.class public Lx70;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public a:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/net/Socket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx70;->a:Ljava/net/Socket;

    .line 3
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 6
    const-string v0, "ProtocolHandler.rzc"

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq p1, v2, :cond_8

    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq p1, v3, :cond_6

    .line 15
    const/4 v3, 0x3

    .line 16
    if-eq p1, v3, :cond_4

    .line 18
    const/4 v3, 0x5

    .line 19
    if-eq p1, v3, :cond_3

    .line 21
    const/4 v3, 0x6

    .line 22
    if-eq p1, v3, :cond_2

    .line 24
    const/16 v3, 0x8

    .line 26
    if-eq p1, v3, :cond_1

    .line 28
    const/16 v3, 0x9

    .line 30
    if-eq p1, v3, :cond_0

    .line 32
    goto/16 :goto_2

    .line 34
    :cond_0
    :try_start_0
    iget-object p1, p0, Lx70;->a:Ljava/net/Socket;

    .line 36
    invoke-static {p1, v3}, Le80;->h(Ljava/net/Socket;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto/16 :goto_2

    .line 41
    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    sget-boolean v3, Lxj0;->a:Z

    .line 47
    if-eqz v3, :cond_9

    .line 49
    new-array v2, v2, [Ljava/lang/Object;

    .line 51
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    aput-object p1, v2, v1

    .line 57
    const-string p1, "MSG_ID_RESPONSE_PARTIAL_MAP_SUCCESS e = {?}"

    .line 59
    invoke-static {v0, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    goto/16 :goto_2

    .line 64
    :cond_1
    :try_start_1
    iget-object p1, p0, Lx70;->a:Ljava/net/Socket;

    .line 66
    invoke-static {p1, v3}, Le80;->h(Ljava/net/Socket;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    goto/16 :goto_2

    .line 71
    :catch_1
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    sget-boolean v3, Lxj0;->a:Z

    .line 77
    if-eqz v3, :cond_9

    .line 79
    new-array v2, v2, [Ljava/lang/Object;

    .line 81
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    aput-object p1, v2, v1

    .line 87
    const-string p1, "MSG_ID_RESPONSE_PARTIAL_MAP_ERROR e = {?}"

    .line 89
    invoke-static {v0, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    goto/16 :goto_2

    .line 94
    :cond_2
    :try_start_2
    iget-object p1, p0, Lx70;->a:Ljava/net/Socket;

    .line 96
    invoke-static {p1, v3}, Le80;->h(Ljava/net/Socket;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 99
    goto/16 :goto_2

    .line 101
    :catch_2
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    sget-boolean v3, Lxj0;->a:Z

    .line 107
    if-eqz v3, :cond_9

    .line 109
    new-array v2, v2, [Ljava/lang/Object;

    .line 111
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    aput-object p1, v2, v1

    .line 117
    const-string p1, "MSG_ID_RESPONSE_BACKGROUND_MAP_SUCCESS {?}"

    .line 119
    invoke-static {v0, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    goto/16 :goto_2

    .line 124
    :cond_3
    :try_start_3
    iget-object p1, p0, Lx70;->a:Ljava/net/Socket;

    .line 126
    invoke-static {p1, v3}, Le80;->h(Ljava/net/Socket;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 129
    goto/16 :goto_2

    .line 131
    :catch_3
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    sget-boolean v3, Lxj0;->a:Z

    .line 137
    if-eqz v3, :cond_9

    .line 139
    new-array v2, v2, [Ljava/lang/Object;

    .line 141
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 145
    aput-object p1, v2, v1

    .line 147
    const-string p1, "MSG_ID_RESPONSE_BACKGROUND_MAP_ERROR e = {?}"

    .line 149
    invoke-static {v0, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    goto :goto_2

    .line 153
    :cond_4
    :try_start_4
    iget-object p1, p0, Lx70;->a:Ljava/net/Socket;

    .line 155
    invoke-static {p1, v3}, Le80;->h(Ljava/net/Socket;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 158
    goto :goto_0

    .line 159
    :catch_4
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    sget-boolean v3, Lxj0;->a:Z

    .line 165
    if-eqz v3, :cond_5

    .line 167
    new-array v2, v2, [Ljava/lang/Object;

    .line 169
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 172
    move-result-object p1

    .line 173
    aput-object p1, v2, v1

    .line 175
    const-string p1, "MSG_ID_STOP e = {?}"

    .line 177
    invoke-static {v0, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :cond_5
    :goto_0
    sput-boolean v1, Lwg;->a:Z

    .line 182
    goto :goto_2

    .line 183
    :cond_6
    :try_start_5
    iget-object p1, p0, Lx70;->a:Ljava/net/Socket;

    .line 185
    invoke-static {p1, v3}, Le80;->h(Ljava/net/Socket;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 188
    goto :goto_1

    .line 189
    :catch_5
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 193
    sget-boolean v3, Lxj0;->a:Z

    .line 195
    if-eqz v3, :cond_7

    .line 197
    new-array v3, v2, [Ljava/lang/Object;

    .line 199
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 202
    move-result-object p1

    .line 203
    aput-object p1, v3, v1

    .line 205
    const-string p1, "MSG_ID_PLAY e = {?}"

    .line 207
    invoke-static {v0, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    :cond_7
    :goto_1
    sput-boolean v2, Lwg;->a:Z

    .line 212
    goto :goto_2

    .line 213
    :cond_8
    :try_start_6
    iget-object p1, p0, Lx70;->a:Ljava/net/Socket;

    .line 215
    invoke-static {p1, v2}, Le80;->h(Ljava/net/Socket;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 218
    goto :goto_2

    .line 219
    :catch_6
    move-exception p1

    .line 220
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    sget-boolean v3, Lxj0;->a:Z

    .line 225
    if-eqz v3, :cond_9

    .line 227
    new-array v2, v2, [Ljava/lang/Object;

    .line 229
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 232
    move-result-object p1

    .line 233
    aput-object p1, v2, v1

    .line 235
    const-string p1, "MSG_ID_Heart e = {?}"

    .line 237
    invoke-static {v0, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    :cond_9
    :goto_2
    return-void
.end method
