.class public Leo;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public final k:Ljava/lang/String;

.field public l:I


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    const-string v0, "GoToHomeOrCopTypeAction"

    .line 6
    iput-object v0, p0, Leo;->k:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;->getmGoToPageType()I

    .line 11
    move-result p1

    .line 12
    iput p1, p0, Leo;->l:I

    .line 14
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 9
    if-eqz v1, :cond_1

    .line 11
    iget-boolean v0, p0, Lnc;->c:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Leo;->x()Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 22
    iget v1, p0, Lnc;->d:I

    .line 24
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 27
    :goto_0
    return-object v0

    .line 28
    :cond_1
    if-eqz v0, :cond_2

    .line 30
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 32
    if-eqz v0, :cond_2

    .line 34
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;

    .line 36
    iget v1, p0, Leo;->l:I

    .line 38
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;-><init>(I)V

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 44
    iget v1, p0, Lnc;->d:I

    .line 46
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 49
    :goto_1
    return-object v0
.end method

.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Leo;->l:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "GoToHomeOrCopTypeAction"

    .line 15
    const-string v2, "[doAction] type:{?}"

    .line 17
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lib;->i()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;

    .line 28
    iget v1, p0, Leo;->l:I

    .line 30
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;-><init>(I)V

    .line 33
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 40
    move-result v0

    .line 41
    iget v1, p0, Leo;->l:I

    .line 43
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeGoToHomeOrCopType(II)V

    .line 46
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;-><init>(I)V

    .line 15
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 17
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 20
    move-result-object v0

    .line 21
    :try_start_0
    const-class v3, Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;

    .line 23
    invoke-static {v0, v3}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    move-object v1, v0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const-class v3, Leo;

    .line 34
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    invoke-static {v3, v4, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 47
    :goto_0
    return-object v1
.end method
