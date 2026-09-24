.class public Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lbX:D

.field private lbY:D

.field private lbZ:D

.field private ltX:D

.field private ltY:D

.field private ltZ:D

.field private rbX:D

.field private rbY:D

.field private rbZ:D

.field private rtX:D

.field private rtY:D

.field private rtZ:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const v0, 0x13939

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->lbX:D

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->lbY:D

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->lbZ:D

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->ltX:D

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->ltY:D

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->ltZ:D

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rbX:D

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rbY:D

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rbZ:D

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rtX:D

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rtY:D

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rtZ:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLbX()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->lbX:D

    .line 3
    return-wide v0
.end method

.method public getLbY()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->lbY:D

    .line 3
    return-wide v0
.end method

.method public getLbZ()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->lbZ:D

    .line 3
    return-wide v0
.end method

.method public getLtX()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->ltX:D

    .line 3
    return-wide v0
.end method

.method public getLtY()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->ltY:D

    .line 3
    return-wide v0
.end method

.method public getLtZ()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->ltZ:D

    .line 3
    return-wide v0
.end method

.method public getRbX()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rbX:D

    .line 3
    return-wide v0
.end method

.method public getRbY()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rbY:D

    .line 3
    return-wide v0
.end method

.method public getRbZ()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rbZ:D

    .line 3
    return-wide v0
.end method

.method public getRtX()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rtX:D

    .line 3
    return-wide v0
.end method

.method public getRtY()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rtY:D

    .line 3
    return-wide v0
.end method

.method public getRtZ()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rtZ:D

    .line 3
    return-wide v0
.end method

.method public setLbX(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->lbX:D

    .line 3
    return-void
.end method

.method public setLbY(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->lbY:D

    .line 3
    return-void
.end method

.method public setLbZ(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->lbZ:D

    .line 3
    return-void
.end method

.method public setLtX(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->ltX:D

    .line 3
    return-void
.end method

.method public setLtY(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->ltY:D

    .line 3
    return-void
.end method

.method public setLtZ(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->ltZ:D

    .line 3
    return-void
.end method

.method public setRbX(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rbX:D

    .line 3
    return-void
.end method

.method public setRbY(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rbY:D

    .line 3
    return-void
.end method

.method public setRbZ(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rbZ:D

    .line 3
    return-void
.end method

.method public setRtX(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rtX:D

    .line 3
    return-void
.end method

.method public setRtY(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rtY:D

    .line 3
    return-void
.end method

.method public setRtZ(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rtZ:D

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
    const-string v1, "lbX"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-wide v2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->lbX:D

    .line 18
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "\n"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "lbY"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->lbY:D

    .line 36
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "lbZ"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->lbZ:D

    .line 52
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v3, "ltX"

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->ltX:D

    .line 68
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, "ltY"

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->ltY:D

    .line 84
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v3, "ltZ"

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->ltZ:D

    .line 100
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v3, "rbX"

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rbX:D

    .line 116
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v3, "rbY"

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rbY:D

    .line 132
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v3, "rbZ"

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rbZ:D

    .line 148
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v3, "rtX"

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rtX:D

    .line 164
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v3, "rtY"

    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rtY:D

    .line 180
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v3, "rtZ"

    .line 188
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rtZ:D

    .line 196
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object v0

    .line 206
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->lbX:D

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 9
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->lbY:D

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 14
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->lbZ:D

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 19
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->ltX:D

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 24
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->ltY:D

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 29
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->ltZ:D

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 34
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rbX:D

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 39
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rbY:D

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 44
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rbZ:D

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 49
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rtX:D

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 54
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rtY:D

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 59
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->rtZ:D

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 64
    return-void
.end method
