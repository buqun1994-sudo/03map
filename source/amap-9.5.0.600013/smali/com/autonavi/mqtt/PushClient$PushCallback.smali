.class interface abstract Lcom/autonavi/mqtt/PushClient$PushCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/mqtt/PushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PushCallback"
.end annotation


# virtual methods
.method public abstract bindService(Ljava/lang/Object;)Z
.end method

.method public abstract mqttInit([B[B[B[B)Z
.end method

.method public abstract mqttPublishMessage([B[B)I
.end method

.method public abstract mqttStart()Z
.end method

.method public abstract mqttUninit()V
.end method

.method public abstract setOptInt(II)Z
.end method

.method public abstract setOptString(I[B)Z
.end method

.method public abstract unbindService()Z
.end method
