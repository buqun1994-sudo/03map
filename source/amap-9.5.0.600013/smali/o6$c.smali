.class public Lo6$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo6;->u(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo6;


# direct methods
.method public constructor <init>(Lo6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo6$c;->a:Lo6;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->jniGetUseAudioTrack()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string v0, "\u3010SystemToAuto\u3011[stop_TTS] stop by AudioFocusChange"

    .line 9
    const/4 v1, 0x0

    .line 10
    new-array v2, v1, [Ljava/lang/Object;

    .line 12
    const-string v3, "[Audio] AutoAudioManager"

    .line 14
    invoke-static {v3, v0, v2}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-static {}, Lo6;->j()Lo6;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lo6;->e(Lo6;)Ldb;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ldb;->w()V

    .line 28
    const-string v0, "stopAudioTrack notifyPlayStateChange AudioTrack.PLAYSTATE_STOPPED)"

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/audio/TTSOpenslPlayer;->stopTTS()V

    .line 39
    :goto_0
    return-void
.end method
