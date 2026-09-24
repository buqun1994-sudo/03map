.class public Lo6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6$h;,
        Lo6$g;,
        Lo6$f;,
        Lo6$e;
    }
.end annotation


# static fields
.field public static A:Ljava/lang/Object; = null

.field public static B:Landroid/media/AudioManager$OnAudioFocusChangeListener; = null

.field public static s:Ljava/lang/String; = "http:"

.field public static t:Ljava/lang/String; = "https:"

.field public static u:Landroid/media/AudioManager;

.field public static v:Landroid/media/AudioAttributes;

.field public static volatile w:Z

.field public static x:Ljava/util/concurrent/ConcurrentMap;

.field public static y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static z:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public a:Ldb;

.field public b:Lzt;

.field public c:Lzt;

.field public d:Landroid/media/AudioFocusRequest;

.field public e:Landroid/media/AudioFocusRequest;

.field public f:Z

.field public g:Llr;

.field public h:Llr;

.field public i:Llr;

.field public j:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public k:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public l:J

.field public m:Z

.field public n:Lcom/autonavi/amapauto/audio/VolumeChangeReceiver;

.field public o:Lcom/autonavi/amapauto/jni/config/AudioConfigData;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Lo6$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    sput-object v0, Lo6;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    sput-object v0, Lo6;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 21
    sput-object v0, Lo6;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    new-instance v0, Ljava/lang/Object;

    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    sput-object v0, Lo6;->A:Ljava/lang/Object;

    .line 30
    new-instance v0, Lpo0;

    .line 32
    invoke-direct {v0}, Lpo0;-><init>()V

    .line 35
    sput-object v0, Lo6;->B:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lo6$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo6$h;-><init>(Lo6$a;)V

    iput-object v0, p0, Lo6;->g:Llr;

    .line 4
    new-instance v0, Lo6$a;

    invoke-direct {v0, p0}, Lo6$a;-><init>(Lo6;)V

    iput-object v0, p0, Lo6;->h:Llr;

    .line 5
    new-instance v0, Lo6$b;

    invoke-direct {v0, p0}, Lo6$b;-><init>(Lo6;)V

    iput-object v0, p0, Lo6;->i:Llr;

    .line 6
    new-instance v0, Lo6$g;

    invoke-direct {v0}, Lo6$g;-><init>()V

    iput-object v0, p0, Lo6;->j:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 7
    new-instance v0, Lu90;

    invoke-direct {v0}, Lu90;-><init>()V

    iput-object v0, p0, Lo6;->k:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lo6;->l:J

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lo6;->m:Z

    const-string v0, "FOCUS_DEBUG_FLAG"

    .line 10
    iput-object v0, p0, Lo6;->p:Ljava/lang/String;

    const-string v0, "1"

    .line 11
    iput-object v0, p0, Lo6;->q:Ljava/lang/String;

    .line 12
    new-instance v0, Ldb;

    invoke-direct {v0}, Ldb;-><init>()V

    iput-object v0, p0, Lo6;->a:Ldb;

    .line 13
    new-instance v0, Ljb;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljb;-><init>(I)V

    iput-object v0, p0, Lo6;->c:Lzt;

    .line 14
    invoke-static {}, Lse;->c()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->getWavPlayer()Lzt;

    move-result-object v0

    iput-object v0, p0, Lo6;->b:Lzt;

    .line 15
    invoke-static {}, Lzm;->d()Lzm;

    move-result-object v0

    sget-object v2, Lzm;->L:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lzm;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo6;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Lo6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo6;-><init>()V

    return-void
.end method

.method public static synthetic c(Lo6;)Lcom/autonavi/amapauto/jni/config/AudioConfigData;
    .locals 0

    .line 1
    iget-object p0, p0, Lo6;->o:Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 3
    return-object p0
.end method

.method public static synthetic d()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .line 1
    sget-object v0, Lo6;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    return-object v0
.end method

.method public static synthetic e(Lo6;)Ldb;
    .locals 0

    .line 1
    iget-object p0, p0, Lo6;->a:Ldb;

    .line 3
    return-object p0
.end method

.method public static j()Lo6;
    .locals 1

    .line 1
    invoke-static {}, Lo6$f;->a()Lo6;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "phone"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 17
    iget-object v1, p0, Lo6;->r:Lo6$e;

    .line 19
    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lo6$e;

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, v2}, Lo6$e;-><init>(Lo6$a;)V

    .line 27
    iput-object v1, p0, Lo6;->r:Lo6$e;

    .line 29
    :cond_0
    iget-object v1, p0, Lo6;->r:Lo6$e;

    .line 31
    const/16 v2, 0x20

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    new-array v2, v2, [Ljava/lang/Object;

    .line 45
    const-string v3, "[Audio] AutoAudioManager"

    .line 47
    invoke-static {v3, v1, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 50
    :goto_0
    return-void
.end method

.method public B()V
    .locals 5

    .line 1
    const-string v0, "[Audio] AutoAudioManager"

    .line 3
    invoke-static {}, Lzm;->d()Lzm;

    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lzm;->t:Ljava/lang/String;

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v3}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 13
    move-result v1

    .line 14
    iget-boolean v2, p0, Lo6;->m:Z

    .line 16
    if-nez v2, :cond_0

    .line 18
    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/autonavi/amapauto/audio/VolumeChangeReceiver;

    .line 22
    invoke-direct {v1}, Lcom/autonavi/amapauto/audio/VolumeChangeReceiver;-><init>()V

    .line 25
    iput-object v1, p0, Lo6;->n:Lcom/autonavi/amapauto/audio/VolumeChangeReceiver;

    .line 27
    new-instance v1, Landroid/content/IntentFilter;

    .line 29
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    .line 34
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lrv;->y()Landroid/app/Application;

    .line 44
    move-result-object v2

    .line 45
    iget-object v4, p0, Lo6;->n:Lcom/autonavi/amapauto/audio/VolumeChangeReceiver;

    .line 47
    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    const-string v1, "registerVolumeChangeReceiver"

    .line 52
    new-array v2, v3, [Ljava/lang/Object;

    .line 54
    invoke-static {v0, v1, v2}, Lza;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lo6;->m:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    const-string v2, "registerVolumeChangeReceiver ocuur an Exception error"

    .line 64
    new-array v3, v3, [Ljava/lang/Object;

    .line 66
    invoke-static {v0, v2, v1, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 69
    :cond_0
    :goto_0
    return-void
.end method

.method public C(Llr;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "[Audio] AutoAudioManager"

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const/4 v2, 0x2

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-interface {p1}, Llr;->getName()Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    aput-object v3, v2, v0

    .line 15
    sget-object v0, Lo6;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const/4 v3, 0x1

    .line 22
    aput-object v0, v2, v3

    .line 24
    const-string v0, "removeFocusObserver,focusObserver.getName()={?};focusObservers:{?}"

    .line 26
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    sget-object v0, Lo6;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 31
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 37
    sget-object v0, Lo6;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 39
    invoke-interface {p1}, Llr;->getName()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string p1, "removeFocusObserver,focusObserver == null"

    .line 49
    new-array v0, v0, [Ljava/lang/Object;

    .line 51
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public D(II)I
    .locals 13

    .line 1
    const-string v0, "[Audio] AutoAudioManager"

    .line 3
    const-string v1, "requestAudioFocus durationHint:{?};audioType:{?}"

    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v4

    .line 12
    const/4 v5, 0x0

    .line 13
    aput-object v4, v3, v5

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v4

    .line 19
    const/4 v6, 0x1

    .line 20
    aput-object v4, v3, v6

    .line 22
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    if-gtz p1, :cond_0

    .line 27
    const-string p2, "[Audio] AutoAudioManager"

    .line 29
    const-string v0, "requestAudioFocus by invalid code:{?}"

    .line 31
    new-array v1, v6, [Ljava/lang/Object;

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p1

    .line 37
    aput-object p1, v1, v5

    .line 39
    invoke-static {p2, v0, v1}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    return v5

    .line 43
    :cond_0
    iget-object v0, p0, Lo6;->o:Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 45
    iput p1, v0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioMode:I

    .line 47
    invoke-virtual {p0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 50
    move-result-object v0

    .line 51
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUseAudioTrack:Z

    .line 53
    invoke-virtual {p0}, Lo6;->m()I

    .line 56
    move-result v1

    .line 57
    invoke-virtual {p0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 60
    move-result-object v3

    .line 61
    iget-boolean v3, v3, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedAudioRequestFocus:Z

    .line 63
    invoke-virtual {p0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 66
    move-result-object v4

    .line 67
    iget-boolean v4, v4, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isPlayWarningSoundNeedRequestFocus:Z

    .line 69
    sget-object v7, Lo6;->A:Ljava/lang/Object;

    .line 71
    monitor-enter v7

    .line 72
    :try_start_0
    invoke-virtual {p0, p2}, Lo6;->x(I)Z

    .line 75
    move-result v8

    .line 76
    const/4 v9, 0x3

    .line 77
    if-nez v8, :cond_4

    .line 79
    invoke-virtual {p0, p2}, Lo6;->i(I)Llr;

    .line 82
    move-result-object v8

    .line 83
    invoke-virtual {p0, v8}, Lo6;->f(Llr;)V

    .line 86
    if-nez p2, :cond_1

    .line 88
    if-eqz v3, :cond_3

    .line 90
    :cond_1
    if-ne p2, v6, :cond_2

    .line 92
    if-eqz v4, :cond_3

    .line 94
    :cond_2
    sget-object v8, Lo6;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_5

    .line 102
    :cond_3
    const-string p1, "[Audio] AutoAudioManager"

    .line 104
    const-string p2, "requestAudioFocus mFocusGot or no NeedAudioRequestFocus. isNeedAudioRequestFocus:{?};isPlayWarningSoundNeedRequestFocus:{?};mFocusGot:{?}"

    .line 106
    new-array v0, v9, [Ljava/lang/Object;

    .line 108
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 111
    move-result-object v1

    .line 112
    aput-object v1, v0, v5

    .line 114
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 117
    move-result-object v1

    .line 118
    aput-object v1, v0, v6

    .line 120
    sget-object v1, Lo6;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 125
    move-result v1

    .line 126
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 129
    move-result-object v1

    .line 130
    aput-object v1, v0, v2

    .line 132
    invoke-static {p1, p2, v0}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    monitor-exit v7

    .line 136
    return v6

    .line 137
    :cond_4
    sget-object v3, Lo6;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_5

    .line 145
    const-string p1, "[Audio] AutoAudioManager"

    .line 147
    const-string p2, "requestAudioFocus record mRecordFocusGot"

    .line 149
    new-array v0, v5, [Ljava/lang/Object;

    .line 151
    invoke-static {p1, p2, v0}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    monitor-exit v7

    .line 155
    return v6

    .line 156
    :cond_5
    invoke-static {}, Lse;->c()Lse;

    .line 159
    move-result-object v3

    .line 160
    const/16 v4, -0x7550

    .line 162
    invoke-virtual {v3, v4}, Lse;->getIntValue(I)I

    .line 165
    move-result v3

    .line 166
    const-string v4, "[Audio] AutoAudioManager"

    .line 168
    const-string v8, "requestAudioFocus customAgroupAudioMode:{?}"

    .line 170
    new-array v10, v6, [Ljava/lang/Object;

    .line 172
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    move-result-object v11

    .line 176
    aput-object v11, v10, v5

    .line 178
    invoke-static {v4, v8, v10}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p0, p2}, Lo6;->x(I)Z

    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_6

    .line 187
    const/4 p1, 0x2

    .line 188
    goto :goto_0

    .line 189
    :cond_6
    if-ne p2, v2, :cond_7

    .line 191
    const/4 v4, -0x1

    .line 192
    if-eq v3, v4, :cond_7

    .line 194
    move p1, v3

    .line 195
    :cond_7
    :goto_0
    const-string v3, "[Audio] AutoAudioManager"

    .line 197
    const-string v4, "requestAudioFocus \u3010Start\u3011 streamType\uff1a{?}  durationHint:{?} isUseAudioTrack:{?}"

    .line 199
    new-array v8, v9, [Ljava/lang/Object;

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    move-result-object v10

    .line 205
    aput-object v10, v8, v5

    .line 207
    iget-object v10, p0, Lo6;->o:Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 209
    iget v10, v10, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioMode:I

    .line 211
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    move-result-object v10

    .line 215
    aput-object v10, v8, v6

    .line 217
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 220
    move-result-object v10

    .line 221
    aput-object v10, v8, v2

    .line 223
    invoke-static {v3, v4, v8}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    if-nez v0, :cond_8

    .line 228
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 231
    move-result-wide v3

    .line 232
    iget-wide v10, p0, Lo6;->l:J

    .line 234
    sub-long/2addr v3, v10

    .line 235
    const-string v0, "[Audio] AutoAudioManager"

    .line 237
    const-string v8, " requestAudioFocus requestTimes interval:{?}"

    .line 239
    new-array v10, v6, [Ljava/lang/Object;

    .line 241
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 244
    move-result-object v11

    .line 245
    aput-object v11, v10, v5

    .line 247
    invoke-static {v0, v8, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    const-wide/16 v10, 0x12c

    .line 252
    cmp-long v0, v3, v10

    .line 254
    if-gez v0, :cond_8

    .line 256
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    goto :goto_1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    :cond_8
    :goto_1
    :try_start_3
    const-string v0, "[Audio] AutoAudioManager"

    .line 266
    const-string v3, "requestAudioFocus [start] requestFocus"

    .line 268
    new-array v4, v5, [Ljava/lang/Object;

    .line 270
    invoke-static {v0, v3, v4}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    invoke-static {}, Lse;->c()Lse;

    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {p0, p2}, Lo6;->k(I)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 280
    move-result-object v3

    .line 281
    invoke-virtual {v0, v1, p1, p2, v3}, Lse;->requestFocus(IIILandroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 284
    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    if-nez p1, :cond_9

    .line 287
    :goto_2
    const/4 v0, 0x0

    .line 288
    goto :goto_4

    .line 289
    :cond_9
    if-ne v2, p1, :cond_a

    .line 291
    :try_start_4
    iget-boolean v0, p0, Lo6;->f:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 293
    if-nez v0, :cond_a

    .line 295
    :try_start_5
    const-string p1, "[Audio] AutoAudioManager"

    .line 297
    const-string v0, "requestAudioFocus requestFocus AUDIOFOCUS_REQUEST_DELAYED no need play"

    .line 299
    new-array v1, v5, [Ljava/lang/Object;

    .line 301
    invoke-static {p1, v0, v1}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 304
    const/4 p1, 0x0

    .line 305
    goto :goto_2

    .line 306
    :catch_1
    move-exception v0

    .line 307
    move-object v12, v0

    .line 308
    move v0, p1

    .line 309
    move-object p1, v12

    .line 310
    goto :goto_3

    .line 311
    :catch_2
    move-exception p1

    .line 312
    const/4 v0, 0x0

    .line 313
    :goto_3
    :try_start_6
    const-string v1, "[Audio] AutoAudioManager"

    .line 315
    const-string v3, "requestAudioFocus exception:"

    .line 317
    new-array v4, v6, [Ljava/lang/Object;

    .line 319
    aput-object p1, v4, v5

    .line 321
    invoke-static {v1, v3, v4}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    move p1, v0

    .line 325
    :cond_a
    const/4 v0, 0x1

    .line 326
    :goto_4
    const-string v1, "[Audio] AutoAudioManager"

    .line 328
    const-string v3, "requestAudioFocus pauseRet:{?};isRequestDelayedNeedPlay:{?}"

    .line 330
    new-array v4, v2, [Ljava/lang/Object;

    .line 332
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 335
    move-result-object v8

    .line 336
    aput-object v8, v4, v5

    .line 338
    iget-boolean v8, p0, Lo6;->f:Z

    .line 340
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 343
    move-result-object v8

    .line 344
    aput-object v8, v4, v6

    .line 346
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    if-nez v0, :cond_b

    .line 351
    new-instance v1, Lo6$d;

    .line 353
    invoke-direct {v1, p0, p2}, Lo6$d;-><init>(Lo6;I)V

    .line 356
    invoke-static {v1}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 359
    :cond_b
    invoke-virtual {p0, p2}, Lo6;->x(I)Z

    .line 362
    move-result p2

    .line 363
    if-eqz p2, :cond_c

    .line 365
    sget-object p2, Lo6;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 367
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 370
    goto :goto_5

    .line 371
    :cond_c
    sget-object p2, Lo6;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 373
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 376
    :goto_5
    const-string p2, "[Audio] AutoAudioManager"

    .line 378
    const-string v0, "\u3010End\u3011requestAudioFocus:{?};mRecordFocusGot:{?};mFocusGot:{?}"

    .line 380
    new-array v1, v9, [Ljava/lang/Object;

    .line 382
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 385
    move-result-object v3

    .line 386
    aput-object v3, v1, v5

    .line 388
    sget-object v3, Lo6;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 390
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 393
    move-result v3

    .line 394
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 397
    move-result-object v3

    .line 398
    aput-object v3, v1, v6

    .line 400
    sget-object v3, Lo6;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 402
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 405
    move-result v3

    .line 406
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 409
    move-result-object v3

    .line 410
    aput-object v3, v1, v2

    .line 412
    invoke-static {p2, v0, v1}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    monitor-exit v7

    .line 416
    return p1

    .line 417
    :catchall_0
    move-exception p1

    .line 418
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 419
    throw p1
.end method

.method public final E(IIILandroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUserHighVersionAudioApi:Z

    .line 7
    sget-object v1, Lo6;->u:Landroid/media/AudioManager;

    .line 9
    if-nez v1, :cond_0

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "audio"

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/media/AudioManager;

    .line 27
    sput-object v1, Lo6;->u:Landroid/media/AudioManager;

    .line 29
    :cond_0
    sget-object v1, Lo6;->u:Landroid/media/AudioManager;

    .line 31
    const/4 v2, 0x0

    .line 32
    if-nez v1, :cond_1

    .line 34
    return v2

    .line 35
    :cond_1
    invoke-virtual {p0}, Lo6;->r()Z

    .line 38
    move-result v1

    .line 39
    const/4 v3, 0x3

    .line 40
    const/4 v4, 0x1

    .line 41
    const-string v5, "[Audio] AutoAudioManager"

    .line 43
    if-eqz v1, :cond_3

    .line 45
    if-eqz v0, :cond_3

    .line 47
    invoke-virtual {p0, p4, p3}, Lo6;->G(Landroid/media/AudioManager$OnAudioFocusChangeListener;I)Landroid/media/AudioFocusRequest;

    .line 50
    move-result-object p4

    .line 51
    if-ne p3, v3, :cond_2

    .line 53
    iput-object p4, p0, Lo6;->e:Landroid/media/AudioFocusRequest;

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iput-object p4, p0, Lo6;->d:Landroid/media/AudioFocusRequest;

    .line 58
    :goto_0
    new-array p3, v4, [Ljava/lang/Object;

    .line 60
    invoke-static {p4}, Ln6;->a(Landroid/media/AudioFocusRequest;)I

    .line 63
    move-result v1

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v1

    .line 68
    aput-object v1, p3, v2

    .line 70
    const-string v1, "requestByOrigin audioFocusRequest.getFocusGain()={?}"

    .line 72
    invoke-static {v5, v1, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    sget-object p3, Lo6;->u:Landroid/media/AudioManager;

    .line 77
    invoke-static {p3, p4}, Lc3;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 80
    move-result p3

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    sget-object p3, Lo6;->u:Landroid/media/AudioManager;

    .line 84
    invoke-virtual {p3, p4, p1, p2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 87
    move-result p3

    .line 88
    :goto_1
    const/4 p4, 0x5

    .line 89
    new-array p4, p4, [Ljava/lang/Object;

    .line 91
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v1

    .line 95
    aput-object v1, p4, v2

    .line 97
    invoke-virtual {p0}, Lo6;->r()Z

    .line 100
    move-result v1

    .line 101
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 104
    move-result-object v1

    .line 105
    aput-object v1, p4, v4

    .line 107
    const/4 v1, 0x2

    .line 108
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 111
    move-result-object v0

    .line 112
    aput-object v0, p4, v1

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object p1

    .line 118
    aput-object p1, p4, v3

    .line 120
    const/4 p1, 0x4

    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object p2

    .line 125
    aput-object p2, p4, p1

    .line 127
    const-string p1, "requestByOrigin obtainCode:{?} hasOreo:{?} isUserHighVersionAudioApi:{?} streamtype:{?} audiomode:{?}"

    .line 129
    invoke-static {v5, p1, p4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    return p3
.end method

.method public F(IIILandroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    const/4 v3, 0x1

    .line 16
    aput-object v1, v0, v3

    .line 18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v1

    .line 22
    const/4 v4, 0x2

    .line 23
    aput-object v1, v0, v4

    .line 25
    const/4 v1, 0x3

    .line 26
    aput-object p4, v0, v1

    .line 28
    const-string v5, "[Audio] AutoAudioManager"

    .line 30
    const-string v6, "requestFocusDefalutImpl streamType:{?};durationHint:{?};audioType:{?};listener:{?}"

    .line 32
    invoke-static {v5, v6, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    if-nez p4, :cond_0

    .line 37
    return v2

    .line 38
    :cond_0
    invoke-static {}, Lc;->i()Lc;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lc;->o()Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 48
    const-string p1, "requestFocusDefalutImpl isRecording"

    .line 50
    new-array p2, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {v5, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return v2

    .line 56
    :cond_1
    invoke-virtual {p0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 59
    move-result-object v0

    .line 60
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUserHighVersionAudioApi:Z

    .line 62
    new-array v6, v3, [Ljava/lang/Object;

    .line 64
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    move-result-object v0

    .line 68
    aput-object v0, v6, v2

    .line 70
    const-string v0, "requestFocusDefalutImpl  isUserHighVersionAudioApi:{?}"

    .line 72
    invoke-static {v5, v0, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    if-eq p2, v3, :cond_3

    .line 77
    if-eq p2, v4, :cond_2

    .line 79
    if-eq p2, v1, :cond_2

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lo6;->E(IIILandroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 85
    move-result v3

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-static {}, Lzm;->d()Lzm;

    .line 90
    move-result-object v0

    .line 91
    sget-object v1, Lzm;->Y:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 96
    move-result v0

    .line 97
    new-array v1, v3, [Ljava/lang/Object;

    .line 99
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    move-result-object v4

    .line 103
    aput-object v4, v1, v2

    .line 105
    const-string v2, "requestFocusDefalutImpl isMixTypeTogetherNeedRequestFocus:{?}"

    .line 107
    invoke-static {v5, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    if-eqz v0, :cond_4

    .line 112
    invoke-virtual {p0, p1, p2, p3, p4}, Lo6;->E(IIILandroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 115
    move-result v3

    .line 116
    :cond_4
    :goto_0
    return v3
.end method

.method public G(Landroid/media/AudioManager$OnAudioFocusChangeListener;I)Landroid/media/AudioFocusRequest;
    .locals 8

    .line 1
    sget-object v0, Lo6;->v:Landroid/media/AudioAttributes;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-nez v0, :cond_4

    .line 7
    invoke-static {}, Lse;->c()Lse;

    .line 10
    move-result-object v0

    .line 11
    const/16 v3, 0x753f

    .line 13
    invoke-virtual {v0, v3}, Lse;->getIntValue(I)I

    .line 16
    move-result v0

    .line 17
    invoke-static {}, Lse;->c()Lse;

    .line 20
    move-result-object v3

    .line 21
    const/16 v4, 0x753c

    .line 23
    invoke-virtual {v3, v4}, Lse;->getIntValue(I)I

    .line 26
    move-result v3

    .line 27
    new-array v4, v2, [Ljava/lang/Object;

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v5

    .line 33
    aput-object v5, v4, v1

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v5

    .line 39
    const/4 v6, 0x1

    .line 40
    aput-object v5, v4, v6

    .line 42
    const-string v5, "[Audio] AutoAudioManager"

    .line 44
    const-string v7, "channel audioContentType:{?}, audioAttrUsage:{?}"

    .line 46
    invoke-static {v5, v7, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-static {}, Lib;->i()Z

    .line 52
    move-result v4

    .line 53
    const/4 v7, -0x1

    .line 54
    if-eqz v4, :cond_1

    .line 56
    if-ne v0, v7, :cond_0

    .line 58
    invoke-static {}, Lo6;->j()Lo6;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 65
    move-result-object v0

    .line 66
    iget v0, v0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioContentType:I

    .line 68
    :cond_0
    if-ne v3, v7, :cond_1

    .line 70
    invoke-static {}, Lo6;->j()Lo6;

    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 77
    move-result-object v3

    .line 78
    iget v3, v3, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioAttrUsage:I

    .line 80
    :cond_1
    if-ne v0, v7, :cond_2

    .line 82
    const/4 v0, 0x1

    .line 83
    :cond_2
    if-ne v3, v7, :cond_3

    .line 85
    const/16 v3, 0xc

    .line 87
    :cond_3
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    .line 89
    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 92
    invoke-virtual {v4, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 95
    invoke-virtual {v4, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 98
    new-array v7, v2, [Ljava/lang/Object;

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v0

    .line 104
    aput-object v0, v7, v1

    .line 106
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v0

    .line 110
    aput-object v0, v7, v6

    .line 112
    const-string v0, "attr audioContentType:{?}, audioAttrUsage:{?}"

    .line 114
    invoke-static {v5, v0, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-static {}, Lse;->c()Lse;

    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v0, p2, v3}, Lse;->getCustomAudioAttribute(ILandroid/media/AudioAttributes;)Landroid/media/AudioAttributes;

    .line 128
    move-result-object p2

    .line 129
    sput-object p2, Lo6;->v:Landroid/media/AudioAttributes;

    .line 131
    :cond_4
    iget-object p2, p0, Lo6;->o:Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 133
    iget p2, p2, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioMode:I

    .line 135
    invoke-static {}, Lc;->i()Lc;

    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lc;->k()Z

    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_5

    .line 145
    goto :goto_0

    .line 146
    :cond_5
    move v2, p2

    .line 147
    :goto_0
    invoke-static {v2}, Le3;->a(I)Landroid/media/AudioFocusRequest$Builder;

    .line 150
    move-result-object p2

    .line 151
    sget-object v0, Lo6;->v:Landroid/media/AudioAttributes;

    .line 153
    invoke-static {p2, v0}, Lz2;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 156
    move-result-object p2

    .line 157
    invoke-static {p2, v1}, La3;->a(Landroid/media/AudioFocusRequest$Builder;Z)Landroid/media/AudioFocusRequest$Builder;

    .line 160
    move-result-object p2

    .line 161
    invoke-static {p2, p1}, Ly2;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    .line 164
    move-result-object p1

    .line 165
    invoke-static {}, Lse;->c()Lse;

    .line 168
    move-result-object p2

    .line 169
    new-instance v0, Leq$a;

    .line 171
    invoke-direct {v0, p1}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 174
    const v1, 0xea6e

    .line 177
    invoke-virtual {p2, v1, v0}, Lse;->setOptionalValue(ILeq$a;)V

    .line 180
    invoke-static {p1}, Lb3;->a(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    .line 183
    move-result-object p1

    .line 184
    return-object p1
.end method

.method public H()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "[Audio] AutoAudioManager"

    .line 6
    const-string v3, "resumeBackgroundNoisesForTTS"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    const-string v3, "audio"

    .line 21
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/media/AudioManager;

    .line 27
    sget-object v3, Lo6;->B:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 29
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    const-string v3, "resumeBackgroundNoisesForTTS:"

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {v2, v3, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 41
    :goto_0
    return-void
.end method

.method public I(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->setStreamType(I)V

    .line 8
    return-void
.end method

.method public J(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo6;->m()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lrv;->H()Lrv;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "audio"

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/media/AudioManager;

    .line 21
    invoke-virtual {v1, v0, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 24
    const/4 v1, 0x3

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v0

    .line 32
    aput-object v0, v1, v2

    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p1

    .line 39
    aput-object p1, v1, v0

    .line 41
    const/4 p1, 0x2

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object p2

    .line 46
    aput-object p2, v1, p1

    .line 48
    const-string p1, "[Audio] AutoAudioManager"

    .line 50
    const-string p2, "android.media.AudioManager.setStreamVolume(streamType:{?},index:{?},flags:{?})"

    .line 52
    invoke-static {p1, p2, v1}, Lza;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public K()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "phone"

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 18
    iget-object v2, p0, Lo6;->r:Lo6$e;

    .line 20
    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 25
    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lo6;->r:Lo6$e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    const-string v3, "[Audio] AutoAudioManager"

    .line 38
    invoke-static {v3, v2, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    :goto_0
    return-void
.end method

.method public L()V
    .locals 5

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x2720

    .line 7
    invoke-virtual {v0, v1}, Lse;->getBooleanValue(I)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-boolean v0, p0, Lo6;->m:Z

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 25
    move-result-object v0

    .line 26
    iget-object v2, p0, Lo6;->n:Lcom/autonavi/amapauto/audio/VolumeChangeReceiver;

    .line 28
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string v2, "unregisterVolumeChangeReceiver ocuur an Exception error"

    .line 35
    new-array v3, v1, [Ljava/lang/Object;

    .line 37
    const-string v4, "[Audio] AutoAudioManager"

    .line 39
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 42
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lo6;->m:Z

    .line 44
    :cond_1
    return-void
.end method

.method public M(Lcom/autonavi/amapauto/jni/config/AudioConfigData;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lo6;->o:Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->toString()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    aput-object p1, v0, v1

    .line 13
    const-string p1, "[Audio] AutoAudioManager"

    .line 15
    const-string v1, "updateAudioConfigData AudioConfigData:{?}"

    .line 17
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public N(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "[Audio] AutoAudioManager"

    .line 13
    const-string v2, "updateAudioFocusChange focusChange={?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->updateAudioFocusChange(I)V

    .line 21
    return-void
.end method

.method public a(I)Z
    .locals 12

    .line 1
    const-string v0, "[Audio] AutoAudioManager"

    .line 3
    const-string v1, "abandonAudioFocus audioType:{?}"

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v4

    .line 12
    const/4 v5, 0x0

    .line 13
    aput-object v4, v3, v5

    .line 15
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 21
    move-result-object v0

    .line 22
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedAudioRequestFocus:Z

    .line 24
    invoke-virtual {p0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 27
    move-result-object v1

    .line 28
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isPlayWarningSoundNeedRequestFocus:Z

    .line 30
    sget-object v3, Lo6;->A:Ljava/lang/Object;

    .line 32
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const/4 v4, 0x3

    .line 34
    if-eq p1, v4, :cond_0

    .line 36
    :try_start_1
    invoke-virtual {p0, p1}, Lo6;->t(I)Z

    .line 39
    move-result v6

    .line 40
    invoke-virtual {p0, p1}, Lo6;->i(I)Llr;

    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {p0, v7}, Lo6;->C(Llr;)V

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v6, 0x0

    .line 49
    :goto_0
    const-string v7, "[Audio] AutoAudioManager"

    .line 51
    const-string v8, "abandonAudioFocus focusObservers.size():{?};mRecordFocusGot:{?};mFocusGot:{?};isNeedabandomFocus:{?}"

    .line 53
    const/4 v9, 0x4

    .line 54
    new-array v9, v9, [Ljava/lang/Object;

    .line 56
    sget-object v10, Lo6;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 58
    invoke-interface {v10}, Ljava/util/Map;->size()I

    .line 61
    move-result v10

    .line 62
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v10

    .line 66
    aput-object v10, v9, v5

    .line 68
    sget-object v10, Lo6;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 73
    move-result v10

    .line 74
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    move-result-object v10

    .line 78
    aput-object v10, v9, v2

    .line 80
    sget-object v10, Lo6;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 85
    move-result v10

    .line 86
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    move-result-object v10

    .line 90
    const/4 v11, 0x2

    .line 91
    aput-object v10, v9, v11

    .line 93
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    move-result-object v10

    .line 97
    aput-object v10, v9, v4

    .line 99
    invoke-static {v7, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0, p1}, Lo6;->x(I)Z

    .line 105
    move-result v7

    .line 106
    if-nez v7, :cond_1

    .line 108
    sget-object v7, Lo6;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 110
    invoke-interface {v7}, Ljava/util/Map;->size()I

    .line 113
    move-result v7

    .line 114
    if-lez v7, :cond_1

    .line 116
    const-string p1, "[Audio] AutoAudioManager"

    .line 118
    const-string v0, "abandonAudioFocus no need abandon audiofocus,return"

    .line 120
    new-array v1, v5, [Ljava/lang/Object;

    .line 122
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    monitor-exit v3

    .line 126
    return v5

    .line 127
    :cond_1
    if-ne p1, v2, :cond_2

    .line 129
    if-eqz v1, :cond_3

    .line 131
    :cond_2
    if-nez p1, :cond_4

    .line 133
    if-nez v0, :cond_4

    .line 135
    :cond_3
    const-string p1, "[Audio] AutoAudioManager"

    .line 137
    const-string v0, "abandonAudioFocus no request no abandon audiofocus,return"

    .line 139
    new-array v1, v5, [Ljava/lang/Object;

    .line 141
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    monitor-exit v3

    .line 145
    return v2

    .line 146
    :cond_4
    invoke-virtual {p0, p1}, Lo6;->x(I)Z

    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_5

    .line 152
    sget-object v0, Lo6;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 154
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_6

    .line 160
    :cond_5
    invoke-virtual {p0, p1}, Lo6;->x(I)Z

    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_f

    .line 166
    sget-object v0, Lo6;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 168
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_f

    .line 174
    if-eqz v6, :cond_f

    .line 176
    :cond_6
    if-nez v1, :cond_8

    .line 178
    invoke-virtual {p0}, Lo6;->s()Z

    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_7

    .line 184
    goto :goto_1

    .line 185
    :cond_7
    const/4 v0, 0x0

    .line 186
    goto :goto_2

    .line 187
    :cond_8
    :goto_1
    const/4 v0, 0x1

    .line 188
    :goto_2
    invoke-virtual {p0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 191
    move-result-object v1

    .line 192
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUseAudioTrack:Z

    .line 194
    const-string v6, "[Audio] AutoAudioManager"

    .line 196
    const-string v7, "abandonAudioFocus do isNeedToCheck AbandonFocus:{?} isUseAudioTrack:{?}"

    .line 198
    new-array v8, v11, [Ljava/lang/Object;

    .line 200
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 203
    move-result-object v9

    .line 204
    aput-object v9, v8, v5

    .line 206
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 209
    move-result-object v9

    .line 210
    aput-object v9, v8, v2

    .line 212
    invoke-static {v6, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    if-eqz v0, :cond_d

    .line 217
    iget-object v0, p0, Lo6;->b:Lzt;

    .line 219
    invoke-interface {v0}, Llq;->b()I

    .line 222
    move-result v0

    .line 223
    if-ne v0, v4, :cond_9

    .line 225
    const/4 v0, 0x1

    .line 226
    goto :goto_3

    .line 227
    :cond_9
    const/4 v0, 0x0

    .line 228
    :goto_3
    if-eqz v1, :cond_b

    .line 230
    iget-object v1, p0, Lo6;->a:Ldb;

    .line 232
    invoke-virtual {v1}, Ldb;->b()I

    .line 235
    move-result v1

    .line 236
    if-ne v1, v4, :cond_a

    .line 238
    :goto_4
    const/4 v1, 0x1

    .line 239
    goto :goto_5

    .line 240
    :cond_a
    const/4 v1, 0x0

    .line 241
    goto :goto_5

    .line 242
    :cond_b
    invoke-static {}, Lcom/autonavi/amapauto/audio/TTSOpenslPlayer;->getTTSPlayState()I

    .line 245
    move-result v1

    .line 246
    if-ne v1, v4, :cond_a

    .line 248
    goto :goto_4

    .line 249
    :goto_5
    const-string v6, "[Audio] AutoAudioManager"

    .line 251
    const-string v7, "abandonAudioFocus(). warningPlaying={?}, ttsPlaying={?}"

    .line 253
    new-array v8, v11, [Ljava/lang/Object;

    .line 255
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 258
    move-result-object v9

    .line 259
    aput-object v9, v8, v5

    .line 261
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 264
    move-result-object v9

    .line 265
    aput-object v9, v8, v2

    .line 267
    invoke-static {v6, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    if-nez v0, :cond_c

    .line 272
    if-eqz v1, :cond_d

    .line 274
    :cond_c
    const-string p1, "[Audio] AutoAudioManager"

    .line 276
    const-string v0, "abandonAudioFocus\u3010End\u3011by has audio playing "

    .line 278
    new-array v1, v5, [Ljava/lang/Object;

    .line 280
    invoke-static {p1, v0, v1}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    monitor-exit v3

    .line 284
    return v5

    .line 285
    :cond_d
    const-string v0, "[Audio] AutoAudioManager"

    .line 287
    const-string v1, "abandonAudioFocus start channel abandomFocus"

    .line 289
    new-array v6, v5, [Ljava/lang/Object;

    .line 291
    invoke-static {v0, v1, v6}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    invoke-static {}, Lse;->c()Lse;

    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0, p1}, Lse;->abandomFocus(I)V

    .line 301
    invoke-virtual {p0, p1}, Lo6;->x(I)Z

    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_e

    .line 307
    sget-object v0, Lo6;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 309
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 312
    goto :goto_6

    .line 313
    :cond_e
    sget-object v0, Lo6;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 315
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 318
    :goto_6
    const-string v0, "[Audio] AutoAudioManager"

    .line 320
    const-string v1, "abandonAudioFocus end audioType:{?};mRecordFocusGot:{?};mFocusGot:{?}"

    .line 322
    new-array v4, v4, [Ljava/lang/Object;

    .line 324
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    move-result-object p1

    .line 328
    aput-object p1, v4, v5

    .line 330
    sget-object p1, Lo6;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 332
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 335
    move-result p1

    .line 336
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 339
    move-result-object p1

    .line 340
    aput-object p1, v4, v2

    .line 342
    sget-object p1, Lo6;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 344
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 347
    move-result p1

    .line 348
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 351
    move-result-object p1

    .line 352
    aput-object p1, v4, v11

    .line 354
    invoke-static {v0, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 360
    move-result-wide v0

    .line 361
    iput-wide v0, p0, Lo6;->l:J

    .line 363
    monitor-exit v3

    .line 364
    goto :goto_7

    .line 365
    :catchall_0
    move-exception p1

    .line 366
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 368
    :catch_0
    move-exception p1

    .line 369
    const-string v0, "[Audio] AutoAudioManager"

    .line 371
    const-string v1, "abandonAudioFocus exception:{?}"

    .line 373
    new-array v3, v5, [Ljava/lang/Object;

    .line 375
    invoke-static {v0, v1, p1, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 378
    :goto_7
    return v2
.end method

.method public b(I)Z
    .locals 6

    .line 1
    const-string v0, "abandonByOrigin isAbandon:{?}"

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v3

    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 13
    const-string v3, "[Audio] AutoAudioManager"

    .line 15
    const-string v5, "abandonByOrigin audioType:{?}"

    .line 17
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 27
    move-result-object v2

    .line 28
    const-string v5, "audio"

    .line 30
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/media/AudioManager;

    .line 36
    invoke-virtual {p0, p1}, Lo6;->x(I)Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 42
    invoke-virtual {p0}, Lo6;->r()Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lo6;->e:Landroid/media/AudioFocusRequest;

    .line 50
    if-eqz p1, :cond_0

    .line 52
    invoke-static {v2, p1}, Ld3;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lo6;->k:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 58
    if-eqz p1, :cond_3

    .line 60
    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lo6;->r()Z

    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_2

    .line 70
    iget-object p1, p0, Lo6;->d:Landroid/media/AudioFocusRequest;

    .line 72
    if-eqz p1, :cond_2

    .line 74
    invoke-static {v2, p1}, Ld3;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget-object p1, p0, Lo6;->j:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 80
    if-eqz p1, :cond_3

    .line 82
    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_3
    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 87
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 89
    aput-object v2, p1, v4

    .line 91
    invoke-static {v3, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    return v1

    .line 95
    :catch_0
    move-exception p1

    .line 96
    :try_start_1
    const-string v2, "abandonByOrigin exception:{?}"

    .line 98
    new-array v5, v4, [Ljava/lang/Object;

    .line 100
    invoke-static {v3, v2, p1, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    new-array p1, v1, [Ljava/lang/Object;

    .line 105
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 107
    aput-object v1, p1, v4

    .line 109
    invoke-static {v3, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    return v4

    .line 113
    :catchall_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 115
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 117
    aput-object v1, p1, v4

    .line 119
    invoke-static {v3, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    return v4
.end method

.method public f(Llr;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "[Audio] AutoAudioManager"

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const/4 v2, 0x2

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-interface {p1}, Llr;->getName()Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    aput-object v3, v2, v0

    .line 15
    sget-object v0, Lo6;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const/4 v3, 0x1

    .line 22
    aput-object v0, v2, v3

    .line 24
    const-string v0, "addFocusObserver,focusObserver.getName()={?};focusObservers:{?}"

    .line 26
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    sget-object v0, Lo6;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 31
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 37
    sget-object v0, Lo6;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 39
    invoke-interface {p1}, Llr;->getName()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string p1, "addFocusObserver,focusObserver == null"

    .line 49
    new-array v0, v0, [Ljava/lang/Object;

    .line 51
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public g(I)Landroid/media/AudioAttributes;
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
    const-string v5, "[Audio] AutoAudioManager"

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
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 116
    move-result-object v0

    .line 117
    invoke-static {}, Lse;->c()Lse;

    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1, p1, v0}, Lse;->getCustomAudioAttribute(ILandroid/media/AudioAttributes;)Landroid/media/AudioAttributes;

    .line 124
    move-result-object p1

    .line 125
    return-object p1
.end method

.method public h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;
    .locals 3

    .line 1
    iget-object v0, p0, Lo6;->o:Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeVoiceConfiger()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lo6;->o:Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    aput-object v0, v1, v2

    .line 21
    const-string v0, "[Audio] AutoAudioManager"

    .line 23
    const-string v2, "getAudioConfigData nativeVoiceConfiger AudioConfigData:{?}"

    .line 25
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :cond_0
    iget-object v0, p0, Lo6;->o:Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 30
    return-object v0
.end method

.method public final i(I)Llr;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lo6;->h:Llr;

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lo6;->i:Llr;

    .line 16
    goto :goto_0

    .line 17
    :cond_2
    iget-object p1, p0, Lo6;->g:Llr;

    .line 19
    :goto_0
    return-object p1
.end method

.method public k(I)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lo6;->j:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 3
    invoke-virtual {p0, p1}, Lo6;->x(I)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    iget-object v0, p0, Lo6;->k:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 11
    :cond_0
    return-object v0
.end method

.method public l()Lzt;
    .locals 1

    .line 1
    iget-object v0, p0, Lo6;->c:Lzt;

    .line 3
    return-object v0
.end method

.method public m()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->getStreamType()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    aput-object v3, v1, v2

    .line 19
    const-string v2, "[Audio] AutoAudioManager"

    .line 21
    const-string v3, "getStreamType streamType:{?}"

    .line 23
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    return v0
.end method

.method public n()I
    .locals 4

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "audio"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/media/AudioManager;

    .line 17
    invoke-virtual {p0}, Lo6;->m()I

    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v1

    .line 33
    aput-object v1, v2, v3

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v3

    .line 40
    aput-object v3, v2, v1

    .line 42
    const-string v1, "[Audio] AutoAudioManager"

    .line 44
    const-string v3, "android.media.AudioManager.getStreamMaxVolume(streamType:{?}) = {?}"

    .line 46
    invoke-static {v1, v3, v2}, Lza;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return v0
.end method

.method public o()I
    .locals 4

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "audio"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/media/AudioManager;

    .line 17
    invoke-virtual {p0}, Lo6;->m()I

    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v1

    .line 33
    aput-object v1, v2, v3

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v3

    .line 40
    aput-object v3, v2, v1

    .line 42
    const-string v1, "[Audio] AutoAudioManager"

    .line 44
    const-string v3, "android.media.AudioManager.getStreamVolume(streamType:{?}) = {?}"

    .line 46
    invoke-static {v1, v3, v2}, Lza;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return v0
.end method

.method public p()Ldb;
    .locals 1

    .line 1
    iget-object v0, p0, Lo6;->a:Ldb;

    .line 3
    return-object v0
.end method

.method public q()Lzt;
    .locals 1

    .line 1
    iget-object v0, p0, Lo6;->b:Lzt;

    .line 3
    return-object v0
.end method

.method public final r()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public t(I)Z
    .locals 3

    .line 1
    sget-object v0, Lo6;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lo6;->i(I)Llr;

    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v0, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    const/4 v2, 0x2

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p1

    .line 23
    aput-object p1, v2, v1

    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object v1

    .line 30
    aput-object v1, v2, p1

    .line 32
    const-string p1, "[Audio] AutoAudioManager"

    .line 34
    const-string v1, "isContainIFocusObserver type:{?}; isContain:{?}"

    .line 36
    invoke-static {p1, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return v0
.end method

.method public u(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lo6$c;

    .line 5
    invoke-direct {p1, p0}, Lo6$c;-><init>(Lo6;)V

    .line 8
    invoke-static {p1}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 11
    :cond_0
    return-void
.end method

.method public v()Z
    .locals 6

    .line 1
    const-string v0, "[Audio] AutoAudioManager"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 11
    move-result-object v2

    .line 12
    const-string v3, "audio"

    .line 14
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/media/AudioManager;

    .line 20
    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    .line 23
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    :try_start_1
    const-string v3, "android.media.AudioManager.isMusicActive():{?}"

    .line 26
    const/4 v4, 0x1

    .line 27
    new-array v4, v4, [Ljava/lang/Object;

    .line 29
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object v5

    .line 33
    aput-object v5, v4, v1

    .line 35
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception v3

    .line 40
    goto :goto_0

    .line 41
    :catch_1
    move-exception v3

    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v5, "isMusicActive:"

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    .line 66
    invoke-static {v0, v4, v3, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 69
    :goto_1
    return v2
.end method

.method public w()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "phone"

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 18
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    .line 21
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    new-array v3, v0, [Ljava/lang/Object;

    .line 30
    const-string v4, "[Audio] AutoAudioManager"

    .line 32
    invoke-static {v4, v2, v1, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-eqz v1, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 39
    :cond_0
    return v0
.end method

.method public final x(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public y(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "[Audio] AutoAudioManager"

    .line 13
    const-string v2, " set Auto Volume change to:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lza;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->onStreamVolumeChange(I)V

    .line 21
    return-void
.end method

.method public z()Z
    .locals 7

    .line 1
    const-string v0, "[Audio] AutoAudioManager"

    .line 3
    invoke-static {}, Lzm;->d()Lzm;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lzm;->j()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    const-string v3, "pauseBackgroundNoisesForTTS \u3010Start\u3011 streamType\uff1a:{?}"

    .line 14
    const/4 v4, 0x1

    .line 15
    new-array v5, v4, [Ljava/lang/Object;

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v6

    .line 21
    aput-object v6, v5, v2

    .line 23
    invoke-static {v0, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Lrv;->H()Lrv;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 33
    move-result-object v3

    .line 34
    const-string v5, "audio"

    .line 36
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/media/AudioManager;

    .line 42
    sget-object v5, Lo6;->B:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 44
    invoke-virtual {p0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 47
    move-result-object v6

    .line 48
    iget v6, v6, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioMode:I

    .line 50
    invoke-virtual {v3, v5, v1, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 53
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    if-nez v1, :cond_0

    .line 56
    const/4 v3, 0x0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v3, 0x1

    .line 59
    :goto_0
    :try_start_1
    const-string v5, "pauseBackgroundNoisesForTTS \u3010End\u3011requestAudioFocus:{?}"

    .line 61
    new-array v4, v4, [Ljava/lang/Object;

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v1

    .line 67
    aput-object v1, v4, v2

    .line 69
    invoke-static {v0, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    goto :goto_2

    .line 73
    :catch_0
    move-exception v1

    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception v1

    .line 76
    const/4 v3, 0x0

    .line 77
    :goto_1
    const-string v4, "pauseBackgroundNoisesForTTS:"

    .line 79
    new-array v2, v2, [Ljava/lang/Object;

    .line 81
    invoke-static {v0, v4, v1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 84
    :goto_2
    return v3
.end method
