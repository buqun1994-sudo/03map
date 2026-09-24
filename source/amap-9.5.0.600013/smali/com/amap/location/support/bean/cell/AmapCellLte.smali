.class public Lcom/amap/location/support/bean/cell/AmapCellLte;
.super Lcom/amap/location/support/bean/cell/AmapCell;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public ci:I

.field public earfcn:I

.field public pci:I

.field public rsrp:I

.field public rsrq:I

.field public rssnr:I

.field public tac:I

.field public timingAdvance:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/bean/cell/AmapCell;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->tac:I

    .line 3
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->ci:I

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->pci:I

    .line 5
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->earfcn:I

    .line 6
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->timingAdvance:I

    .line 7
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->rsrp:I

    .line 8
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->rsrq:I

    .line 9
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->rssnr:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/amap/location/support/bean/cell/AmapCell;-><init>(ZZ)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->tac:I

    .line 12
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->ci:I

    const p1, 0x7fffffff

    .line 13
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->pci:I

    .line 14
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->earfcn:I

    .line 15
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->timingAdvance:I

    .line 16
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->rsrp:I

    .line 17
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->rsrq:I

    .line 18
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->rssnr:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/location/support/bean/cell/AmapCell;
    .locals 2

    .line 2
    new-instance v0, Lcom/amap/location/support/bean/cell/AmapCellLte;

    iget-boolean v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z

    invoke-direct {v0, v1}, Lcom/amap/location/support/bean/cell/AmapCellLte;-><init>(Z)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/amap/location/support/bean/cell/AmapCell;->cloneFrom(Lcom/amap/location/support/bean/cell/AmapCell;)V

    .line 4
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->tac:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellLte;->tac:I

    .line 5
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->ci:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellLte;->ci:I

    .line 6
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->pci:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellLte;->pci:I

    .line 7
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->earfcn:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellLte;->earfcn:I

    .line 8
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->timingAdvance:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellLte;->timingAdvance:I

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
    invoke-virtual {p0}, Lcom/amap/location/support/bean/cell/AmapCellLte;->clone()Lcom/amap/location/support/bean/cell/AmapCell;

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
    const-string v1, "3#"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "#"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v2, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget v2, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->tac:I

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->ci:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AmapCellLte{tac="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->tac:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", ci="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->ci:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", pci="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->pci:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", earfcn="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->earfcn:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", timingAdvance="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->timingAdvance:I

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
    iget v0, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->tac:I

    .line 3
    if-ltz v0, :cond_0

    .line 5
    const v1, 0xffff

    .line 8
    if-gt v0, v1, :cond_0

    .line 10
    iget v0, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;->ci:I

    .line 12
    if-ltz v0, :cond_0

    .line 14
    const v1, 0xfffffff

    .line 17
    if-gt v0, v1, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method
