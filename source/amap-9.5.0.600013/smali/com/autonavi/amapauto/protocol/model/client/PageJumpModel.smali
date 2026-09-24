.class public Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final JUMP_AROUND_SEARCH:I = 0x6

.field public static final JUMP_COMPANY:I = 0x8

.field public static final JUMP_DOWLOAD_MAPDATA:I = 0xb

.field public static final JUMP_EDIT_ROUTE_PAGE:I = 0xf

.field public static final JUMP_FAVORITE:I = 0x9

.field public static final JUMP_GO_HOME_OR_COMPANY_PNAV_PAGE:I = 0xe

.field public static final JUMP_HOME:I = 0x7

.field public static final JUMP_MY_TRIP:I = 0x5

.field public static final JUMP_NAVIGATION_ENTER_IMMERSION:I = 0xd

.field public static final JUMP_PARKING_PAY:I = 0x3

.field public static final JUMP_SEARCH:I = 0x1

.field public static final JUMP_SEARCH_MORE:I = 0x0

.field public static final JUMP_SECOND_SCREEN:I = 0x12

.field public static final JUMP_SETTING:I = 0x2

.field public static final JUMP_SET_HOME_OR_COMPANY:I = 0xa

.field public static final JUMP_TEAM:I = 0x4

.field public static final JUMP_UDISK:I = 0xc


# instance fields
.field private displayID:I

.field private pageType:I
    .annotation runtime Lz70;
        isMustFill = true
        maxValue = 0x13
        minValue = 0x0
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->pageType:I

    const/16 v0, 0x7662

    .line 3
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->pageType:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->pageType:I

    .line 7
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->getModelVersion()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->displayID:I

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->displayID:I

    .line 3
    return v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPageType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->pageType:I

    .line 3
    return v0
.end method

.method public setDisplayID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->displayID:I

    .line 3
    return-void
.end method

.method public setPageType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->pageType:I

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "PageJumpModel{pageType="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->pageType:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", displayID="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->displayID:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const/16 v1, 0x7d

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->pageType:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->getModelVersion()I

    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x1

    .line 14
    if-lt p2, v0, :cond_0

    .line 16
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->displayID:I

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    :cond_0
    return-void
.end method
