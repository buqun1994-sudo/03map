.class public Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public address:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;->enteryList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getPoideepinfo()Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;->poideepinfo:Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;

    .line 3
    return-object v0
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
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;->enteryList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setPoideepinfo(Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;->poideepinfo:Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;

    .line 3
    return-void
.end method
