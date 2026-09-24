.class public Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private city:Ljava/lang/String;

.field private isRecommend:Z

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
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->sortrule:I

    .line 3
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->isRecommend:Z

    .line 4
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setSearchType(I)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setKeywords(Ljava/lang/String;)V

    const/16 p1, 0x765c

    .line 6
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 7
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->sortrule:I

    .line 9
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->isRecommend:Z

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->city:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->sortrule:I

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->isRecommend:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->city:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getIsRecommend()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->isRecommend:Z

    .line 3
    return v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getSortrule()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->sortrule:I

    .line 3
    return v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->city:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setIsRecommend(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->isRecommend:Z

    .line 3
    return-void
.end method

.method public setSortrule(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->sortrule:I

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
    const-string v2, "KeyWordSearchModel{city=\'"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v2, p0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->city:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const/16 v2, 0x27

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    const/16 v2, 0x7d

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->city:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x3

    .line 14
    if-lt p2, v0, :cond_0

    .line 16
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->sortrule:I

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 24
    move-result p2

    .line 25
    const/4 v0, 0x4

    .line 26
    if-lt p2, v0, :cond_1

    .line 28
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->isRecommend:Z

    .line 30
    int-to-byte p2, p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 34
    :cond_1
    return-void
.end method
