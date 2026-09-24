.class public Lcom/autonavi/amapauto/alink/H264Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;,
        Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;,
        Lcom/autonavi/amapauto/alink/H264Decoder$VideoFrame;,
        Lcom/autonavi/amapauto/alink/H264Decoder$HandlerParam;
    }
.end annotation


# static fields
.field private static final DECODER_H264:Ljava/lang/String; = "video/avc"

.field public static final MSG_DECODE:I = 0x88

.field private static final TAG:Ljava/lang/String; = "DecoderHandler"


# instance fields
.field private volatile mAddFrameOpen:Z

.field private mAvListener:Lcom/autonavi/amapauto/alink/IAlinkAVListener;

.field private mBufferinfo:Landroid/media/MediaCodec$BufferInfo;

.field private final mCondition:Ljava/util/concurrent/locks/Condition;

.field private mDecoder:Landroid/media/MediaCodec;

.field private mInputDecoderRunnable:Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;

.field private volatile mInputStart:Z

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private mOutputDecoderRunnable:Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;

.field private volatile mOutputStart:Z

.field private volatile mUninitDecoder:Z

.field private mVideoFrames:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/autonavi/amapauto/alink/H264Decoder$VideoFrame;",
            ">;"
        }
    .end annotation
.end field

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x356

    .line 6
    iput v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->videoWidth:I

    .line 8
    const/16 v0, 0x1e0

    .line 10
    iput v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->videoHeight:I

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    .line 14
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mVideoFrames:Ljava/util/LinkedList;

    .line 19
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mInputStart:Z

    .line 35
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mOutputStart:Z

    .line 38
    iput-boolean v1, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mUninitDecoder:Z

    .line 40
    iput-boolean v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mAddFrameOpen:Z

    .line 42
    return-void
.end method

.method public static synthetic access$000(Lcom/autonavi/amapauto/alink/H264Decoder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mInputStart:Z

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/autonavi/amapauto/alink/H264Decoder;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mVideoFrames:Ljava/util/LinkedList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/autonavi/amapauto/alink/H264Decoder;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/autonavi/amapauto/alink/H264Decoder;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/autonavi/amapauto/alink/H264Decoder;)Landroid/media/MediaCodec;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/autonavi/amapauto/alink/H264Decoder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mOutputStart:Z

    .line 3
    return p0
.end method

.method public static synthetic access$502(Lcom/autonavi/amapauto/alink/H264Decoder;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mOutputStart:Z

    .line 3
    return p1
.end method

.method public static synthetic access$600(Lcom/autonavi/amapauto/alink/H264Decoder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mUninitDecoder:Z

    .line 3
    return p0
.end method

.method public static synthetic access$700(Lcom/autonavi/amapauto/alink/H264Decoder;)Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mOutputDecoderRunnable:Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$702(Lcom/autonavi/amapauto/alink/H264Decoder;Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;)Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mOutputDecoderRunnable:Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;

    .line 3
    return-object p1
.end method

.method public static synthetic access$800(Lcom/autonavi/amapauto/alink/H264Decoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/alink/H264Decoder;->getDecodeData()V

    .line 4
    return-void
.end method

.method private getDecodeData()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    const-string v0, "DecoderHandler"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mBufferinfo:Landroid/media/MediaCodec$BufferInfo;

    .line 6
    if-nez v2, :cond_0

    .line 8
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    .line 10
    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 13
    iput-object v2, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mBufferinfo:Landroid/media/MediaCodec$BufferInfo;

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    .line 17
    if-nez v2, :cond_1

    .line 19
    const-string v2, "mDecoder is null!"

    .line 21
    new-array v3, v1, [Ljava/lang/Object;

    .line 23
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v3, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mBufferinfo:Landroid/media/MediaCodec$BufferInfo;

    .line 29
    const-wide/16 v4, -0x1

    .line 31
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 34
    move-result v2

    .line 35
    if-ltz v2, :cond_7

    .line 37
    const-string v3, "dequeueOutputBuffer indexOutputbuffer:{?} "

    .line 39
    const/4 v4, 0x1

    .line 40
    new-array v4, v4, [Ljava/lang/Object;

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v5

    .line 46
    aput-object v5, v4, v1

    .line 48
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    const/4 v3, -0x3

    .line 52
    if-eq v2, v3, :cond_6

    .line 54
    const/4 v3, -0x2

    .line 55
    if-eq v2, v3, :cond_5

    .line 57
    const/4 v3, -0x1

    .line 58
    if-eq v2, v3, :cond_4

    .line 60
    iget-object v3, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    .line 62
    invoke-virtual {v3, v2}, Landroid/media/MediaCodec;->getOutputImage(I)Landroid/media/Image;

    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_3

    .line 68
    iget-object v4, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mAvListener:Lcom/autonavi/amapauto/alink/IAlinkAVListener;

    .line 70
    if-eqz v4, :cond_2

    .line 72
    invoke-virtual {v3}, Landroid/media/Image;->getFormat()I

    .line 75
    move-result v4

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const-string v6, "dequeueOutputBuffer getFormat: "

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v4

    .line 93
    new-array v5, v1, [Ljava/lang/Object;

    .line 95
    invoke-static {v0, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v4, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mAvListener:Lcom/autonavi/amapauto/alink/IAlinkAVListener;

    .line 100
    invoke-interface {v4, v3}, Lcom/autonavi/amapauto/alink/IAlinkAVListener;->onAVDataReceived(Landroid/media/Image;)I

    .line 103
    :cond_2
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 106
    :cond_3
    iget-object v3, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    .line 108
    invoke-virtual {v3, v2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 111
    goto :goto_0

    .line 112
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    const-string v4, " try again later : "

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v2

    .line 129
    new-array v3, v1, [Ljava/lang/Object;

    .line 131
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    goto :goto_0

    .line 135
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    const-string v4, " format changed : "

    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v2

    .line 152
    new-array v3, v1, [Ljava/lang/Object;

    .line 154
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    goto :goto_0

    .line 158
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 160
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    const-string v4, " buffer changed : "

    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v2

    .line 175
    new-array v3, v1, [Ljava/lang/Object;

    .line 177
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 181
    :catch_0
    move-exception v2

    .line 182
    const-string v3, "OutputDecoderRunnable  Exception : "

    .line 184
    new-array v1, v1, [Ljava/lang/Object;

    .line 186
    invoke-static {v0, v3, v2, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 189
    :cond_7
    :goto_0
    return-void
.end method

.method private static kmpMatch([BII)I
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 4
    fill-array-data v1, :array_0

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    filled-new-array {v3, v4, v2, v3}, [I

    .line 13
    move-result-object v2

    .line 14
    :goto_0
    if-ge p1, p2, :cond_2

    .line 16
    :goto_1
    if-lez v3, :cond_0

    .line 18
    aget-byte v5, p0, p1

    .line 20
    aget-byte v6, v1, v3

    .line 22
    if-eq v5, v6, :cond_0

    .line 24
    add-int/lit8 v3, v3, -0x1

    .line 26
    aget v3, v2, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    aget-byte v5, p0, p1

    .line 31
    aget-byte v6, v1, v3

    .line 33
    if-ne v5, v6, :cond_1

    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 37
    if-ne v3, v0, :cond_1

    .line 39
    sub-int/2addr v3, v4

    .line 40
    sub-int/2addr p1, v3

    .line 41
    return p1

    .line 42
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 p0, -0x1

    .line 46
    return p0

    .line 47
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method


# virtual methods
.method public addVideoBuffer([BIIZ)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    const-string p4, "DecoderHandler"

    .line 3
    const-string v0, "decodeH264Loop start size={?},timeStamp={?}"

    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p3

    .line 20
    aput-object p3, v1, v2

    .line 22
    invoke-static {p4, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    if-eqz p1, :cond_2

    .line 27
    if-nez p2, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-boolean p3, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mAddFrameOpen:Z

    .line 32
    if-nez p3, :cond_1

    .line 34
    const-string p1, "DecoderHandler"

    .line 36
    const-string p2, "mAddFrameOpen is false"

    .line 38
    new-array p3, v3, [Ljava/lang/Object;

    .line 40
    invoke-static {p1, p2, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void

    .line 44
    :cond_1
    new-instance p3, Lcom/autonavi/amapauto/alink/H264Decoder$VideoFrame;

    .line 46
    const/4 p4, 0x0

    .line 47
    invoke-direct {p3, p4}, Lcom/autonavi/amapauto/alink/H264Decoder$VideoFrame;-><init>(Lcom/autonavi/amapauto/alink/H264Decoder$1;)V

    .line 50
    new-array p4, p2, [B

    .line 52
    iput-object p4, p3, Lcom/autonavi/amapauto/alink/H264Decoder$VideoFrame;->data:[B

    .line 54
    invoke-static {p1, v3, p4, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iput p2, p3, Lcom/autonavi/amapauto/alink/H264Decoder$VideoFrame;->videoSize:I

    .line 59
    iget-object p1, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mVideoFrames:Ljava/util/LinkedList;

    .line 61
    monitor-enter p1

    .line 62
    :try_start_0
    iget-object p2, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mVideoFrames:Ljava/util/LinkedList;

    .line 64
    invoke-virtual {p2, p3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 67
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    iget-object p1, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 70
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 73
    :try_start_1
    iget-object p1, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 75
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    iget-object p1, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 80
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    iget-object p2, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 87
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 90
    throw p1

    .line 91
    :catchall_1
    move-exception p2

    .line 92
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    throw p2

    .line 94
    :cond_2
    :goto_0
    return-void
.end method

.method public initDecoder(II)V
    .locals 6

    .line 1
    const-string v0, "video/avc"

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "DecoderHandler"

    .line 8
    const-string v4, "initDecoder"

    .line 10
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 16
    move-result-object v2

    .line 17
    iput-object v2, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mDecoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v2

    .line 21
    const-string v4, "initDecoder Exception : "

    .line 23
    new-array v5, v1, [Ljava/lang/Object;

    .line 25
    invoke-static {v3, v4, v2, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 28
    :goto_0
    if-lez p1, :cond_0

    .line 30
    if-lez p2, :cond_0

    .line 32
    iput p1, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->videoWidth:I

    .line 34
    iput p2, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->videoHeight:I

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    .line 38
    if-nez p1, :cond_1

    .line 40
    const-string p1, "mDecoder is null!"

    .line 42
    new-array p2, v1, [Ljava/lang/Object;

    .line 44
    invoke-static {v3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-void

    .line 48
    :cond_1
    iget p1, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->videoWidth:I

    .line 50
    iget p2, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->videoHeight:I

    .line 52
    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 55
    move-result-object p1

    .line 56
    const-string p2, "bitrate-mode"

    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 62
    const-string p2, "complexity"

    .line 64
    const/4 v2, 0x2

    .line 65
    invoke-virtual {p1, p2, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 68
    iget-object p2, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p2, p1, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 74
    iget-object p1, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    .line 76
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 79
    iput-boolean v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mInputStart:Z

    .line 81
    iget-object p1, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mInputDecoderRunnable:Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;

    .line 83
    if-nez p1, :cond_2

    .line 85
    new-instance p1, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;

    .line 87
    invoke-direct {p1, p0}, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;-><init>(Lcom/autonavi/amapauto/alink/H264Decoder;)V

    .line 90
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mInputDecoderRunnable:Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;

    .line 92
    :cond_2
    sget-object p1, Lag0;->e:Lag0;

    .line 94
    invoke-static {p1}, Lbg0;->a(Lag0;)Lcg0;

    .line 97
    move-result-object p1

    .line 98
    iget-object p2, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mInputDecoderRunnable:Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;

    .line 100
    invoke-virtual {p1, p2}, Lcg0;->execute(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public setAlinkAVListener(Lcom/autonavi/amapauto/alink/IAlinkAVListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mAvListener:Lcom/autonavi/amapauto/alink/IAlinkAVListener;

    .line 3
    return-void
.end method

.method public uninitDecoder()V
    .locals 4

    .line 1
    const-string v0, "DecoderHandler"

    .line 3
    const-string v1, "uninitDecoder"

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mUninitDecoder:Z

    .line 14
    iput-boolean v2, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mInputStart:Z

    .line 16
    iput-boolean v2, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mOutputStart:Z

    .line 18
    iput-boolean v2, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mAddFrameOpen:Z

    .line 20
    sget-object v0, Lag0;->e:Lag0;

    .line 22
    invoke-static {v0}, Lbg0;->g(Lag0;)V

    .line 25
    sget-object v0, Lag0;->f:Lag0;

    .line 27
    invoke-static {v0}, Lbg0;->g(Lag0;)V

    .line 30
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    .line 32
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 37
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mDecoder:Landroid/media/MediaCodec;

    .line 39
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mVideoFrames:Ljava/util/LinkedList;

    .line 44
    if-eqz v0, :cond_1

    .line 46
    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/autonavi/amapauto/alink/H264Decoder;->mVideoFrames:Ljava/util/LinkedList;

    .line 49
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 52
    monitor-exit v0

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw v1

    .line 57
    :cond_1
    :goto_0
    return-void
.end method
