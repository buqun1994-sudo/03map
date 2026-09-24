.class public Lp70$d;
.super Lxs$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp70;


# direct methods
.method public constructor <init>(Lp70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp70$d;->a:Lp70;

    .line 3
    invoke-direct {p0}, Lxs$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public C0(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    iget-object p1, p0, Lp70$d;->a:Lp70;

    .line 9
    invoke-static {p1}, Lp70;->d(Lp70;)Lbt;

    .line 12
    const/4 p1, 0x0

    .line 13
    const/4 v1, 0x1

    .line 14
    aput-object p1, v0, v1

    .line 16
    const-string p1, "[ALSimulate] ProtocolAidlControl"

    .line 18
    const-string v1, "onModelReceived = {?} listener = {?}"

    .line 20
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lp70$d;->a:Lp70;

    .line 25
    invoke-static {p1}, Lp70;->d(Lp70;)Lbt;

    .line 28
    return-void
.end method

.method public E(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, "[ALSimulate] ProtocolAidlControl"

    .line 9
    const-string v4, "onModelSuccess = {?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;->s()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 25
    move-result v1

    .line 26
    iget-object v4, p0, Lp70$d;->a:Lp70;

    .line 28
    invoke-static {v4, v1}, Lp70;->k(Lp70;I)Lys;

    .line 31
    move-result-object v4

    .line 32
    const/4 v5, 0x2

    .line 33
    new-array v5, v5, [Ljava/lang/Object;

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v6

    .line 39
    aput-object v6, v5, v2

    .line 41
    aput-object v4, v5, v0

    .line 43
    const-string v0, "onModelSuccess callbackId = {?} callback = {?}"

    .line 45
    invoke-static {v3, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    if-eqz v4, :cond_0

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;->s()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 53
    move-result-object p1

    .line 54
    invoke-interface {v4, p1}, Lys;->c(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    const-string v0, "onModelSuccess Exception"

    .line 61
    new-array v2, v2, [Ljava/lang/Object;

    .line 63
    invoke-static {v3, v0, p1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 66
    :cond_0
    :goto_0
    iget-object p1, p0, Lp70$d;->a:Lp70;

    .line 68
    invoke-virtual {p1, v1}, Lp70;->w(I)V

    .line 71
    :cond_1
    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    iget-object p1, p0, Lp70$d;->a:Lp70;

    .line 9
    invoke-static {p1}, Lp70;->d(Lp70;)Lbt;

    .line 12
    const/4 p1, 0x0

    .line 13
    const/4 v1, 0x1

    .line 14
    aput-object p1, v0, v1

    .line 16
    const-string p1, "[ALSimulate] ProtocolAidlControl"

    .line 18
    const-string v1, "onJSONReceived = {?} listener = {?}"

    .line 20
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lp70$d;->a:Lp70;

    .line 25
    invoke-static {p1}, Lp70;->d(Lp70;)Lbt;

    .line 28
    return-void
.end method

.method public e1(Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, "[ALSimulate] ProtocolAidlControl"

    .line 9
    const-string v4, "onModelFail = {?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 19
    move-result v1

    .line 20
    iget-object v4, p0, Lp70$d;->a:Lp70;

    .line 22
    invoke-static {v4, v1}, Lp70;->k(Lp70;I)Lys;

    .line 25
    move-result-object v4

    .line 26
    const/4 v5, 0x2

    .line 27
    new-array v5, v5, [Ljava/lang/Object;

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v6

    .line 33
    aput-object v6, v5, v2

    .line 35
    aput-object v4, v5, v0

    .line 37
    const-string v0, "onModelFail callbackId = {?} callback = {?}"

    .line 39
    invoke-static {v3, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    if-eqz v4, :cond_0

    .line 44
    :try_start_0
    invoke-interface {v4, p1}, Lys;->a(Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    const-string v0, "onModelFail Exception"

    .line 51
    new-array v2, v2, [Ljava/lang/Object;

    .line 53
    invoke-static {v3, v0, p1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 56
    :cond_0
    :goto_0
    iget-object p1, p0, Lp70$d;->a:Lp70;

    .line 58
    invoke-virtual {p1, v1}, Lp70;->w(I)V

    .line 61
    :cond_1
    return-void
.end method

.method public s1(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "callbackId"

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 9
    const-string v3, "[ALSimulate] ProtocolAidlControl"

    .line 11
    const-string v4, "onJSONResult = {?}"

    .line 13
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    if-eqz p1, :cond_1

    .line 18
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 20
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 32
    move-result p1

    .line 33
    iget-object v0, p0, Lp70$d;->a:Lp70;

    .line 35
    invoke-static {v0, p1}, Lp70;->k(Lp70;I)Lys;

    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, v1}, Lys;->b(Lorg/json/JSONObject;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lp70$d;->a:Lp70;

    .line 46
    invoke-virtual {v0, p1}, Lp70;->w(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    const-string p1, "onJSONReceived JSONException"

    .line 52
    new-array v0, v2, [Ljava/lang/Object;

    .line 54
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_1
    :goto_0
    return-void
.end method
