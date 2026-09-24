.class public Lcom/amap/location/protocol/request/ApsProtocolClientUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApsProtocolClientUtil"

.field private static volatile sInstance:Lcom/amap/location/protocol/request/ApsProtocolClientUtil;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mApsLiteClient:Lmq0;

.field private mVer:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->sLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->mVer:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static getInstance()Lcom/amap/location/protocol/request/ApsProtocolClientUtil;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->sInstance:Lcom/amap/location/protocol/request/ApsProtocolClientUtil;

    .line 3
    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->sLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->sInstance:Lcom/amap/location/protocol/request/ApsProtocolClientUtil;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;

    .line 14
    invoke-direct {v1}, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;-><init>()V

    .line 17
    sput-object v1, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->sInstance:Lcom/amap/location/protocol/request/ApsProtocolClientUtil;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->sInstance:Lcom/amap/location/protocol/request/ApsProtocolClientUtil;

    .line 26
    return-object v0
.end method


# virtual methods
.method public decodeApsResponseToBean([B)Ltp0;
    .locals 3

    .line 1
    new-instance v0, Lup0;

    .line 3
    invoke-direct {v0}, Lup0;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->mVer:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Lvq0;->b(Ljava/lang/String;)Lvq0;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lnu0;->c(Lvq0;)V

    .line 15
    invoke-virtual {v0}, Lup0;->e()Lup0$a;

    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lxp0;->e:Lxp0;

    .line 21
    invoke-virtual {v2}, Lxp0;->toString()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Lup0$a;->d(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p1}, Lup0;->d([B)V

    .line 31
    iget-object p1, p0, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->mApsLiteClient:Lmq0;

    .line 33
    invoke-virtual {p1, v0}, Lmq0;->b(Lnu0;)Lvp0;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lvp0;->g()Ltp0;

    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method public encodeApsRequestProtocol(Ljp0;)Lrp0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->mApsLiteClient:Lmq0;

    .line 3
    invoke-virtual {v0, p1}, Lmq0;->a(Ljp0;)Lrp0;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public init(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->mApsLiteClient:Lmq0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->mVer:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 13
    :cond_0
    new-instance v0, Lyp0;

    .line 15
    invoke-direct {v0}, Lyp0;-><init>()V

    .line 18
    new-instance v1, Ljava/util/HashMap;

    .line 20
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 23
    invoke-static {p1}, Lvq0;->b(Ljava/lang/String;)Lvq0;

    .line 26
    move-result-object v2

    .line 27
    const-string v3, "!2a0#1%7&0*8p2s5"

    .line 29
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {v0, v1}, Lyp0;->b(Ljava/util/HashMap;)V

    .line 35
    invoke-static {v0}, Lip0;->a(Lyp0;)Lmq0;

    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->mApsLiteClient:Lmq0;

    .line 41
    iput-object p1, p0, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->mVer:Ljava/lang/String;

    .line 43
    :cond_1
    return-void
.end method
