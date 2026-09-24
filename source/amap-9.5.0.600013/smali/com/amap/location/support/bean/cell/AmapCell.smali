.class public abstract Lcom/amap/location/support/bean/cell/AmapCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public age:I

.field public asuLevel:I

.field public lastUpdateSystemMills:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public lastUpdateUtcMills:J

.field public main:Z

.field public mcc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field public newApi:Z

.field public signalStrength:I

.field public timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    const/16 v0, 0x63

    .line 4
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    const v0, 0x7fffffff

    .line 5
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->asuLevel:I

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateSystemMills:J

    .line 7
    iput-wide v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateUtcMills:J

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->age:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->newApi:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    const/16 v0, 0x63

    .line 13
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    const v0, 0x7fffffff

    .line 14
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->asuLevel:I

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateSystemMills:J

    .line 16
    iput-wide v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateUtcMills:J

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->age:I

    .line 18
    iput-boolean p1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z

    .line 19
    iput-boolean p2, p0, Lcom/amap/location/support/bean/cell/AmapCell;->newApi:Z

    return-void
.end method

.method private static safeStrToInt(Ljava/lang/String;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 10
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method


# virtual methods
.method public abstract clone()Lcom/amap/location/support/bean/cell/AmapCell;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/bean/cell/AmapCell;->clone()Lcom/amap/location/support/bean/cell/AmapCell;

    move-result-object v0

    return-object v0
.end method

.method public cloneFrom(Lcom/amap/location/support/bean/cell/AmapCell;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p1, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    .line 11
    iget v0, p1, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 13
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 15
    iget v0, p1, Lcom/amap/location/support/bean/cell/AmapCell;->asuLevel:I

    .line 17
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->asuLevel:I

    .line 19
    iget-wide v0, p1, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateSystemMills:J

    .line 21
    iput-wide v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateSystemMills:J

    .line 23
    iget-wide v0, p1, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateUtcMills:J

    .line 25
    iput-wide v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateUtcMills:J

    .line 27
    iget v0, p1, Lcom/amap/location/support/bean/cell/AmapCell;->age:I

    .line 29
    iput v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->age:I

    .line 31
    iget-boolean v0, p1, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z

    .line 33
    iput-boolean v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z

    .line 35
    iget-boolean v0, p1, Lcom/amap/location/support/bean/cell/AmapCell;->newApi:Z

    .line 37
    iput-boolean v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->newApi:Z

    .line 39
    iget-wide v0, p1, Lcom/amap/location/support/bean/cell/AmapCell;->timeStamp:J

    .line 41
    iput-wide v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->timeStamp:J

    .line 43
    :cond_0
    return-void
.end method

.method public getAreaID()J
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lcom/amap/location/support/bean/cell/AmapCellGsm;

    .line 8
    iget v0, v0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->lac:I

    .line 10
    :goto_0
    int-to-long v0, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    instance-of v0, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    move-object v0, p0

    .line 17
    check-cast v0, Lcom/amap/location/support/bean/cell/AmapCellCdma;

    .line 19
    iget v0, v0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->nid:I

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    instance-of v0, p0, Lcom/amap/location/support/bean/cell/AmapCellWcdma;

    .line 24
    if-eqz v0, :cond_2

    .line 26
    move-object v0, p0

    .line 27
    check-cast v0, Lcom/amap/location/support/bean/cell/AmapCellWcdma;

    .line 29
    iget v0, v0, Lcom/amap/location/support/bean/cell/AmapCellWcdma;->lac:I

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    instance-of v0, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;

    .line 34
    if-eqz v0, :cond_3

    .line 36
    move-object v0, p0

    .line 37
    check-cast v0, Lcom/amap/location/support/bean/cell/AmapCellLte;

    .line 39
    iget v0, v0, Lcom/amap/location/support/bean/cell/AmapCellLte;->tac:I

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    instance-of v0, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;

    .line 44
    if-eqz v0, :cond_4

    .line 46
    move-object v0, p0

    .line 47
    check-cast v0, Lcom/amap/location/support/bean/cell/AmapCellNr;

    .line 49
    iget v0, v0, Lcom/amap/location/support/bean/cell/AmapCellNr;->tac:I

    .line 51
    goto :goto_0

    .line 52
    :cond_4
    const-wide/16 v0, 0x0

    .line 54
    :goto_1
    return-wide v0
.end method

.method public getCellID()J
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/amap/location/support/bean/cell/AmapCellGsm;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lcom/amap/location/support/bean/cell/AmapCellGsm;

    .line 8
    iget v0, v0, Lcom/amap/location/support/bean/cell/AmapCellGsm;->cid:I

    .line 10
    :goto_0
    int-to-long v0, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    instance-of v0, p0, Lcom/amap/location/support/bean/cell/AmapCellCdma;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    move-object v0, p0

    .line 17
    check-cast v0, Lcom/amap/location/support/bean/cell/AmapCellCdma;

    .line 19
    iget v0, v0, Lcom/amap/location/support/bean/cell/AmapCellCdma;->bid:I

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    instance-of v0, p0, Lcom/amap/location/support/bean/cell/AmapCellWcdma;

    .line 24
    if-eqz v0, :cond_2

    .line 26
    move-object v0, p0

    .line 27
    check-cast v0, Lcom/amap/location/support/bean/cell/AmapCellWcdma;

    .line 29
    iget v0, v0, Lcom/amap/location/support/bean/cell/AmapCellWcdma;->cid:I

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    instance-of v0, p0, Lcom/amap/location/support/bean/cell/AmapCellLte;

    .line 34
    if-eqz v0, :cond_3

    .line 36
    move-object v0, p0

    .line 37
    check-cast v0, Lcom/amap/location/support/bean/cell/AmapCellLte;

    .line 39
    iget v0, v0, Lcom/amap/location/support/bean/cell/AmapCellLte;->ci:I

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    instance-of v0, p0, Lcom/amap/location/support/bean/cell/AmapCellNr;

    .line 44
    if-eqz v0, :cond_4

    .line 46
    move-object v0, p0

    .line 47
    check-cast v0, Lcom/amap/location/support/bean/cell/AmapCellNr;

    .line 49
    iget-wide v0, v0, Lcom/amap/location/support/bean/cell/AmapCellNr;->nci:J

    .line 51
    goto :goto_1

    .line 52
    :cond_4
    const-wide/16 v0, 0x0

    .line 54
    :goto_1
    return-wide v0
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public getKeyWithDifferentApi()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/bean/cell/AmapCell;->getKey()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_0

    .line 13
    iget-boolean v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->newApi:Z

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "#"

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_0
    const-string v0, ""

    .line 38
    return-object v0
.end method

.method public getMccInt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/bean/cell/AmapCell;->safeStrToInt(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMncInt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/bean/cell/AmapCell;->safeStrToInt(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setMccInt(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public setMncInt(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AmapCell{timeStamp="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-wide v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->timeStamp:J

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", mcc="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", mnc="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", signalStrength="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", asulevel="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->asuLevel:I

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", lastUpdateSystemMills="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-wide v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateSystemMills:J

    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", lastUpdateUtcMills="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-wide v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateUtcMills:J

    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", age="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->age:I

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", main="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-boolean v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", newapi="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-boolean v1, p0, Lcom/amap/location/support/bean/cell/AmapCell;->newApi:Z

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    const/16 v1, 0x7d

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    return-object v0
.end method

.method public abstract valid()Z
.end method
