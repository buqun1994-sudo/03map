.class public Lg3;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"

# interfaces
.implements Llq;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg3$b;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public c:Landroid/speech/tts/TextToSpeech;

.field public d:I

.field public e:Z

.field public f:I

.field public g:Landroid/media/AudioManager;

.field public h:Landroid/media/AudioAttributes;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Object;

.field public final k:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lg3;->d:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lg3;->e:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lg3;->g:Landroid/media/AudioManager;

    .line 6
    iput-object v1, p0, Lg3;->h:Landroid/media/AudioAttributes;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T2SPId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg3;->i:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lg3;->j:Ljava/lang/Object;

    .line 9
    new-instance v1, Lg3$a;

    invoke-direct {v1, p0}, Lg3$a;-><init>(Lg3;)V

    iput-object v1, p0, Lg3;->k:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 10
    invoke-static {}, Lse;->c()Lse;

    move-result-object v1

    const/16 v2, 0x271e

    invoke-virtual {v1, v2}, Lse;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lg3;->a:Z

    .line 11
    invoke-static {}, Lib;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v2

    invoke-virtual {v2}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    move-result-object v2

    iget-boolean v2, v2, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedSystemTTSFocus:Z

    iput-boolean v2, p0, Lg3;->b:Z

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    move-result-object v2

    const/16 v3, 0x2734

    invoke-virtual {v2, v3}, Lse;->getBooleanValue(I)Z

    move-result v2

    iput-boolean v2, p0, Lg3;->b:Z

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v0

    iget-boolean v1, p0, Lg3;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "AndroidTTSPlayer"

    const-string v3, "AndroidTTSPlayer() mIsNeedSystemTTS:{?} isNeedSystemTTSFocus:{?}"

    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lzm;->d()Lzm;

    move-result-object v1

    sget-object v2, Lzm;->J:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lzm;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lg3;->e:Z

    .line 16
    invoke-static {}, Lzm;->d()Lzm;

    move-result-object v1

    sget-object v2, Lzm;->K:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lzm;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 17
    iget-boolean v1, p0, Lg3;->e:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p0}, Lg3;->j()V

    .line 19
    :cond_1
    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lg3;->g:Landroid/media/AudioManager;

    .line 20
    invoke-virtual {p0}, Lg3;->g()Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lg3;->h:Landroid/media/AudioAttributes;

    :cond_2
    return-void
.end method

.method public synthetic constructor <init>(Lg3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg3;-><init>()V

    return-void
.end method

.method public static synthetic e(Lg3;I)I
    .locals 0

    .line 1
    iput p1, p0, Lg3;->f:I

    .line 3
    return p1
.end method

.method public static synthetic f(Lg3;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lg3;->b:Z

    .line 3
    return p0
.end method

.method public static h()Lg3;
    .locals 1

    .line 1
    invoke-static {}, Lg3$b;->a()Lg3;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static i()Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v3

    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v1, v4

    .line 13
    const-string v3, "AndroidTTSPlayer"

    .line 15
    const-string v5, "VERSION.SDK_INT:"

    .line 17
    invoke-static {v3, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    const/16 v1, 0x1a

    .line 22
    if-lt v2, v1, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method


# virtual methods
.method public b()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AndroidTTSPlayer"

    .line 6
    const-string v3, "getPlayState() start"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lse;->getAudioPlayState()I

    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 21
    return v1

    .line 22
    :cond_0
    iget-object v1, p0, Lg3;->c:Landroid/speech/tts/TextToSpeech;

    .line 24
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 30
    const-string v1, "getPlayState() PLAYSTATE_PLAYING"

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const/4 v0, 0x3

    .line 38
    return v0

    .line 39
    :cond_1
    const-string v1, "getPlayState() PLAYSTATE_STOPPED"

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    const/4 v0, 0x1

    .line 47
    return v0
.end method

.method public d()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lg3;->f:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "AndroidTTSPlayer"

    .line 15
    const-string v3, "abandomAudioFocus  mGain:{?}"

    .line 17
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget v0, p0, Lg3;->f:I

    .line 22
    const/4 v1, -0x1

    .line 23
    if-ne v0, v1, :cond_0

    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {}, Lg3;->i()Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 32
    invoke-static {}, Lo6;->j()Lo6;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 39
    move-result-object v0

    .line 40
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUserHighVersionAudioApi:Z

    .line 42
    if-eqz v0, :cond_2

    .line 44
    invoke-static {}, Lf3;->a()V

    .line 47
    invoke-static {}, Lo6;->j()Lo6;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 54
    move-result-object v0

    .line 55
    iget v0, v0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioMode:I

    .line 57
    invoke-static {v0}, Le3;->a(I)Landroid/media/AudioFocusRequest$Builder;

    .line 60
    move-result-object v0

    .line 61
    iget-object v3, p0, Lg3;->k:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 63
    invoke-static {v0, v3}, Ly2;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    .line 66
    move-result-object v0

    .line 67
    iget-object v3, p0, Lg3;->h:Landroid/media/AudioAttributes;

    .line 69
    invoke-static {v0, v3}, Lz2;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0, v2}, La3;->a(Landroid/media/AudioFocusRequest$Builder;Z)Landroid/media/AudioFocusRequest$Builder;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lb3;->a(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 83
    iget-object v2, p0, Lg3;->g:Landroid/media/AudioManager;

    .line 85
    invoke-static {v2, v0}, Ld3;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 88
    :cond_1
    iput v1, p0, Lg3;->f:I

    .line 90
    :cond_2
    return-void
.end method

.method public final g()Landroid/media/AudioAttributes$Builder;
    .locals 9

    .line 1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 3
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 6
    invoke-static {}, Lse;->c()Lse;

    .line 9
    move-result-object v1

    .line 10
    const/16 v2, 0x753f

    .line 12
    invoke-virtual {v1, v2}, Lse;->getIntValue(I)I

    .line 15
    move-result v1

    .line 16
    invoke-static {}, Lse;->c()Lse;

    .line 19
    move-result-object v2

    .line 20
    const/16 v3, 0x753c

    .line 22
    invoke-virtual {v2, v3}, Lse;->getIntValue(I)I

    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x2

    .line 27
    new-array v4, v3, [Ljava/lang/Object;

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v5

    .line 33
    const/4 v6, 0x0

    .line 34
    aput-object v5, v4, v6

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v5

    .line 40
    const/4 v7, 0x1

    .line 41
    aput-object v5, v4, v7

    .line 43
    const-string v5, "AndroidTTSPlayer"

    .line 45
    const-string v8, "channel audioContentType:{?}, audioAttrUsage:{?}"

    .line 47
    invoke-static {v5, v8, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lib;->i()Z

    .line 53
    move-result v4

    .line 54
    const/4 v8, -0x1

    .line 55
    if-eqz v4, :cond_1

    .line 57
    if-ne v1, v8, :cond_0

    .line 59
    invoke-static {}, Lo6;->j()Lo6;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 66
    move-result-object v1

    .line 67
    iget v1, v1, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioContentType:I

    .line 69
    :cond_0
    if-ne v2, v8, :cond_1

    .line 71
    invoke-static {}, Lo6;->j()Lo6;

    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 78
    move-result-object v2

    .line 79
    iget v2, v2, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioAttrUsage:I

    .line 81
    :cond_1
    if-ne v1, v8, :cond_2

    .line 83
    const/4 v1, 0x1

    .line 84
    :cond_2
    if-ne v2, v8, :cond_3

    .line 86
    const/16 v2, 0xc

    .line 88
    :cond_3
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 91
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 94
    new-array v3, v3, [Ljava/lang/Object;

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v1

    .line 100
    aput-object v1, v3, v6

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v1

    .line 106
    aput-object v1, v3, v7

    .line 108
    const-string v1, "attr audioContentType:{?}, audioAttrUsage:{?}"

    .line 110
    invoke-static {v5, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return-object v0
.end method

.method public j()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AndroidTTSPlayer"

    .line 6
    const-string v3, "init() start"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lse;->initAudio()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    .line 24
    invoke-static {}, Lrv;->H()Lrv;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 31
    move-result-object v3

    .line 32
    invoke-direct {v1, v3, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    .line 35
    iput-object v1, p0, Lg3;->c:Landroid/speech/tts/TextToSpeech;

    .line 37
    invoke-virtual {v1, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 40
    const-string v1, "init() end"

    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg3;->a:Z

    .line 3
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg3;->e:Z

    .line 3
    return v0
.end method

.method public m(ILjava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "AndroidTTSPlayer"

    .line 3
    const-string v1, "playText() text:{?} isNeedSystemTTSFocus:{?}"

    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object p2, v2, v3

    .line 11
    iget-boolean v4, p0, Lg3;->b:Z

    .line 13
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v4

    .line 17
    const/4 v5, 0x1

    .line 18
    aput-object v4, v2, v5

    .line 20
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v1, "T2SPId_"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    move-result-wide v1

    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lg3;->i:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lg3;->g:Landroid/media/AudioManager;

    .line 48
    if-eqz v0, :cond_3

    .line 50
    iget-boolean v0, p0, Lg3;->b:Z

    .line 52
    if-nez v0, :cond_0

    .line 54
    iget v0, p0, Lg3;->d:I

    .line 56
    invoke-virtual {p0, p1, p2, v0}, Lg3;->n(ILjava/lang/String;I)V

    .line 59
    goto/16 :goto_1

    .line 61
    :cond_0
    invoke-static {}, Lg3;->i()Z

    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 67
    invoke-static {}, Lo6;->j()Lo6;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 74
    move-result-object v0

    .line 75
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUserHighVersionAudioApi:Z

    .line 77
    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lg3;->j:Ljava/lang/Object;

    .line 81
    monitor-enter v0

    .line 82
    :try_start_0
    invoke-static {}, Lf3;->a()V

    .line 85
    invoke-static {}, Lo6;->j()Lo6;

    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 92
    move-result-object v1

    .line 93
    iget v1, v1, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioMode:I

    .line 95
    invoke-static {v1}, Le3;->a(I)Landroid/media/AudioFocusRequest$Builder;

    .line 98
    move-result-object v1

    .line 99
    iget-object v2, p0, Lg3;->k:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 101
    invoke-static {v1, v2}, Ly2;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    .line 104
    move-result-object v1

    .line 105
    iget-object v2, p0, Lg3;->h:Landroid/media/AudioAttributes;

    .line 107
    invoke-static {v1, v2}, Lz2;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 110
    move-result-object v1

    .line 111
    invoke-static {v1, v3}, La3;->a(Landroid/media/AudioFocusRequest$Builder;Z)Landroid/media/AudioFocusRequest$Builder;

    .line 114
    move-result-object v1

    .line 115
    invoke-static {}, Lse;->c()Lse;

    .line 118
    move-result-object v2

    .line 119
    new-instance v4, Leq$a;

    .line 121
    invoke-direct {v4, v1}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 124
    const v6, 0xea6e

    .line 127
    invoke-virtual {v2, v6, v4}, Lse;->setOptionalValue(ILeq$a;)V

    .line 130
    iget-object v2, p0, Lg3;->g:Landroid/media/AudioManager;

    .line 132
    invoke-static {v1}, Lb3;->a(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    .line 135
    move-result-object v1

    .line 136
    invoke-static {v2, v1}, Lc3;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 139
    move-result v1

    .line 140
    iput v1, p0, Lg3;->f:I

    .line 142
    if-ne v1, v5, :cond_1

    .line 144
    const-string v1, "AndroidTTSPlayer"

    .line 146
    const-string v2, "equals AUDIOFOCUS_REQUEST_GRANTED playText!!"

    .line 148
    new-array v3, v3, [Ljava/lang/Object;

    .line 150
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget v1, p0, Lg3;->d:I

    .line 155
    invoke-virtual {p0, p1, p2, v1}, Lg3;->n(ILjava/lang/String;I)V

    .line 158
    goto :goto_0

    .line 159
    :cond_1
    const-string p1, "AndroidTTSPlayer"

    .line 161
    const-string p2, "responseCode:{?} abort to playTTs"

    .line 163
    new-array v2, v5, [Ljava/lang/Object;

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    move-result-object v4

    .line 169
    aput-object v4, v2, v3

    .line 171
    invoke-static {p1, p2, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    const-string p2, "isUserHighVersionAudioApi:true|responseCode:"

    .line 181
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object p1

    .line 191
    const p2, 0xbfb1bb3

    .line 194
    invoke-static {p2, p1}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    .line 197
    :goto_0
    monitor-exit v0

    .line 198
    goto :goto_1

    .line 199
    :catchall_0
    move-exception p1

    .line 200
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    throw p1

    .line 202
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 204
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    const-string p2, "isUserHighVersionAudioApi:"

    .line 209
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {}, Lo6;->j()Lo6;

    .line 215
    move-result-object p2

    .line 216
    invoke-virtual {p2}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 219
    move-result-object p2

    .line 220
    iget-boolean p2, p2, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUserHighVersionAudioApi:Z

    .line 222
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 225
    const-string p2, "|osVersion:"

    .line 227
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 232
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object p1

    .line 239
    const p2, 0xbfb1bb2

    .line 242
    invoke-static {p2, p1}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    .line 245
    const-string p1, "TextToSpeech Fail Unspport Version Tag"

    .line 247
    invoke-virtual {p0, p1}, Lg3;->s(Ljava/lang/String;)V

    .line 250
    goto :goto_1

    .line 251
    :cond_3
    const p1, 0xbfb1bb0

    .line 254
    const-string p2, "AudioManager instance is null"

    .line 256
    invoke-static {p1, p2}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    .line 259
    const-string p1, "TextToSpeech Fail Unable AudioManager"

    .line 261
    invoke-virtual {p0, p1}, Lg3;->s(Ljava/lang/String;)V

    .line 264
    :goto_1
    return-void
.end method

.method public n(ILjava/lang/String;I)V
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p2, v0, v1

    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p3

    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object p3, v0, v2

    .line 14
    const/4 p3, 0x2

    .line 15
    iget-object v3, p0, Lg3;->i:Ljava/lang/String;

    .line 17
    aput-object v3, v0, p3

    .line 19
    iget-boolean p3, p0, Lg3;->e:Z

    .line 21
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object p3

    .line 25
    const/4 v3, 0x3

    .line 26
    aput-object p3, v0, v3

    .line 28
    iget-boolean p3, p0, Lg3;->a:Z

    .line 30
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    move-result-object p3

    .line 34
    const/4 v3, 0x4

    .line 35
    aput-object p3, v0, v3

    .line 37
    iget-boolean p3, p0, Lg3;->b:Z

    .line 39
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    move-result-object p3

    .line 43
    const/4 v4, 0x5

    .line 44
    aput-object p3, v0, v4

    .line 46
    const-string p3, "AndroidTTSPlayer"

    .line 48
    const-string v4, "playText() text:{?}, volumPercent:{?} autoUtteranceId:{?} input mIsUseSystemTTS:{?} mIsNeedSystemTTS:{?} isNeedSystemTTSFocus:{?} "

    .line 50
    invoke-static {p3, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lse;->c()Lse;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p1, p2}, Lse;->playText(ILjava/lang/String;)Z

    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_0

    .line 63
    return-void

    .line 64
    :cond_0
    iget-boolean p1, p0, Lg3;->e:Z

    .line 66
    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lg3;->c:Landroid/speech/tts/TextToSpeech;

    .line 70
    if-nez p1, :cond_1

    .line 72
    invoke-virtual {p0}, Lg3;->j()V

    .line 75
    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lg3;->c:Landroid/speech/tts/TextToSpeech;

    .line 79
    aput-object v0, p1, v1

    .line 81
    const-string v0, "playText mTextToSpeech:{?}"

    .line 83
    invoke-static {p3, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-boolean p1, p0, Lg3;->b:Z

    .line 88
    if-eqz p1, :cond_2

    .line 90
    new-instance p1, Ljava/util/HashMap;

    .line 92
    invoke-direct {p1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 95
    const-string v0, "utteranceId"

    .line 97
    iget-object v3, p0, Lg3;->i:Ljava/lang/String;

    .line 99
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "TextToSpeech.speak() textToSpeechParams"

    .line 104
    new-array v1, v1, [Ljava/lang/Object;

    .line 106
    invoke-static {p3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object p3, p0, Lg3;->c:Landroid/speech/tts/TextToSpeech;

    .line 111
    invoke-virtual {p3, p2, v2, p1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 114
    goto :goto_0

    .line 115
    :cond_2
    const-string p1, "TextToSpeech.speak() autoUtteranceId"

    .line 117
    new-array v0, v1, [Ljava/lang/Object;

    .line 119
    invoke-static {p3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object p1, p0, Lg3;->c:Landroid/speech/tts/TextToSpeech;

    .line 124
    const/4 p3, 0x0

    .line 125
    iget-object v0, p0, Lg3;->i:Ljava/lang/String;

    .line 127
    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lg3;->m(ILjava/lang/String;)V

    .line 5
    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "AndroidTTSPlayer"

    .line 3
    const-string v1, "enter onDone autoUtteranceId:{?}"

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    const/4 v4, 0x0

    .line 9
    aput-object p1, v3, v4

    .line 11
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    const v0, 0xbfb044c

    .line 17
    const-string v1, ""

    .line 19
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    .line 22
    iget-boolean v0, p0, Lg3;->b:Z

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lg3;->j:Ljava/lang/Object;

    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lg3;->i:Ljava/lang/String;

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 37
    const-string p1, "AndroidTTSPlayer"

    .line 39
    const-string v1, "onDone autoUtteranceId:{?}"

    .line 41
    new-array v2, v2, [Ljava/lang/Object;

    .line 43
    iget-object v3, p0, Lg3;->i:Ljava/lang/String;

    .line 45
    aput-object v3, v2, v4

    .line 47
    invoke-static {p1, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lg3;->d()V

    .line 53
    :cond_0
    monitor-exit v0

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p1

    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "AndroidTTSPlayer"

    .line 3
    const-string v1, "enter onError autoUtteranceId:{?}"

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    const/4 v4, 0x0

    .line 9
    aput-object p1, v3, v4

    .line 11
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-boolean v0, p0, Lg3;->b:Z

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lg3;->j:Ljava/lang/Object;

    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lg3;->i:Ljava/lang/String;

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 29
    const-string p1, "AndroidTTSPlayer"

    .line 31
    const-string v1, "onError autoUtteranceId:{?}"

    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    iget-object v3, p0, Lg3;->i:Ljava/lang/String;

    .line 37
    aput-object v3, v2, v4

    .line 39
    invoke-static {p1, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0}, Lg3;->d()V

    .line 45
    :cond_0
    monitor-exit v0

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1

    .line 50
    :cond_1
    :goto_0
    return-void
.end method

.method public onInit(I)V
    .locals 5

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lse;->onAudioInit(I)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    new-array v1, v0, [Ljava/lang/Object;

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object v2, v1, v3

    .line 22
    const-string v2, "AndroidTTSPlayer"

    .line 24
    const-string v4, "onInit() status:{?}"

    .line 26
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    if-eqz p1, :cond_1

    .line 31
    const-string p1, "TextToSpeech Engine init fail!"

    .line 33
    invoke-virtual {p0, p1}, Lg3;->s(Ljava/lang/String;)V

    .line 36
    return-void

    .line 37
    :cond_1
    iget-object p1, p0, Lg3;->c:Landroid/speech/tts/TextToSpeech;

    .line 39
    if-nez p1, :cond_2

    .line 41
    invoke-virtual {p0}, Lg3;->j()V

    .line 44
    :cond_2
    const/16 p1, 0x26c

    .line 46
    invoke-static {p1}, Lib;->u(I)Z

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_7

    .line 52
    invoke-static {}, Lcom/autonavi/amapauto/utils/LanguageUtils;->getCurLanguage()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    new-array v1, v0, [Ljava/lang/Object;

    .line 58
    aput-object p1, v1, v3

    .line 60
    const-string v4, "getCurLanguage lang:{?}"

    .line 62
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 71
    move-result v1

    .line 72
    const/4 v4, -0x1

    .line 73
    sparse-switch v1, :sswitch_data_0

    .line 76
    :goto_0
    const/4 v0, -0x1

    .line 77
    goto :goto_1

    .line 78
    :sswitch_0
    const-string v0, "zh-TW"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_3

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const/4 v0, 0x3

    .line 88
    goto :goto_1

    .line 89
    :sswitch_1
    const-string v0, "zh-MO"

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_4

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    const/4 v0, 0x2

    .line 99
    goto :goto_1

    .line 100
    :sswitch_2
    const-string v1, "zh-HK"

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_6

    .line 108
    goto :goto_0

    .line 109
    :sswitch_3
    const-string v0, "zh-CN"

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_5

    .line 117
    goto :goto_0

    .line 118
    :cond_5
    const/4 v0, 0x0

    .line 119
    :cond_6
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 122
    iget-object p1, p0, Lg3;->c:Landroid/speech/tts/TextToSpeech;

    .line 124
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 126
    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 129
    goto :goto_2

    .line 130
    :pswitch_0
    iget-object p1, p0, Lg3;->c:Landroid/speech/tts/TextToSpeech;

    .line 132
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 134
    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 137
    goto :goto_2

    .line 138
    :pswitch_1
    iget-object p1, p0, Lg3;->c:Landroid/speech/tts/TextToSpeech;

    .line 140
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 142
    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 145
    :goto_2
    iget-object p1, p0, Lg3;->c:Landroid/speech/tts/TextToSpeech;

    .line 147
    const/high16 v0, 0x3f800000    # 1.0f

    .line 149
    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 152
    goto :goto_3

    .line 153
    :cond_7
    iget-object p1, p0, Lg3;->c:Landroid/speech/tts/TextToSpeech;

    .line 155
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 157
    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 160
    iget-object p1, p0, Lg3;->c:Landroid/speech/tts/TextToSpeech;

    .line 162
    const/high16 v0, 0x43480000    # 200.0f

    .line 164
    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 167
    :goto_3
    const-string p1, "createAttrBuilder, create volvo LOLLIPOP  AudioTrack"

    .line 169
    new-array v0, v3, [Ljava/lang/Object;

    .line 171
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p0}, Lg3;->g()Landroid/media/AudioAttributes$Builder;

    .line 177
    move-result-object p1

    .line 178
    if-eqz p1, :cond_8

    .line 180
    iget-object v0, p0, Lg3;->c:Landroid/speech/tts/TextToSpeech;

    .line 182
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    .line 189
    :cond_8
    return-void

    .line 190
    nop

    .line 191
    :sswitch_data_0
    .sparse-switch
        0x6e72b6a -> :sswitch_3
        0x6e72c02 -> :sswitch_2
        0x6e72ca1 -> :sswitch_1
        0x6e72d82 -> :sswitch_0
    .end sparse-switch

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, "AndroidTTSPlayer"

    .line 9
    const-string v4, "enter onStart autoUtteranceId:{?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v1, p0, Lg3;->i:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 22
    new-array p1, v0, [Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lg3;->i:Ljava/lang/String;

    .line 26
    aput-object v0, p1, v2

    .line 28
    const-string v0, "onStart autoUtteranceId:{?}"

    .line 30
    invoke-static {v3, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lg3;->b:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lg3;->j:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lg3;->d()V

    .line 11
    monitor-exit v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1

    .line 16
    :cond_0
    :goto_0
    return-void
.end method

.method public q(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "AndroidTTSPlayer"

    .line 13
    const-string v2, "setIsUseSystemTTS() isUseSystemTTS:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iput-boolean p1, p0, Lg3;->e:Z

    .line 20
    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lg3;->c:Landroid/speech/tts/TextToSpeech;

    .line 24
    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lg3;->j()V

    .line 29
    :cond_0
    return-void
.end method

.method public r(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg3;->d:I

    .line 3
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x4

    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v6, 0x0

    .line 7
    move-object v0, p1

    .line 8
    invoke-static/range {v0 .. v6}, Lmh0;->a(Ljava/lang/CharSequence;IZZIII)V

    .line 11
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lg3;->u(Z)V

    .line 5
    return-void
.end method

.method public u(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "AndroidTTSPlayer"

    .line 13
    const-string v2, "stop() focusChange:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lse;->c()Lse;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Lse;->stopAudio(Z)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lg3;->c:Landroid/speech/tts/TextToSpeech;

    .line 31
    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 36
    :cond_1
    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p0}, Lg3;->p()V

    .line 41
    :cond_2
    return-void
.end method
