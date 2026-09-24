.class public Lqo0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqo0$b;
    }
.end annotation


# instance fields
.field public a:Lbi0;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lqo0;->b:Z

    .line 4
    iput-boolean v0, p0, Lqo0;->c:Z

    .line 5
    invoke-static {}, Lzm;->d()Lzm;

    move-result-object v0

    invoke-virtual {v0}, Lzm;->l()Z

    move-result v0

    iput-boolean v0, p0, Lqo0;->b:Z

    const/16 v0, 0x3f7

    .line 6
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lqo0;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lqo0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    return-void
.end method

.method public static a()Lqo0;
    .locals 1

    .line 1
    invoke-static {}, Lqo0$b;->a()Lqo0;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, ""

    .line 6
    const-string v3, " [VoiceRecognition] AmapAutoAdapter initTTSAgent"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lqo0;->a:Lbi0;

    .line 13
    if-nez v1, :cond_0

    .line 15
    const-string v1, " [VoiceRecognition] AmapAutoAdapter initTTSAgent mAgent == null"

    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Lzm;->d()Lzm;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lzm;->j()I

    .line 29
    move-result v0

    .line 30
    invoke-static {}, Lbi0;->k()Lbi0;

    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Lqo0;->a:Lbi0;

    .line 36
    new-instance v2, Lqo0$a;

    .line 38
    invoke-direct {v2, p0}, Lqo0$a;-><init>(Lqo0;)V

    .line 41
    invoke-static {}, Lrv;->H()Lrv;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v2, v3, v0}, Lbi0;->l(Ltt;Landroid/content/Context;I)Z

    .line 52
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lqo0;->c:Z

    .line 3
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lqo0;->b:Z

    .line 3
    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, ""

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, " [VoiceRecognition] AmapAutoAdapter speakByTTS txt = {?}"

    .line 6
    const/4 v3, 0x1

    .line 7
    new-array v3, v3, [Ljava/lang/Object;

    .line 9
    aput-object p1, v3, v1

    .line 11
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v2, p0, Lqo0;->a:Lbi0;

    .line 16
    if-eqz v2, :cond_1

    .line 18
    const-string v2, "NaviVoice speakByTTS mAgent != null=={?}"

    .line 20
    new-array v3, v1, [Ljava/lang/Object;

    .line 22
    invoke-static {v2, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    const-string v2, " [VoiceRecognition] AmapAutoAdapter speakByTTS mAgent != null"

    .line 27
    new-array v3, v1, [Ljava/lang/Object;

    .line 29
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lo6;->j()Lo6;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lo6;->z()Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 42
    const-string v2, "NaviVoice speakByTTS mAgent != null=={?} pauseBackgroundNoisesForTTS"

    .line 44
    new-array v3, v1, [Ljava/lang/Object;

    .line 46
    invoke-static {v2, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    const-string v2, " [VoiceRecognition] AmapAutoAdapter speakByTTS mAgent != null SoundPlayer.getInstance().pauseBackgroundNoisesForTTS()"

    .line 51
    new-array v3, v1, [Ljava/lang/Object;

    .line 53
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lqo0;->a:Lbi0;

    .line 58
    invoke-virtual {v0, p1}, Lbi0;->p(Ljava/lang/String;)I

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const-string v2, "NaviVoice speakByTTS mAgent != null=={?} resumeBackgroundNoisesForTTS"

    .line 64
    new-array v3, v1, [Ljava/lang/Object;

    .line 66
    invoke-static {v2, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const-string p1, " [VoiceRecognition] AmapAutoAdapter speakByTTS mAgent != null ! SoundPlayer.getInstance().pauseBackgroundNoisesForTTS()"

    .line 71
    new-array v2, v1, [Ljava/lang/Object;

    .line 73
    invoke-static {v0, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lo6;->j()Lo6;

    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lo6;->H()V

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const-string v2, "NaviVoice speakByTTS mAgent == null=={?}"

    .line 86
    new-array v3, v1, [Ljava/lang/Object;

    .line 88
    invoke-static {v2, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    const-string v2, " [VoiceRecognition] AmapAutoAdapter speakByTTS mAgent == null"

    .line 93
    new-array v3, v1, [Ljava/lang/Object;

    .line 95
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Lqo0;->b()V

    .line 101
    invoke-static {}, Lo6;->j()Lo6;

    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2}, Lo6;->z()Z

    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_2

    .line 111
    const-string v2, "NaviVoice speakByTTS mAgent == null=={?} pauseBackgroundNoisesForTTS"

    .line 113
    new-array v3, v1, [Ljava/lang/Object;

    .line 115
    invoke-static {v2, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    const-string v2, " [VoiceRecognition] AmapAutoAdapter speakByTTS mAgent == null SoundPlayer.getInstance().pauseBackgroundNoisesForTTS()"

    .line 120
    new-array v3, v1, [Ljava/lang/Object;

    .line 122
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lqo0;->a:Lbi0;

    .line 127
    invoke-virtual {v0, p1}, Lbi0;->p(Ljava/lang/String;)I

    .line 130
    goto :goto_0

    .line 131
    :cond_2
    const-string v2, "NaviVoice speakByTTS mAgent == null=={?} resumeBackgroundNoisesForTTS"

    .line 133
    new-array v3, v1, [Ljava/lang/Object;

    .line 135
    invoke-static {v2, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    const-string p1, " [VoiceRecognition] AmapAutoAdapter speakByTTS mAgent == null ! SoundPlayer.getInstance().pauseBackgroundNoisesForTTS()"

    .line 140
    new-array v2, v1, [Ljava/lang/Object;

    .line 142
    invoke-static {v0, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Lo6;->j()Lo6;

    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lo6;->H()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 153
    :catch_0
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 161
    new-array v0, v1, [Ljava/lang/Object;

    .line 163
    const-string v1, "NaviVoice speakByTTS Exception = {?}"

    .line 165
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-static {}, Lo6;->j()Lo6;

    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lo6;->H()V

    .line 175
    :goto_0
    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "NaviVoice stopByTTS "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    new-instance v1, Ljava/lang/Throwable;

    .line 13
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 16
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    new-array v2, v1, [Ljava/lang/Object;

    .line 30
    const-string v3, "NaviVoice"

    .line 32
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :try_start_0
    iget-object v0, p0, Lqo0;->a:Lbi0;

    .line 37
    if-eqz v0, :cond_0

    .line 39
    const-string v0, "NaviVoice stopByTTS mAgent != null"

    .line 41
    new-array v2, v1, [Ljava/lang/Object;

    .line 43
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lqo0;->a:Lbi0;

    .line 48
    invoke-virtual {v0}, Lbi0;->q()I

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string v0, "NaviVoice stopByTTS mAgent == null"

    .line 54
    new-array v2, v1, [Ljava/lang/Object;

    .line 56
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    const-string v0, "NaviVoice stopByTTS RemoteException"

    .line 66
    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :goto_0
    return-void
.end method
