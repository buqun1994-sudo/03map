.class public Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;
.super Lvp;
.source "SourceFile"


# static fields
.field public static final ERROR_CODE_ROUTE_REQUEST_URL:I = 0x64

.field public static final ERROR_CODE_ROUTE_RESULT_FILE_ERROR1:I = 0x65

.field public static final ERROR_CODE_ROUTE_RESULT_FILE_ERROR2:I = 0x66

.field public static final ERROR_CODE_ROUTE_RESULT_FILE_ERROR3:I = 0x67

.field public static final ERROR_CODE_ROUTE_RESULT_FILE_ERROR4:I = 0x68

.field public static final ERROR_CODE_ROUTE_RESULT_FILE_ERROR5:I = 0x69

.field public static final ERROR_CODE_ROUTE_RESULT_FILE_ERROR6:I = 0x6a

.field public static final PARAM_REQUEST:Ljava/lang/String; = "request"

.field public static final PARAM_SESSION_ID:Ljava/lang/String; = "sessionid"

.field public static final PARAM_SOURCE:Ljava/lang/String; = "source"

.field public static final TAG:Ljava/lang/String; = "LinkAutoServer"

.field public static mSessionId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvp;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public serveAcceptExchangePeer(Lf20$l;)Lf20$n;
    .locals 8
    .annotation runtime Lvp$a;
        path = "/autoservice/accept/onekey/exchange_peer"
    .end annotation

    .line 1
    const-string v0, "Exception"

    .line 3
    sget-object v1, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    const-string v4, "start exchange_peer request"

    .line 10
    invoke-static {v1, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    new-instance v3, Ljava/util/HashMap;

    .line 15
    const/16 v4, 0x10

    .line 17
    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 20
    const/16 v4, 0x6a

    .line 22
    if-nez p1, :cond_0

    .line 24
    invoke-static {v4}, Lex;->a(I)Lf20$n;

    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_0
    :try_start_0
    invoke-interface {p1, v3}, Lf20$l;->b(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lf20$o; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 32
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 35
    move-result p1

    .line 36
    if-gtz p1, :cond_1

    .line 38
    const-string p1, "ERROR_CODE_ROUTE_RESULT_FILE_ERROR3"

    .line 40
    new-array v0, v2, [Ljava/lang/Object;

    .line 42
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const/16 p1, 0x67

    .line 47
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_1
    :try_start_1
    const-string p1, "rawContent"

    .line 54
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    check-cast p1, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    const/16 v0, 0x69

    .line 62
    if-nez p1, :cond_2

    .line 64
    const-string p1, "ERROR_CODE_ROUTE_RESULT_FILE_ERROR5"

    .line 66
    new-array v2, v2, [Ljava/lang/Object;

    .line 68
    invoke-static {v1, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-static {v0}, Lex;->a(I)Lf20$n;

    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :cond_2
    new-instance v3, Ljava/lang/String;

    .line 78
    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    .line 81
    const/4 p1, 0x1

    .line 82
    new-array v4, p1, [Ljava/lang/Object;

    .line 84
    aput-object v3, v4, v2

    .line 86
    const-string v5, "LinkAutoServer exchange_peer rawData ={?}"

    .line 88
    invoke-static {v1, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_3

    .line 97
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    .line 99
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    const-string v3, "displayName"

    .line 104
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v3

    .line 108
    const-string v5, "featureCode"

    .line 110
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object v4

    .line 114
    new-instance v5, Lym0;

    .line 116
    invoke-direct {v5}, Lym0;-><init>()V

    .line 119
    iput-object v3, v5, Lym0;->c:Ljava/lang/String;

    .line 121
    iput-object v4, v5, Lym0;->b:Ljava/lang/String;

    .line 123
    const-string v6, "LinkAutoServer exchange_peer displayName ={?},featureCode = {?}"

    .line 125
    const/4 v7, 0x2

    .line 126
    new-array v7, v7, [Ljava/lang/Object;

    .line 128
    aput-object v3, v7, v2

    .line 130
    aput-object v4, v7, p1

    .line 132
    invoke-static {v1, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-static {}, Ldx;->c()Ldx;

    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ldx;->e()Lum0;

    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1, v5}, Lum0;->a(Lym0;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    sget-object v3, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 150
    new-array v4, p1, [Ljava/lang/Object;

    .line 152
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 155
    move-result-object v1

    .line 156
    aput-object v1, v4, v2

    .line 158
    const-string v1, "LinkAutoServer parse directDevice error {?}"

    .line 160
    invoke-static {v3, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :cond_3
    :goto_0
    invoke-static {}, Ldx;->c()Ldx;

    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Ldx;->e()Lum0;

    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lum0;->e()Lym0;

    .line 174
    move-result-object v1

    .line 175
    if-eqz v1, :cond_4

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    const-string v2, "{\"displayName\":\""

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v2, v1, Lym0;->c:Ljava/lang/String;

    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v2, "\",\"featureCode\":\""

    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, v1, Lym0;->b:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, "\"}"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v0

    .line 211
    invoke-static {p1, p1, v0}, Lex;->d(ZILjava/lang/String;)Lf20$n;

    .line 214
    move-result-object p1

    .line 215
    return-object p1

    .line 216
    :cond_4
    invoke-static {v0}, Lex;->a(I)Lf20$n;

    .line 219
    move-result-object p1

    .line 220
    return-object p1

    .line 221
    :catch_1
    move-exception p1

    .line 222
    new-array v1, v2, [Ljava/lang/Object;

    .line 224
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 227
    const/16 p1, 0x68

    .line 229
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 232
    move-result-object p1

    .line 233
    return-object p1

    .line 234
    :catch_2
    move-exception p1

    .line 235
    new-array v1, v2, [Ljava/lang/Object;

    .line 237
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 240
    invoke-static {v4}, Lex;->a(I)Lf20$n;

    .line 243
    move-result-object p1

    .line 244
    return-object p1

    .line 245
    :catch_3
    move-exception p1

    .line 246
    const-string v0, "ResponseException"

    .line 248
    new-array v1, v2, [Ljava/lang/Object;

    .line 250
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 253
    const/16 p1, 0x66

    .line 255
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 258
    move-result-object p1

    .line 259
    return-object p1

    .line 260
    :catch_4
    move-exception p1

    .line 261
    new-array v1, v2, [Ljava/lang/Object;

    .line 263
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 266
    const/16 p1, 0x65

    .line 268
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 271
    move-result-object p1

    .line 272
    return-object p1
.end method

.method public serveAcceptExchangeTid(Lf20$l;)Lf20$n;
    .locals 2
    .annotation runtime Lvp$a;
        path = "/autoservice/accept/exchange/tid"
    .end annotation

    .line 1
    sget-object p1, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    const-string v1, "start serveAcceptExchangeTid"

    .line 8
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v0, "{\"tid\":\""

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {}, Lf30;->z()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    const-string v1, "UTF-8"

    .line 27
    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v0, "\"}"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-static {v0, v0, p1}, Lex;->d(ZILjava/lang/String;)Lf20$n;

    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method public serveAcceptOnekeyQuery(Lf20$l;)Lf20$n;
    .locals 4
    .annotation runtime Lvp$a;
        path = "/autoservice/accept/onekey/query"
    .end annotation

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "start onekey query request"

    .line 8
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v2, Lcom/autonavi/amapauto/remotecontrol/HttpSession;

    .line 13
    invoke-direct {v2}, Lcom/autonavi/amapauto/remotecontrol/HttpSession;-><init>()V

    .line 16
    invoke-interface {p1}, Lf20$l;->c()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    iput-object p1, v2, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->url:Ljava/lang/String;

    .line 30
    const/4 v3, 0x1

    .line 31
    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    aput-object p1, v3, v1

    .line 35
    const-string p1, "LinkAutoServer serveAcceptOnekeyQuery uri={?}"

    .line 37
    invoke-static {v0, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-static {v2}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->onHttpResponse(Lcom/autonavi/amapauto/remotecontrol/HttpSession;)Lcom/autonavi/amapauto/remotecontrol/RemoteControlResponse;

    .line 43
    move-result-object p1

    .line 44
    const-string v2, "LinkAutoServer serveAcceptOnekeyQuery end"

    .line 46
    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget p1, p1, Lcom/autonavi/amapauto/remotecontrol/RemoteControlResponse;->code:I

    .line 53
    invoke-static {p1}, Lex;->c(I)Lf20$n;

    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method public serveAcceptOnekeyStart(Lf20$l;)Lf20$n;
    .locals 5
    .annotation runtime Lvp$a;
        path = "/autoservice/accept/onekey/start"
    .end annotation

    .line 1
    const-string v0, "Exception"

    .line 3
    sget-object v1, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    const-string v4, "start onekey_start request"

    .line 10
    invoke-static {v1, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    new-instance v3, Ljava/util/HashMap;

    .line 15
    const/16 v4, 0x10

    .line 17
    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 20
    const/16 v4, 0x6a

    .line 22
    if-nez p1, :cond_0

    .line 24
    invoke-static {v4}, Lex;->a(I)Lf20$n;

    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_0
    :try_start_0
    invoke-interface {p1, v3}, Lf20$l;->b(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lf20$o; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 35
    move-result v4

    .line 36
    if-gtz v4, :cond_1

    .line 38
    const-string p1, "ERROR_CODE_ROUTE_RESULT_FILE_ERROR3"

    .line 40
    new-array v0, v2, [Ljava/lang/Object;

    .line 42
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const/16 p1, 0x67

    .line 47
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_1
    :try_start_1
    const-string v4, "rawContent"

    .line 54
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    check-cast v3, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    if-nez v3, :cond_2

    .line 62
    const-string p1, "ERROR_CODE_ROUTE_RESULT_FILE_ERROR5"

    .line 64
    new-array v0, v2, [Ljava/lang/Object;

    .line 66
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const/16 p1, 0x69

    .line 71
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :cond_2
    new-instance v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;

    .line 78
    invoke-direct {v0}, Lcom/autonavi/amapauto/remotecontrol/HttpSession;-><init>()V

    .line 81
    iput-object v3, v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->rawContent:[B

    .line 83
    invoke-interface {p1}, Lf20$l;->c()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    iput-object p1, v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->url:Ljava/lang/String;

    .line 97
    const/4 v3, 0x2

    .line 98
    new-array v3, v3, [Ljava/lang/Object;

    .line 100
    aput-object p1, v3, v2

    .line 102
    new-instance p1, Ljava/lang/String;

    .line 104
    iget-object v4, v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->rawContent:[B

    .line 106
    invoke-direct {p1, v4}, Ljava/lang/String;-><init>([B)V

    .line 109
    const/4 v4, 0x1

    .line 110
    aput-object p1, v3, v4

    .line 112
    const-string p1, "LinkAutoServer serveAcceptOnekeyStart uri={?}\uff0chttpSession.rawContent ={?}"

    .line 114
    invoke-static {v1, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-static {v0}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->onHttpResponse(Lcom/autonavi/amapauto/remotecontrol/HttpSession;)Lcom/autonavi/amapauto/remotecontrol/RemoteControlResponse;

    .line 120
    const-string p1, "LinkAutoServer serveAcceptOnekeyStart end"

    .line 122
    new-array v0, v2, [Ljava/lang/Object;

    .line 124
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-static {}, Lex;->e()Lf20$n;

    .line 130
    move-result-object p1

    .line 131
    return-object p1

    .line 132
    :catch_0
    move-exception p1

    .line 133
    new-array v1, v2, [Ljava/lang/Object;

    .line 135
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 138
    const/16 p1, 0x68

    .line 140
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 143
    move-result-object p1

    .line 144
    return-object p1

    .line 145
    :catch_1
    move-exception p1

    .line 146
    new-array v1, v2, [Ljava/lang/Object;

    .line 148
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 151
    invoke-static {v4}, Lex;->a(I)Lf20$n;

    .line 154
    move-result-object p1

    .line 155
    return-object p1

    .line 156
    :catch_2
    move-exception p1

    .line 157
    const-string v0, "ResponseException"

    .line 159
    new-array v1, v2, [Ljava/lang/Object;

    .line 161
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 164
    const/16 p1, 0x66

    .line 166
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 169
    move-result-object p1

    .line 170
    return-object p1

    .line 171
    :catch_3
    move-exception p1

    .line 172
    new-array v1, v2, [Ljava/lang/Object;

    .line 174
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 177
    const/16 p1, 0x65

    .line 179
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 182
    move-result-object p1

    .line 183
    return-object p1
.end method

.method public serveAcceptOnekeyStop(Lf20$l;)Lf20$n;
    .locals 4
    .annotation runtime Lvp$a;
        path = "/autoservice/accept/onekey/stop"
    .end annotation

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "start onekey stop request"

    .line 8
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v2, Lcom/autonavi/amapauto/remotecontrol/HttpSession;

    .line 13
    invoke-direct {v2}, Lcom/autonavi/amapauto/remotecontrol/HttpSession;-><init>()V

    .line 16
    invoke-interface {p1}, Lf20$l;->c()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    iput-object p1, v2, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->url:Ljava/lang/String;

    .line 30
    const/4 v3, 0x1

    .line 31
    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    aput-object p1, v3, v1

    .line 35
    const-string p1, "LinkAutoServer serveAcceptOnekeyStop uri={?}"

    .line 37
    invoke-static {v0, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-static {v2}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->onHttpResponse(Lcom/autonavi/amapauto/remotecontrol/HttpSession;)Lcom/autonavi/amapauto/remotecontrol/RemoteControlResponse;

    .line 43
    const-string p1, "LinkAutoServer serveAcceptOnekeyStop end"

    .line 45
    new-array v1, v1, [Ljava/lang/Object;

    .line 47
    invoke-static {v0, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lex;->e()Lf20$n;

    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public serveAcceptPOIResult(Lf20$l;)Lf20$n;
    .locals 5
    .annotation runtime Lvp$a;
        path = "/autoservice/accept/navi/poi_result"
    .end annotation

    .line 1
    const-string v0, "Exception"

    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 5
    const/16 v2, 0x10

    .line 7
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    const/16 v2, 0x6a

    .line 12
    if-nez p1, :cond_0

    .line 14
    invoke-static {v2}, Lex;->a(I)Lf20$n;

    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    :try_start_0
    invoke-interface {p1, v1}, Lf20$l;->b(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lf20$o; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 26
    move-result v2

    .line 27
    if-gtz v2, :cond_1

    .line 29
    sget-object p1, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "ERROR_CODE_ROUTE_RESULT_FILE_ERROR3"

    .line 33
    new-array v1, v3, [Ljava/lang/Object;

    .line 35
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    const/16 p1, 0x67

    .line 40
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_1
    :try_start_1
    const-string v2, "rawContent"

    .line 47
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    if-nez v1, :cond_2

    .line 55
    sget-object p1, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 57
    const-string v0, "ERROR_CODE_ROUTE_RESULT_FILE_ERROR5"

    .line 59
    new-array v1, v3, [Ljava/lang/Object;

    .line 61
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    const/16 p1, 0x69

    .line 66
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    :cond_2
    new-instance v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;

    .line 73
    invoke-direct {v0}, Lcom/autonavi/amapauto/remotecontrol/HttpSession;-><init>()V

    .line 76
    iput-object v1, v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->rawContent:[B

    .line 78
    invoke-interface {p1}, Lf20$l;->c()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    iput-object p1, v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->url:Ljava/lang/String;

    .line 92
    iget-object v1, v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->rawContent:[B

    .line 94
    if-eqz v1, :cond_3

    .line 96
    array-length v1, v1

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    const/4 v1, 0x0

    .line 99
    :goto_0
    sget-object v2, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 101
    const/4 v4, 0x3

    .line 102
    new-array v4, v4, [Ljava/lang/Object;

    .line 104
    aput-object p1, v4, v3

    .line 106
    const/4 p1, 0x1

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v1

    .line 111
    aput-object v1, v4, p1

    .line 113
    new-instance p1, Ljava/lang/String;

    .line 115
    iget-object v1, v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->rawContent:[B

    .line 117
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .line 120
    const/4 v1, 0x2

    .line 121
    aput-object p1, v4, v1

    .line 123
    const-string p1, "LinkAutoServer serveAcceptPOIResult uri={?}\uff0clength={?}, httpSession.rawContent ={?}"

    .line 125
    invoke-static {v2, p1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-static {v0}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->onHttpResponse(Lcom/autonavi/amapauto/remotecontrol/HttpSession;)Lcom/autonavi/amapauto/remotecontrol/RemoteControlResponse;

    .line 131
    const-string p1, "LinkAutoServer serveAcceptPOIResult end"

    .line 133
    new-array v0, v3, [Ljava/lang/Object;

    .line 135
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-static {}, Lex;->e()Lf20$n;

    .line 141
    move-result-object p1

    .line 142
    return-object p1

    .line 143
    :catch_0
    move-exception p1

    .line 144
    new-array v1, v3, [Ljava/lang/Object;

    .line 146
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 149
    const/16 p1, 0x68

    .line 151
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 154
    move-result-object p1

    .line 155
    return-object p1

    .line 156
    :catch_1
    move-exception p1

    .line 157
    new-array v1, v3, [Ljava/lang/Object;

    .line 159
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 162
    invoke-static {v2}, Lex;->a(I)Lf20$n;

    .line 165
    move-result-object p1

    .line 166
    return-object p1

    .line 167
    :catch_2
    move-exception p1

    .line 168
    const-string v0, "ResponseException"

    .line 170
    new-array v1, v3, [Ljava/lang/Object;

    .line 172
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 175
    const/16 p1, 0x66

    .line 177
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 180
    move-result-object p1

    .line 181
    return-object p1

    .line 182
    :catch_3
    move-exception p1

    .line 183
    new-array v1, v3, [Ljava/lang/Object;

    .line 185
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 188
    const/16 p1, 0x65

    .line 190
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 193
    move-result-object p1

    .line 194
    return-object p1
.end method

.method public serveAcceptRouteRequest(Lf20$l;)Lf20$n;
    .locals 9
    .annotation runtime Lvp$a;
        path = "/autoservice/accept/navi/route_request"
    .end annotation

    .line 1
    const-string v0, "request"

    .line 3
    const-string v1, "source"

    .line 5
    const-string v2, "sessionid"

    .line 7
    new-instance v3, Lcom/autonavi/amapauto/remotecontrol/HttpSession;

    .line 9
    invoke-direct {v3}, Lcom/autonavi/amapauto/remotecontrol/HttpSession;-><init>()V

    .line 12
    invoke-interface {p1}, Lf20$l;->a()Ljava/util/Map;

    .line 15
    move-result-object v4

    .line 16
    new-instance v5, Lorg/json/JSONObject;

    .line 18
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x1

    .line 23
    :try_start_0
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v8

    .line 27
    invoke-virtual {v5, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v8

    .line 34
    invoke-virtual {v5, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    new-instance v1, Lorg/json/JSONObject;

    .line 39
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v8

    .line 43
    check-cast v8, Ljava/lang/String;

    .line 45
    invoke-direct {v1, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    sget-object v1, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 55
    new-array v8, v7, [Ljava/lang/Object;

    .line 57
    aput-object v0, v8, v6

    .line 59
    const-string v0, "serveAcceptRouteRequest Exception"

    .line 61
    invoke-static {v1, v0, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    iput-object v0, v3, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->parms:Ljava/lang/String;

    .line 70
    invoke-interface {p1}, Lf20$l;->c()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    iput-object p1, v3, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->url:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 86
    new-array v1, v7, [Ljava/lang/Object;

    .line 88
    aput-object p1, v1, v6

    .line 90
    const-string p1, "LinkAutoServer serveAcceptRouteRequest AndroidRemoteControl url={?}"

    .line 92
    invoke-static {v0, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-static {v3}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->onHttpResponse(Lcom/autonavi/amapauto/remotecontrol/HttpSession;)Lcom/autonavi/amapauto/remotecontrol/RemoteControlResponse;

    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    .line 101
    iget-object v3, v1, Lcom/autonavi/amapauto/remotecontrol/RemoteControlResponse;->requestUrl:Ljava/lang/String;

    .line 103
    if-eqz v3, :cond_0

    .line 105
    new-array v5, v7, [Ljava/lang/Object;

    .line 107
    aput-object v3, v5, v6

    .line 109
    invoke-static {v0, p1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Ljava/lang/String;

    .line 118
    sput-object p1, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->mSessionId:Ljava/lang/String;

    .line 120
    iget-object p1, v1, Lcom/autonavi/amapauto/remotecontrol/RemoteControlResponse;->requestUrl:Ljava/lang/String;

    .line 122
    invoke-static {p1}, Lex;->f(Ljava/lang/String;)Lf20$n;

    .line 125
    move-result-object p1

    .line 126
    return-object p1

    .line 127
    :cond_0
    const/16 p1, 0x64

    .line 129
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 132
    move-result-object p1

    .line 133
    return-object p1
.end method

.method public serveAcceptRouteRestore(Lf20$l;)Lf20$n;
    .locals 5
    .annotation runtime Lvp$a;
        path = "/autoservice/accept/navi/route_restore"
    .end annotation

    .line 1
    const-string v0, "Exception"

    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 5
    const/16 v2, 0x10

    .line 7
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    const/16 v2, 0x6a

    .line 12
    if-nez p1, :cond_0

    .line 14
    invoke-static {v2}, Lex;->a(I)Lf20$n;

    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    :try_start_0
    invoke-interface {p1, v1}, Lf20$l;->b(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lf20$o; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 26
    move-result v2

    .line 27
    if-gtz v2, :cond_1

    .line 29
    sget-object p1, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "ERROR_CODE_ROUTE_RESULT_FILE_ERROR3"

    .line 33
    new-array v1, v3, [Ljava/lang/Object;

    .line 35
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    const/16 p1, 0x67

    .line 40
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_1
    :try_start_1
    const-string v2, "rawContent"

    .line 47
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    if-nez v1, :cond_2

    .line 55
    sget-object p1, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 57
    const-string v0, "ERROR_CODE_ROUTE_RESULT_FILE_ERROR5"

    .line 59
    new-array v1, v3, [Ljava/lang/Object;

    .line 61
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    const/16 p1, 0x69

    .line 66
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    :cond_2
    new-instance v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;

    .line 73
    invoke-direct {v0}, Lcom/autonavi/amapauto/remotecontrol/HttpSession;-><init>()V

    .line 76
    iput-object v1, v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->rawContent:[B

    .line 78
    invoke-interface {p1}, Lf20$l;->c()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    iput-object p1, v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->url:Ljava/lang/String;

    .line 92
    sget-object v1, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 94
    const/4 v2, 0x2

    .line 95
    new-array v2, v2, [Ljava/lang/Object;

    .line 97
    aput-object p1, v2, v3

    .line 99
    new-instance p1, Ljava/lang/String;

    .line 101
    iget-object v4, v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->rawContent:[B

    .line 103
    invoke-direct {p1, v4}, Ljava/lang/String;-><init>([B)V

    .line 106
    const/4 v4, 0x1

    .line 107
    aput-object p1, v2, v4

    .line 109
    const-string p1, "LinkAutoServer serveAcceptRouteRestore uri={?}\uff0chttpSession.rawContent ={?}"

    .line 111
    invoke-static {v1, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {v0}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->onHttpResponse(Lcom/autonavi/amapauto/remotecontrol/HttpSession;)Lcom/autonavi/amapauto/remotecontrol/RemoteControlResponse;

    .line 117
    const-string p1, "LinkAutoServer serveAcceptRouteRestore end"

    .line 119
    new-array v0, v3, [Ljava/lang/Object;

    .line 121
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-static {}, Lex;->e()Lf20$n;

    .line 127
    move-result-object p1

    .line 128
    return-object p1

    .line 129
    :catch_0
    move-exception p1

    .line 130
    new-array v1, v3, [Ljava/lang/Object;

    .line 132
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 135
    const/16 p1, 0x68

    .line 137
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    :catch_1
    move-exception p1

    .line 143
    new-array v1, v3, [Ljava/lang/Object;

    .line 145
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 148
    invoke-static {v2}, Lex;->a(I)Lf20$n;

    .line 151
    move-result-object p1

    .line 152
    return-object p1

    .line 153
    :catch_2
    move-exception p1

    .line 154
    const-string v0, "ResponseException"

    .line 156
    new-array v1, v3, [Ljava/lang/Object;

    .line 158
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 161
    const/16 p1, 0x66

    .line 163
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 166
    move-result-object p1

    .line 167
    return-object p1

    .line 168
    :catch_3
    move-exception p1

    .line 169
    new-array v1, v3, [Ljava/lang/Object;

    .line 171
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 174
    const/16 p1, 0x65

    .line 176
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 179
    move-result-object p1

    .line 180
    return-object p1
.end method

.method public serveAcceptRouteResult(Lf20$l;)Lf20$n;
    .locals 6
    .annotation runtime Lvp$a;
        path = "/autoservice/accept/navi/route_result"
    .end annotation

    .line 1
    const-string v0, "serveAcceptRouteResult Exception"

    .line 3
    const/16 v1, 0x6a

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 8
    sget-object p1, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 10
    const-string v0, "serveAcceptRouteResult sessionid == null"

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {p1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-static {v1}, Lex;->a(I)Lf20$n;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    invoke-interface {p1}, Lf20$l;->a()Ljava/util/Map;

    .line 25
    move-result-object v3

    .line 26
    const-string v4, "sessionid"

    .line 28
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 34
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_1

    .line 40
    sget-object v5, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->mSessionId:Ljava/lang/String;

    .line 42
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_1

    .line 48
    sget-object p1, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 50
    const-string v0, "serveAcceptRouteResult sessionid no match"

    .line 52
    new-array v1, v2, [Ljava/lang/Object;

    .line 54
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-static {v4}, Lex;->b(Ljava/lang/String;)Lf20$n;

    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    .line 64
    const/16 v4, 0x10

    .line 66
    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 69
    :try_start_0
    invoke-interface {p1, v3}, Lf20$l;->b(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lf20$o; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 75
    move-result v1

    .line 76
    if-gtz v1, :cond_2

    .line 78
    sget-object p1, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 80
    const-string v0, "serveAcceptRouteResult ERROR_CODE_ROUTE_RESULT_FILE_ERROR3"

    .line 82
    new-array v1, v2, [Ljava/lang/Object;

    .line 84
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    const/16 p1, 0x67

    .line 89
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    :cond_2
    :try_start_1
    const-string v1, "rawContent"

    .line 96
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object v1

    .line 100
    check-cast v1, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    if-nez v1, :cond_3

    .line 104
    sget-object p1, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 106
    const-string v0, "serveAcceptRouteResult ERROR_CODE_ROUTE_RESULT_FILE_ERROR5"

    .line 108
    new-array v1, v2, [Ljava/lang/Object;

    .line 110
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    const/16 p1, 0x69

    .line 115
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    :cond_3
    new-instance v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;

    .line 122
    invoke-direct {v0}, Lcom/autonavi/amapauto/remotecontrol/HttpSession;-><init>()V

    .line 125
    iput-object v1, v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->rawContent:[B

    .line 127
    invoke-interface {p1}, Lf20$l;->c()Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 139
    iput-object p1, v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->url:Ljava/lang/String;

    .line 141
    iget-object v1, v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->rawContent:[B

    .line 143
    if-eqz v1, :cond_4

    .line 145
    array-length v1, v1

    .line 146
    goto :goto_0

    .line 147
    :cond_4
    const/4 v1, 0x0

    .line 148
    :goto_0
    sget-object v3, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;->TAG:Ljava/lang/String;

    .line 150
    const/4 v4, 0x3

    .line 151
    new-array v4, v4, [Ljava/lang/Object;

    .line 153
    aput-object p1, v4, v2

    .line 155
    const/4 p1, 0x1

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    move-result-object v1

    .line 160
    aput-object v1, v4, p1

    .line 162
    new-instance p1, Ljava/lang/String;

    .line 164
    iget-object v1, v0, Lcom/autonavi/amapauto/remotecontrol/HttpSession;->rawContent:[B

    .line 166
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .line 169
    const/4 v1, 0x2

    .line 170
    aput-object p1, v4, v1

    .line 172
    const-string p1, "LinkAutoServer serveAcceptRouteResult uri={?}\uff0clength={?}; httpSession.rawContent ={?}"

    .line 174
    invoke-static {v3, p1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-static {v0}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->onHttpResponse(Lcom/autonavi/amapauto/remotecontrol/HttpSession;)Lcom/autonavi/amapauto/remotecontrol/RemoteControlResponse;

    .line 180
    const-string p1, "LinkAutoServer serveAcceptRouteResult end"

    .line 182
    new-array v0, v2, [Ljava/lang/Object;

    .line 184
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    invoke-static {}, Lex;->e()Lf20$n;

    .line 190
    move-result-object p1

    .line 191
    return-object p1

    .line 192
    :catch_0
    move-exception p1

    .line 193
    new-array v1, v2, [Ljava/lang/Object;

    .line 195
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 198
    const/16 p1, 0x68

    .line 200
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 203
    move-result-object p1

    .line 204
    return-object p1

    .line 205
    :catch_1
    move-exception p1

    .line 206
    new-array v2, v2, [Ljava/lang/Object;

    .line 208
    invoke-static {v0, p1, v2}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 211
    invoke-static {v1}, Lex;->a(I)Lf20$n;

    .line 214
    move-result-object p1

    .line 215
    return-object p1

    .line 216
    :catch_2
    move-exception p1

    .line 217
    const-string v0, "serveAcceptRouteResult ResponseException"

    .line 219
    new-array v1, v2, [Ljava/lang/Object;

    .line 221
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 224
    const/16 p1, 0x66

    .line 226
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 229
    move-result-object p1

    .line 230
    return-object p1

    .line 231
    :catch_3
    move-exception p1

    .line 232
    new-array v1, v2, [Ljava/lang/Object;

    .line 234
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 237
    const/16 p1, 0x65

    .line 239
    invoke-static {p1}, Lex;->a(I)Lf20$n;

    .line 242
    move-result-object p1

    .line 243
    return-object p1
.end method
