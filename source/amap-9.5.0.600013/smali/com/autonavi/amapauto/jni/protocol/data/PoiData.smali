.class public Lcom/autonavi/amapauto/jni/protocol/data/PoiData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public address:Ljava/lang/String;

.field public childPoiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;",
            ">;"
        }
    .end annotation
.end field

.field public distance:I

.field public enteryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;",
            ">;"
        }
    .end annotation
.end field

.field public homecopType:I

.field public latitude:D

.field public longitude:D

.field public name:Ljava/lang/String;

.field public poideepinfo:Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;

.field public poiid:Ljava/lang/String;

.field public poitype:I

.field public tel:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildPoiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->childPoiList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getEnteryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->enteryList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getPoideepinfo()Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poideepinfo:Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;

    .line 3
    return-object v0
.end method

.method public getPoiid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poiid:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, ""

    .line 7
    :cond_0
    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->tel:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, ""

    .line 7
    :cond_0
    return-object v0
.end method

.method public setChildPoiList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->childPoiList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setEnteryList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->enteryList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setPoideepinfo(Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poideepinfo:Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;

    .line 3
    return-void
.end method
