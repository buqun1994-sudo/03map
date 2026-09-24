.class public Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->sendRequestPowerInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lse;->getPowertrainLoss()Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->toString()Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 19
    aput-object v3, v1, v2

    .line 21
    const-string v2, "AndroidProtocolExe"

    .line 23
    const-string v3, "ChannelManager getPowertrainLoss to setPowerInfo:{?}"

    .line 25
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setPowerInfo(Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;)V

    .line 31
    :cond_0
    return-void
.end method
