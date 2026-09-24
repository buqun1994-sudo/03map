.class public Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;
.super Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private operateType:I
    .annotation runtime Lz70;
        maxValue = 0x1
        minValue = 0x0
    .end annotation
.end field

.field private pageTurning:I
    .annotation runtime Lz70;
        maxValue = 0x1
        minValue = 0x0
    .end annotation
.end field

.field private poiIndex:I
    .annotation runtime Lz70;
        maxValue = 0xa
        minValue = 0x0
    .end annotation
.end field

.field private screenTurning:I
    .annotation runtime Lz70;
        maxValue = 0x1
        minValue = 0x0
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->screenTurning:I

    .line 3
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->poiIndex:I

    .line 4
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->pageTurning:I

    const v0, 0x13897

    .line 5
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    .line 7
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->screenTurning:I

    .line 8
    iput p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->operateType:I

    .line 9
    iput p3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->poiIndex:I

    .line 10
    iput p4, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->pageTurning:I

    const p1, 0x13897

    .line 11
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->screenTurning:I

    .line 14
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->poiIndex:I

    .line 15
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->pageTurning:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->screenTurning:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->operateType:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->poiIndex:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->pageTurning:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOperateType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->operateType:I

    .line 3
    return v0
.end method

.method public getPageTurning()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->pageTurning:I

    .line 3
    return v0
.end method

.method public getPoiIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->poiIndex:I

    .line 3
    return v0
.end method

.method public getScreenTurning()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->screenTurning:I

    .line 3
    return v0
.end method

.method public setOperateType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->operateType:I

    .line 3
    return-void
.end method

.method public setPageTurning(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->pageTurning:I

    .line 3
    return-void
.end method

.method public setPoiIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->poiIndex:I

    .line 3
    return-void
.end method

.method public setScreenTurning(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->screenTurning:I

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->screenTurning:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->operateType:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->poiIndex:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->pageTurning:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    return-void
.end method
