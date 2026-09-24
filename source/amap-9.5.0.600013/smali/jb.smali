.class public Ljb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzt;


# instance fields
.field public a:Landroid/media/MediaPlayer;

.field public b:I

.field public c:I

.field public d:Ljava/util/ArrayList;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Ljb;->b:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ljb;->c:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljb;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 6
    iput v0, p0, Ljb;->b:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ljb;->c:I

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljb;->d:Ljava/util/ArrayList;

    .line 9
    iput p1, p0, Ljb;->c:I

    return-void
.end method

.method public static synthetic d(Ljb;)I
    .locals 0

    .line 1
    iget p0, p0, Ljb;->c:I

    .line 3
    return p0
.end method

.method public static synthetic e(Ljb;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljb;->g()V

    .line 4
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;I)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    const-string v2, "AutoWavMediaPlayer"

    .line 6
    const-string v3, "addPlayMediaFile filePath:{?} mMediaPlayer:{?}"

    .line 8
    const/4 v4, 0x2

    .line 9
    new-array v4, v4, [Ljava/lang/Object;

    .line 11
    aput-object p1, v4, v0

    .line 13
    iget-object v5, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 15
    if-nez v5, :cond_0

    .line 17
    const/4 v5, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 22
    move-result v5

    .line 23
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    move-result-object v5

    .line 27
    :goto_0
    aput-object v5, v4, v1

    .line 29
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v2, p0, Ljb;->d:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iput p2, p0, Ljb;->b:I

    .line 39
    iget-object p1, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 41
    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 49
    :cond_1
    iget-boolean p1, p0, Ljb;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz p1, :cond_3

    .line 53
    :cond_2
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :cond_3
    :try_start_1
    iput-boolean v1, p0, Ljb;->e:Z

    .line 57
    invoke-virtual {p0}, Ljb;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception p1

    .line 64
    :try_start_2
    const-string p2, "AutoWavMediaPlayer"

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    new-array v1, v1, [Ljava/lang/Object;

    .line 72
    aput-object p1, v1, v0

    .line 74
    invoke-static {p2, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :goto_1
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :goto_2
    monitor-exit p0

    .line 80
    throw p1
.end method

.method public b()I
    .locals 6

    .line 1
    const-string v0, "AutoWavMediaPlayer"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :try_start_0
    iget-object v3, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 7
    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 12
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-eqz v3, :cond_0

    .line 15
    const/4 v3, 0x3

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v3

    .line 18
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 22
    new-array v5, v2, [Ljava/lang/Object;

    .line 24
    aput-object v3, v5, v1

    .line 26
    invoke-static {v0, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :cond_0
    const/4 v3, 0x1

    .line 30
    :goto_0
    const/4 v4, 0x2

    .line 31
    new-array v4, v4, [Ljava/lang/Object;

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v5

    .line 37
    aput-object v5, v4, v1

    .line 39
    iget v1, p0, Ljb;->c:I

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v1

    .line 45
    aput-object v1, v4, v2

    .line 47
    const-string v1, "getFilePlayStates fileAudioState={?} mPlayMode:{?}"

    .line 49
    invoke-static {v0, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    return v3
.end method

.method public c()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ljb;->e:Z

    .line 4
    const/4 v1, 0x1

    .line 5
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    iget-object v3, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 9
    aput-object v3, v2, v0

    .line 11
    const-string v3, "AutoWavMediaPlayer"

    .line 13
    const-string v4, "enter releaseMediaPlayer!, mediaPlayer:{?}"

    .line 15
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v2, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 20
    if-nez v2, :cond_0

    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :try_start_0
    iget-object v4, p0, Ljb;->d:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 29
    iget-object v4, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 31
    invoke-virtual {v4, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 34
    iget-object v4, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 36
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 39
    iget-object v4, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 41
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    .line 44
    iget-object v4, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 46
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v4

    .line 51
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 55
    new-array v1, v1, [Ljava/lang/Object;

    .line 57
    aput-object v4, v1, v0

    .line 59
    invoke-static {v3, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    :goto_0
    iput-object v2, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 64
    return-void

    .line 65
    :catchall_1
    move-exception v0

    .line 66
    iput-object v2, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 68
    throw v0
.end method

.method public f()I
    .locals 1

    .line 1
    invoke-static {}, Lo6;->j()Lo6;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->getStreamType()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final g()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Ljb;->c:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "AutoWavMediaPlayer"

    .line 15
    const-string v3, "playAndSetData mPlayMode:{?}"

    .line 17
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :try_start_0
    iget-object v0, p0, Ljb;->d:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Ljb;->c()V

    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 34
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 39
    :cond_1
    iget-object v0, p0, Ljb;->d:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-virtual {p0, v0}, Ljb;->h(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Ljb;->d:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v3, "playAndSetData:exception :"

    .line 59
    new-array v2, v2, [Ljava/lang/Object;

    .line 61
    invoke-static {v1, v3, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Ljb;->c()V

    .line 67
    :goto_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "playByMediaPlayer finally:"

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object p1, v2, v3

    .line 9
    const-string v4, "AutoWavMediaPlayer"

    .line 11
    const-string v5, "playByMediaPlayer filepaht:{?}"

    .line 13
    invoke-static {v4, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v2, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 18
    if-nez v2, :cond_1

    .line 20
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    .line 22
    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 25
    iput-object v2, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 27
    invoke-static {}, Lo6;->j()Lo6;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 34
    move-result-object v2

    .line 35
    iget-boolean v2, v2, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUserHighVersionAudioApi:Z

    .line 37
    if-eqz v2, :cond_0

    .line 39
    const-string v2, "create MediaPlayer isUserHighVersionAudioApi "

    .line 41
    new-array v5, v3, [Ljava/lang/Object;

    .line 43
    invoke-static {v4, v2, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-static {}, Lo6;->j()Lo6;

    .line 49
    move-result-object v2

    .line 50
    const/4 v5, 0x4

    .line 51
    invoke-virtual {v2, v5}, Lo6;->g(I)Landroid/media/AudioAttributes;

    .line 54
    move-result-object v2

    .line 55
    iget-object v5, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 57
    invoke-virtual {v5, v2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljb;->f()I

    .line 64
    move-result v2

    .line 65
    const-string v5, "playByMediaPlayer streamtype={?}"

    .line 67
    new-array v6, v1, [Ljava/lang/Object;

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v7

    .line 73
    aput-object v7, v6, v3

    .line 75
    invoke-static {v4, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v5, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 80
    invoke-virtual {v5, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    .line 85
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 88
    move-result-object v5

    .line 89
    new-array v1, v1, [Ljava/lang/Object;

    .line 91
    aput-object v2, v1, v3

    .line 93
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_1
    :goto_0
    iget-object v1, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 98
    if-nez v1, :cond_2

    .line 100
    const-string p1, "playByMediaPlayer mMediaPlayer init failed!!!"

    .line 102
    new-array v0, v3, [Ljava/lang/Object;

    .line 104
    invoke-static {v4, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void

    .line 108
    :cond_2
    iget v2, p0, Ljb;->b:I

    .line 110
    invoke-virtual {p0, v2}, Ljb;->i(I)V

    .line 113
    :try_start_1
    const-string v2, "android_assets"

    .line 115
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_3

    .line 121
    const-string v2, "res"

    .line 123
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 126
    move-result v2

    .line 127
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    invoke-static {}, Lrv;->H()Lrv;

    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 150
    move-result-object v7

    .line 151
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 154
    move-result-wide v8

    .line 155
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 158
    move-result-wide v10

    .line 159
    move-object v6, v1

    .line 160
    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 163
    goto :goto_1

    .line 164
    :cond_3
    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 167
    :goto_1
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 170
    new-instance p1, Ljb$a;

    .line 172
    invoke-direct {p1, p0}, Ljb$a;-><init>(Ljb;)V

    .line 175
    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 178
    new-instance p1, Ljb$b;

    .line 180
    invoke-direct {p1, p0}, Ljb$b;-><init>(Ljb;)V

    .line 183
    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 186
    new-instance p1, Ljb$c;

    .line 188
    invoke-direct {p1, p0}, Ljb$c;-><init>(Ljb;)V

    .line 191
    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    new-array p1, v3, [Ljava/lang/Object;

    .line 196
    invoke-static {v4, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    goto :goto_2

    .line 200
    :catchall_0
    move-exception p1

    .line 201
    goto :goto_3

    .line 202
    :catch_1
    move-exception p1

    .line 203
    :try_start_2
    const-string v1, "playByMediaPlayer:exception :"

    .line 205
    new-array v2, v3, [Ljava/lang/Object;

    .line 207
    invoke-static {v4, v1, p1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0}, Ljb;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    new-array p1, v3, [Ljava/lang/Object;

    .line 215
    invoke-static {v4, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    :goto_2
    return-void

    .line 219
    :goto_3
    new-array v1, v3, [Ljava/lang/Object;

    .line 221
    invoke-static {v4, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    throw p1
.end method

.method public i(I)V
    .locals 6

    .line 1
    const-string p1, "AutoWavMediaPlayer"

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iget v2, p0, Ljb;->b:I

    .line 7
    int-to-float v2, v2

    .line 8
    const/high16 v3, 0x42c80000    # 100.0f

    .line 10
    div-float/2addr v2, v3

    .line 11
    const-string v3, "setVolume:{?} wavVolumePercent:{?}"

    .line 13
    const/4 v4, 0x2

    .line 14
    new-array v4, v4, [Ljava/lang/Object;

    .line 16
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 19
    move-result-object v5

    .line 20
    aput-object v5, v4, v0

    .line 22
    iget v5, p0, Ljb;->b:I

    .line 24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v5

    .line 28
    aput-object v5, v4, v1

    .line 30
    invoke-static {p1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v3, p0, Ljb;->a:Landroid/media/MediaPlayer;

    .line 35
    invoke-virtual {v3, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    new-array v1, v1, [Ljava/lang/Object;

    .line 46
    aput-object v2, v1, v0

    .line 48
    invoke-static {p1, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :goto_0
    return-void
.end method
