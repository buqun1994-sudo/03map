.class public Lph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/autonavi/amapauto/alink/IAlinkSencorListener;


# static fields
.field public static i:J


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

.field public c:Z

.field public d:Z

.field public e:Landroid/os/HandlerThread;

.field public f:Landroid/os/Handler;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lph;->a:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

    .line 16
    invoke-direct {v0}, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;-><init>()V

    .line 19
    iput-object v0, p0, Lph;->b:Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lph;->c:Z

    .line 24
    iput-boolean v0, p0, Lph;->d:Z

    .line 26
    new-instance v0, Lph$a;

    .line 28
    invoke-direct {v0, p0}, Lph$a;-><init>(Lph;)V

    .line 31
    iput-object v0, p0, Lph;->g:Ljava/lang/Runnable;

    .line 33
    new-instance v0, Lph$b;

    .line 35
    invoke-direct {v0, p0}, Lph$b;-><init>(Lph;)V

    .line 38
    iput-object v0, p0, Lph;->h:Ljava/lang/Runnable;

    .line 40
    new-instance v0, Landroid/os/HandlerThread;

    .line 42
    const-string v1, "CustomSensorThread"

    .line 44
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object v0, p0, Lph;->e:Landroid/os/HandlerThread;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    .line 54
    iget-object v1, p0, Lph;->e:Landroid/os/HandlerThread;

    .line 56
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    iput-object v0, p0, Lph;->f:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method public static synthetic a(Lph;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lph;->c:Z

    .line 3
    return p1
.end method

.method public static synthetic b(Lph;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lph;->a:Ljava/lang/String;

    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lph;->e:Landroid/os/HandlerThread;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 9
    iput-object v1, p0, Lph;->e:Landroid/os/HandlerThread;

    .line 11
    :cond_0
    iget-object v0, p0, Lph;->f:Landroid/os/Handler;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    :cond_1
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lph;->a:Ljava/lang/String;

    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p2

    .line 11
    aput-object p2, v0, v1

    .line 13
    const-string p2, "onAccuracyChanged: accuracy = {?}"

    .line 15
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    .line 1
    if-eqz p1, :cond_7

    .line 3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 5
    if-eqz v0, :cond_7

    .line 7
    iget-object v1, p0, Lph;->a:Ljava/lang/String;

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v0

    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v0, v3, v4

    .line 23
    const-string v0, "onSensorChanged chenged, type:{?}"

    .line 25
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    move-result-wide v0

    .line 32
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 34
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    .line 37
    move-result v3

    .line 38
    const/4 v5, 0x2

    .line 39
    if-eq v3, v2, :cond_4

    .line 41
    if-eq v3, v5, :cond_3

    .line 43
    const/4 v6, 0x4

    .line 44
    if-eq v3, v6, :cond_2

    .line 46
    const/16 v6, 0x9

    .line 48
    if-eq v3, v6, :cond_1

    .line 50
    const/16 v5, 0xf

    .line 52
    if-eq v3, v5, :cond_0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    const/4 v3, 0x0

    .line 56
    :goto_0
    iget-object v5, p0, Lph;->b:Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

    .line 58
    iget-object v5, v5, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->orientations:[F

    .line 60
    array-length v6, v5

    .line 61
    if-ge v3, v6, :cond_5

    .line 63
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 65
    aget v6, v6, v3

    .line 67
    aput v6, v5, v3

    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object v3, p0, Lph;->b:Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

    .line 74
    iget-object v3, v3, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->grivityData:[F

    .line 76
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 78
    aget v6, p1, v4

    .line 80
    const v7, 0x411ce80a

    .line 83
    div-float/2addr v6, v7

    .line 84
    aput v6, v3, v4

    .line 86
    aget v6, p1, v2

    .line 88
    div-float/2addr v6, v7

    .line 89
    aput v6, v3, v2

    .line 91
    aget p1, p1, v5

    .line 93
    div-float/2addr p1, v7

    .line 94
    aput p1, v3, v5

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    iget-boolean v3, p0, Lph;->c:Z

    .line 99
    if-nez v3, :cond_5

    .line 101
    iget-object v3, p0, Lph;->b:Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

    .line 103
    iget-object v6, v3, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->gyroscopeValues:[F

    .line 105
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 107
    aget v7, p1, v4

    .line 109
    aput v7, v6, v4

    .line 111
    aget v7, p1, v2

    .line 113
    aput v7, v6, v2

    .line 115
    aget p1, p1, v5

    .line 117
    aput p1, v6, v5

    .line 119
    iput-boolean v2, v3, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->gyroscopeValid:Z

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    iget-object v3, p0, Lph;->b:Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

    .line 124
    iget-object v6, v3, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->geoMagneticValues:[F

    .line 126
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 128
    aget v7, p1, v4

    .line 130
    aput v7, v6, v4

    .line 132
    aget v7, p1, v2

    .line 134
    aput v7, v6, v2

    .line 136
    aget p1, p1, v5

    .line 138
    aput p1, v6, v5

    .line 140
    iput-boolean v2, v3, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->geoMagneticValid:Z

    .line 142
    goto :goto_1

    .line 143
    :cond_4
    iget-boolean v3, p0, Lph;->d:Z

    .line 145
    if-nez v3, :cond_5

    .line 147
    iget-object v3, p0, Lph;->b:Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

    .line 149
    iget-object v6, v3, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->accValues:[F

    .line 151
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 153
    aget v7, p1, v4

    .line 155
    aput v7, v6, v4

    .line 157
    aget v7, p1, v2

    .line 159
    aput v7, v6, v2

    .line 161
    aget p1, p1, v5

    .line 163
    aput p1, v6, v5

    .line 165
    iput-boolean v2, v3, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->accValid:Z

    .line 167
    :cond_5
    :goto_1
    sget-wide v5, Lph;->i:J

    .line 169
    sub-long v7, v0, v5

    .line 171
    const-wide/16 v9, 0x0

    .line 173
    cmp-long p1, v5, v9

    .line 175
    if-eqz p1, :cond_6

    .line 177
    const-wide/16 v5, 0x61

    .line 179
    cmp-long p1, v7, v5

    .line 181
    if-ltz p1, :cond_7

    .line 183
    :cond_6
    new-instance p1, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

    .line 185
    invoke-direct {p1}, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;-><init>()V

    .line 188
    iget-object v3, p0, Lph;->b:Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

    .line 190
    iget-boolean v5, v3, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->accValid:Z

    .line 192
    iput-boolean v5, p1, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->accValid:Z

    .line 194
    iget-boolean v5, v3, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->gyroscopeValid:Z

    .line 196
    iput-boolean v5, p1, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->gyroscopeValid:Z

    .line 198
    iget-boolean v5, v3, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->geoMagneticValid:Z

    .line 200
    iput-boolean v5, p1, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->geoMagneticValid:Z

    .line 202
    iget-object v3, v3, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->accValues:[F

    .line 204
    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    .line 207
    move-result-object v3

    .line 208
    check-cast v3, [F

    .line 210
    iput-object v3, p1, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->accValues:[F

    .line 212
    iget-object v3, p0, Lph;->b:Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

    .line 214
    iget-object v3, v3, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->gyroscopeValues:[F

    .line 216
    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    .line 219
    move-result-object v3

    .line 220
    check-cast v3, [F

    .line 222
    iput-object v3, p1, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->gyroscopeValues:[F

    .line 224
    iget-object v3, p0, Lph;->b:Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

    .line 226
    iget-object v3, v3, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->geoMagneticValues:[F

    .line 228
    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    .line 231
    move-result-object v3

    .line 232
    check-cast v3, [F

    .line 234
    iput-object v3, p1, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->geoMagneticValues:[F

    .line 236
    iget-object v3, p0, Lph;->b:Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

    .line 238
    iget-object v3, v3, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->grivityData:[F

    .line 240
    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    .line 243
    move-result-object v3

    .line 244
    check-cast v3, [F

    .line 246
    iput-object v3, p1, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->grivityData:[F

    .line 248
    iget-object v3, p0, Lph;->b:Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

    .line 250
    iget-object v3, v3, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->rotationMatrix:[F

    .line 252
    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    .line 255
    move-result-object v3

    .line 256
    check-cast v3, [F

    .line 258
    iput-object v3, p1, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->rotationMatrix:[F

    .line 260
    iget-object v3, p0, Lph;->b:Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

    .line 262
    iget-object v3, v3, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->remappedRotationMatrix:[F

    .line 264
    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    .line 267
    move-result-object v3

    .line 268
    check-cast v3, [F

    .line 270
    iput-object v3, p1, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->remappedRotationMatrix:[F

    .line 272
    iget-object v3, p0, Lph;->b:Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

    .line 274
    iget-object v3, v3, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->orientations:[F

    .line 276
    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    .line 279
    move-result-object v3

    .line 280
    check-cast v3, [F

    .line 282
    iput-object v3, p1, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->orientations:[F

    .line 284
    sput-wide v0, Lph;->i:J

    .line 286
    iget-object v0, p0, Lph;->a:Ljava/lang/String;

    .line 288
    new-array v1, v2, [Ljava/lang/Object;

    .line 290
    aput-object p1, v1, v4

    .line 292
    const-string v2, "onSensorChanged:sensorInfo = {?} "

    .line 294
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-static {p1}, Lcom/autonavi/amapauto/ar/camera/ArSensorManagerNative;->notifySensorEvent(Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;)V

    .line 300
    :cond_7
    return-void
.end method

.method public onSensorDataReceived(IJ[DI)I
    .locals 5

    .line 1
    iget-object p2, p0, Lph;->a:Ljava/lang/String;

    .line 3
    const/4 p3, 0x2

    .line 4
    new-array p5, p3, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    aput-object v0, p5, v1

    .line 13
    invoke-static {p4}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x1

    .line 18
    aput-object v0, p5, v2

    .line 20
    const-string v0, "onSensorDataReceived: category = {?} values = {?}"

    .line 22
    invoke-static {p2, v0, p5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    const-wide/16 v3, 0x3e8

    .line 27
    const/4 p2, 0x0

    .line 28
    if-ne p1, v2, :cond_0

    .line 30
    iget-object p1, p0, Lph;->f:Landroid/os/Handler;

    .line 32
    iget-object p5, p0, Lph;->h:Ljava/lang/Runnable;

    .line 34
    invoke-virtual {p1, p5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    iget-object p1, p0, Lph;->f:Landroid/os/Handler;

    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lph;->f:Landroid/os/Handler;

    .line 44
    iget-object p2, p0, Lph;->h:Ljava/lang/Runnable;

    .line 46
    invoke-virtual {p1, p2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    iput-boolean v2, p0, Lph;->d:Z

    .line 51
    iget-object p1, p0, Lph;->b:Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

    .line 53
    iget-object p2, p1, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->accValues:[F

    .line 55
    aget-wide v3, p4, v1

    .line 57
    double-to-float p5, v3

    .line 58
    aput p5, p2, v1

    .line 60
    aget-wide v3, p4, v2

    .line 62
    double-to-float p5, v3

    .line 63
    aput p5, p2, v2

    .line 65
    aget-wide v3, p4, p3

    .line 67
    double-to-float p4, v3

    .line 68
    aput p4, p2, p3

    .line 70
    iput-boolean v2, p1, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->accValid:Z

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    if-ne p1, p3, :cond_1

    .line 75
    iget-object p1, p0, Lph;->f:Landroid/os/Handler;

    .line 77
    iget-object p5, p0, Lph;->g:Ljava/lang/Runnable;

    .line 79
    invoke-virtual {p1, p5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    iget-object p1, p0, Lph;->f:Landroid/os/Handler;

    .line 84
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 87
    iget-object p1, p0, Lph;->f:Landroid/os/Handler;

    .line 89
    iget-object p2, p0, Lph;->g:Ljava/lang/Runnable;

    .line 91
    invoke-virtual {p1, p2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    iput-boolean v2, p0, Lph;->c:Z

    .line 96
    iget-object p1, p0, Lph;->b:Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;

    .line 98
    iget-object p2, p1, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->gyroscopeValues:[F

    .line 100
    aget-wide v3, p4, v1

    .line 102
    double-to-float p5, v3

    .line 103
    aput p5, p2, v1

    .line 105
    aget-wide v3, p4, v2

    .line 107
    double-to-float p5, v3

    .line 108
    aput p5, p2, v2

    .line 110
    aget-wide v3, p4, p3

    .line 112
    double-to-float p4, v3

    .line 113
    aput p4, p2, p3

    .line 115
    iput-boolean v2, p1, Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;->gyroscopeValid:Z

    .line 117
    :cond_1
    :goto_0
    return v1
.end method
