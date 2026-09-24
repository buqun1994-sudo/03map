.class public Lse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse$b;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Leq;

.field public c:Lxq;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lse;->a:Z

    .line 4
    new-instance v0, Ldi;

    invoke-direct {v0}, Ldi;-><init>()V

    iput-object v0, p0, Lse;->b:Leq;

    .line 5
    invoke-static {}, Lk6;->g()Lk6;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk6;->m(Lk6$d;)V

    return-void
.end method

.method public synthetic constructor <init>(Lse$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lse;-><init>()V

    return-void
.end method

.method public static final c()Lse;
    .locals 1

    .line 1
    invoke-static {}, Lse$b;->a()Lse;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public a()Leq;
    .locals 1

    .line 1
    iget-object v0, p0, Lse;->b:Leq;

    .line 3
    return-object v0
.end method

.method public abandomFocus(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lkq;->abandomFocus(I)V

    .line 8
    return-void
.end method

.method public abandonAppFocus(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Leq;->abandonAppFocus(I)V

    .line 8
    return-void
.end method

.method public addAppFocusChange(ILcom/autonavi/amapauto/jni/AutoCarAppFocusManager$c;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Leq;->addAppFocusChange(ILcom/autonavi/amapauto/jni/AutoCarAppFocusManager$c;)V

    .line 8
    return-void
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lse;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public cancelSliceNotification(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Leq;->cancelSliceNotification(I)V

    .line 8
    return-void
.end method

.method public changeScreenMode(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lfs;->changeScreenMode(I)V

    .line 8
    return-void
.end method

.method public cleanup()Z
    .locals 1

    .line 1
    invoke-static {}, Lo6;->j()Lo6;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo6;->L()V

    .line 8
    invoke-static {}, Lo6;->j()Lo6;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lo6;->K()V

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lse;->a:Z

    .line 18
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Leq;->cleanup()Z

    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public clearSliceNotification()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Leq;->clearSliceNotification()V

    .line 8
    return-void
.end method

.method public connectCar(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Luq;->connectCar(Landroid/content/Context;)V

    .line 8
    return-void
.end method

.method public createCustomizeMultiScreen(Lcom/autonavi/extscreen/dto/PresentationConfig;)Lhl;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lfs;->createCustomizeMultiScreen(Lcom/autonavi/extscreen/dto/PresentationConfig;)Lhl;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public d(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array v0, p1, [Ljava/lang/Object;

    .line 4
    const-string v1, "ChannelManager"

    .line 6
    const-string v2, "[init] begin"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lzm;->d()Lzm;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lzm;->h()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 25
    invoke-static {}, Lzm;->d()Lzm;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lzm;->c()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    :cond_0
    const/4 v2, 0x1

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    aput-object v0, v2, p1

    .line 38
    const-string v3, "[init] FuncConfig channel = {?}"

    .line 40
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_1

    .line 49
    const-string v2, "[init] channel instance begin"

    .line 51
    new-array v3, p1, [Ljava/lang/Object;

    .line 53
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0, v0}, Lse;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    const-string v2, "[init] channel instance end"

    .line 62
    new-array v3, p1, [Ljava/lang/Object;

    .line 64
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const-string v2, "[init] resetConfigByChannelId start"

    .line 69
    new-array v3, p1, [Ljava/lang/Object;

    .line 71
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-static {}, Lzm;->d()Lzm;

    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2, v0}, Lzm;->m(Ljava/lang/String;)V

    .line 81
    const-string v0, "[init] resetConfigByChannelId end"

    .line 83
    new-array v2, p1, [Ljava/lang/Object;

    .line 85
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lse;->startup()Z

    .line 91
    :cond_1
    const-string v0, "[init] end"

    .line 93
    new-array p1, p1, [Ljava/lang/Object;

    .line 95
    invoke-static {v1, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public declared-synchronized e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lse;->d:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 11
    const-string p1, "ChannelManager"

    .line 13
    const-string v0, "initChannelValue isInited"

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lse;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    return-object p1

    .line 24
    :cond_0
    :try_start_1
    iput-object p1, p0, Lse;->d:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lse;->c:Lxq;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    invoke-interface {v0, p1}, Lxq;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lse;->d:Ljava/lang/String;

    .line 36
    :cond_1
    const-string v0, "ChannelManager"

    .line 38
    const-string v2, "initChannelValue channelId:{?}, realChannelId:{?}"

    .line 40
    const/4 v3, 0x2

    .line 41
    new-array v3, v3, [Ljava/lang/Object;

    .line 43
    aput-object p1, v3, v1

    .line 45
    iget-object p1, p0, Lse;->d:Ljava/lang/String;

    .line 47
    const/4 v1, 0x1

    .line 48
    aput-object p1, v3, v1

    .line 50
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lse;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit p0

    .line 56
    return-object p1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    monitor-exit p0

    .line 59
    throw p1
.end method

.method public f(Leq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lse;->b:Leq;

    .line 3
    return-void
.end method

.method public declared-synchronized g(Lxq;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lse;->c:Lxq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public getArCamera()Liq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljq;->getArCamera()Liq;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getAudioPlayState()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkq;->getAudioPlayState()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getBooleanValue(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Leq;->getBooleanValue(I)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getCarEnterpriseUserInfo()Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "[getCarEnterpriseUserInfo]"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    new-array v1, v1, [Ljava/lang/Object;

    .line 33
    const-string v2, "ChannelManager"

    .line 35
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Lvq;->getCarEnterpriseUserInfo()Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method public getCruisingDis()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lvq;->getCruisingDis()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getCustomActivityOptions()Landroid/app/ActivityOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Leq;->getCustomActivityOptions()Landroid/app/ActivityOptions;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getCustomAudioAttribute(ILandroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lkq;->getCustomAudioAttribute(ILandroid/media/AudioAttributes;)Landroid/media/AudioAttributes;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getCustomChannelVolume(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lkq;->getCustomChannelVolume(I)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getFloatValue(I)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Leq;->getFloatValue(I)F

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getGnssStatusCallbackType()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lxr;->getGnssStatusCallbackType()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getIPLDpi()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lyq;->getIPLDpi()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getInputAttachActivity(I)Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lfs;->getInputAttachActivity(I)Landroid/app/Activity;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getIntValue(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Leq;->getIntValue(I)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getLastOneKmParams(ILcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)Lcom/autonavi/amapauto/jni/protocol/data/HttpRequestParam;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lvt;->getLastOneKmParams(ILcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)Lcom/autonavi/amapauto/jni/protocol/data/HttpRequestParam;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getLocationInfoV2(Le;)Lcom/autonavi/amapauto/location/model/LocDrPos;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lxr;->getLocationInfoV2(Le;)Lcom/autonavi/amapauto/location/model/LocDrPos;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getMacFromHardware()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lyq;->getMacFromHardware()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getMapMatchFeedbackInfo(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lxr;->getMapMatchFeedbackInfo(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getMapSurfaceCreateLock()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lfr;->getMapSurfaceCreateLock()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lxr;->getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getNetWorkState()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lvq;->getNetWorkState()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getOilType()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lvq;->getOilType()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getOptionalValue(I)Leq$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Leq;->getOptionalValue(I)Leq$a;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getPowertrainLoss()Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lks;->getPowertrainLoss()Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getSNRForShow(IF)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lxr;->getSNRForShow(IF)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getSatellitePrnForShow(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lxr;->getSatellitePrnForShow(I)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getSatelliteType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lxr;->getSatelliteType(I)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getSatelliteTypeForN(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lxr;->getSatelliteTypeForN(I)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getSocolEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lnt;->getSocolEnabled()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getSpecPermissions()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Leq;->getSpecPermissions()Ljava/util/Map;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getSpeedoMeter(F)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lxr;->getSpeedoMeter(F)F

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getSplitScreen()Lot;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lpt;->getSplitScreen()Lot;

    .line 8
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Leq;->getStringValue(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getSystemDysmorphismInfo()Lrk;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lyq;->getSystemDysmorphismInfo()Lrk;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getSystemMaxVolume()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkq;->getSystemMaxVolume()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getSystemVolume()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkq;->getSystemVolume()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getTravelSharePhoneAddress()Ljava/util/List;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "ChannelManager"

    .line 6
    const-string v2, "[getTravelSharePhoneAddress]"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lyq;->getTravelSharePhoneAddress()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public getUISurfaceCreateLock()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lfr;->getUISurfaceCreateLock()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getUsbUpdataPath()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lyq;->getUsbUpdataPath()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getWavPlayer()Lzt;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkq;->getWavPlayer()Lzt;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public handleDrA3d(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lxr;->handleDrA3d(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public handleDrGyr(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lxr;->handleDrGyr(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public handleDrPulse(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lxr;->handleDrPulse(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public handleLastOneKmResponse(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lvt;->handleLastOneKmResponse(ILjava/lang/String;)V

    .line 8
    return-void
.end method

.method public handleProtocolRequest(Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lat;->handleProtocolRequest(Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public initAudio()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkq;->initAudio()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public initAuxiliaryNavigation()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ler;->initAuxiliaryNavigation()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public initCarSpeed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Luq;->initCarSpeed()V

    .line 8
    return-void
.end method

.method public initWakeUp()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lwt;->initWakeUp()V

    .line 8
    return-void
.end method

.method public isChannelProtocolResult(Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lat;->isChannelProtocolResult(Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public isCustomSatelliteTypeForN()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lxr;->isCustomSatelliteTypeForN()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isCustomizeMultiScreen(Lcom/autonavi/extscreen/dto/PresentationConfig;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lfs;->isCustomizeMultiScreen(Lcom/autonavi/extscreen/dto/PresentationConfig;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public isLogOutputToLogcat()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lyq;->isLogOutputToLogcat()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isQREnableFlag()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lvq;->isQREnableFlag()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isRealDevices()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lfs;->isRealDevices()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public multiFingerEnable(Landroid/view/MotionEvent;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "ChannelManager"

    .line 6
    const-string v2, "[multiFingerEnable]"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lvt;->multiFingerEnable(Landroid/view/MotionEvent;)I

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public notifyISLElecInfo(DDII)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    move-wide v1, p1

    .line 6
    move-wide v3, p3

    .line 7
    move v5, p5

    .line 8
    move v6, p6

    .line 9
    invoke-interface/range {v0 .. v6}, Lsr;->notifyISLElecInfo(DDII)V

    .line 12
    return-void
.end method

.method public notifyISLJctWayInfo(DDI)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    move-wide v1, p1

    .line 6
    move-wide v3, p3

    .line 7
    move v5, p5

    .line 8
    invoke-interface/range {v0 .. v5}, Lsr;->notifyISLJctWayInfo(DDI)V

    .line 11
    return-void
.end method

.method public notifyISLRoadInfo(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lsr;->notifyISLRoadInfo(Ljava/lang/String;I)V

    .line 8
    return-void
.end method

.method public notifyNightModeChange(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lyq;->notifyNightModeChange(Z)V

    .line 8
    return-void
.end method

.method public onActivityLifecycleChanged(Landroid/app/Activity;I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    aput-object v2, v0, v1

    .line 14
    const-string v1, "ChannelManager"

    .line 16
    const-string v2, "onActivityLifecycleChanged:{?}-->{?}"

    .line 18
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, p1, p2}, Lk6$d;->onActivityLifecycleChanged(Landroid/app/Activity;I)V

    .line 28
    return-void
.end method

.method public onAudioInit(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lkq;->onAudioInit(I)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public onInterruptMultiscreen(Lcom/autonavi/extscreen/dto/PresentationConfig;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lfs;->onInterruptMultiscreen(Lcom/autonavi/extscreen/dto/PresentationConfig;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Leq;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Leq;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 8
    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Leq;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    .line 8
    return-void
.end method

.method public playClickSound()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkq;->playClickSound()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public playText(ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lkq;->playText(ILjava/lang/String;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public removeAppFocusChange(Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$c;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Leq;->removeAppFocusChange(Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$c;)V

    .line 8
    return-void
.end method

.method public requestAppFocus(ILcom/autonavi/amapauto/jni/AutoCarAppFocusManager$d;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Leq;->requestAppFocus(ILcom/autonavi/amapauto/jni/AutoCarAppFocusManager$d;)V

    .line 8
    return-void
.end method

.method public requestFocus(IIILandroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lkq;->requestFocus(IIILandroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public requestPermissions([Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lyq;->requestPermissions([Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public requestPermissionsResult([Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lyq;->requestPermissionsResult([Ljava/lang/String;[I)V

    .line 8
    return-void
.end method

.method public responseProtocolResult(ILcom/autonavi/amapauto/jni/protocol/data/ALResponeData;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lat;->responseProtocolResult(ILcom/autonavi/amapauto/jni/protocol/data/ALResponeData;)V

    .line 8
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Leq;->sendBroadcast(Landroid/content/Intent;)V

    .line 8
    return-void
.end method

.method public sendEnergyPredictionData(Lcom/autonavi/amapauto/jni/protocol/data/EnergyPredictionSysData;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lks;->sendEnergyPredictionData(Lcom/autonavi/amapauto/jni/protocol/data/EnergyPredictionSysData;)V

    .line 8
    return-void
.end method

.method public sendNavTargetSocData([I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lks;->sendNavTargetSocData([I)V

    .line 8
    return-void
.end method

.method public sendNotifcation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-interface/range {v0 .. v5}, Lvt;->sendNotifcation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public sendPowerPredictionData(Lcom/autonavi/amapauto/jni/protocol/data/PowerPredictionSysData;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lks;->sendPowerPredictionData(Lcom/autonavi/amapauto/jni/protocol/data/PowerPredictionSysData;)V

    .line 8
    return-void
.end method

.method public sendSliceNotification(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Leq;->sendSliceNotification(I)V

    .line 8
    return-void
.end method

.method public sendTurn(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Luq;->sendTurn(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 8
    return-void
.end method

.method public setGpsInfoV2(Le;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lxr;->setGpsInfoV2(Le;)V

    .line 8
    return-void
.end method

.method public setLaneInfo(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Luq;->setLaneInfo(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V

    .line 8
    return-void
.end method

.method public setNzpPassingPoi(Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lis;->setNzpPassingPoi(Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public setNzpRouteLinkInfoListNotify(Lcom/autonavi/amapauto/jni/protocol/data/NzpRouteLinkInfoData;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lis;->setNzpRouteLinkInfoListNotify(Lcom/autonavi/amapauto/jni/protocol/data/NzpRouteLinkInfoData;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public setOptionalValue(ILeq$a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Leq;->setOptionalValue(ILeq$a;)V

    .line 8
    return-void
.end method

.method public setSpeedoMeter(F)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lxr;->setSpeedoMeter(F)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public setSystemUiLightMode(IZ)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lyq;->setSystemUiLightMode(IZ)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public setSystemVolume(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lkq;->setSystemVolume(II)V

    .line 8
    return-void
.end method

.method public startCluster()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Luq;->startCluster()V

    .line 8
    return-void
.end method

.method public declared-synchronized startup()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lse;->a:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lo6;->j()Lo6;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lo6;->B()V

    .line 13
    invoke-static {}, Lo6;->j()Lo6;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lo6;->A()V

    .line 20
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Leq;->startup()Z

    .line 27
    move-result v0

    .line 28
    iput-boolean v0, p0, Lse;->a:Z

    .line 30
    const-string v1, "ChannelManager"

    .line 32
    const-string v2, "channel startup mIsStartup={?}"

    .line 34
    const/4 v3, 0x1

    .line 35
    new-array v3, v3, [Ljava/lang/Object;

    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object v0

    .line 41
    const/4 v4, 0x0

    .line 42
    aput-object v0, v3, v4

    .line 44
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :cond_0
    new-instance v0, Lse$a;

    .line 49
    invoke-direct {v0, p0}, Lse$a;-><init>(Lse;)V

    .line 52
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 55
    iget-boolean v0, p0, Lse;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    .line 58
    return v0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    monitor-exit p0

    .line 61
    throw v0
.end method

.method public stopAudio(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lkq;->stopAudio(Z)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public stopCluster()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Luq;->stopCluster()V

    .line 8
    return-void
.end method

.method public stopDimRender()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ler;->stopDimRender()V

    .line 8
    return-void
.end method

.method public stopWakeUp()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lwt;->stopWakeUp()V

    .line 8
    return-void
.end method

.method public wrapGuideInfoProtocolData(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Luq;->wrapGuideInfoProtocolData(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 8
    return-void
.end method

.method public writeChargingStationInfo(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lks;->writeChargingStationInfo(II)V

    .line 8
    return-void
.end method

.method public writeEnergyAtDistance(IIIZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse;->a()Leq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lks;->writeEnergyAtDistance(IIIZ)V

    .line 8
    return-void
.end method
