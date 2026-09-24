.class interface abstract Lcom/autonavi/mqtt/PushServer$PushCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/mqtt/PushServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PushCallback"
.end annotation


# virtual methods
.method public abstract connectionLost()V
.end method

.method public abstract connectionSuccess()V
.end method

.method public abstract messageArrived([B[B)I
.end method

.method public abstract onCloseSocketFD(I)V
.end method

.method public abstract onGetConnectSocketFD([BSI)I
.end method
