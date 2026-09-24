.class public Lr7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/IAutoProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAutoAudioFocusChangedListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    .line 1
    new-instance v0, Lo6$g;

    .line 3
    invoke-direct {v0}, Lo6$g;-><init>()V

    .line 6
    return-object v0
.end method

.method public getAutoWavPlayerId()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .line 1
    invoke-static {}, Lo6;->j()Lo6;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo6;->m()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public varargs logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public varargs logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public onStreamVolumeChange(I)V
    .locals 1

    .line 1
    invoke-static {}, Lo6;->j()Lo6;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lo6;->y(I)V

    .line 8
    return-void
.end method

.method public setAccOn(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeAccOn(IZ)V

    .line 5
    return-void
.end method

.method public setHeadLampStatus(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setHeadLampStatus(II)V

    .line 5
    return-void
.end method

.method public setNaviMute(IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1, p2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setNaviMuteModel(IIZ)V

    .line 5
    return-void
.end method
