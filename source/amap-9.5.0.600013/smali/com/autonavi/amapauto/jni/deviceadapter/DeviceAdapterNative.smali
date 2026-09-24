.class public Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;,
        Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$b;,
        Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceAdapterNative"

.field private static sAdapterStateRequestInterface:Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$a;

.field private static sApplyNotifyInterface:Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$b;

.field private static sSurveyInterface:Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static jniApplyDeviceAdapterNotify(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "DeviceAdapterNative"

    .line 13
    const-string v2, "jniApplyDeviceAdapterNotify, type:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative;->sApplyNotifyInterface:Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$b;

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p0}, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$b;->a(I)V

    .line 25
    :cond_0
    return-void
.end method

.method private static jniIsAdaptiveDevice()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "DeviceAdapterNative"

    .line 6
    const-string v3, "jniIsAdaptiveDevice"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v1, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative;->sAdapterStateRequestInterface:Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$a;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v1}, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$a;->a()Z

    .line 18
    move-result v0

    .line 19
    :cond_0
    return v0
.end method

.method private static jniNotifyDevAdapterPopupOperationResult(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "DeviceAdapterNative"

    .line 13
    const-string v2, "notifyDevAdapterPopupOperationResult, result:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative;->sSurveyInterface:Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p0}, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;->b(I)V

    .line 25
    :cond_0
    return-void
.end method

.method private static jniNotifyDevAdapterSurveyResult(Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurveyResult;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget v2, p0, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurveyResult;->resultType:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    const-string v2, "DeviceAdapterNative"

    .line 15
    const-string v4, "notifyDevAdapterSurveyResult, resultType:{?}"

    .line 17
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    new-array v1, v0, [Ljava/lang/Object;

    .line 22
    iget-object v4, p0, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurveyResult;->contact:Ljava/lang/String;

    .line 24
    aput-object v4, v1, v3

    .line 26
    const-string v4, "notifyDevAdapterSurveyResult, contact:{?}"

    .line 28
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurveyResult;->listAnswers:Ljava/util/List;

    .line 33
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v1

    .line 37
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterAnswer;

    .line 49
    const/4 v5, 0x2

    .line 50
    new-array v5, v5, [Ljava/lang/Object;

    .line 52
    iget v6, v4, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterAnswer;->id:I

    .line 54
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v6

    .line 58
    aput-object v6, v5, v3

    .line 60
    iget v4, v4, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterAnswer;->optionsIndex:I

    .line 62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v4

    .line 66
    aput-object v4, v5, v0

    .line 68
    const-string v4, "id:{?}, choice:{?}"

    .line 70
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    sget-object v0, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative;->sSurveyInterface:Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;

    .line 76
    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0, p0}, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;->a(Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurveyResult;)V

    .line 81
    :cond_1
    return-void
.end method

.method private static jniReqDevAdapterPopupInfo()Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterPopupInfo;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "DeviceAdapterNative"

    .line 6
    const-string v2, "reqDevAdapterPopupInfo"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v0, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative;->sSurveyInterface:Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;->d()Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterPopupInfo;

    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method private static jniReqDevAdapterSurvey()Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurvey;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "DeviceAdapterNative"

    .line 6
    const-string v2, "reqDevAdapterSurvey"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v0, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative;->sSurveyInterface:Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;->c()Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurvey;

    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public static setAdapterStateRequestInterface(Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$a;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative;->sAdapterStateRequestInterface:Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$a;

    .line 3
    return-void
.end method

.method public static setApplyDeviceAdapterNotifyInterface(Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$b;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative;->sApplyNotifyInterface:Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$b;

    .line 3
    return-void
.end method

.method public static setDeviceAdapterSurveyInterface(Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative;->sSurveyInterface:Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;

    .line 3
    return-void
.end method
