.class public Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private keyWord:Ljava/lang/String;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private maxCount:I
    .annotation runtime Lz70;
        maxValue = 0x1e
        minValue = 0x1
    .end annotation
.end field

.field private radius:I
    .annotation runtime Lz70;
        maxValue = 0x1388
        minValue = 0x1
    .end annotation
.end field

.field private searchCenter:I
    .annotation runtime Lz70;
        isMustFill = true
        maxValue = 0x1
        minValue = 0x0
    .end annotation
.end field

.field private sortrule:I
    .annotation runtime Lz70;
        maxValue = 0x1
        minValue = 0x0
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/16 v0, 0xbb8

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->radius:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->sortrule:I

    const/16 v0, 0xa

    .line 4
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->maxCount:I

    const/16 v0, 0x7660

    .line 5
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/16 v0, 0xbb8

    .line 7
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->radius:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->sortrule:I

    const/16 v0, 0xa

    .line 9
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->maxCount:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->searchCenter:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->keyWord:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->radius:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->sortrule:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->maxCount:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->keyWord:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMaxCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->maxCount:I

    .line 3
    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->radius:I

    .line 3
    return v0
.end method

.method public getSearchCenter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->searchCenter:I

    .line 3
    return v0
.end method

.method public getSortrule()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->sortrule:I

    .line 3
    return v0
.end method

.method public setKeyWord(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->keyWord:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setMaxCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->maxCount:I

    .line 3
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->radius:I

    .line 3
    return-void
.end method

.method public setSearchCenter(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->searchCenter:I

    .line 3
    return-void
.end method

.method public setSortrule(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->sortrule:I

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->searchCenter:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->keyWord:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->radius:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->sortrule:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->maxCount:I

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    return-void
.end method
