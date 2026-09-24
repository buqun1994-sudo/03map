.class public Ldb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llq;
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# static fields
.field public static x:J = 0x0L

.field public static y:I = 0x2


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/nio/ByteBuffer;

.field public e:[B

.field public volatile f:Landroid/media/AudioTrack;

.field public g:Ljava/lang/Object;

.field public h:Z

.field public i:[B

.field public j:[B

.field public k:Z

.field public l:I

.field public m:I

.field public n:Lg6;

.field public final o:I

.field public final p:I

.field public q:I

.field public r:F

.field public final s:F

.field public t:Ljava/util/concurrent/ScheduledExecutorService;

.field public u:Ljava/lang/Runnable;

.field public v:Ljava/util/concurrent/ScheduledFuture;

.field public volatile w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 7
    new-instance v1, Ljava/lang/Object;

    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, p0, Ldb;->g:Ljava/lang/Object;

    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Ldb;->h:Z

    .line 17
    iput-object v0, p0, Ldb;->i:[B

    .line 19
    iput-object v0, p0, Ldb;->j:[B

    .line 21
    iget v0, p0, Ldb;->a:I

    .line 23
    mul-int/lit8 v0, v0, 0x2

    .line 25
    div-int/lit16 v0, v0, 0x3e8

    .line 27
    iput v0, p0, Ldb;->l:I

    .line 29
    const/4 v0, 0x0

    .line 30
    iput v0, p0, Ldb;->m:I

    .line 32
    const/16 v0, 0xfa

    .line 34
    iput v0, p0, Ldb;->o:I

    .line 36
    const/16 v0, 0x14

    .line 38
    iput v0, p0, Ldb;->p:I

    .line 40
    const/16 v0, 0xc

    .line 42
    iput v0, p0, Ldb;->q:I

    .line 44
    const/high16 v2, 0x3f800000    # 1.0f

    .line 46
    iput v2, p0, Ldb;->r:F

    .line 48
    int-to-float v0, v0

    .line 49
    div-float/2addr v2, v0

    .line 50
    iput v2, p0, Ldb;->s:F

    .line 52
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Ldb;->t:Ljava/util/concurrent/ScheduledExecutorService;

    .line 58
    new-instance v0, Ldb$a;

    .line 60
    invoke-direct {v0, p0}, Ldb$a;-><init>(Ldb;)V

    .line 63
    iput-object v0, p0, Ldb;->u:Ljava/lang/Runnable;

    .line 65
    return-void
.end method

.method public static synthetic e(Ldb;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldb;->h:Z

    .line 3
    return p0
.end method

.method public static synthetic f(Ldb;)F
    .locals 0

    .line 1
    iget p0, p0, Ldb;->r:F

    .line 3
    return p0
.end method

.method public static synthetic g(Ldb;F)F
    .locals 1

    .line 1
    iget v0, p0, Ldb;->r:F

    .line 3
    sub-float/2addr v0, p1

    .line 4
    iput v0, p0, Ldb;->r:F

    .line 6
    return v0
.end method

.method public static synthetic h(Ldb;)F
    .locals 0

    .line 1
    iget p0, p0, Ldb;->s:F

    .line 3
    return p0
.end method

.method public static synthetic i(Ldb;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldb;->l()V

    .line 4
    return-void
.end method

.method public static synthetic j(Ldb;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldb;->y()V

    .line 4
    return-void
.end method

.method public static synthetic k(Ldb;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldb;->m()V

    .line 4
    return-void
.end method


# virtual methods
.method public final A(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;II)I
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v0, p4

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 1
    iget v6, v1, Ldb;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, "[Audio] AutoTTSPlayer"

    const-string v9, "miniBufSize\uff1a{?}, sizeInBytes:{?} by AudioTrack.write(byte[], int, int)"

    invoke-static {v6, v9, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget v5, v1, Ldb;->m:I

    add-int/2addr v5, v3

    div-int/2addr v5, v4

    sub-int/2addr v5, v8

    .line 3
    iget-object v9, v1, Ldb;->f:Landroid/media/AudioTrack;

    invoke-virtual {v9, v5}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    new-array v9, v8, [Ljava/lang/Object;

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v7

    const-string v5, "writeBytes setNotificationMarkerPosition:{?}"

    invoke-static {v6, v5, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance v5, Li6$a;

    invoke-direct {v5}, Li6$a;-><init>()V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 7
    sget-wide v11, Li6;->c:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_0

    sub-long v11, v9, v11

    .line 8
    iput-wide v11, v5, Li6$a;->c:J

    goto :goto_0

    .line 9
    :cond_0
    iput-wide v13, v5, Li6$a;->c:J

    .line 10
    :goto_0
    iget-object v11, v1, Ldb;->n:Lg6;

    iget-object v12, v1, Ldb;->f:Landroid/media/AudioTrack;

    invoke-virtual {v12}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v12

    iget v15, v1, Ldb;->m:I

    iget v13, v1, Ldb;->l:I

    invoke-virtual {v11, v12, v15, v13}, Lg6;->c(III)J

    move-result-wide v11

    .line 11
    invoke-static {}, Lib;->p()Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x3

    if-eq v0, v4, :cond_1

    if-ne v0, v13, :cond_d

    .line 12
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    .line 13
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 14
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    const-string v4, "sleepTimeMs:{?}"

    const-wide/16 v22, 0x2

    if-ge v14, v13, :cond_8

    move v13, v3

    const/4 v8, 0x0

    :goto_1
    if-lez v13, :cond_7

    .line 15
    iget v14, v1, Ldb;->m:I

    move/from16 p4, v8

    int-to-long v7, v14

    invoke-virtual {v1, v7, v8}, Ldb;->n(J)I

    move-result v7

    const/4 v8, 0x1

    new-array v14, v8, [Ljava/lang/Object;

    .line 16
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v20, 0x0

    aput-object v8, v14, v20

    const-string v8, "getAvailableBufferSize:{?}"

    invoke-static {v6, v8, v14}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v7, :cond_5

    .line 17
    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 18
    invoke-virtual {v2, v15, v0, v7}, Landroid/media/AudioTrack;->write([BII)I

    move-result v8

    .line 19
    iget v14, v1, Ldb;->m:I

    add-int/2addr v14, v8

    iput v14, v1, Ldb;->m:I

    add-int v14, v0, v7

    sub-int/2addr v13, v7

    move-wide/from16 v25, v11

    const/4 v11, 0x4

    new-array v0, v11, [Ljava/lang/Object;

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v0, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x1

    aput-object v7, v0, v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x2

    aput-object v7, v0, v11

    iget v7, v1, Ldb;->l:I

    div-int v7, v8, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x3

    aput-object v7, v0, v11

    const-string v7, "bytesToWrite:{?}, pcmLength:{?}, offsetInBytes:{?},sleep:{?}"

    invoke-static {v6, v7, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v13, :cond_2

    goto/16 :goto_8

    :cond_2
    if-gtz v8, :cond_3

    add-int/lit8 v0, p4, 0x1

    const/4 v11, 0x1

    const/16 v20, 0x0

    goto :goto_3

    .line 21
    :cond_3
    iget v0, v1, Ldb;->m:I

    int-to-long v7, v0

    invoke-virtual {v1, v7, v8}, Ldb;->p(J)I

    move-result v0

    iget v7, v1, Ldb;->l:I

    div-int/2addr v0, v7

    int-to-long v7, v0

    .line 22
    div-long v7, v7, v22

    const-wide/16 v11, 0x28

    .line 23
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    const-wide/16 v11, 0x0

    cmp-long v0, v7, v11

    if-lez v0, :cond_4

    .line 24
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v11, v0

    .line 25
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    const/4 v11, 0x1

    new-array v0, v11, [Ljava/lang/Object;

    .line 26
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v20, 0x0

    aput-object v7, v0, v20

    invoke-static {v6, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_3
    move v8, v0

    move v0, v14

    goto :goto_4

    :cond_5
    move-wide/from16 v25, v11

    const/4 v11, 0x1

    const/16 v20, 0x0

    add-int/lit8 v8, p4, 0x1

    :goto_4
    if-lt v8, v11, :cond_6

    new-array v4, v11, [Ljava/lang/Object;

    .line 27
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v20

    const-string v7, "continueErrorWriteCount:{?}"

    invoke-static {v6, v7, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v2, v15, v0, v13}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    .line 29
    iget v2, v1, Ldb;->m:I

    add-int/2addr v2, v0

    iput v2, v1, Ldb;->m:I

    if-gtz v0, :cond_e

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioTrack write continue error.bytes="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0xbfb17cc

    invoke-static {v2, v0}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    goto/16 :goto_8

    :cond_6
    move-wide/from16 v11, v25

    goto/16 :goto_1

    :cond_7
    move-wide/from16 v25, v11

    goto/16 :goto_8

    :cond_8
    move-wide/from16 v25, v11

    move v8, v3

    const/4 v7, 0x0

    :goto_5
    if-lez v8, :cond_e

    const/4 v11, 0x1

    .line 31
    invoke-static {v2, v15, v0, v8, v11}, Lcb;->a(Landroid/media/AudioTrack;[BIII)I

    move-result v12

    .line 32
    iget v13, v1, Ldb;->m:I

    add-int/2addr v13, v12

    iput v13, v1, Ldb;->m:I

    add-int v13, v0, v12

    sub-int/2addr v8, v12

    const/4 v14, 0x4

    new-array v0, v14, [Ljava/lang/Object;

    .line 33
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v20, 0x0

    aput-object v21, v0, v20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v0, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v19, 0x2

    aput-object v21, v0, v19

    iget v14, v1, Ldb;->m:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v18, 0x3

    aput-object v14, v0, v18

    const-string v14, "23 bytesWritten:{?}, pcmLength:{?}, offsetInBytes:{?}, mBytesWritten:{?}"

    invoke-static {v6, v14, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v8, :cond_9

    goto/16 :goto_8

    :cond_9
    if-gtz v12, :cond_a

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    if-lt v7, v11, :cond_b

    new-array v0, v11, [Ljava/lang/Object;

    .line 34
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v0, v7

    const-string v4, "23 continueErrorWriteCount:{?}"

    invoke-static {v6, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v2, v15, v13, v8}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    .line 36
    iget v2, v1, Ldb;->m:I

    add-int/2addr v2, v0

    iput v2, v1, Ldb;->m:I

    if-gtz v0, :cond_e

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioTrack write continue error.23.bytes="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0xbfb17cc

    invoke-static {v2, v0}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    goto :goto_8

    .line 38
    :cond_b
    iget v0, v1, Ldb;->m:I

    int-to-long v11, v0

    invoke-virtual {v1, v11, v12}, Ldb;->p(J)I

    move-result v0

    iget v11, v1, Ldb;->l:I

    div-int/2addr v0, v11

    int-to-long v11, v0

    .line 39
    div-long v11, v11, v22

    move v14, v7

    move/from16 p4, v8

    const-wide/16 v7, 0x28

    .line 40
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    const-wide/16 v16, 0x0

    cmp-long v0, v11, v16

    if-lez v0, :cond_c

    .line 41
    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v24, v0

    .line 42
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_7
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Object;

    .line 43
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v0, v11

    invoke-static {v6, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v8, p4

    move v0, v13

    move v7, v14

    goto/16 :goto_5

    :cond_d
    move-wide/from16 v25, v11

    .line 44
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v2, v0, v4, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    .line 45
    iget v2, v1, Ldb;->m:I

    add-int/2addr v2, v0

    iput v2, v1, Ldb;->m:I

    if-gtz v0, :cond_e

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioTrack write error.bytes="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0xbfb17cc

    invoke-static {v2, v0}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    .line 47
    :cond_e
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sput-wide v6, Li6;->c:J

    .line 48
    iget-object v0, v1, Ldb;->n:Lg6;

    iget-object v2, v1, Ldb;->f:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    iget v4, v1, Ldb;->m:I

    iget v6, v1, Ldb;->l:I

    invoke-virtual {v0, v2, v4, v6}, Lg6;->c(III)J

    move-result-wide v6

    .line 49
    iget v0, v1, Ldb;->c:I

    const/16 v2, 0xfa0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-string v2, ""

    if-lt v3, v0, :cond_f

    .line 50
    iget v0, v1, Ldb;->c:I

    iput v0, v5, Li6$a;->a:I

    .line 51
    iget v0, v1, Ldb;->l:I

    div-int v0, v3, v0

    int-to-long v11, v0

    iput-wide v11, v5, Li6$a;->b:J

    .line 52
    sget-wide v11, Li6;->c:J

    sub-long/2addr v11, v9

    iput-wide v11, v5, Li6$a;->d:J

    .line 53
    iput-object v2, v5, Li6$a;->e:Ljava/lang/String;

    .line 54
    invoke-static {v5}, Li6;->k(Li6$a;)V

    :cond_f
    const-wide/16 v8, 0x0

    cmp-long v0, v25, v8

    if-gtz v0, :cond_10

    cmp-long v0, v6, v8

    if-lez v0, :cond_11

    .line 55
    :cond_10
    iget v0, v1, Ldb;->c:I

    iput v0, v5, Li6$a;->a:I

    move-wide/from16 v8, v25

    .line 56
    iput-wide v8, v5, Li6$a;->c:J

    .line 57
    iget v0, v1, Ldb;->l:I

    div-int v0, v3, v0

    int-to-long v8, v0

    iput-wide v8, v5, Li6$a;->b:J

    .line 58
    iput-wide v6, v5, Li6$a;->d:J

    .line 59
    iput-object v2, v5, Li6$a;->e:Ljava/lang/String;

    .line 60
    invoke-static {v5}, Li6;->l(Li6$a;)V

    :cond_11
    return v3
.end method

.method public declared-synchronized B(I)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v2, p1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-static {}, Lo6;->j()Lo6;

    .line 9
    move-result-object v3

    .line 10
    invoke-virtual {v3}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 13
    move-result-object v3

    .line 14
    iget v4, v1, Ldb;->a:I

    .line 16
    invoke-static {v2, v4}, Li6;->m(II)V

    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, 0x0

    .line 21
    if-nez v2, :cond_0

    .line 23
    const/4 v6, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v6, 0x0

    .line 26
    :goto_0
    const-string v7, "[Audio] AutoTTSPlayer"

    .line 28
    const-string v8, " [Start] writePcm isNeedPlayMute:{?} isPlayEnd:{?}"

    .line 30
    const/4 v9, 0x2

    .line 31
    new-array v10, v9, [Ljava/lang/Object;

    .line 33
    iget-boolean v11, v1, Ldb;->k:Z

    .line 35
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    move-result-object v11

    .line 39
    aput-object v11, v10, v5

    .line 41
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    move-result-object v11

    .line 45
    aput-object v11, v10, v4

    .line 47
    invoke-static {v7, v8, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget v7, v1, Ldb;->b:I

    .line 52
    iget-object v8, v1, Ldb;->d:Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    .line 57
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 58
    if-gt v7, v8, :cond_22

    .line 60
    const/16 v8, 0xa

    .line 62
    const v10, 0xbfb044c

    .line 65
    const-wide/16 v11, 0x0

    .line 67
    :try_start_1
    sget v13, Ldb;->y:I

    .line 69
    iget v14, v1, Ldb;->w:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 71
    if-ne v13, v14, :cond_2

    .line 73
    :try_start_2
    const-string v2, "ttsEngineStatus is TTS_PLAYER_UNUSABLE"

    .line 75
    const v3, 0xbfb17c9

    .line 78
    invoke-static {v3, v2}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    .line 81
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 83
    const-string v3, "\u3010stop\u3011writePcm stop TTS_PLAYER_UNUSABLE"

    .line 85
    new-array v9, v5, [Ljava/lang/Object;

    .line 87
    invoke-static {v2, v3, v9}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    if-eqz v6, :cond_1

    .line 92
    :try_start_3
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 94
    const-string v3, " writePcm [stop_TTS] stop by play Finish"

    .line 96
    new-array v4, v5, [Ljava/lang/Object;

    .line 98
    invoke-static {v2, v3, v4}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 104
    move-result-wide v2

    .line 105
    invoke-virtual {v1, v5}, Ldb;->x(Z)V

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 111
    move-result-wide v6

    .line 112
    sub-long/2addr v6, v2

    .line 113
    sput-wide v6, Li6;->J:J

    .line 115
    invoke-virtual/range {p0 .. p0}, Ldb;->s()V

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 121
    move-result-wide v2

    .line 122
    sub-long/2addr v2, v11

    .line 123
    sput-wide v2, Li6;->K:J

    .line 125
    invoke-virtual/range {p0 .. p0}, Ldb;->z()V

    .line 128
    sget-wide v2, Li6;->F:J

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 133
    move-result-wide v6

    .line 134
    sget-wide v8, Ldb;->x:J

    .line 136
    sub-long/2addr v6, v8

    .line 137
    add-long/2addr v2, v6

    .line 138
    sput-wide v2, Li6;->F:J

    .line 140
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 142
    const-string v3, " [End] writePcm isPlayEnd"

    .line 144
    new-array v4, v5, [Ljava/lang/Object;

    .line 146
    invoke-static {v2, v3, v4}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    const-string v2, "end text play"

    .line 151
    invoke-static {v10, v2}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    .line 154
    iget-object v2, v1, Ldb;->n:Lg6;

    .line 156
    invoke-virtual {v2}, Lg6;->i()V

    .line 159
    sput-wide v11, Li6;->D:J

    .line 161
    sput-wide v11, Li6;->B:J

    .line 163
    sput-wide v11, Li6;->C:J

    .line 165
    sput-wide v11, Li6;->E:J

    .line 167
    sput-wide v11, Li6;->F:J

    .line 169
    sput-wide v11, Li6;->G:J

    .line 171
    sput-wide v11, Ldb;->x:J

    .line 173
    sput-wide v11, Li6;->H:J

    .line 175
    sput-wide v11, Li6;->I:J

    .line 177
    sput-wide v11, Li6;->J:J

    .line 179
    sput-wide v11, Li6;->K:J

    .line 181
    goto :goto_1

    .line 182
    :cond_1
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 184
    const-string v3, " [End] writePcm by finally"

    .line 186
    new-array v4, v5, [Ljava/lang/Object;

    .line 188
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    sget-wide v2, Li6;->F:J

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 196
    move-result-wide v4

    .line 197
    sget-wide v6, Ldb;->x:J

    .line 199
    sub-long/2addr v4, v6

    .line 200
    add-long/2addr v2, v4

    .line 201
    sput-wide v2, Li6;->F:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 203
    :goto_1
    monitor-exit p0

    .line 204
    return-void

    .line 205
    :catchall_0
    move-exception v0

    .line 206
    move-object v2, v0

    .line 207
    move v7, v6

    .line 208
    goto/16 :goto_e

    .line 210
    :cond_2
    :try_start_4
    sget-wide v13, Ldb;->x:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 212
    cmp-long v15, v13, v11

    .line 214
    if-lez v15, :cond_3

    .line 216
    :try_start_5
    sget-wide v13, Li6;->G:J

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 221
    move-result-wide v15

    .line 222
    sget-wide v17, Ldb;->x:J

    .line 224
    sub-long v15, v15, v17

    .line 226
    add-long/2addr v13, v15

    .line 227
    sput-wide v13, Li6;->G:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 229
    :cond_3
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 232
    move-result-wide v13

    .line 233
    sput-wide v13, Ldb;->x:J

    .line 235
    iget-object v13, v1, Ldb;->f:Landroid/media/AudioTrack;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 237
    if-nez v13, :cond_5

    .line 239
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 242
    move-result-wide v13

    .line 243
    invoke-static {}, Li6;->n()V

    .line 246
    const-string v15, "start play first valid pcm"

    .line 248
    const v10, 0xbfb044b

    .line 251
    invoke-static {v10, v15}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Ldb;->r()V

    .line 257
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 260
    move-result-object v10

    .line 261
    invoke-virtual {v10}, Ljava/lang/Thread;->getPriority()I

    .line 264
    move-result v10

    .line 265
    if-eq v10, v8, :cond_4

    .line 267
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 270
    move-result-object v10

    .line 271
    invoke-virtual {v10, v8}, Ljava/lang/Thread;->setPriority(I)V

    .line 274
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 277
    move-result-wide v17

    .line 278
    sub-long v17, v17, v13

    .line 280
    sput-wide v17, Li6;->H:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 282
    :cond_5
    const/4 v10, 0x3

    .line 283
    :try_start_8
    invoke-static {v10}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->notifyPlayStateChange(I)V

    .line 286
    iget-object v13, v1, Ldb;->f:Landroid/media/AudioTrack;

    .line 288
    if-eqz v13, :cond_1d

    .line 290
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 293
    move-result-wide v13

    .line 294
    iget-boolean v15, v1, Ldb;->h:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 296
    if-eqz v15, :cond_6

    .line 298
    :try_start_9
    iget-object v15, v1, Ldb;->f:Landroid/media/AudioTrack;

    .line 300
    invoke-virtual {v15}, Landroid/media/AudioTrack;->getPlayState()I

    .line 303
    move-result v15

    .line 304
    if-eq v15, v10, :cond_6

    .line 306
    const/16 v15, 0xd

    .line 308
    invoke-static {v15}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->sendAutoStatus(I)V

    .line 311
    iget-object v15, v1, Ldb;->f:Landroid/media/AudioTrack;

    .line 313
    invoke-virtual {v15}, Landroid/media/AudioTrack;->play()V

    .line 316
    const-string v15, "[Audio] AutoTTSPlayer"

    .line 318
    const-string v8, "start first audio play"

    .line 320
    new-array v11, v5, [Ljava/lang/Object;

    .line 322
    invoke-static {v15, v8, v11}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 325
    goto :goto_2

    .line 326
    :cond_6
    :try_start_a
    invoke-static {}, Lo6;->j()Lo6;

    .line 329
    move-result-object v8

    .line 330
    invoke-virtual {v8}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 333
    move-result-object v8

    .line 334
    iget-boolean v8, v8, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isAudioDataSameWithAmap:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 336
    if-nez v8, :cond_7

    .line 338
    :try_start_b
    iget-object v8, v1, Ldb;->f:Landroid/media/AudioTrack;

    .line 340
    invoke-virtual {v8}, Landroid/media/AudioTrack;->play()V

    .line 343
    const-string v8, "[Audio] AutoTTSPlayer"

    .line 345
    const-string v11, "playPcmSegmented call android.media.AudioTrack.play"

    .line 347
    new-array v12, v5, [Ljava/lang/Object;

    .line 349
    invoke-static {v8, v11, v12}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 352
    :cond_7
    :goto_2
    :try_start_c
    sget-wide v11, Li6;->I:J

    .line 354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 357
    move-result-wide v19

    .line 358
    sub-long v19, v19, v13

    .line 360
    add-long v11, v11, v19

    .line 362
    sput-wide v11, Li6;->I:J

    .line 364
    iget-boolean v8, v1, Ldb;->k:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 366
    if-eqz v8, :cond_8

    .line 368
    :try_start_d
    iget-object v8, v1, Ldb;->d:Ljava/nio/ByteBuffer;

    .line 370
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 373
    iget-object v8, v1, Ldb;->d:Ljava/nio/ByteBuffer;

    .line 375
    iget-object v11, v1, Ldb;->e:[B

    .line 377
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 380
    iget-object v8, v1, Ldb;->d:Ljava/nio/ByteBuffer;

    .line 382
    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 385
    :cond_8
    :try_start_e
    iget v8, v3, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->ttsDelayBeforePlay:I

    .line 387
    iget-boolean v11, v1, Ldb;->h:Z

    .line 389
    if-eqz v11, :cond_15

    .line 391
    iput-boolean v5, v1, Ldb;->h:Z

    .line 393
    invoke-static {}, Lh6;->c()Lh6;

    .line 396
    move-result-object v11

    .line 397
    invoke-virtual {v11}, Lh6;->d()V

    .line 400
    iget-object v11, v1, Ldb;->n:Lg6;

    .line 402
    invoke-virtual {v11}, Lg6;->j()V

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 408
    move-result-wide v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 409
    if-lez v8, :cond_a

    .line 411
    :try_start_f
    iget-object v13, v1, Ldb;->j:[B

    .line 413
    if-nez v13, :cond_9

    .line 415
    iget v13, v1, Ldb;->l:I

    .line 417
    mul-int v13, v13, v8

    .line 419
    new-array v13, v13, [B

    .line 421
    iput-object v13, v1, Ldb;->j:[B

    .line 423
    :cond_9
    iget-object v13, v1, Ldb;->n:Lg6;

    .line 425
    iget v14, v1, Ldb;->l:I

    .line 427
    mul-int v14, v14, v8

    .line 429
    invoke-virtual {v13, v14}, Lg6;->f(I)V

    .line 432
    iget-object v13, v1, Ldb;->f:Landroid/media/AudioTrack;

    .line 434
    iget-object v14, v1, Ldb;->j:[B

    .line 436
    array-length v15, v14

    .line 437
    invoke-virtual {v13, v14, v5, v15}, Landroid/media/AudioTrack;->write([BII)I

    .line 440
    move-result v13

    .line 441
    iget v14, v1, Ldb;->m:I

    .line 443
    add-int/2addr v14, v13

    .line 444
    iput v14, v1, Ldb;->m:I

    .line 446
    iget-object v13, v1, Ldb;->n:Lg6;

    .line 448
    invoke-virtual {v13}, Lg6;->e()V

    .line 451
    const-string v13, "[Audio] AutoTTSPlayer"

    .line 453
    const-string v14, "do ttsDelayBeforePlay delayTime:{?}ms"

    .line 455
    new-array v15, v4, [Ljava/lang/Object;

    .line 457
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 460
    move-result-object v8

    .line 461
    aput-object v8, v15, v5

    .line 463
    invoke-static {v13, v14, v15}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 466
    :cond_a
    :try_start_10
    invoke-static {}, Lh6;->c()Lh6;

    .line 469
    move-result-object v8

    .line 470
    invoke-virtual {v8}, Lh6;->h()V

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 476
    move-result-wide v13

    .line 477
    sub-long/2addr v13, v11

    .line 478
    sput-wide v13, Li6;->B:J

    .line 480
    invoke-static {}, Lzm;->d()Lzm;

    .line 483
    move-result-object v8

    .line 484
    sget-object v13, Lzm;->O:Ljava/lang/String;

    .line 486
    invoke-virtual {v8, v13, v5}, Lzm;->e(Ljava/lang/String;I)I

    .line 489
    move-result v8

    .line 490
    invoke-static {}, Li6;->j()Z

    .line 493
    move-result v13
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 494
    if-nez v13, :cond_c

    .line 496
    if-eq v8, v4, :cond_b

    .line 498
    if-ne v8, v9, :cond_c

    .line 500
    :cond_b
    :try_start_11
    invoke-static {}, Lzm;->d()Lzm;

    .line 503
    move-result-object v13

    .line 504
    sget-object v14, Lzm;->N:Ljava/lang/String;

    .line 506
    invoke-virtual {v13, v14, v5}, Lzm;->e(Ljava/lang/String;I)I

    .line 509
    move-result v13
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 510
    goto :goto_3

    .line 511
    :cond_c
    const/4 v13, 0x0

    .line 512
    :goto_3
    :try_start_12
    invoke-static {}, Lzm;->d()Lzm;

    .line 515
    move-result-object v14

    .line 516
    sget-object v15, Lzm;->P:Ljava/lang/String;

    .line 518
    invoke-virtual {v14, v15, v5}, Lzm;->e(Ljava/lang/String;I)I

    .line 521
    move-result v14

    .line 522
    invoke-static {}, Lzm;->d()Lzm;

    .line 525
    move-result-object v15

    .line 526
    sget-object v7, Lzm;->R:Ljava/lang/String;

    .line 528
    invoke-virtual {v15, v7, v5}, Lzm;->e(Ljava/lang/String;I)I

    .line 531
    move-result v7

    .line 532
    const-string v15, "[Audio] AutoTTSPlayer"

    .line 534
    const-string v10, "do ttsShakeDelayBeforePlay ttsShakeDelay:{?}ms;ttsShakeState:{?};mIsTurnScene:{?};ttsShakeVolatilityValue:{?};ttsShakeDelayLimit:{?}"

    .line 536
    const/4 v9, 0x5

    .line 537
    new-array v9, v9, [Ljava/lang/Object;

    .line 539
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 542
    move-result-object v22

    .line 543
    aput-object v22, v9, v5

    .line 545
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 548
    move-result-object v22

    .line 549
    aput-object v22, v9, v4

    .line 551
    invoke-static {}, Li6;->j()Z

    .line 554
    move-result v22

    .line 555
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 558
    move-result-object v22

    .line 559
    const/16 v21, 0x2

    .line 561
    aput-object v22, v9, v21

    .line 563
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 566
    move-result-object v22

    .line 567
    const/16 v20, 0x3

    .line 569
    aput-object v22, v9, v20

    .line 571
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 574
    move-result-object v22

    .line 575
    const/16 v19, 0x4

    .line 577
    aput-object v22, v9, v19

    .line 579
    invoke-static {v15, v10, v9}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 582
    if-lez v8, :cond_14

    .line 584
    if-lez v13, :cond_14

    .line 586
    const/16 v9, 0x1f4

    .line 588
    if-le v13, v9, :cond_d

    .line 590
    const/16 v13, 0x1f4

    .line 592
    :cond_d
    if-lez v14, :cond_f

    .line 594
    :try_start_13
    sget v9, Li6;->s:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 596
    if-lez v9, :cond_f

    .line 598
    if-lez v7, :cond_e

    .line 600
    move v13, v7

    .line 601
    goto :goto_4

    .line 602
    :cond_e
    const/16 v7, 0x7d0

    .line 604
    const/16 v13, 0x7d0

    .line 606
    :cond_f
    :goto_4
    :try_start_14
    sput v5, Li6;->u:I

    .line 608
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 611
    move-result-wide v9
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 612
    sub-long/2addr v9, v11

    .line 613
    move v7, v6

    .line 614
    int-to-long v5, v13

    .line 615
    cmp-long v22, v9, v5

    .line 617
    if-gtz v22, :cond_12

    .line 619
    :try_start_15
    sget-boolean v5, Li6;->m:Z

    .line 621
    if-eqz v5, :cond_10

    .line 623
    const-string v6, "[Audio] AutoTTSPlayer"

    .line 625
    const-string v9, "do ttsShakeDelayBeforePlay compoud end;mIsCompoudEnd:{?}"

    .line 627
    new-array v10, v4, [Ljava/lang/Object;

    .line 629
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 632
    move-result-object v5

    .line 633
    const/4 v15, 0x0

    .line 634
    aput-object v5, v10, v15

    .line 636
    invoke-static {v6, v9, v10}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    const/4 v5, 0x2

    .line 640
    sput v5, Li6;->u:I

    .line 642
    goto :goto_6

    .line 643
    :cond_10
    if-lez v14, :cond_11

    .line 645
    sget v5, Li6;->s:I

    .line 647
    if-lez v5, :cond_11

    .line 649
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->nativeGetTtsCacheBufferSize()I

    .line 652
    move-result v5

    .line 653
    sget v6, Li6;->s:I

    .line 655
    if-lt v5, v6, :cond_11

    .line 657
    const-string v5, "[Audio] AutoTTSPlayer"

    .line 659
    const-string v9, "do ttsShakeDelayBeforePlay over standardCache;mTtsStandardCacheSize:{?}"

    .line 661
    new-array v10, v4, [Ljava/lang/Object;

    .line 663
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 666
    move-result-object v6

    .line 667
    const/4 v15, 0x0

    .line 668
    aput-object v6, v10, v15

    .line 670
    invoke-static {v5, v9, v10}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    const/4 v5, 0x3

    .line 674
    sput v5, Li6;->u:I

    .line 676
    goto :goto_6

    .line 677
    :cond_11
    const/4 v5, 0x3

    .line 678
    const-wide/16 v9, 0xa

    .line 680
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 683
    move v6, v7

    .line 684
    const/4 v5, 0x0

    .line 685
    goto :goto_5

    .line 686
    :cond_12
    :goto_6
    invoke-static {}, Li6;->a()V

    .line 689
    if-lez v14, :cond_13

    .line 691
    sget v5, Li6;->s:I

    .line 693
    if-nez v5, :cond_13

    .line 695
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->nativeGetTtsCacheBufferSize()I

    .line 698
    move-result v5

    .line 699
    if-ltz v5, :cond_13

    .line 701
    sput v5, Li6;->s:I

    .line 703
    sput v5, Li6;->t:I

    .line 705
    :cond_13
    const-string v5, "[Audio] AutoTTSPlayer"

    .line 707
    const-string v6, "do ttsShakeDelayBeforePlay end TtsStandardCacheSize:{?}"

    .line 709
    new-array v9, v4, [Ljava/lang/Object;

    .line 711
    sget v10, Li6;->s:I

    .line 713
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 716
    move-result-object v10

    .line 717
    const/4 v14, 0x0

    .line 718
    aput-object v10, v9, v14

    .line 720
    invoke-static {v5, v6, v9}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    goto :goto_7

    .line 724
    :cond_14
    move v7, v6

    .line 725
    :goto_7
    invoke-static {}, Lh6;->c()Lh6;

    .line 728
    move-result-object v5

    .line 729
    invoke-static {}, Li6;->f()Li6$b;

    .line 732
    move-result-object v6

    .line 733
    iget-object v6, v6, Li6$b;->g:Ljava/lang/String;

    .line 735
    invoke-virtual {v5, v6, v13}, Lh6;->g(Ljava/lang/String;I)V

    .line 738
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 741
    move-result-wide v5

    .line 742
    sub-long/2addr v5, v11

    .line 743
    iget-object v9, v1, Ldb;->n:Lg6;

    .line 745
    invoke-virtual {v9, v5, v6}, Lg6;->b(J)V

    .line 748
    sget-object v9, Li6;->v:Ljava/util/ArrayList;

    .line 750
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 753
    move-result-object v10

    .line 754
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    sget-wide v9, Li6;->B:J

    .line 759
    sub-long v9, v5, v9

    .line 761
    sput-wide v9, Li6;->C:J

    .line 763
    const-string v9, "[Audio] AutoTTSPlayer"

    .line 765
    const-string v10, "do ttsShakeDelayBeforePlay end compoudTime:{?}ms;ttsShakeDelay:{?}"

    .line 767
    const/4 v11, 0x2

    .line 768
    new-array v11, v11, [Ljava/lang/Object;

    .line 770
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 773
    move-result-object v12

    .line 774
    const/4 v14, 0x0

    .line 775
    aput-object v12, v11, v14

    .line 777
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 780
    move-result-object v12

    .line 781
    aput-object v12, v11, v4

    .line 783
    invoke-static {v9, v10, v11}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 786
    sget v9, Li6;->u:I

    .line 788
    if-gtz v9, :cond_16

    .line 790
    int-to-long v9, v13

    .line 791
    cmp-long v11, v5, v9

    .line 793
    if-lez v11, :cond_16

    .line 795
    sput v4, Li6;->u:I

    .line 797
    goto :goto_8

    .line 798
    :cond_15
    move v7, v6

    .line 799
    const/4 v8, 0x0

    .line 800
    :cond_16
    :goto_8
    iget-object v5, v1, Ldb;->f:Landroid/media/AudioTrack;

    .line 802
    if-nez v5, :cond_18

    .line 804
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 806
    const-string v3, " end writePcm by null == mAudio"

    .line 808
    const/4 v5, 0x0

    .line 809
    new-array v6, v5, [Ljava/lang/Object;

    .line 811
    invoke-static {v2, v3, v6}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 814
    if-eqz v7, :cond_17

    .line 816
    :try_start_16
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 818
    const-string v3, " writePcm [stop_TTS] stop by play Finish"

    .line 820
    new-array v4, v5, [Ljava/lang/Object;

    .line 822
    invoke-static {v2, v3, v4}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 828
    move-result-wide v2

    .line 829
    invoke-virtual {v1, v5}, Ldb;->x(Z)V

    .line 832
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 835
    move-result-wide v4

    .line 836
    sub-long/2addr v4, v2

    .line 837
    sput-wide v4, Li6;->J:J

    .line 839
    invoke-virtual/range {p0 .. p0}, Ldb;->s()V

    .line 842
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 845
    move-result-wide v2

    .line 846
    const-wide/16 v4, 0x0

    .line 848
    sub-long/2addr v2, v4

    .line 849
    sput-wide v2, Li6;->K:J

    .line 851
    invoke-virtual/range {p0 .. p0}, Ldb;->z()V

    .line 854
    sget-wide v2, Li6;->F:J

    .line 856
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 859
    move-result-wide v4

    .line 860
    sget-wide v6, Ldb;->x:J

    .line 862
    sub-long/2addr v4, v6

    .line 863
    add-long/2addr v2, v4

    .line 864
    sput-wide v2, Li6;->F:J

    .line 866
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 868
    const-string v3, " [End] writePcm isPlayEnd"

    .line 870
    const/4 v4, 0x0

    .line 871
    new-array v4, v4, [Ljava/lang/Object;

    .line 873
    invoke-static {v2, v3, v4}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    const-string v2, "end text play"

    .line 878
    const v3, 0xbfb044c

    .line 881
    invoke-static {v3, v2}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    .line 884
    iget-object v2, v1, Ldb;->n:Lg6;

    .line 886
    invoke-virtual {v2}, Lg6;->i()V

    .line 889
    const-wide/16 v2, 0x0

    .line 891
    sput-wide v2, Li6;->D:J

    .line 893
    sput-wide v2, Li6;->B:J

    .line 895
    sput-wide v2, Li6;->C:J

    .line 897
    sput-wide v2, Li6;->E:J

    .line 899
    sput-wide v2, Li6;->F:J

    .line 901
    sput-wide v2, Li6;->G:J

    .line 903
    sput-wide v2, Ldb;->x:J

    .line 905
    sput-wide v2, Li6;->H:J

    .line 907
    sput-wide v2, Li6;->I:J

    .line 909
    sput-wide v2, Li6;->J:J

    .line 911
    sput-wide v2, Li6;->K:J

    .line 913
    goto :goto_9

    .line 914
    :cond_17
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 916
    const-string v3, " [End] writePcm by finally"

    .line 918
    const/4 v4, 0x0

    .line 919
    new-array v4, v4, [Ljava/lang/Object;

    .line 921
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 924
    sget-wide v2, Li6;->F:J

    .line 926
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 929
    move-result-wide v4

    .line 930
    sget-wide v6, Ldb;->x:J

    .line 932
    sub-long/2addr v4, v6

    .line 933
    add-long/2addr v2, v4

    .line 934
    sput-wide v2, Li6;->F:J
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 936
    :goto_9
    monitor-exit p0

    .line 937
    return-void

    .line 938
    :cond_18
    if-nez v7, :cond_1a

    .line 940
    :try_start_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 943
    move-result-wide v5

    .line 944
    iget-object v9, v1, Ldb;->f:Landroid/media/AudioTrack;

    .line 946
    iget-object v10, v1, Ldb;->d:Ljava/nio/ByteBuffer;

    .line 948
    invoke-virtual {v1, v9, v10, v2, v8}, Ldb;->A(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;II)I

    .line 951
    move-result v2

    .line 952
    iget-object v8, v1, Ldb;->n:Lg6;

    .line 954
    invoke-virtual {v8}, Lg6;->e()V

    .line 957
    iget v8, v1, Ldb;->b:I

    .line 959
    if-eq v2, v8, :cond_19

    .line 961
    if-gez v2, :cond_19

    .line 963
    const-string v8, "[Audio] AutoTTSPlayer"

    .line 965
    new-instance v9, Ljava/lang/StringBuilder;

    .line 967
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 970
    const-string v10, "AudioTrack.write failed: "

    .line 972
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 981
    move-result-object v2

    .line 982
    const/4 v9, 0x0

    .line 983
    new-array v10, v9, [Ljava/lang/Object;

    .line 985
    invoke-static {v8, v2, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 988
    :cond_19
    iget-object v2, v1, Ldb;->d:Ljava/nio/ByteBuffer;

    .line 990
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 993
    sget-wide v8, Li6;->D:J

    .line 995
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 998
    move-result-wide v10

    .line 999
    sub-long/2addr v10, v5

    .line 1000
    add-long/2addr v8, v10

    .line 1001
    sput-wide v8, Li6;->D:J

    .line 1003
    :cond_1a
    iget-object v2, v1, Ldb;->f:Landroid/media/AudioTrack;

    .line 1005
    if-eqz v2, :cond_1c

    .line 1007
    if-eqz v7, :cond_1c

    .line 1009
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1012
    move-result-wide v5

    .line 1013
    iget v2, v3, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->ttsDelayAfterPlay:I

    .line 1015
    if-lez v2, :cond_1b

    .line 1017
    iget v3, v1, Ldb;->l:I

    .line 1019
    mul-int v3, v3, v2

    .line 1021
    new-array v3, v3, [B

    .line 1023
    iput-object v3, v1, Ldb;->i:[B

    .line 1025
    iget-object v3, v1, Ldb;->f:Landroid/media/AudioTrack;

    .line 1027
    iget-object v8, v1, Ldb;->i:[B

    .line 1029
    array-length v9, v8

    .line 1030
    const/4 v10, 0x0

    .line 1031
    invoke-virtual {v3, v8, v10, v9}, Landroid/media/AudioTrack;->write([BII)I

    .line 1034
    const-string v3, "[Audio] AutoTTSPlayer"

    .line 1036
    const-string v8, "do write ttsDelayAfterPlay delayTime:{?}ms"

    .line 1038
    new-array v9, v4, [Ljava/lang/Object;

    .line 1040
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1043
    move-result-object v2

    .line 1044
    aput-object v2, v9, v10

    .line 1046
    invoke-static {v3, v8, v9}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1049
    :cond_1b
    iget-object v2, v1, Ldb;->f:Landroid/media/AudioTrack;

    .line 1051
    iget-object v3, v1, Ldb;->e:[B

    .line 1053
    array-length v8, v3

    .line 1054
    const/4 v9, 0x0

    .line 1055
    invoke-virtual {v2, v3, v9, v8}, Landroid/media/AudioTrack;->write([BII)I

    .line 1058
    move-result v2

    .line 1059
    iget v3, v1, Ldb;->m:I

    .line 1061
    add-int/2addr v3, v2

    .line 1062
    iput v3, v1, Ldb;->m:I

    .line 1064
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 1066
    const-string v3, "do write EmptyDataAfter emptyBytes[{?} ]"

    .line 1068
    new-array v8, v4, [Ljava/lang/Object;

    .line 1070
    iget-object v9, v1, Ldb;->e:[B

    .line 1072
    array-length v9, v9

    .line 1073
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1076
    move-result-object v9

    .line 1077
    const/4 v10, 0x0

    .line 1078
    aput-object v9, v8, v10

    .line 1080
    invoke-static {v2, v3, v8}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1083
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1086
    move-result-wide v2

    .line 1087
    sub-long/2addr v2, v5

    .line 1088
    sput-wide v2, Li6;->E:J

    .line 1090
    :cond_1c
    const/4 v5, 0x0

    .line 1091
    goto :goto_a

    .line 1092
    :cond_1d
    move v7, v6

    .line 1093
    const-string v2, "AudioTrack instance is null after init"

    .line 1095
    const v3, 0xbfb17ca

    .line 1098
    invoke-static {v3, v2}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    .line 1101
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 1103
    const-string v3, "playPcmSegmented after init Audio is null"

    .line 1105
    const/4 v5, 0x0

    .line 1106
    new-array v6, v5, [Ljava/lang/Object;

    .line 1108
    invoke-static {v2, v3, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 1111
    :goto_a
    if-eqz v7, :cond_1e

    .line 1113
    :try_start_18
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 1115
    const-string v3, " writePcm [stop_TTS] stop by play Finish"

    .line 1117
    new-array v4, v5, [Ljava/lang/Object;

    .line 1119
    invoke-static {v2, v3, v4}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1125
    move-result-wide v2

    .line 1126
    invoke-virtual {v1, v5}, Ldb;->x(Z)V

    .line 1129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1132
    move-result-wide v4

    .line 1133
    sub-long/2addr v4, v2

    .line 1134
    sput-wide v4, Li6;->J:J

    .line 1136
    invoke-virtual/range {p0 .. p0}, Ldb;->s()V

    .line 1139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1142
    move-result-wide v2

    .line 1143
    const-wide/16 v4, 0x0

    .line 1145
    sub-long/2addr v2, v4

    .line 1146
    sput-wide v2, Li6;->K:J

    .line 1148
    invoke-virtual/range {p0 .. p0}, Ldb;->z()V

    .line 1151
    sget-wide v2, Li6;->F:J

    .line 1153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1156
    move-result-wide v4

    .line 1157
    sget-wide v6, Ldb;->x:J

    .line 1159
    sub-long/2addr v4, v6

    .line 1160
    add-long/2addr v2, v4

    .line 1161
    sput-wide v2, Li6;->F:J

    .line 1163
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 1165
    const-string v3, " [End] writePcm isPlayEnd"

    .line 1167
    const/4 v4, 0x0

    .line 1168
    new-array v4, v4, [Ljava/lang/Object;

    .line 1170
    invoke-static {v2, v3, v4}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1173
    const-string v2, "end text play"

    .line 1175
    const v3, 0xbfb044c

    .line 1178
    invoke-static {v3, v2}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    .line 1181
    iget-object v2, v1, Ldb;->n:Lg6;

    .line 1183
    invoke-virtual {v2}, Lg6;->i()V

    .line 1186
    const-wide/16 v2, 0x0

    .line 1188
    sput-wide v2, Li6;->D:J

    .line 1190
    sput-wide v2, Li6;->B:J

    .line 1192
    sput-wide v2, Li6;->C:J

    .line 1194
    sput-wide v2, Li6;->E:J

    .line 1196
    sput-wide v2, Li6;->F:J

    .line 1198
    sput-wide v2, Li6;->G:J

    .line 1200
    sput-wide v2, Ldb;->x:J

    .line 1202
    sput-wide v2, Li6;->H:J

    .line 1204
    sput-wide v2, Li6;->I:J

    .line 1206
    sput-wide v2, Li6;->J:J

    .line 1208
    :goto_b
    sput-wide v2, Li6;->K:J

    .line 1210
    goto/16 :goto_11

    .line 1212
    :cond_1e
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 1214
    const-string v3, " [End] writePcm by finally"

    .line 1216
    const/4 v4, 0x0

    .line 1217
    new-array v4, v4, [Ljava/lang/Object;

    .line 1219
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1222
    sget-wide v2, Li6;->F:J

    .line 1224
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1227
    move-result-wide v4

    .line 1228
    sget-wide v6, Ldb;->x:J

    .line 1230
    :goto_c
    sub-long/2addr v4, v6

    .line 1231
    add-long/2addr v2, v4

    .line 1232
    sput-wide v2, Li6;->F:J
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 1234
    goto/16 :goto_11

    .line 1236
    :catchall_1
    move-exception v0

    .line 1237
    goto :goto_d

    .line 1238
    :catchall_2
    move-exception v0

    .line 1239
    move v7, v6

    .line 1240
    :goto_d
    move-object v2, v0

    .line 1241
    :goto_e
    :try_start_19
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1244
    move-result-object v3

    .line 1245
    const v5, 0xbfb17cb

    .line 1248
    invoke-static {v5, v3}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    .line 1251
    const-string v3, "[Audio] AutoTTSPlayer"

    .line 1253
    const-string v5, "playPcmSegmented:"

    .line 1255
    const/4 v6, 0x0

    .line 1256
    new-array v8, v6, [Ljava/lang/Object;

    .line 1258
    invoke-static {v3, v5, v2, v8}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1261
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1264
    move-result-object v3

    .line 1265
    const/16 v5, 0xa

    .line 1267
    invoke-static {v5, v3}, Li6;->t(ILjava/lang/String;)V

    .line 1270
    const/4 v3, 0x4

    .line 1271
    invoke-static {v3}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->notifyPlayStateChange(I)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 1274
    const/4 v3, 0x0

    .line 1275
    :try_start_1a
    iget-object v5, v1, Ldb;->g:Ljava/lang/Object;

    .line 1277
    monitor-enter v5
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 1278
    :try_start_1b
    iget-object v6, v1, Ldb;->f:Landroid/media/AudioTrack;

    .line 1280
    if-eqz v6, :cond_1f

    .line 1282
    iget-object v6, v1, Ldb;->f:Landroid/media/AudioTrack;

    .line 1284
    invoke-virtual {v6}, Landroid/media/AudioTrack;->release()V

    .line 1287
    iput-object v3, v1, Ldb;->f:Landroid/media/AudioTrack;

    .line 1289
    :cond_1f
    monitor-exit v5
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 1290
    :try_start_1c
    const-string v5, "[TTS]exception release AudioTrack"

    .line 1292
    invoke-static {v5}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeTurboDumpLogd(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 1295
    :try_start_1d
    iput-object v3, v1, Ldb;->f:Landroid/media/AudioTrack;

    .line 1297
    :goto_f
    iput-boolean v4, v1, Ldb;->h:Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    .line 1299
    goto :goto_10

    .line 1300
    :catchall_3
    move-exception v0

    .line 1301
    move-object v6, v0

    .line 1302
    :try_start_1e
    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    .line 1303
    :try_start_1f
    throw v6
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    .line 1304
    :catchall_4
    move-exception v0

    .line 1305
    move-object v2, v0

    .line 1306
    goto/16 :goto_12

    .line 1308
    :catch_0
    :try_start_20
    const-string v5, "[Audio] AutoTTSPlayer"

    .line 1310
    const-string v6, "playPcmSegmented:"

    .line 1312
    const/4 v8, 0x0

    .line 1313
    new-array v9, v8, [Ljava/lang/Object;

    .line 1315
    invoke-static {v5, v6, v2, v9}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    .line 1318
    :try_start_21
    iput-object v3, v1, Ldb;->f:Landroid/media/AudioTrack;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    .line 1320
    goto :goto_f

    .line 1321
    :goto_10
    if-eqz v7, :cond_20

    .line 1323
    :try_start_22
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 1325
    const-string v3, " writePcm [stop_TTS] stop by play Finish"

    .line 1327
    const/4 v4, 0x0

    .line 1328
    new-array v5, v4, [Ljava/lang/Object;

    .line 1330
    invoke-static {v2, v3, v5}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1333
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1336
    move-result-wide v2

    .line 1337
    invoke-virtual {v1, v4}, Ldb;->x(Z)V

    .line 1340
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1343
    move-result-wide v4

    .line 1344
    sub-long/2addr v4, v2

    .line 1345
    sput-wide v4, Li6;->J:J

    .line 1347
    invoke-virtual/range {p0 .. p0}, Ldb;->s()V

    .line 1350
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1353
    move-result-wide v2

    .line 1354
    const-wide/16 v4, 0x0

    .line 1356
    sub-long/2addr v2, v4

    .line 1357
    sput-wide v2, Li6;->K:J

    .line 1359
    invoke-virtual/range {p0 .. p0}, Ldb;->z()V

    .line 1362
    sget-wide v2, Li6;->F:J

    .line 1364
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1367
    move-result-wide v4

    .line 1368
    sget-wide v6, Ldb;->x:J

    .line 1370
    sub-long/2addr v4, v6

    .line 1371
    add-long/2addr v2, v4

    .line 1372
    sput-wide v2, Li6;->F:J

    .line 1374
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 1376
    const-string v3, " [End] writePcm isPlayEnd"

    .line 1378
    const/4 v4, 0x0

    .line 1379
    new-array v4, v4, [Ljava/lang/Object;

    .line 1381
    invoke-static {v2, v3, v4}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1384
    const-string v2, "end text play"

    .line 1386
    const v3, 0xbfb044c

    .line 1389
    invoke-static {v3, v2}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    .line 1392
    iget-object v2, v1, Ldb;->n:Lg6;

    .line 1394
    invoke-virtual {v2}, Lg6;->i()V

    .line 1397
    const-wide/16 v2, 0x0

    .line 1399
    sput-wide v2, Li6;->D:J

    .line 1401
    sput-wide v2, Li6;->B:J

    .line 1403
    sput-wide v2, Li6;->C:J

    .line 1405
    sput-wide v2, Li6;->E:J

    .line 1407
    sput-wide v2, Li6;->F:J

    .line 1409
    sput-wide v2, Li6;->G:J

    .line 1411
    sput-wide v2, Ldb;->x:J

    .line 1413
    sput-wide v2, Li6;->H:J

    .line 1415
    sput-wide v2, Li6;->I:J

    .line 1417
    sput-wide v2, Li6;->J:J

    .line 1419
    goto/16 :goto_b

    .line 1421
    :cond_20
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 1423
    const-string v3, " [End] writePcm by finally"

    .line 1425
    const/4 v4, 0x0

    .line 1426
    new-array v4, v4, [Ljava/lang/Object;

    .line 1428
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1431
    sget-wide v2, Li6;->F:J

    .line 1433
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1436
    move-result-wide v4

    .line 1437
    sget-wide v6, Ldb;->x:J
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    .line 1439
    goto/16 :goto_c

    .line 1441
    :goto_11
    monitor-exit p0

    .line 1442
    return-void

    .line 1443
    :goto_12
    :try_start_23
    iput-object v3, v1, Ldb;->f:Landroid/media/AudioTrack;

    .line 1445
    iput-boolean v4, v1, Ldb;->h:Z

    .line 1447
    throw v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    .line 1448
    :catchall_5
    move-exception v0

    .line 1449
    move-object v2, v0

    .line 1450
    if-eqz v7, :cond_21

    .line 1452
    :try_start_24
    const-string v3, "[Audio] AutoTTSPlayer"

    .line 1454
    const-string v4, " writePcm [stop_TTS] stop by play Finish"

    .line 1456
    const/4 v5, 0x0

    .line 1457
    new-array v6, v5, [Ljava/lang/Object;

    .line 1459
    invoke-static {v3, v4, v6}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1462
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1465
    move-result-wide v3

    .line 1466
    invoke-virtual {v1, v5}, Ldb;->x(Z)V

    .line 1469
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1472
    move-result-wide v5

    .line 1473
    sub-long/2addr v5, v3

    .line 1474
    sput-wide v5, Li6;->J:J

    .line 1476
    invoke-virtual/range {p0 .. p0}, Ldb;->s()V

    .line 1479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1482
    move-result-wide v3

    .line 1483
    const-wide/16 v5, 0x0

    .line 1485
    sub-long/2addr v3, v5

    .line 1486
    sput-wide v3, Li6;->K:J

    .line 1488
    invoke-virtual/range {p0 .. p0}, Ldb;->z()V

    .line 1491
    sget-wide v3, Li6;->F:J

    .line 1493
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1496
    move-result-wide v5

    .line 1497
    sget-wide v7, Ldb;->x:J

    .line 1499
    sub-long/2addr v5, v7

    .line 1500
    add-long/2addr v3, v5

    .line 1501
    sput-wide v3, Li6;->F:J

    .line 1503
    const-string v3, "[Audio] AutoTTSPlayer"

    .line 1505
    const-string v4, " [End] writePcm isPlayEnd"

    .line 1507
    const/4 v5, 0x0

    .line 1508
    new-array v5, v5, [Ljava/lang/Object;

    .line 1510
    invoke-static {v3, v4, v5}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1513
    const-string v3, "end text play"

    .line 1515
    const v4, 0xbfb044c

    .line 1518
    invoke-static {v4, v3}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    .line 1521
    iget-object v3, v1, Ldb;->n:Lg6;

    .line 1523
    invoke-virtual {v3}, Lg6;->i()V

    .line 1526
    const-wide/16 v3, 0x0

    .line 1528
    sput-wide v3, Li6;->D:J

    .line 1530
    sput-wide v3, Li6;->B:J

    .line 1532
    sput-wide v3, Li6;->C:J

    .line 1534
    sput-wide v3, Li6;->E:J

    .line 1536
    sput-wide v3, Li6;->F:J

    .line 1538
    sput-wide v3, Li6;->G:J

    .line 1540
    sput-wide v3, Ldb;->x:J

    .line 1542
    sput-wide v3, Li6;->H:J

    .line 1544
    sput-wide v3, Li6;->I:J

    .line 1546
    sput-wide v3, Li6;->J:J

    .line 1548
    sput-wide v3, Li6;->K:J

    .line 1550
    goto :goto_13

    .line 1551
    :cond_21
    const-string v3, "[Audio] AutoTTSPlayer"

    .line 1553
    const-string v4, " [End] writePcm by finally"

    .line 1555
    const/4 v5, 0x0

    .line 1556
    new-array v5, v5, [Ljava/lang/Object;

    .line 1558
    invoke-static {v3, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1561
    sget-wide v3, Li6;->F:J

    .line 1563
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1566
    move-result-wide v5

    .line 1567
    sget-wide v7, Ldb;->x:J

    .line 1569
    sub-long/2addr v5, v7

    .line 1570
    add-long/2addr v3, v5

    .line 1571
    sput-wide v3, Li6;->F:J

    .line 1573
    :goto_13
    throw v2

    .line 1574
    :cond_22
    const-string v2, "mWriteDateSize is out of byteBuffer.remaining"

    .line 1576
    const v3, 0xbfb17c8

    .line 1579
    invoke-static {v3, v2}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    .line 1582
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 1584
    const-string v3, "end writePcm by byteBuffer.remaining size"

    .line 1586
    const/4 v4, 0x0

    .line 1587
    new-array v4, v4, [Ljava/lang/Object;

    .line 1589
    invoke-static {v2, v3, v4}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    .line 1592
    monitor-exit p0

    .line 1593
    return-void

    .line 1594
    :catchall_6
    move-exception v0

    .line 1595
    move-object v2, v0

    .line 1596
    monitor-exit p0

    .line 1597
    throw v2
.end method

.method public b()I
    .locals 6

    .line 1
    iget-object v0, p0, Ldb;->g:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 11
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    .line 14
    move-result v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const-string v0, "[Audio] AutoTTSPlayer"

    .line 20
    const-string v3, "getPlayState :{?}"

    .line 22
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v5

    .line 29
    aput-object v5, v2, v4

    .line 31
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    return v1

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw v1
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->abandomFocusSystem()V

    .line 4
    const/4 v0, 0x1

    .line 5
    return v0
.end method

.method public final l()V
    .locals 7

    .line 1
    const-string v0, "[Audio] AutoTTSPlayer"

    .line 3
    const-string v1, "cancelThreadPool"

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Ldb;->t:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    monitor-enter v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    const-string v3, "[Audio] AutoTTSPlayer"

    .line 17
    const-string v4, "start synchronized cancelThreadPool"

    .line 19
    new-array v5, v2, [Ljava/lang/Object;

    .line 21
    invoke-static {v3, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v3, p0, Ldb;->v:Ljava/util/concurrent/ScheduledFuture;

    .line 26
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    iput-object v1, p0, Ldb;->v:Ljava/util/concurrent/ScheduledFuture;

    .line 31
    const-string v1, "[Audio] AutoTTSPlayer"

    .line 33
    const-string v3, "end synchronized cancelThreadPool"

    .line 35
    new-array v2, v2, [Ljava/lang/Object;

    .line 37
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v3

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception v3

    .line 44
    :try_start_2
    const-string v4, "[Audio] AutoTTSPlayer"

    .line 46
    const-string v5, "cancelThreadPool"

    .line 48
    const/4 v6, 0x1

    .line 49
    new-array v6, v6, [Ljava/lang/Object;

    .line 51
    aput-object v3, v6, v2

    .line 53
    invoke-static {v4, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :try_start_3
    iput-object v1, p0, Ldb;->v:Ljava/util/concurrent/ScheduledFuture;

    .line 58
    const-string v1, "[Audio] AutoTTSPlayer"

    .line 60
    const-string v3, "end synchronized cancelThreadPool"

    .line 62
    new-array v2, v2, [Ljava/lang/Object;

    .line 64
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :goto_0
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :goto_1
    iput-object v1, p0, Ldb;->v:Ljava/util/concurrent/ScheduledFuture;

    .line 71
    const-string v1, "[Audio] AutoTTSPlayer"

    .line 73
    const-string v4, "end synchronized cancelThreadPool"

    .line 75
    new-array v2, v2, [Ljava/lang/Object;

    .line 77
    invoke-static {v1, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    throw v3

    .line 81
    :catchall_1
    move-exception v1

    .line 82
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    throw v1
.end method

.method public final m()V
    .locals 6

    .line 1
    const-string v0, "[Audio] AutoTTSPlayer"

    .line 3
    const-string v1, "fadeOutStep mAudio:{?} mAudioTrackVolume:{?}"

    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 13
    iget v3, p0, Ldb;->r:F

    .line 15
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    move-result-object v3

    .line 19
    const/4 v5, 0x1

    .line 20
    aput-object v3, v2, v5

    .line 22
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :try_start_0
    iget-object v0, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 27
    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Ldb;->g:Ljava/lang/Object;

    .line 31
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :try_start_1
    iget-object v1, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 34
    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 38
    iget v2, p0, Ldb;->r:F

    .line 40
    invoke-virtual {v1, v2, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 43
    :cond_0
    monitor-exit v0

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :try_start_2
    throw v1

    .line 48
    :cond_1
    invoke-virtual {p0}, Ldb;->l()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v1, "[Audio] AutoTTSPlayer"

    .line 55
    const-string v2, "[fadeOutStep]"

    .line 57
    new-array v3, v5, [Ljava/lang/Object;

    .line 59
    aput-object v0, v3, v4

    .line 61
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void
.end method

.method public n(J)I
    .locals 1

    .line 1
    iget v0, p0, Ldb;->c:I

    .line 3
    invoke-virtual {p0, p1, p2}, Ldb;->p(J)I

    .line 6
    move-result p1

    .line 7
    sub-int/2addr v0, p1

    .line 8
    return v0
.end method

.method public o(I)Ljava/nio/ByteBuffer;
    .locals 6

    .line 1
    iput p1, p0, Ldb;->a:I

    .line 3
    const/4 v0, 0x2

    .line 4
    mul-int/lit8 p1, p1, 0x2

    .line 6
    div-int/lit16 p1, p1, 0x3e8

    .line 8
    iput p1, p0, Ldb;->l:I

    .line 10
    invoke-static {}, Lo6;->j()Lo6;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 17
    move-result-object p1

    .line 18
    iget p1, p1, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioTrackBuffersize:I

    .line 20
    iget v1, p0, Ldb;->a:I

    .line 22
    invoke-static {v1, v0, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    if-lez p1, :cond_0

    .line 29
    iput p1, p0, Ldb;->c:I

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    if-ge v1, v2, :cond_1

    .line 34
    const/16 v3, 0x1400

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v3, v1

    .line 38
    :goto_0
    iput v3, p0, Ldb;->c:I

    .line 40
    :goto_1
    iget v3, p0, Ldb;->c:I

    .line 42
    mul-int/lit8 v3, v3, 0x2

    .line 44
    iput v3, p0, Ldb;->b:I

    .line 46
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 49
    move-result-object v3

    .line 50
    iput-object v3, p0, Ldb;->d:Ljava/nio/ByteBuffer;

    .line 52
    iget v3, p0, Ldb;->b:I

    .line 54
    new-array v3, v3, [B

    .line 56
    iput-object v3, p0, Ldb;->e:[B

    .line 58
    const/4 v3, 0x5

    .line 59
    new-array v3, v3, [Ljava/lang/Object;

    .line 61
    iget v4, p0, Ldb;->a:I

    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v4

    .line 67
    const/4 v5, 0x0

    .line 68
    aput-object v4, v3, v5

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object p1

    .line 74
    aput-object p1, v3, v2

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object p1

    .line 80
    aput-object p1, v3, v0

    .line 82
    iget p1, p0, Ldb;->c:I

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object p1

    .line 88
    const/4 v0, 0x3

    .line 89
    aput-object p1, v3, v0

    .line 91
    iget-object p1, p0, Ldb;->d:Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 96
    move-result p1

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object p1

    .line 101
    const/4 v0, 0x4

    .line 102
    aput-object p1, v3, v0

    .line 104
    const-string p1, "[Audio] AutoTTSPlayer"

    .line 106
    const-string v0, "getCacheBuffer:mSampleRate={?}, configBufSize={?},getMinBufSize={?},miniBufSize={?},byteBuffer.capacity={?}"

    .line 108
    invoke-static {p1, v0, v3}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object p1, p0, Ldb;->d:Ljava/nio/ByteBuffer;

    .line 113
    return-object p1
.end method

.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 4

    .line 1
    iget-object p1, p0, Ldb;->g:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Ldb;->n:Lg6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    :try_start_1
    iget-object v0, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 14
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x3

    .line 19
    if-ne v0, v1, :cond_0

    .line 21
    iget-object v0, p0, Ldb;->n:Lg6;

    .line 23
    iget-object v1, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 25
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1}, Lg6;->h(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    :try_start_2
    const-string v1, "[Audio] AutoTTSPlayer"

    .line 36
    const-string v2, "onMarkerReached:"

    .line 38
    const/4 v3, 0x0

    .line 39
    new-array v3, v3, [Ljava/lang/Object;

    .line 41
    invoke-static {v1, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 44
    :cond_0
    :goto_0
    monitor-exit p1

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    throw v0
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 0

    .line 1
    return-void
.end method

.method public p(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x2

    .line 9
    int-to-long v0, v0

    .line 10
    sub-long/2addr p1, v0

    .line 11
    long-to-int p2, p1

    .line 12
    return p2
.end method

.method public q()I
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

.method public r()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 6
    const-string v3, "initAudioTrack"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    const-string v1, "init audioTrackBuffersize:{?}"

    .line 13
    const/4 v3, 0x1

    .line 14
    new-array v3, v3, [Ljava/lang/Object;

    .line 16
    iget v4, p0, Ldb;->c:I

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v4

    .line 22
    aput-object v4, v3, v0

    .line 24
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    new-instance v1, Lg6;

    .line 29
    iget v3, p0, Ldb;->c:I

    .line 31
    invoke-direct {v1, v3}, Lg6;-><init>(I)V

    .line 34
    iput-object v1, p0, Ldb;->n:Lg6;

    .line 36
    iget v3, p0, Ldb;->c:I

    .line 38
    invoke-virtual {v1, v3}, Lg6;->f(I)V

    .line 41
    invoke-virtual {p0}, Ldb;->q()I

    .line 44
    move-result v1

    .line 45
    iget v3, p0, Ldb;->a:I

    .line 47
    iget v4, p0, Ldb;->c:I

    .line 49
    const/4 v5, 0x2

    .line 50
    invoke-static {v0, v1, v3, v5, v4}, Lj6;->a(IIIII)Landroid/media/AudioTrack;

    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 56
    iget-object v1, p0, Ldb;->n:Lg6;

    .line 58
    invoke-virtual {v1}, Lg6;->e()V

    .line 61
    iput v0, p0, Ldb;->m:I

    .line 63
    iget-object v1, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 65
    invoke-virtual {v1, p0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 68
    const-string v1, "[TTS]init AudioTrack"

    .line 70
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeTurboDumpLogd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v1

    .line 75
    const/16 v3, 0x9

    .line 77
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    move-result-object v4

    .line 81
    invoke-static {v3, v4}, Li6;->t(ILjava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    invoke-static {v2, v3, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 93
    const/4 v0, 0x4

    .line 94
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->notifyPlayStateChange(I)V

    .line 97
    :goto_0
    invoke-static {}, Li6;->q()V

    .line 100
    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[Audio] AutoTTSPlayer"

    .line 6
    const-string v2, "release"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Ldb;->d()Z

    .line 14
    return-void
.end method

.method public t(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ldb;->k:Z

    .line 3
    return-void
.end method

.method public u(I)V
    .locals 0

    .line 1
    iput p1, p0, Ldb;->w:I

    .line 3
    return-void
.end method

.method public final v()V
    .locals 10

    .line 1
    const-string v0, "[Audio] AutoTTSPlayer"

    .line 3
    const-string v1, "startScheduleFadeOut startScheduleFadeOut"

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Ldb;->t:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    const-string v1, "[Audio] AutoTTSPlayer"

    .line 16
    const-string v3, "startScheduleFadeOut synchronized"

    .line 18
    new-array v4, v2, [Ljava/lang/Object;

    .line 20
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v1, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 25
    if-eqz v1, :cond_1

    .line 27
    iget-object v1, p0, Ldb;->v:Ljava/util/concurrent/ScheduledFuture;

    .line 29
    if-nez v1, :cond_1

    .line 31
    iget-boolean v1, p0, Ldb;->h:Z

    .line 33
    if-eqz v1, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v3, p0, Ldb;->t:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    iget-object v4, p0, Ldb;->u:Ljava/lang/Runnable;

    .line 40
    const-wide/16 v5, 0x0

    .line 42
    const-wide/16 v7, 0x14

    .line 44
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 49
    move-result-object v1

    .line 50
    iput-object v1, p0, Ldb;->v:Ljava/util/concurrent/ScheduledFuture;

    .line 52
    const-string v1, "[Audio] AutoTTSPlayer"

    .line 54
    const-string v3, "end synchronized startScheduleFadeOut"

    .line 56
    new-array v2, v2, [Ljava/lang/Object;

    .line 58
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :cond_1
    :goto_0
    const-string v1, "[Audio] AutoTTSPlayer"

    .line 65
    const-string v3, "end startScheduleFadeOut scheduledFuture no null"

    .line 67
    new-array v2, v2, [Ljava/lang/Object;

    .line 69
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->notifyPlayStateChange(I)V

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception v1

    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw v1
.end method

.method public w()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ldb;->x(Z)V

    .line 5
    return-void
.end method

.method public x(Z)V
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
    const-string v1, "[Audio] AutoTTSPlayer"

    .line 13
    const-string v2, "stop isNeedFaduout\uff1a{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p0}, Ldb;->v()V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Ldb;->y()V

    .line 27
    :goto_0
    return-void
.end method

.method public final y()V
    .locals 7

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Ldb;->r:F

    .line 5
    invoke-static {}, Lo6;->j()Lo6;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 12
    move-result-object v0

    .line 13
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedStopAudioTrack:Z

    .line 15
    const-string v1, "[Audio] AutoTTSPlayer"

    .line 17
    const-string v2, "stopAudioTrack isNeedStopAudioTrack:{?}"

    .line 19
    const/4 v3, 0x1

    .line 20
    new-array v4, v3, [Ljava/lang/Object;

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object v5

    .line 26
    const/4 v6, 0x0

    .line 27
    aput-object v5, v4, v6

    .line 29
    invoke-static {v1, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iput-boolean v3, p0, Ldb;->h:Z

    .line 34
    sget v1, Ldb;->y:I

    .line 36
    iput v1, p0, Ldb;->w:I

    .line 38
    invoke-static {}, Li6;->e()V

    .line 41
    monitor-enter p0

    .line 42
    const/4 v1, 0x0

    .line 43
    if-eqz v0, :cond_0

    .line 45
    :try_start_0
    iget-object v0, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 47
    if-eqz v0, :cond_0

    .line 49
    const-string v0, "[TTS]stop && release AudioTrack before"

    .line 51
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeTurboDumpLogd(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 56
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 59
    iget-object v0, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 61
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 64
    iget-object v0, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 66
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 69
    iget-object v0, p0, Ldb;->g:Ljava/lang/Object;

    .line 71
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    :try_start_1
    iget-object v2, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 74
    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 77
    iput-object v1, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 79
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :try_start_2
    const-string v0, "[Audio] AutoTTSPlayer"

    .line 82
    const-string v2, "stopAudioTrack mAudio = null"

    .line 84
    new-array v3, v6, [Ljava/lang/Object;

    .line 86
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    const-string v0, "[TTS]stop && release AudioTrack"

    .line 91
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeTurboDumpLogd(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception v2

    .line 96
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    goto :goto_1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    move-result-object v2

    .line 105
    const/16 v3, 0xa

    .line 107
    invoke-static {v3, v2}, Li6;->t(ILjava/lang/String;)V

    .line 110
    const-string v2, "[Audio] AutoTTSPlayer"

    .line 112
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    new-array v4, v6, [Ljava/lang/Object;

    .line 118
    invoke-static {v2, v3, v0, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 121
    :cond_0
    :goto_0
    :try_start_6
    iput-object v1, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 123
    goto :goto_2

    .line 124
    :goto_1
    iput-object v1, p0, Ldb;->f:Landroid/media/AudioTrack;

    .line 126
    throw v0

    .line 127
    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 128
    const/16 v0, 0xe

    .line 130
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->sendAutoStatus(I)V

    .line 133
    invoke-static {}, Li6;->o()V

    .line 136
    return-void

    .line 137
    :catchall_2
    move-exception v0

    .line 138
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 139
    throw v0
.end method

.method public final z()V
    .locals 2

    .line 1
    const/16 v0, 0x63

    .line 3
    const-string v1, ""

    .line 5
    invoke-static {v0, v1}, Li6;->t(ILjava/lang/String;)V

    .line 8
    return-void
.end method
