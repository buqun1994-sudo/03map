.class public Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public accValid:Z

.field public accValues:[F

.field public geoMagneticValid:Z

.field public geoMagneticValues:[F

.field public grivityData:[F

.field public gyroscopeValid:Z

.field public gyroscopeValues:[F

.field public orientations:[F

.field public remappedRotationMatrix:[F

.field public rotationMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->gyroscopeValid:Z

    .line 7
    iput-boolean v0, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->geoMagneticValid:Z

    .line 9
    iput-boolean v0, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->accValid:Z

    .line 11
    const/4 v0, 0x3

    .line 12
    new-array v1, v0, [F

    .line 14
    iput-object v1, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->accValues:[F

    .line 16
    new-array v1, v0, [F

    .line 18
    iput-object v1, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->gyroscopeValues:[F

    .line 20
    new-array v1, v0, [F

    .line 22
    iput-object v1, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->geoMagneticValues:[F

    .line 24
    new-array v0, v0, [F

    .line 26
    iput-object v0, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->grivityData:[F

    .line 28
    const/16 v0, 0x10

    .line 30
    new-array v1, v0, [F

    .line 32
    iput-object v1, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->rotationMatrix:[F

    .line 34
    new-array v0, v0, [F

    .line 36
    iput-object v0, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->remappedRotationMatrix:[F

    .line 38
    const/4 v0, 0x4

    .line 39
    new-array v0, v0, [F

    .line 41
    iput-object v0, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->orientations:[F

    .line 43
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "ArSensorInfo{ gyroscopeValid="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-boolean v1, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->gyroscopeValid:Z

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", geoMagneticValid="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-boolean v1, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->geoMagneticValid:Z

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", accValid="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-boolean v1, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->accValid:Z

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", accValues="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->accValues:[F

    .line 43
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, ", gyroscopeValues="

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->gyroscopeValues:[F

    .line 57
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", geoMagneticValues="

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->geoMagneticValues:[F

    .line 71
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", grivityData="

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->grivityData:[F

    .line 85
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ", rotationMatrix="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->rotationMatrix:[F

    .line 99
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", remappedRotationMatrix="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->remappedRotationMatrix:[F

    .line 113
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ", orientations="

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v1, p0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->orientations:[F

    .line 127
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const/16 v1, 0x7d

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 143
    return-object v0
.end method
