.class public Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;
.super Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private displayID:I

.field private location:Ljava/lang/String;

.field private radius:I
    .annotation runtime Lz70;
        maxValue = 0xc350
        minValue = 0x1
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
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;-><init>()V

    const/16 v0, 0xbb8

    .line 10
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->radius:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->sortrule:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;-><init>()V

    const/16 v0, 0xbb8

    .line 13
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->radius:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->sortrule:I

    .line 15
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setSearchType(I)V

    .line 16
    invoke-virtual {p0, p2}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setKeywords(Ljava/lang/String;)V

    const/16 p1, 0x765d

    .line 17
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;-><init>(Landroid/os/Parcel;)V

    const/16 v0, 0xbb8

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->radius:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->sortrule:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->location:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->radius:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->sortrule:I

    .line 7
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->getModelVersion()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->displayID:I

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
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->displayID:I

    .line 3
    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->location:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->radius:I

    .line 3
    return v0
.end method

.method public getSortrule()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->sortrule:I

    .line 3
    return v0
.end method

.method public setDisplayID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->displayID:I

    .line 3
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->location:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->radius:I

    .line 3
    return-void
.end method

.method public setSortrule(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->sortrule:I

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->toString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "AroundSearchModel{location=\'"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v2, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->location:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const/16 v2, 0x27

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, ", radius="

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->radius:I

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, ", sortrule="

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->sortrule:I

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, ", displayID="

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->displayID:I

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const/16 v2, 0x7d

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->location:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->radius:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->sortrule:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->getModelVersion()I

    .line 22
    move-result p2

    .line 23
    const/4 v0, 0x4

    .line 24
    if-lt p2, v0, :cond_0

    .line 26
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->displayID:I

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    :cond_0
    return-void
.end method
