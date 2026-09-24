.class public Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;
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
            "Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private back:Z

.field private choice:I

.field private curPage:I

.field private isFirstPage:Z

.field private isLastPage:Z

.field private isListBottom:Z

.field private isListTop:Z

.field private planRoute:Z

.field private poinum:I

.field private totalPage:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const v0, 0x138a2

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(IZIIZZZZIZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    .line 4
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->totalPage:I

    .line 5
    iput-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->planRoute:Z

    .line 6
    iput p3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->curPage:I

    .line 7
    iput p4, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->choice:I

    .line 8
    iput-boolean p5, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isFirstPage:Z

    .line 9
    iput-boolean p6, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isLastPage:Z

    .line 10
    iput-boolean p7, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isListTop:Z

    .line 11
    iput-boolean p8, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->back:Z

    .line 12
    iput p9, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->poinum:I

    .line 13
    iput-boolean p10, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isListBottom:Z

    const p1, 0x138a2

    .line 14
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 15
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->totalPage:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->planRoute:Z

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->curPage:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->choice:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isFirstPage:Z

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isLastPage:Z

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isListTop:Z

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->back:Z

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->poinum:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isListBottom:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->back:Z

    .line 3
    return v0
.end method

.method public getChoice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->choice:I

    .line 3
    return v0
.end method

.method public getCurPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->curPage:I

    .line 3
    return v0
.end method

.method public getIsFirstPage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isFirstPage:Z

    .line 3
    return v0
.end method

.method public getIsLastPage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isLastPage:Z

    .line 3
    return v0
.end method

.method public getIsListBottom()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isListBottom:Z

    .line 3
    return v0
.end method

.method public getIsListTop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isListTop:Z

    .line 3
    return v0
.end method

.method public getPlanRoute()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->planRoute:Z

    .line 3
    return v0
.end method

.method public getPoinum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->poinum:I

    .line 3
    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->totalPage:I

    .line 3
    return v0
.end method

.method public setBack(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->back:Z

    .line 3
    return-void
.end method

.method public setChoice(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->choice:I

    .line 3
    return-void
.end method

.method public setCurPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->curPage:I

    .line 3
    return-void
.end method

.method public setIsFirstPage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isFirstPage:Z

    .line 3
    return-void
.end method

.method public setIsLastPage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isLastPage:Z

    .line 3
    return-void
.end method

.method public setIsListBottom(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isListBottom:Z

    .line 3
    return-void
.end method

.method public setIsListTop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isListTop:Z

    .line 3
    return-void
.end method

.method public setPlanRoute(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->planRoute:Z

    .line 3
    return-void
.end method

.method public setPoinum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->poinum:I

    .line 3
    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->totalPage:I

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "totalPage"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->totalPage:I

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "\n"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "planRoute"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-boolean v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->planRoute:Z

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "curPage"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->curPage:I

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v3, "choice"

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->choice:I

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, "isFirstPage"

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-boolean v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isFirstPage:Z

    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v3, "isLastPage"

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-boolean v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isLastPage:Z

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v3, "isListTop"

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-boolean v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isListTop:Z

    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v3, "back"

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-boolean v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->back:Z

    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v3, "poinum"

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->poinum:I

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v3, "isListBottom"

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-boolean v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isListBottom:Z

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v0

    .line 174
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->totalPage:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->planRoute:Z

    .line 11
    int-to-byte p2, p2

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 15
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->curPage:I

    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->choice:I

    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isFirstPage:Z

    .line 27
    int-to-byte p2, p2

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 31
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isLastPage:Z

    .line 33
    int-to-byte p2, p2

    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 37
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isListTop:Z

    .line 39
    int-to-byte p2, p2

    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->back:Z

    .line 45
    int-to-byte p2, p2

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 49
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->poinum:I

    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->isListBottom:Z

    .line 56
    int-to-byte p2, p2

    .line 57
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 60
    return-void
.end method
