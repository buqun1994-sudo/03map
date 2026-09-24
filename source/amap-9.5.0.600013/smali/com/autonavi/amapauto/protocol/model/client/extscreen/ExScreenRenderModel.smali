.class public Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private screenMode:I
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private screenStatus:I
    .annotation runtime Lz70;
        isMustFill = true
        maxValue = 0x2
        minValue = 0x0
    .end annotation
.end field

.field private screenWindow:I
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    .line 2
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->screenWindow:I

    .line 3
    iput p2, p0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->screenMode:I

    .line 4
    iput p3, p0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->screenStatus:I

    const/16 p1, 0x7851

    .line 5
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->screenWindow:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->screenMode:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->screenStatus:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScreenMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->screenMode:I

    .line 3
    return v0
.end method

.method public getScreenStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->screenStatus:I

    .line 3
    return v0
.end method

.method public getScreenWindow()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->screenWindow:I

    .line 3
    return v0
.end method

.method public setScreenMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->screenMode:I

    .line 3
    return-void
.end method

.method public setScreenStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->screenStatus:I

    .line 3
    return-void
.end method

.method public setScreenWindow(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->screenWindow:I

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->screenWindow:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->screenMode:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->screenStatus:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    return-void
.end method
