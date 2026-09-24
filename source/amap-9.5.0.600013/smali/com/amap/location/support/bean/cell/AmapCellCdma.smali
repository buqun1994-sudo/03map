.class public Lcom/amap/location/support/bean/cell/AmapCellCdma;
.super Lcom/amap/location/support/bean/cell/AmapCell;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public bid:I

.field public latitude:I

.field public longitude:I

.field public nid:I

.field public sid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/bean/cell/AmapCell;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->sid:I

    .line 3
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->nid:I

    .line 4
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->bid:I

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/bean/cell/AmapCell;-><init>(ZZ)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->sid:I

    .line 7
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->nid:I

    .line 8
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->bid:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/location/support/bean/cell/AmapCell;
    .locals 3

    .line 2
    new-instance v0, Lcom/amap/location/support/bean/cell/AmapCellCdma;

    iget-boolean v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z

    iget-boolean v2, p0, Lcom/amap/location/support/bean/cell/AmapCell;->newApi:Z

    invoke-direct {v0, v1, v2}, Lcom/amap/location/support/bean/cell/AmapCellCdma;-><init>(ZZ)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/amap/location/support/bean/cell/AmapCell;->cloneFrom(Lcom/amap/location/support/bean/cell/AmapCell;)V

    .line 4
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->sid:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->sid:I

    .line 5
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->nid:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->nid:I

    .line 6
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->bid:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->bid:I

    .line 7
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->latitude:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->latitude:I

    .line 8
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->longitude:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->longitude:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/bean/cell/AmapCellCdma;->clone()Lcom/amap/location/support/bean/cell/AmapCell;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "2#"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->sid:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "#"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v2, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->nid:I

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->bid:I

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AmapCellCdma{sid="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->sid:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", nid="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->nid:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", bid="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->bid:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", latitude="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->latitude:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", longitude="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->longitude:I

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", mcc=\'"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const/16 v1, 0x27

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    const-string v2, ", mnc=\'"

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v2, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", signalStrength="

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ", asuLevel="

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->asuLevel:I

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, ", lastUpdateSystemMills="

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-wide v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateSystemMills:J

    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ", lastUpdateUtcMills="

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-wide v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateUtcMills:J

    .line 121
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ", age="

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->age:I

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ", main="

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-boolean v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, ", newApi="

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-boolean v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->newApi:Z

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    const/16 v1, 0x7d

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    return-object v0
.end method

.method public valid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->sid:I

    .line 3
    if-lez v0, :cond_0

    .line 5
    const/16 v1, 0x7fff

    .line 7
    if-gt v0, v1, :cond_0

    .line 9
    iget v0, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->nid:I

    .line 11
    if-ltz v0, :cond_0

    .line 13
    const v1, 0xffff

    .line 16
    if-gt v0, v1, :cond_0

    .line 18
    iget v0, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->bid:I

    .line 20
    if-ltz v0, :cond_0

    .line 22
    if-gt v0, v1, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method
