.class public Lcom/amap/location/support/bean/cell/AmapCellNr;
.super Lcom/amap/location/support/bean/cell/AmapCell;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public nci:J

.field public nrarfcn:I

.field public pci:I

.field public ssRsrq:I

.field public ssSinr:I

.field public tac:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/bean/cell/AmapCell;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->tac:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->nci:J

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->pci:I

    .line 5
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->nrarfcn:I

    .line 6
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->ssRsrq:I

    .line 7
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->ssSinr:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/amap/location/support/bean/cell/AmapCell;-><init>(ZZ)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->tac:I

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->nci:J

    const p1, 0x7fffffff

    .line 11
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->pci:I

    .line 12
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->nrarfcn:I

    .line 13
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->ssRsrq:I

    .line 14
    iput p1, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->ssSinr:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/location/support/bean/cell/AmapCell;
    .locals 3

    .line 2
    new-instance v0, Lcom/amap/location/support/bean/cell/AmapCellNr;

    iget-boolean v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z

    invoke-direct {v0, v1}, Lcom/amap/location/support/bean/cell/AmapCellNr;-><init>(Z)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/amap/location/support/bean/cell/AmapCell;->cloneFrom(Lcom/amap/location/support/bean/cell/AmapCell;)V

    .line 4
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->tac:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellNr;->tac:I

    .line 5
    iget-wide v1, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->nci:J

    iput-wide v1, v0, Lcom/amap/location/support/bean/cell/AmapCellNr;->nci:J

    .line 6
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->pci:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellNr;->pci:I

    .line 7
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->nrarfcn:I

    iput v1, v0, Lcom/amap/location/support/bean/cell/AmapCellNr;->nrarfcn:I

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
    invoke-virtual {p0}, Lcom/amap/location/support/bean/cell/AmapCellNr;->clone()Lcom/amap/location/support/bean/cell/AmapCell;

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
    const-string v1, "6#"

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
    iget v2, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->tac:I

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-wide v1, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->nci:J

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    const-string v1, "AmapCellNr{tac="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->tac:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", nci="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-wide v1, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->nci:J

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", pci="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->pci:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", nrarfcn="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->nrarfcn:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", mcc=\'"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const/16 v1, 0x27

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    const-string v2, ", mnc=\'"

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v2, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", signalStrength="

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", asuLevel="

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->asuLevel:I

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ", lastUpdateSystemMills="

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-wide v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateSystemMills:J

    .line 101
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, ", lastUpdateUtcMills="

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-wide v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateUtcMills:J

    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ", age="

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->age:I

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ", main="

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-boolean v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ", newApi="

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-boolean v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->newApi:Z

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    const/16 v1, 0x7d

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    return-object v0
.end method

.method public valid()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->tac:I

    .line 3
    if-ltz v0, :cond_0

    .line 5
    const v1, 0xffffff

    .line 8
    if-gt v0, v1, :cond_0

    .line 10
    iget-wide v0, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;->nci:J

    .line 12
    const-wide/16 v2, 0x1000

    .line 14
    cmp-long v4, v0, v2

    .line 16
    if-ltz v4, :cond_0

    .line 18
    const-wide v2, 0xfffffffffL

    .line 23
    cmp-long v4, v0, v2

    .line 25
    if-gtz v4, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0
.end method
