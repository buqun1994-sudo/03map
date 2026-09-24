.class public Lfb0;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/protocol/model/service/RspRouteInfoContrastModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspRouteInfoContrastModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspRouteInfoContrastModel;

    .line 6
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspRouteInfoContrastModel;-><init>()V

    .line 9
    iput-object p1, p0, Lfb0;->d:Lcom/autonavi/amapauto/protocol/model/service/RspRouteInfoContrastModel;

    .line 11
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RouteInfoContrastDisAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lfb0;->d:Lcom/autonavi/amapauto/protocol/model/service/RspRouteInfoContrastModel;

    .line 13
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lec;->a()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 11
    const-string v2, "RouteInfoContrastDisAction"

    .line 13
    const-string v3, "pareseToIntent getJsonStr:{?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v1, Landroid/content/Intent;

    .line 20
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 23
    const-string v2, "KEY_TYPE"

    .line 25
    const v3, 0xea97

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 34
    move-result-object v0

    .line 35
    const-string v2, "route"

    .line 37
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string v0, "[]"

    .line 59
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    :goto_0
    return-object v1
.end method
