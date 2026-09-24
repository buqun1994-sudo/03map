.class public Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;
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
            "Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private costValue:F

.field private powerDemand:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    .line 2
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;->powerDemand:F

    .line 3
    iput p2, p0, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;->costValue:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;->powerDemand:F

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;->costValue:F

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3
    return-object v0
.end method


# virtual methods
.method public getCostValue()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;->costValue:F

    .line 3
    return v0
.end method

.method public getPowerdemand()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;->powerDemand:F

    .line 3
    return v0
.end method

.method public setCostValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;->costValue:F

    .line 3
    return-void
.end method

.method public setPowerdemand(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;->powerDemand:F

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
    const-string v1, "PowertrainLoss{powerDemand="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;->powerDemand:F

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", costValue="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;->costValue:F

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;->powerDemand:F

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 9
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;->costValue:F

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 14
    return-void
.end method
