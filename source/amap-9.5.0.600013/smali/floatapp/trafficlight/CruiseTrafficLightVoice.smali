.class public Lfloatapp/trafficlight/CruiseTrafficLightVoice;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DIRECTION_PRIORITY:Ljava/util/HashMap;

.field private static final TAG:Ljava/lang/String; = "CruiseTrafficLightVoice"

.field private static broadcastedDirections:Ljava/util/HashMap; = null

.field private static volatile currentSpeed:I = -0x1

.field public static instance:Lfloatapp/trafficlight/CruiseTrafficLightVoice;

.field private static lastCruiseAnnouncement:Ljava/lang/String;

.field private static lastLightState:Ljava/util/HashMap;

.field private static lastStatusHashMap:Ljava/util/HashMap;


# instance fields
.field private mCameraLightInfoWrapper:Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsRunning:Z

.field private mSpeedReceiver:Lfloatapp/trafficlight/CruiseTrafficLightVoice$SpeedBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->DIRECTION_PRIORITY:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->broadcastedDirections:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->lastLightState:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->mIsRunning:Z

    return-void
.end method

.method private static checkAndResetBroadcastedDirections(Ljava/util/HashMap;)V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x4

    :goto_0
    if-ge v0, v1, :cond_9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->lastLightState:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "0,0"

    if-nez v4, :cond_0

    move-object v4, v6

    goto :goto_1

    :cond_0
    instance-of v7, v4, Ljava/lang/String;

    if-nez v7, :cond_1

    move-object v4, v6

    :cond_1
    :goto_1
    check-cast v4, Ljava/lang/String;

    if-nez v5, :cond_2

    move-object v5, v6

    goto :goto_2

    :cond_2
    instance-of v7, v5, Ljava/lang/String;

    if-nez v7, :cond_3

    move-object v5, v6

    :cond_3
    :goto_2
    check-cast v5, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    :cond_4
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2c

    if-eq v9, v10, :cond_5

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v8, v11, :cond_4

    const-string v12, "0"

    :cond_5
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    :cond_6
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2c

    if-eq v9, v10, :cond_7

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v8, v11, :cond_6

    const-string v13, "0"

    goto :goto_3

    :cond_7
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    :goto_3
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->broadcastedDirections:Ljava/util/HashMap;

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    :goto_4
    sput-object p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->lastLightState:Ljava/util/HashMap;

    return-void
.end method

.method private static getDirectionName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-ne p0, v0, :cond_0

    const-string v0, "\u8c03\u5934"

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "\u5de6\u8f6c"

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "\u76f4\u884c"

    return-object v0

    :cond_2
    const-string v0, "\u53f3\u8f6c"

    return-object v0
.end method

.method public static getLastStatus()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->lastStatusHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    return-object v0
.end method

.method private static processDirection(ILjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/HashMap;)V
    .locals 10

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0,0"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    :goto_0
    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v4, v7, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p0, "_"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static saveLastStatus(Ljava/util/HashMap;)V
    .locals 0

    sput-object p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->lastStatusHashMap:Ljava/util/HashMap;

    return-void
.end method

.method private saveTrafficLightInfo()V
    .locals 15

    sget-object v0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->instance:Lfloatapp/trafficlight/CruiseTrafficLightVoice;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->mCameraLightInfoWrapper:Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;

    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;->a:Ljava/util/List;

    if-eqz v1, :cond_10

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfo;

    iget v9, v8, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfo;->d:I

    iget v10, v8, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfo;->b:I

    iget v11, v8, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfo;->c:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->getDirectionName(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;

    invoke-direct {v14, v10, v13, v9, v11}, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->checkAndResetBroadcastedDirections(Ljava/util/HashMap;)V

    const/4 v10, 0x0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x4

    :goto_1
    if-ge v12, v11, :cond_2

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;

    iget p0, v14, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;->countdown:I

    if-ne p0, v13, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v10, :cond_10

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->broadcastedDirections:Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_5

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;

    iget v13, v12, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;->directionValue:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    iget v14, v12, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;->countdown:I

    const/4 p0, -0x1

    if-eq v14, p0, :cond_4

    iget v14, v12, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;->countdown:I

    const/4 p0, 0x4

    if-lt v14, p0, :cond_4

    const/4 p0, 0x6

    if-gt v14, p0, :cond_4

    iget p0, v12, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;->currentState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    and-int v11, v11, v12

    if-nez v11, :cond_10

    new-instance v11, Lfloatapp/trafficlight/CruiseTrafficLightVoice$1;

    invoke-direct {v11}, Lfloatapp/trafficlight/CruiseTrafficLightVoice$1;-><init>()V

    invoke-static {v7, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v8, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    const-string v10, ""

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v14, :cond_6

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;

    iget-object v10, v1, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;->directionName:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v14, :cond_6

    const-string v10, ""

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    goto :goto_5

    :cond_6
    const-string v10, "\u5373\u5c06\u7ea2\u706f"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, ""

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    const-string p0, ""

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    :cond_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v14, :cond_9

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;

    iget-object v10, v1, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;->directionName:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v14, :cond_9

    const-string v10, ""

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    goto :goto_6

    :cond_9
    const-string v10, "\u5373\u5c06\u7eff\u706f"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    :cond_a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    sget v13, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->currentSpeed:I

    const/16 v14, 0x6e

    if-gt v13, v14, :cond_c

    sget-object v13, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->lastCruiseAnnouncement:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    sput-object v12, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->lastCruiseAnnouncement:Ljava/lang/String;

    invoke-static {}, Lfloatapp/tts/ttsService;->c()Lfloatapp/tts/ttsService;

    move-result-object v13

    iget-boolean v13, v13, Lfloatapp/tts/ttsService;->f:Z

    if-nez v13, :cond_b

    sget-object v13, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->instance:Lfloatapp/trafficlight/CruiseTrafficLightVoice;

    iget-object v13, v13, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->mContext:Landroid/content/Context;

    invoke-static {}, Lfloatapp/tts/ttsService;->c()Lfloatapp/tts/ttsService;

    move-result-object v14

    invoke-virtual {v14, v13}, Lfloatapp/tts/ttsService;->d(Landroid/content/Context;)V

    :cond_b
    invoke-static {}, Lfloatapp/tts/ttsService;->c()Lfloatapp/tts/ttsService;

    move-result-object v13

    invoke-virtual {v13, v12}, Lfloatapp/tts/ttsService;->e(Ljava/lang/String;)V

    :cond_c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v13, :cond_d

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;

    iget v0, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;->directionValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v13, :cond_e

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;

    iget v0, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;->directionValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v13, :cond_10

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;

    iget v0, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;->countdown:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_f

    const/4 v1, 0x6

    if-gt v0, v1, :cond_f

    iget v0, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;->directionValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_10
    return-void
.end method

.method public static setCameraLightInfoWrapper(Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;)V
    .locals 1

    sget-object v0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->instance:Lfloatapp/trafficlight/CruiseTrafficLightVoice;

    if-eqz v0, :cond_0

    iput-object p0, v0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->mCameraLightInfoWrapper:Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;

    :cond_0
    return-void
.end method

.method public static updateCurrentSpeed(I)V
    .locals 1

    sput p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->currentSpeed:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    iget-boolean v0, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->mIsRunning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->saveTrafficLightInfo()V

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->mIsRunning:Z

    sput-object p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->instance:Lfloatapp/trafficlight/CruiseTrafficLightVoice;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lfloatapp/trafficlight/CruiseTrafficLightVoice$SpeedBroadcastReceiver;

    invoke-direct {v1}, Lfloatapp/trafficlight/CruiseTrafficLightVoice$SpeedBroadcastReceiver;-><init>()V

    iput-object v1, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->mSpeedReceiver:Lfloatapp/trafficlight/CruiseTrafficLightVoice$SpeedBroadcastReceiver;

    iget-object v2, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->mIsRunning:Z

    iget-object v0, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->mSpeedReceiver:Lfloatapp/trafficlight/CruiseTrafficLightVoice$SpeedBroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->mSpeedReceiver:Lfloatapp/trafficlight/CruiseTrafficLightVoice$SpeedBroadcastReceiver;

    :cond_0
    return-void
.end method
