.class public Lcom/dingtalk/bifrost/AppLogicICallBackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dingtalk/mars/app/AppLogic$ICallBack;


# static fields
.field private static instance:Lcom/dingtalk/bifrost/AppLogicICallBackImpl;


# instance fields
.field private context:Landroid/content/Context;

.field private deviceName:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;->userId:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;->deviceType:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;->deviceName:Ljava/lang/String;

    .line 12
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;->deviceType:Ljava/lang/String;

    .line 16
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;->deviceName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :catchall_0
    return-void
.end method

.method public static getInstance()Lcom/dingtalk/bifrost/AppLogicICallBackImpl;
    .locals 2

    .line 1
    sget-object v0, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;->instance:Lcom/dingtalk/bifrost/AppLogicICallBackImpl;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    const-class v0, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;->instance:Lcom/dingtalk/bifrost/AppLogicICallBackImpl;

    .line 11
    if-eqz v1, :cond_1

    .line 13
    monitor-exit v0

    .line 14
    return-object v1

    .line 15
    :cond_1
    new-instance v1, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;

    .line 17
    invoke-direct {v1}, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;-><init>()V

    .line 20
    sput-object v1, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;->instance:Lcom/dingtalk/bifrost/AppLogicICallBackImpl;

    .line 22
    monitor-exit v0

    .line 23
    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v1
.end method


# virtual methods
.method public getClientVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceType()Lcom/dingtalk/mars/app/AppLogic$DeviceInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/dingtalk/mars/app/AppLogic$DeviceInfo;

    .line 3
    iget-object v1, p0, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;->deviceName:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;->deviceType:Ljava/lang/String;

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/dingtalk/mars/app/AppLogic$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/dingtalk/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public register(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;->context:Landroid/content/Context;

    .line 3
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;->userId:Ljava/lang/String;

    .line 3
    return-void
.end method
