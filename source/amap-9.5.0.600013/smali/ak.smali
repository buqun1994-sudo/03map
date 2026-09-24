.class public Lak;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lak$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lak$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lak;-><init>()V

    return-void
.end method

.method public static a()Lak;
    .locals 1

    .line 1
    invoke-static {}, Lak$b;->a()Lak;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/location/model/LocMountAngle;
    .locals 9

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->i()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->i()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 12
    move-result-object v0

    .line 13
    const v2, 0x4000000a    # 2.0000024f

    .line 16
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->j(I)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v3, 0x1

    .line 21
    new-array v4, v3, [Ljava/lang/Object;

    .line 23
    const/4 v5, 0x0

    .line 24
    aput-object v0, v4, v5

    .line 26
    const-string v6, "DrCommonUtil"

    .line 28
    const-string v7, "AmapAutoService getMountAngleInfo json = {?}"

    .line 30
    invoke-static {v6, v7, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_2

    .line 39
    const/4 v4, 0x0

    .line 40
    :goto_0
    const/16 v7, 0xa

    .line 42
    if-ge v4, v7, :cond_2

    .line 44
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->i()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->j(I)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v7

    .line 56
    if-nez v7, :cond_1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_3

    .line 68
    return-object v1

    .line 69
    :cond_3
    new-array v2, v3, [Ljava/lang/Object;

    .line 71
    aput-object v0, v2, v5

    .line 73
    const-string v3, "AmapAutoService getMountAngleInfo end json = {?}"

    .line 75
    invoke-static {v6, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 80
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v0, "hasMountAngle"

    .line 85
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 88
    move-result v0

    .line 89
    const-string v3, "yawMountAngle"

    .line 91
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 94
    move-result-wide v3

    .line 95
    const-string v5, "pitchMountAngle"

    .line 97
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 100
    move-result-wide v5

    .line 101
    const-string v7, "rollMountAngle"

    .line 103
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 106
    move-result-wide v7

    .line 107
    new-instance v2, Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 109
    invoke-direct {v2}, Lcom/autonavi/amapauto/location/model/LocMountAngle;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :try_start_1
    iput-boolean v0, v2, Lcom/autonavi/amapauto/location/model/LocMountAngle;->isValid:Z

    .line 114
    iput-wide v3, v2, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 116
    iput-wide v5, v2, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 118
    iput-wide v7, v2, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    goto :goto_3

    .line 121
    :catch_0
    move-exception v0

    .line 122
    move-object v1, v2

    .line 123
    goto :goto_2

    .line 124
    :catch_1
    move-exception v0

    .line 125
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    move-object v2, v1

    .line 129
    :goto_3
    return-object v2
.end method
