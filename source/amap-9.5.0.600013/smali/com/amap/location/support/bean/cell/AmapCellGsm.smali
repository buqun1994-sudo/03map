.class public Lcom/amap/location/support/bean/cell/AmapCellGsm;
.super Lcom/amap/location/support/bean/cell/AmapCell;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public arfcn:I

.field public bsic:I

.field public cid:I

.field public lac:I

.field public psc:I

.field public timingAdvance:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/bean/cell/AmapCell;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->lac:I

    .line 3
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->cid:I

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->psc:I

    .line 5
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->arfcn:I

    .line 6
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->bsic:I

    .line 7
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->timingAdvance:I

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/bean/cell/AmapCell;-><init>(ZZ)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->lac:I

    .line 10
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->cid:I

    const p1, 0x7fffffff

    .line 11
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->psc:I

    .line 12
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->arfcn:I

    .line 13
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->bsic:I

    .line 14
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->timingAdvance:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/location/support/bean/cell/AmapCell;
    .locals 3

    .line 2
    new-instance v0, Lcom/amap/location/support/bean/cell/AmapCellGsm;

    iget-boolean v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z

    iget-boolean v2, p0, Lcom/amap/location/support/bean/cell/AmapCell;->newApi:Z

    invoke-direct {v0, v1, v2}, Lcom/amap/location/support/bean/cell/AmapCellGsm;-><init>(ZZ)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/amap/location/support/bean/cell/AmapCell;->cloneFrom(Lcom/amap/location/support/bean/cell/AmapCell;)V

    .line 4
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->lac:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->lac:I

    .line 5
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->cid:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->cid:I

    .line 6
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->psc:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->psc:I

    .line 7
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->arfcn:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->arfcn:I

    .line 8
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->bsic:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->bsic:I

    .line 9
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->timingAdvance:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->timingAdvance:I

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
    invoke-virtual {p0}, Lcom/amap/location/support/bean/cell/AmapCellGsm;->clone()Lcom/amap/location/support/bean/cell/AmapCell;

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
    const-string v1, "1#"

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
    iget v2, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->lac:I

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->cid:I

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
    const-string v1, "AmapCellGsm{lac="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->lac:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", cid="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->cid:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", psc="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->psc:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", arfcn="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->arfcn:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", bsic="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->bsic:I

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", timingAdvance="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->timingAdvance:I

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", mcc=\'"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/16 v1, 0x27

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    const-string v2, ", mnc=\'"

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v2, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ", signalStrength="

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, ", asuLevel="

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->asuLevel:I

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ", lastUpdateSystemMills="

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-wide v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateSystemMills:J

    .line 121
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ", lastUpdateUtcMills="

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-wide v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateUtcMills:J

    .line 131
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ", age="

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->age:I

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, ", main="

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-boolean v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, ", newApi="

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-boolean v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->newApi:Z

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    const/16 v1, 0x7d

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 173
    return-object v0
.end method

.method public valid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->lac:I

    .line 3
    if-ltz v0, :cond_0

    .line 5
    const v1, 0xffff

    .line 8
    if-gt v0, v1, :cond_0

    .line 10
    iget v0, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->cid:I

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
