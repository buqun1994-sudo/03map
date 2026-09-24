.class public Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;
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
            "Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private endPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

.field private startPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

.field private viaPois:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const v0, 0x13924

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 4
    const-class v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    iput-object v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->endPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->startPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 6
    sget-object v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->viaPois:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEndPoi()Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->endPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 3
    return-object v0
.end method

.method public getStartPoi()Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->startPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 3
    return-object v0
.end method

.method public getViaPois()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->viaPois:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public setEndPoi(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->endPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 3
    return-void
.end method

.method public setStartPoi(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->startPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 3
    return-void
.end method

.method public setViaPois(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->viaPois:Ljava/util/ArrayList;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "endPoi"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->endPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 18
    const-string v3, "null"

    .line 20
    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v2, v3

    .line 28
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v2, "\n"

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v4, "startPoi"

    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v4, p0, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->startPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 46
    if-eqz v4, :cond_1

    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move-object v4, v3

    .line 54
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v4, "viaPois"

    .line 62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->viaPois:Ljava/util/ArrayList;

    .line 70
    if-eqz v1, :cond_2

    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 76
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->endPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 6
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->startPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 11
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 14
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->viaPois:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 19
    return-void
.end method
