.class public Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private count:I

.field private dialogType:I

.field private parkingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;->dialogType:I

    .line 7
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;->count:I

    .line 9
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;->count:I

    .line 3
    return v0
.end method

.method public getDialogType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;->dialogType:I

    .line 3
    return v0
.end method

.method public getParkingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;->parkingList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;->count:I

    .line 3
    return-void
.end method

.method public setDialogType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;->dialogType:I

    .line 3
    return-void
.end method

.method public setParkingList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;->parkingList:Ljava/util/List;

    .line 3
    return-void
.end method
