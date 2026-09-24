.class public Lcom/autonavi/amapauto/alink/AlinkClientManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/alink/AlinkClientManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlinkClientManager"


# instance fields
.field iAlinkClient:Lcom/autonavi/amapauto/alink/IAlinkClient;

.field private isInited:Z

.field private mAlinkEventListener:Lcom/autonavi/amapauto/alink/IAlinkEventListener;

.field private mAlinkSencorListener:Lcom/autonavi/amapauto/alink/IAlinkSencorListener;

.field private mAlinkVideoListener:Lcom/autonavi/amapauto/alink/IAlinkAVListener;

.field private mH264Decoder:Lcom/autonavi/amapauto/alink/H264Decoder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/autonavi/amapauto/alink/EmptyAlientClientImpl;

    invoke-direct {v0}, Lcom/autonavi/amapauto/alink/EmptyAlientClientImpl;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->iAlinkClient:Lcom/autonavi/amapauto/alink/IAlinkClient;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->isInited:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/autonavi/amapauto/alink/AlinkClientManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager$SingletonHolder;->access$100()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private releaseDecoderHandler()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mH264Decoder:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/alink/H264Decoder;->setAlinkAVListener(Lcom/autonavi/amapauto/alink/IAlinkAVListener;)V

    .line 9
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mH264Decoder:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 11
    invoke-virtual {v0}, Lcom/autonavi/amapauto/alink/H264Decoder;->uninitDecoder()V

    .line 14
    iput-object v1, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mH264Decoder:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 16
    :cond_0
    return-void
.end method

.method public static showToast(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getAlinkClient()Lcom/autonavi/amapauto/alink/IAlinkClient;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->iAlinkClient:Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const-string v1, "AlinkClientManager"

    .line 11
    const-string v2, "getAlinkClient:{?}"

    .line 13
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->iAlinkClient:Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 18
    return-object v0
.end method

.method public initAlinkClient()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v2, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->isInited:Z

    .line 6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    const-string v2, "AlinkClientManager"

    .line 15
    const-string v4, "initAlinkClient, isInited:{?}"

    .line 17
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    const-string v1, "\u521d\u59cb\u5316Alink\u670d\u52a1"

    .line 22
    invoke-static {v1}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->showToast(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lzm;->d()Lzm;

    .line 28
    move-result-object v1

    .line 29
    sget-object v4, Lzm;->B:Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v4, v3}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 34
    move-result v1

    .line 35
    new-array v4, v0, [Ljava/lang/Object;

    .line 37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object v5

    .line 41
    aput-object v5, v4, v3

    .line 43
    const-string v5, "channel startup isSupportAlink={?}"

    .line 45
    invoke-static {v2, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    if-eqz v1, :cond_0

    .line 50
    :try_start_0
    const-string v1, "com.autonavi.amapauto.business.SDKAlinkClientImpl"

    .line 52
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 62
    iput-object v1, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->iAlinkClient:Lcom/autonavi/amapauto/alink/IAlinkClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    const-string v4, "[initAlinkClient NoClassDefFoundError]"

    .line 68
    new-array v5, v3, [Ljava/lang/Object;

    .line 70
    invoke-static {v2, v4, v1, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 73
    goto :goto_0

    .line 74
    :catch_1
    move-exception v1

    .line 75
    const-string v4, "[initAlinkClient]"

    .line 77
    new-array v5, v3, [Ljava/lang/Object;

    .line 79
    invoke-static {v2, v4, v1, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->iAlinkClient:Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 84
    invoke-interface {v1}, Lcom/autonavi/amapauto/alink/IAlinkClient;->init()I

    .line 87
    iput-boolean v0, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->isInited:Z

    .line 89
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mH264Decoder:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 91
    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 95
    invoke-direct {v0}, Lcom/autonavi/amapauto/alink/H264Decoder;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mH264Decoder:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mH264Decoder:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 102
    invoke-virtual {v0, v3, v3}, Lcom/autonavi/amapauto/alink/H264Decoder;->initDecoder(II)V

    .line 105
    return-void
.end method

.method public notifyProjectionStatus(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "AlinkClientManager"

    .line 13
    const-string v2, "projectionResponseStatus:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-string v1, "\u63a5\u6536Alink\u901a\u77e5\u72b6\u6001\u53d8\u5316\uff1a"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->showToast(Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Lcom/autonavi/amapauto/alink/AlinkNative;->notifyState(I)V

    .line 41
    return-void
.end method

.method public onAVDataReceived([BIIZ)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v3

    .line 9
    aput-object v3, v1, v2

    .line 11
    const-string v2, "AlinkClientManager"

    .line 13
    const-string v3, "onAVDataReceived size{?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v1, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mAlinkVideoListener:Lcom/autonavi/amapauto/alink/IAlinkAVListener;

    .line 20
    if-eqz v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mH264Decoder:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 24
    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/autonavi/amapauto/alink/H264Decoder;->addVideoBuffer([BIIZ)V

    .line 29
    :cond_0
    return v0
.end method

.method public onEventReceived(Lcom/autonavi/amapauto/alink/data/EventReceivedData;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mAlinkEventListener:Lcom/autonavi/amapauto/alink/IAlinkEventListener;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lcom/autonavi/amapauto/alink/IAlinkEventListener;->onEventReceived(Lcom/autonavi/amapauto/alink/data/EventReceivedData;)V

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    if-eqz p1, :cond_9

    .line 11
    new-array v1, v0, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Lcom/autonavi/amapauto/alink/data/BaseJsonData;->toJsonString()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v2, v1, v3

    .line 20
    const-string v2, "AlinkClientManager"

    .line 22
    const-string v4, "onEventReceived receivedData:{?}"

    .line 24
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget v1, p1, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->event:I

    .line 29
    if-eqz v1, :cond_6

    .line 31
    if-eq v1, v0, :cond_4

    .line 33
    const/16 v4, 0xb

    .line 35
    if-eq v1, v4, :cond_1

    .line 37
    goto/16 :goto_0

    .line 39
    :cond_1
    iget-object p1, p1, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->names:Lcom/autonavi/amapauto/alink/data/ServiceNameData;

    .line 41
    invoke-static {p1}, Lcom/autonavi/amapauto/alink/AlinkNative;->onEventReceived(Lcom/autonavi/amapauto/alink/data/ServiceNameData;)I

    .line 44
    const-string v1, "\u63a5\u6536Alink\u8fd4\u56de\u63a2\u7d22\u6570\u636e\u4e3a\u7a7a"

    .line 46
    if-nez p1, :cond_2

    .line 48
    invoke-static {v1}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->showToast(Ljava/lang/String;)V

    .line 51
    const-string p1, "serviceNameData is null"

    .line 53
    new-array v1, v3, [Ljava/lang/Object;

    .line 55
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    goto/16 :goto_0

    .line 60
    :cond_2
    iget-object p1, p1, Lcom/autonavi/amapauto/alink/data/ServiceNameData;->servers:Ljava/util/List;

    .line 62
    if-eqz p1, :cond_3

    .line 64
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_3

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const-string v4, "\u63a5\u6536Alink\u8fd4\u56de\u63a2\u7d22\u6570\u636e\u4e2a\u6570\uff1a"

    .line 77
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 83
    move-result v4

    .line 84
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->showToast(Ljava/lang/String;)V

    .line 94
    new-array v1, v0, [Ljava/lang/Object;

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 99
    move-result p1

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object p1

    .line 104
    aput-object p1, v1, v3

    .line 106
    const-string p1, "List<ServerData> size:{?}"

    .line 108
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    goto :goto_0

    .line 112
    :cond_3
    invoke-static {v1}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->showToast(Ljava/lang/String;)V

    .line 115
    const-string p1, "List<ServerData> is null"

    .line 117
    new-array v1, v3, [Ljava/lang/Object;

    .line 119
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    goto :goto_0

    .line 123
    :cond_4
    iget p1, p1, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->status:I

    .line 125
    if-nez p1, :cond_5

    .line 127
    const-string p1, "\u63a5\u6536Alink\u8fd4\u56devideo\u8fde\u63a5\u6210\u529f"

    .line 129
    invoke-static {p1}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->showToast(Ljava/lang/String;)V

    .line 132
    const/4 p1, 0x5

    .line 133
    invoke-static {p1}, Lcom/autonavi/amapauto/alink/AlinkNative;->nativeNotifyRunningState(I)V

    .line 136
    goto :goto_0

    .line 137
    :cond_5
    const/4 p1, 0x6

    .line 138
    invoke-static {p1}, Lcom/autonavi/amapauto/alink/AlinkNative;->nativeNotifyRunningState(I)V

    .line 141
    goto :goto_0

    .line 142
    :cond_6
    iget-object v1, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mAlinkVideoListener:Lcom/autonavi/amapauto/alink/IAlinkAVListener;

    .line 144
    if-eqz v1, :cond_7

    .line 146
    iget v2, p1, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->status:I

    .line 148
    invoke-interface {v1, v2}, Lcom/autonavi/amapauto/alink/IAlinkAVListener;->notifyCameraState(I)I

    .line 151
    :cond_7
    iget p1, p1, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->status:I

    .line 153
    if-nez p1, :cond_8

    .line 155
    const-string p1, "\u63a5\u6536Alink\u8fd4\u56dewrapper\u8fde\u63a5\u6210\u529f"

    .line 157
    invoke-static {p1}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->showToast(Ljava/lang/String;)V

    .line 160
    const/4 p1, 0x3

    .line 161
    invoke-static {p1}, Lcom/autonavi/amapauto/alink/AlinkNative;->nativeNotifyRunningState(I)V

    .line 164
    invoke-static {v3, v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeCameraStatusNotify(II)V

    .line 167
    goto :goto_0

    .line 168
    :cond_8
    const/4 p1, 0x4

    .line 169
    invoke-static {p1}, Lcom/autonavi/amapauto/alink/AlinkNative;->nativeNotifyRunningState(I)V

    .line 172
    invoke-static {v3, v3}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeCameraStatusNotify(II)V

    .line 175
    :cond_9
    :goto_0
    return v0
.end method

.method public onSensorDataReceived(IJ[DI)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mAlinkSencorListener:Lcom/autonavi/amapauto/alink/IAlinkSencorListener;

    .line 3
    const/4 v6, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    move v1, p1

    .line 7
    move-wide v2, p2

    .line 8
    move-object v4, p4

    .line 9
    move v5, p5

    .line 10
    invoke-interface/range {v0 .. v5}, Lcom/autonavi/amapauto/alink/IAlinkSencorListener;->onSensorDataReceived(IJ[DI)I

    .line 13
    move-result p1

    .line 14
    new-array p2, v6, [Ljava/lang/Object;

    .line 16
    const/4 p3, 0x0

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p4

    .line 21
    aput-object p4, p2, p3

    .line 23
    const-string p3, "AlinkClientManager"

    .line 25
    const-string p4, "onSensorDataReceived IAlinkSencorListener result{?}"

    .line 27
    invoke-static {p3, p4, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    move v6, p1

    .line 31
    :cond_0
    return v6
.end method

.method public registerEventListener(Lcom/autonavi/amapauto/alink/IAlinkEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mAlinkEventListener:Lcom/autonavi/amapauto/alink/IAlinkEventListener;

    .line 3
    return-void
.end method

.method public registerSensorListener(Lcom/autonavi/amapauto/alink/IAlinkSencorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mAlinkSencorListener:Lcom/autonavi/amapauto/alink/IAlinkSencorListener;

    .line 3
    return-void
.end method

.method public registerVideoListener(Lcom/autonavi/amapauto/alink/IAlinkAVListener;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mAlinkVideoListener:Lcom/autonavi/amapauto/alink/IAlinkAVListener;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const-string v1, "AlinkClientManager"

    .line 11
    const-string v2, "registerVideoListener:{?}"

    .line 13
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mAlinkVideoListener:Lcom/autonavi/amapauto/alink/IAlinkAVListener;

    .line 18
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mH264Decoder:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/alink/H264Decoder;->setAlinkAVListener(Lcom/autonavi/amapauto/alink/IAlinkAVListener;)V

    .line 25
    :cond_0
    return-void
.end method

.method public uninit()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->isInited:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "AlinkClientManager"

    .line 15
    const-string v3, "uninit, isInited:{?}"

    .line 17
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->iAlinkClient:Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 22
    invoke-interface {v0}, Lcom/autonavi/amapauto/alink/IAlinkClient;->uninit()V

    .line 25
    iput-boolean v2, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->isInited:Z

    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mAlinkEventListener:Lcom/autonavi/amapauto/alink/IAlinkEventListener;

    .line 30
    iput-object v0, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mAlinkVideoListener:Lcom/autonavi/amapauto/alink/IAlinkAVListener;

    .line 32
    iput-object v0, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->mAlinkSencorListener:Lcom/autonavi/amapauto/alink/IAlinkSencorListener;

    .line 34
    invoke-direct {p0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->releaseDecoderHandler()V

    .line 37
    new-instance v0, Lcom/autonavi/amapauto/alink/EmptyAlientClientImpl;

    .line 39
    invoke-direct {v0}, Lcom/autonavi/amapauto/alink/EmptyAlientClientImpl;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/autonavi/amapauto/alink/AlinkClientManager;->iAlinkClient:Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 44
    return-void
.end method
