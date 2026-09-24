.class public interface abstract Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/IAutoProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createAutoAudioFocusChangedListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;
.end method

.method public abstract getAutoWavPlayerId()I
.end method

.method public abstract getStreamType()I
.end method

.method public varargs abstract logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
.end method

.method public abstract onStreamVolumeChange(I)V
.end method

.method public abstract setAccOn(Z)V
.end method

.method public abstract setHeadLampStatus(I)V
.end method

.method public abstract setNaviMute(IZ)V
.end method
