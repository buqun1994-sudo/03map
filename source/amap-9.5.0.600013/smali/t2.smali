.class public Lt2;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lt2;->l:I

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lt2;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lt2;->l:I

    const/16 v1, 0xa

    .line 6
    iput v1, p0, Lt2;->m:I

    const-string v1, "EXTRA_SEARCHTYPE"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lt2;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lt2;->l:I

    const/16 v1, 0xa

    .line 15
    iput v1, p0, Lt2;->m:I

    const-string v1, "searchType"

    .line 16
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lah;->k(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lt2;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/search/AlongTheWaySearchModel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lt2;->l:I

    const/16 v0, 0xa

    .line 10
    iput v0, p0, Lt2;->m:I

    .line 11
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/AlongTheWaySearchModel;->getAlongSearchType()I

    move-result v0

    iput v0, p0, Lt2;->k:I

    .line 12
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/AlongTheWaySearchModel;->getRequestType()I

    move-result p1

    iput p1, p0, Lt2;->l:I

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 4

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
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 11
    if-eqz v1, :cond_1

    .line 13
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 15
    iget v1, p0, Lnc;->d:I

    .line 17
    invoke-static {v0, v1}, La80;->i(Ljava/lang/String;I)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;

    .line 28
    const/4 v1, 0x1

    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    iget v2, p0, Lnc;->d:I

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    aput-object v2, v1, v3

    .line 40
    const-string v2, "AlongWaySearchAction"

    .line 42
    const-string v3, "parseToAidlModel resultCode:{?}"

    .line 44
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const/4 v1, 0x3

    .line 48
    invoke-static {v0, v1}, La80;->h(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;I)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 4

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
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 11
    const/16 v1, 0x2749

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p0, v1}, Lnc;->t(I)V

    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 20
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 23
    iget v1, p0, Lt2;->k:I

    .line 25
    invoke-virtual {p0}, Lt2;->x()Lcom/autonavi/amapauto/protocol/data/RspAlongWaySearchData;

    .line 28
    move-result-object v2

    .line 29
    iget v3, p0, Lnc;->d:I

    .line 31
    invoke-static {v1, v2, v3, v0}, Lmc0;->g(ILcom/autonavi/amapauto/protocol/data/RspAlongWaySearchData;ILandroid/content/Intent;)V

    .line 34
    return-object v0

    .line 35
    :cond_1
    invoke-virtual {p0, v1}, Lnc;->t(I)V

    .line 38
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;

    .line 44
    new-instance v1, Landroid/content/Intent;

    .line 46
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 49
    iget v2, p0, Lt2;->k:I

    .line 51
    invoke-static {v2, v0, v1}, Lmc0;->f(ILcom/autonavi/amapauto/jni/protocol/data/SearchResultData;Landroid/content/Intent;)V

    .line 54
    return-object v1
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-static {}, Lib;->h()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/search/AlongTheWaySearchModel;

    .line 9
    iget v1, p0, Lt2;->k:I

    .line 11
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/AlongTheWaySearchModel;-><init>(I)V

    .line 14
    iget v1, p0, Lt2;->l:I

    .line 16
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/AlongTheWaySearchModel;->setRequestType(I)V

    .line 19
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 26
    move-result v0

    .line 27
    iget v1, p0, Lt2;->k:I

    .line 29
    iget v2, p0, Lt2;->m:I

    .line 31
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeAlongWaySearch(III)V

    .line 34
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 2

    .line 1
    iget v0, p0, Lt2;->l:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/data/RspAlongWaySearchData;
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
    new-instance v1, Lcom/autonavi/amapauto/protocol/data/RspAlongWaySearchData;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/data/RspAlongWaySearchData;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/data/RspAlongWaySearchData;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/data/RspAlongWaySearchData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    move-object v1, v0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    .line 38
    const-string v4, "AlongWaySearchAction"

    .line 40
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method
