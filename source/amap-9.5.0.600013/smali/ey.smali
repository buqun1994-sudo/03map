.class public Ley;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public k:I

.field public l:D

.field public m:D

.field public n:Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ley;->k:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Ley;->l:D

    .line 4
    iput-wide v0, p0, Ley;->m:D

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 10

    .line 12
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Ley;->k:I

    const-wide/16 v1, 0x0

    .line 14
    iput-wide v1, p0, Ley;->l:D

    .line 15
    iput-wide v1, p0, Ley;->m:D

    const/4 v3, 0x1

    .line 16
    invoke-virtual {p0, v3}, Lnc;->r(Z)V

    const-string v4, "EXTRA_LATLONG_TYPE"

    .line 17
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Ley;->k:I

    const-string v4, "EXTRA_LATITUDE_VALUE"

    .line 18
    invoke-virtual {p1, v4, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Ley;->m:D

    const-string v4, "EXTRA_LONGITUDE_VALUE"

    .line 19
    invoke-virtual {p1, v4, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Ley;->l:D

    .line 20
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;

    iget-wide v5, p0, Ley;->m:D

    iget v7, p0, Ley;->k:I

    iget-wide v8, p0, Ley;->l:D

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;-><init>(DID)V

    iput-object p1, p0, Ley;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 21
    iget v1, p0, Ley;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    iget-wide v0, p0, Ley;->m:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, p1, v3

    iget-wide v0, p0, Ley;->l:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const-string v0, "LocationConvertAction"

    const-string v1, "in LocationConvertAction() dataType:{?}, latitude:{?}, longitude:{?}"

    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ley;->k:I

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Ley;->l:D

    .line 9
    iput-wide v0, p0, Ley;->m:D

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 11
    iput-object p1, p0, Ley;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;

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
    const-string v1, "LocationConvertAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 14
    move-result-object v0

    .line 15
    iget-boolean v1, p0, Lnc;->c:Z

    .line 17
    if-eqz v1, :cond_0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Ley;->x()Lcom/autonavi/amapauto/protocol/model/service/RspCoordinateTransformInfoModel;

    .line 24
    move-result-object v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 28
    if-nez v0, :cond_1

    .line 30
    const/16 v0, 0x2730

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 35
    :goto_0
    invoke-direct {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 38
    move-object v0, v1

    .line 39
    :goto_1
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 11
    if-eqz v0, :cond_2

    .line 13
    const/16 v0, 0x32cb

    .line 15
    invoke-virtual {p0, v0}, Lnc;->t(I)V

    .line 18
    invoke-virtual {p0}, Ley;->x()Lcom/autonavi/amapauto/protocol/model/service/RspCoordinateTransformInfoModel;

    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 24
    return-object v1

    .line 25
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .line 27
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 30
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspCoordinateTransformInfoModel;->getLatlongType()I

    .line 33
    move-result v2

    .line 34
    const-string v3, "EXTRA_LATLONG_TYPE"

    .line 36
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    const-string v2, "EXTRA_LATITUDE_VALUE"

    .line 41
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspCoordinateTransformInfoModel;->getLatitudeValue()D

    .line 44
    move-result-wide v3

    .line 45
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 48
    const-string v2, "EXTRA_LONGITUDE_VALUE"

    .line 50
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspCoordinateTransformInfoModel;->getLongitudeValue()D

    .line 53
    move-result-wide v3

    .line 54
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 57
    :cond_2
    return-object v1
.end method

.method public d()V
    .locals 5

    .line 1
    invoke-static {}, Lib;->l()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Ley;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x3

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    iget v1, p0, Ley;->k:I

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    aput-object v1, v0, v2

    .line 25
    iget-wide v1, p0, Ley;->m:D

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x1

    .line 32
    aput-object v1, v0, v2

    .line 34
    iget-wide v1, p0, Ley;->l:D

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x2

    .line 41
    aput-object v1, v0, v2

    .line 43
    const-string v1, "LocationConvertAction"

    .line 45
    const-string v2, "doAction() dataType:{?}, latitude:{?}, longitude:{?}"

    .line 47
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget v0, p0, Ley;->k:I

    .line 52
    iget-wide v1, p0, Ley;->m:D

    .line 54
    iget-wide v3, p0, Ley;->l:D

    .line 56
    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeRequestLocationInfoConvert(IDD)V

    .line 59
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/RspCoordinateTransformInfoModel;
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
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/RspCoordinateTransformInfoModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspCoordinateTransformInfoModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/RspCoordinateTransformInfoModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/RspCoordinateTransformInfoModel;
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
    const-string v4, "LocationConvertAction"

    .line 40
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method
