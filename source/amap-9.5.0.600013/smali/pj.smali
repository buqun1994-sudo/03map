.class public Lpj;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

.field public e:Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/jni/protocol/data/PoiData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;-><init>()V

    iput-object v0, p0, Lpj;->e:Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;

    .line 3
    iput-object p1, p0, Lpj;->d:Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lec;-><init>()V

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;-><init>()V

    .line 6
    iput-object p1, p0, Lpj;->e:Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;

    .line 7
    invoke-virtual {p0, p1}, Lpj;->g(Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;)Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    move-result-object p1

    iput-object p1, p0, Lpj;->d:Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

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
    const-string v1, "DispatchPoiInfoDisAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lpj;->e:Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;

    .line 13
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x2faf

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    iget-object v1, p0, Lpj;->d:Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 15
    invoke-static {v1}, La80;->s(Lcom/autonavi/amapauto/jni/protocol/data/PoiData;)Lorg/json/JSONObject;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v1, v2, v3

    .line 29
    const-string v3, "DispatchPoiInfoDisAction"

    .line 31
    const-string v4, "[pareseToIntent]jsonObject:{?}"

    .line 33
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const-string v2, "EXTRA_POI_RESULT"

    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    return-object v0
.end method

.method public final g(Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;)Lcom/autonavi/amapauto/jni/protocol/data/PoiData;
    .locals 5

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;-><init>()V

    .line 6
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;->getPoiName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;->getDistance()I

    .line 17
    move-result v1

    .line 18
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->distance:I

    .line 20
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;->getAddress()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;->getPoiId()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poiid:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;->getTel()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->tel:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;->getTypeCode()I

    .line 41
    move-result v1

    .line 42
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    .line 44
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;->getLatitude()D

    .line 47
    move-result-wide v1

    .line 48
    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 50
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;->getLongitude()D

    .line 53
    move-result-wide v1

    .line 54
    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 56
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;->getHomecopType()I

    .line 59
    move-result v1

    .line 60
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->homecopType:I

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    .line 64
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    new-instance v2, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 69
    invoke-direct {v2}, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;-><init>()V

    .line 72
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;->getEntry_longitude()D

    .line 75
    move-result-wide v3

    .line 76
    iput-wide v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->longitude:D

    .line 78
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;->getEntry_latitude()D

    .line 81
    move-result-wide v3

    .line 82
    iput-wide v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->latitude:D

    .line 84
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->enteryList:Ljava/util/List;

    .line 89
    :cond_0
    return-object v0
.end method
