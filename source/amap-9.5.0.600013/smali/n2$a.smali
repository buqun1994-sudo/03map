.class public Ln2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lys;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln2;


# direct methods
.method public constructor <init>(Ln2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln2$a;->a:Ln2;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->toJsonObject()Lorg/json/JSONObject;

    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "null"

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    aput-object p1, v0, v1

    .line 16
    const-string p1, "[ALSimulate] AidlModelSimulator"

    .line 18
    const-string v1, "onFail errorModel = {?}"

    .line 20
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "null"

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    aput-object p1, v0, v1

    .line 16
    const-string p1, "[ALSimulate] AidlModelSimulator"

    .line 18
    const-string v1, "onJSONResult jsonObject = {?}"

    .line 20
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public c(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->toJsonObject()Lorg/json/JSONObject;

    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "null"

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    aput-object p1, v0, v1

    .line 16
    const-string p1, "[ALSimulate] AidlModelSimulator"

    .line 18
    const-string v1, "onSuccess resultModel = {?}"

    .line 20
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method
