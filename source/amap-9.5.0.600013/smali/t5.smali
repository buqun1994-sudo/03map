.class public abstract Lt5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "ArSensorEventManager"

.field public static b:Landroid/hardware/SensorManager; = null

.field public static c:Lph; = null

.field public static d:I = 0x186a0


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a()Landroid/hardware/SensorEventListener;
    .locals 1

    .line 1
    sget-object v0, Lt5;->c:Lph;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lph;

    .line 7
    invoke-direct {v0}, Lph;-><init>()V

    .line 10
    sput-object v0, Lt5;->c:Lph;

    .line 12
    :cond_0
    sget-object v0, Lt5;->c:Lph;

    .line 14
    return-object v0
.end method

.method public static b()Landroid/hardware/SensorManager;
    .locals 2

    .line 1
    sget-object v0, Lt5;->b:Landroid/hardware/SensorManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lrv;->H()Lrv;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "sensor"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/hardware/SensorManager;

    .line 21
    sput-object v0, Lt5;->b:Landroid/hardware/SensorManager;

    .line 23
    :cond_0
    sget-object v0, Lt5;->b:Landroid/hardware/SensorManager;

    .line 25
    return-object v0
.end method

.method public static c()Z
    .locals 10

    .line 1
    invoke-static {}, Lt5;->b()Landroid/hardware/SensorManager;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    sget-object v0, Lt5;->a:Ljava/lang/String;

    .line 10
    const-string v2, "sensor manager is null!"

    .line 12
    new-array v3, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return v1

    .line 18
    :cond_0
    sget-object v0, Lt5;->b:Landroid/hardware/SensorManager;

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 24
    move-result-object v0

    .line 25
    sget-object v3, Lt5;->b:Landroid/hardware/SensorManager;

    .line 27
    const/4 v4, 0x4

    .line 28
    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 31
    move-result-object v3

    .line 32
    sget-object v4, Lt5;->b:Landroid/hardware/SensorManager;

    .line 34
    const/4 v5, 0x2

    .line 35
    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 38
    sget-object v4, Lt5;->b:Landroid/hardware/SensorManager;

    .line 40
    const/16 v6, 0x9

    .line 42
    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 45
    sget-object v4, Lt5;->b:Landroid/hardware/SensorManager;

    .line 47
    const/16 v6, 0xf

    .line 49
    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 52
    move-result-object v4

    .line 53
    invoke-static {}, Lt5;->a()Landroid/hardware/SensorEventListener;

    .line 56
    move-result-object v6

    .line 57
    if-nez v6, :cond_1

    .line 59
    sget-object v0, Lt5;->a:Ljava/lang/String;

    .line 61
    const-string v2, "eventListener is null!"

    .line 63
    new-array v3, v1, [Ljava/lang/Object;

    .line 65
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return v1

    .line 69
    :cond_1
    if-eqz v0, :cond_7

    .line 71
    sget-object v7, Lt5;->b:Landroid/hardware/SensorManager;

    .line 73
    invoke-virtual {v7, v6, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 76
    move-result v7

    .line 77
    if-nez v7, :cond_2

    .line 79
    sget-object v7, Lt5;->a:Ljava/lang/String;

    .line 81
    const-string v8, "register acc failed!"

    .line 83
    new-array v9, v1, [Ljava/lang/Object;

    .line 85
    invoke-static {v7, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    sget-object v7, Lt5;->b:Landroid/hardware/SensorManager;

    .line 90
    sget v8, Lt5;->d:I

    .line 92
    invoke-virtual {v7, v6, v0, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_2

    .line 98
    sget-object v0, Lt5;->a:Ljava/lang/String;

    .line 100
    const-string v2, "backup acc failed!"

    .line 102
    new-array v3, v1, [Ljava/lang/Object;

    .line 104
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return v1

    .line 108
    :cond_2
    if-eqz v3, :cond_6

    .line 110
    sget-object v0, Lt5;->b:Landroid/hardware/SensorManager;

    .line 112
    invoke-virtual {v0, v6, v3, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_3

    .line 118
    sget-object v0, Lt5;->a:Ljava/lang/String;

    .line 120
    const-string v7, "register gyroscope failed!"

    .line 122
    new-array v8, v1, [Ljava/lang/Object;

    .line 124
    invoke-static {v0, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    sget-object v0, Lt5;->b:Landroid/hardware/SensorManager;

    .line 129
    sget v7, Lt5;->d:I

    .line 131
    invoke-virtual {v0, v6, v3, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_3

    .line 137
    sget-object v0, Lt5;->a:Ljava/lang/String;

    .line 139
    const-string v2, "backup gyroscope failed!"

    .line 141
    new-array v3, v1, [Ljava/lang/Object;

    .line 143
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    return v1

    .line 147
    :cond_3
    if-eqz v4, :cond_5

    .line 149
    sget-object v0, Lt5;->b:Landroid/hardware/SensorManager;

    .line 151
    invoke-virtual {v0, v6, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_4

    .line 157
    sget-object v0, Lt5;->a:Ljava/lang/String;

    .line 159
    const-string v3, "register gameration failed!"

    .line 161
    new-array v5, v1, [Ljava/lang/Object;

    .line 163
    invoke-static {v0, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    sget-object v0, Lt5;->b:Landroid/hardware/SensorManager;

    .line 168
    sget v3, Lt5;->d:I

    .line 170
    invoke-virtual {v0, v6, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 173
    move-result v0

    .line 174
    if-nez v0, :cond_4

    .line 176
    sget-object v0, Lt5;->a:Ljava/lang/String;

    .line 178
    const-string v2, "backup gameration failed!"

    .line 180
    new-array v3, v1, [Ljava/lang/Object;

    .line 182
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    return v1

    .line 186
    :cond_4
    return v2

    .line 187
    :cond_5
    sget-object v0, Lt5;->a:Ljava/lang/String;

    .line 189
    const-string v2, "gameration is null!"

    .line 191
    new-array v3, v1, [Ljava/lang/Object;

    .line 193
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    return v1

    .line 197
    :cond_6
    sget-object v0, Lt5;->a:Ljava/lang/String;

    .line 199
    const-string v2, "gyroscope is null!"

    .line 201
    new-array v3, v1, [Ljava/lang/Object;

    .line 203
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    return v1

    .line 207
    :cond_7
    sget-object v0, Lt5;->a:Ljava/lang/String;

    .line 209
    const-string v2, "acc is null!"

    .line 211
    new-array v3, v1, [Ljava/lang/Object;

    .line 213
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    return v1
.end method

.method public static d()Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lt5;->c()Z

    .line 6
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 10
    move-result-object v3

    .line 11
    sget-object v4, Lt5;->c:Lph;

    .line 13
    invoke-virtual {v3, v4}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->registerSensorListener(Lcom/autonavi/amapauto/alink/IAlinkSencorListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    goto :goto_1

    .line 17
    :catch_0
    move-exception v3

    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception v3

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    sget-object v4, Lt5;->a:Ljava/lang/String;

    .line 23
    new-array v5, v0, [Ljava/lang/Object;

    .line 25
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    aput-object v3, v5, v1

    .line 31
    const-string v3, "registerAllSensorListener: stack = {?}"

    .line 33
    invoke-static {v4, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :goto_1
    sget-object v3, Lt5;->a:Ljava/lang/String;

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    move-result-object v4

    .line 44
    aput-object v4, v0, v1

    .line 46
    const-string v1, "registerAllSensorListener: isSuc = {?}"

    .line 48
    invoke-static {v3, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return v2
.end method

.method public static e()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    sget-object v2, Lt5;->b:Landroid/hardware/SensorManager;

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v2, :cond_0

    .line 8
    sget-object v2, Lt5;->c:Lph;

    .line 10
    invoke-virtual {v2}, Lph;->c()V

    .line 13
    sget-object v2, Lt5;->b:Landroid/hardware/SensorManager;

    .line 15
    sget-object v4, Lt5;->c:Lph;

    .line 17
    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 20
    sput-object v3, Lt5;->b:Landroid/hardware/SensorManager;

    .line 22
    :cond_0
    sput-object v3, Lt5;->c:Lph;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    const/4 v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v2

    .line 27
    sget-object v3, Lt5;->a:Ljava/lang/String;

    .line 29
    new-array v4, v1, [Ljava/lang/Object;

    .line 31
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    aput-object v2, v4, v0

    .line 37
    const-string v2, "unregisterAllSensorListener: stack = {?}"

    .line 39
    invoke-static {v3, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    sget-object v3, Lt5;->a:Ljava/lang/String;

    .line 45
    new-array v1, v1, [Ljava/lang/Object;

    .line 47
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    move-result-object v4

    .line 51
    aput-object v4, v1, v0

    .line 53
    const-string v0, "unregisterAllSensorListener: isSuc = {?}"

    .line 55
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return v2
.end method
