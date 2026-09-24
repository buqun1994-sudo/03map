.class public Lcom/amap/location/g/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/g/h$c;,
        Lcom/amap/location/g/h$b;,
        Lcom/amap/location/g/h$a;
    }
.end annotation


# static fields
.field private static C:Lcom/amap/location/support/cloud/IAmapCloudListener;


# instance fields
.field private A:J

.field private B:Z

.field private D:Lcom/amap/location/protocol/h;

.field private E:Ljava/lang/Runnable;

.field private F:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

.field public a:I

.field private b:Lcom/amap/location/support/handler/AmapLooper;

.field private c:Lcom/amap/location/g/b;

.field private d:Lcom/amap/location/g/d;

.field private e:Lcom/amap/location/h/a/c;

.field private f:Lcom/amap/location/protocol/k;

.field private g:Lcom/amap/location/i/e;

.field private h:Lcom/amap/location/f/a/c;

.field private i:Lcom/amap/location/g/a/a;

.field private j:Lcom/amap/location/protocol/i;

.field private k:Lcom/amap/location/g/c/a;

.field private volatile l:Lcom/amap/location/support/handler/AmapHandler;

.field private m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private n:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

.field private o:Lcom/amap/location/support/bean/location/AmapLocation;

.field private p:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

.field private q:Lcom/amap/location/support/bean/AmapFps;

.field private r:Lcom/amap/location/support/bean/AmapFps;

.field private s:J

.field private t:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private y:I

.field private z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/location/g/h$1;

    .line 3
    const-string v1, "l"

    .line 5
    invoke-direct {v0, v1}, Lcom/amap/location/g/h$1;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/amap/location/g/h;->C:Lcom/amap/location/support/cloud/IAmapCloudListener;

    .line 10
    return-void
.end method

.method private constructor <init>(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/g/d;Lcom/amap/location/protocol/f;Lcom/amap/location/g/b;Lcom/amap/location/i/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/amap/location/g/h;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 11
    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/amap/location/g/h;->w:J

    .line 15
    iput-wide v0, p0, Lcom/amap/location/g/h;->x:J

    .line 17
    new-instance v0, Lcom/amap/location/g/h$2;

    .line 19
    invoke-direct {v0, p0}, Lcom/amap/location/g/h$2;-><init>(Lcom/amap/location/g/h;)V

    .line 22
    iput-object v0, p0, Lcom/amap/location/g/h;->D:Lcom/amap/location/protocol/h;

    .line 24
    new-instance v0, Lcom/amap/location/g/h$3;

    .line 26
    invoke-direct {v0, p0}, Lcom/amap/location/g/h$3;-><init>(Lcom/amap/location/g/h;)V

    .line 29
    iput-object v0, p0, Lcom/amap/location/g/h;->E:Ljava/lang/Runnable;

    .line 31
    new-instance v0, Lcom/amap/location/g/h$4;

    .line 33
    const-string v1, "nl-history"

    .line 35
    invoke-direct {v0, p0, v1}, Lcom/amap/location/g/h$4;-><init>(Lcom/amap/location/g/h;Ljava/lang/String;)V

    .line 38
    iput-object v0, p0, Lcom/amap/location/g/h;->F:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 40
    iput-object p1, p0, Lcom/amap/location/g/h;->b:Lcom/amap/location/support/handler/AmapLooper;

    .line 42
    iput-object p4, p0, Lcom/amap/location/g/h;->c:Lcom/amap/location/g/b;

    .line 44
    iput-object p2, p0, Lcom/amap/location/g/h;->d:Lcom/amap/location/g/d;

    .line 46
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 49
    move-result-object p2

    .line 50
    new-instance p4, Lcom/amap/location/g/h$a;

    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-direct {p4, p0, v0}, Lcom/amap/location/g/h$a;-><init>(Lcom/amap/location/g/h;Lcom/amap/location/g/h$1;)V

    .line 56
    invoke-interface {p2, p1, p4}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p0, Lcom/amap/location/g/h;->l:Lcom/amap/location/support/handler/AmapHandler;

    .line 62
    new-instance p2, Lcom/amap/location/g/c/a;

    .line 64
    iget-object p4, p0, Lcom/amap/location/g/h;->E:Ljava/lang/Runnable;

    .line 66
    invoke-direct {p2, p1, p4}, Lcom/amap/location/g/c/a;-><init>(Lcom/amap/location/support/handler/AmapLooper;Ljava/lang/Runnable;)V

    .line 69
    iput-object p2, p0, Lcom/amap/location/g/h;->k:Lcom/amap/location/g/c/a;

    .line 71
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 74
    move-result-object p1

    .line 75
    const-string p2, "cacheEnable"

    .line 77
    const/4 p4, 0x1

    .line 78
    invoke-virtual {p1, p2, p4}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Z)Z

    .line 81
    move-result p1

    .line 82
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 85
    move-result-object p2

    .line 86
    const-string v0, "nl_stagy"

    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-virtual {p2, v0, v1}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Z)Z

    .line 92
    move-result p2

    .line 93
    iput-boolean p2, p0, Lcom/amap/location/g/h;->B:Z

    .line 95
    iget-object p2, p0, Lcom/amap/location/g/h;->c:Lcom/amap/location/g/b;

    .line 97
    iget-object p2, p2, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    .line 99
    invoke-interface {p2}, Lcom/amap/location/g/e;->b()Z

    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_0

    .line 105
    if-eqz p1, :cond_0

    .line 107
    new-instance p1, Lcom/amap/location/h/a/c;

    .line 109
    iget-object p2, p0, Lcom/amap/location/g/h;->c:Lcom/amap/location/g/b;

    .line 111
    iget-object p2, p2, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    .line 113
    invoke-interface {p2}, Lcom/amap/location/g/e;->p()I

    .line 116
    move-result p2

    .line 117
    iget-object v0, p0, Lcom/amap/location/g/h;->c:Lcom/amap/location/g/b;

    .line 119
    iget-object v0, v0, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    .line 121
    invoke-interface {v0}, Lcom/amap/location/g/e;->o()I

    .line 124
    move-result v0

    .line 125
    iget-boolean v1, p0, Lcom/amap/location/g/h;->B:Z

    .line 127
    invoke-direct {p1, p2, v0, v1}, Lcom/amap/location/h/a/c;-><init>(IIZ)V

    .line 130
    iput-object p1, p0, Lcom/amap/location/g/h;->e:Lcom/amap/location/h/a/c;

    .line 132
    :cond_0
    new-instance p1, Lcom/amap/location/protocol/k;

    .line 134
    invoke-direct {p1, p3}, Lcom/amap/location/protocol/k;-><init>(Lcom/amap/location/protocol/f;)V

    .line 137
    iput-object p1, p0, Lcom/amap/location/g/h;->f:Lcom/amap/location/protocol/k;

    .line 139
    const-string p1, "sp_offline_switch"

    .line 141
    invoke-static {p1, p4}, Lcom/amap/location/support/app/GlobalStorageSync;->getBoolean(Ljava/lang/String;Z)Z

    .line 144
    move-result p1

    .line 145
    iget-object p2, p0, Lcom/amap/location/g/h;->c:Lcom/amap/location/g/b;

    .line 147
    iget-object p2, p2, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    .line 149
    invoke-interface {p2}, Lcom/amap/location/g/e;->a()Z

    .line 152
    move-result p2

    .line 153
    if-eqz p2, :cond_1

    .line 155
    if-eqz p1, :cond_1

    .line 157
    invoke-static {}, Lcom/amap/location/i/e;->a()Lcom/amap/location/i/e;

    .line 160
    move-result-object p2

    .line 161
    iput-object p2, p0, Lcom/amap/location/g/h;->g:Lcom/amap/location/i/e;

    .line 163
    iget-object p3, p0, Lcom/amap/location/g/h;->c:Lcom/amap/location/g/b;

    .line 165
    iget-object p3, p3, Lcom/amap/location/g/b;->o:Lcom/amap/location/i/c;

    .line 167
    invoke-virtual {p2, p3, p5}, Lcom/amap/location/i/e;->a(Lcom/amap/location/i/c;Lcom/amap/location/i/a;)V

    .line 170
    :cond_1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 173
    move-result p2

    .line 174
    const/4 p3, 0x7

    .line 175
    if-ne p2, p3, :cond_2

    .line 177
    invoke-static {}, Lcom/amap/location/f/a/c;->a()Lcom/amap/location/f/a/c;

    .line 180
    move-result-object p2

    .line 181
    iput-object p2, p0, Lcom/amap/location/g/h;->h:Lcom/amap/location/f/a/c;

    .line 183
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 185
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    const-string p3, "offline switch :"

    .line 190
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object p1

    .line 200
    const-string p2, "nlmgr"

    .line 202
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance p1, Lcom/amap/location/g/a/a;

    .line 207
    iget-object p3, p0, Lcom/amap/location/g/h;->l:Lcom/amap/location/support/handler/AmapHandler;

    .line 209
    invoke-direct {p1, p3}, Lcom/amap/location/g/a/a;-><init>(Lcom/amap/location/support/handler/AmapHandler;)V

    .line 212
    iput-object p1, p0, Lcom/amap/location/g/h;->i:Lcom/amap/location/g/a/a;

    .line 214
    invoke-static {}, Lcom/amap/location/support/log/StartTimeConsumingLog;->getInstance()Lcom/amap/location/support/log/StartTimeConsumingLog;

    .line 217
    move-result-object p1

    .line 218
    const-string p3, "nlrh"

    .line 220
    invoke-virtual {p1, p3}, Lcom/amap/location/support/log/StartTimeConsumingLog;->put(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/amap/location/g/c/d;->b()Z

    .line 226
    move-result p1

    .line 227
    iput-boolean p1, p0, Lcom/amap/location/g/h;->z:Z

    .line 229
    const-string p1, "nl_peaktime_key"

    .line 231
    invoke-static {p1}, Lcom/amap/location/support/util/PeakTimesHelper;->getPeakTimesFromSp(Ljava/lang/String;)[[I

    .line 234
    move-result-object p1

    .line 235
    sput-object p1, Lcom/amap/location/g/a;->n:[[I

    .line 237
    if-eqz p1, :cond_3

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    .line 241
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    const-string p3, "nl peaktime:"

    .line 246
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    sget-object p3, Lcom/amap/location/g/a;->n:[[I

    .line 251
    invoke-static {p3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    move-result-object p3

    .line 255
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object p1

    .line 262
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_3
    invoke-static {}, Lcom/amap/location/support/log/StartTimeConsumingLog;->getInstance()Lcom/amap/location/support/log/StartTimeConsumingLog;

    .line 268
    move-result-object p1

    .line 269
    const-string p2, "nli"

    .line 271
    invoke-virtual {p1, p2}, Lcom/amap/location/support/log/StartTimeConsumingLog;->put(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/g/h;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/location/g/h;->x:J

    return-wide p1
.end method

.method public static a(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/g/d;Lcom/amap/location/g/b;)Lcom/amap/location/g/h;
    .locals 7

    .line 12
    invoke-static {p2}, Lcom/amap/location/g/c/b;->a(Lcom/amap/location/g/b;)Lcom/amap/location/protocol/f;

    move-result-object v3

    .line 13
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object v0

    sget-object v1, Lcom/amap/location/g/h;->C:Lcom/amap/location/support/cloud/IAmapCloudListener;

    invoke-virtual {v0, v1, p0}, Lcom/amap/location/support/dispatch/Dispatcher;->addListener(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 14
    new-instance v6, Lcom/amap/location/g/h;

    .line 15
    invoke-static {}, Lcom/amap/location/g/b/d;->c()Lcom/amap/location/i/a;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/amap/location/g/h;-><init>(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/g/d;Lcom/amap/location/protocol/f;Lcom/amap/location/g/b;Lcom/amap/location/i/a;)V

    return-object v6
.end method

.method public static synthetic a(Lcom/amap/location/g/h;Lcom/amap/location/protocol/i;)Lcom/amap/location/protocol/i;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/location/g/h;->j:Lcom/amap/location/protocol/i;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/AmapFps;)Lcom/amap/location/support/bean/AmapFps;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/amap/location/g/h;->q:Lcom/amap/location/support/bean/AmapFps;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/location/AmapLocation;)Lcom/amap/location/support/bean/location/AmapLocation;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/amap/location/g/h;->o:Lcom/amap/location/support/bean/location/AmapLocation;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/amap/location/g/h;->t:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/g/h;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/amap/location/g/h;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object p0
.end method

.method public static synthetic a(Lcom/amap/location/g/h;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/amap/location/g/h;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .line 70
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "\\*"

    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 73
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 74
    aget-object v3, p1, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 75
    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 76
    aget-object v4, v3, v1

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 77
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(I)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/amap/location/g/h;->d:Lcom/amap/location/g/d;

    invoke-interface {v0}, Lcom/amap/location/g/d;->c()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 67
    :cond_1
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    return-void
.end method

.method private a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 68
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/location/g/h;->a(I)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/g/h;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/amap/location/g/h;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/g/h;IZ)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/amap/location/g/h;->a(IZ)V

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/g/h;Lcom/amap/location/protocol/i;Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/location/g/h;->a(Lcom/amap/location/protocol/i;Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V

    return-void
.end method

.method private a(Lcom/amap/location/protocol/i;Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amap/location/g/h;->d:Lcom/amap/location/g/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/location/g/d;->a(Lcom/amap/location/protocol/i;Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V

    if-eqz p2, :cond_0

    .line 64
    iget p1, p0, Lcom/amap/location/g/h;->a:I

    const/4 p3, 0x6

    if-lt p1, p3, :cond_0

    .line 65
    iget-object p1, p0, Lcom/amap/location/g/h;->i:Lcom/amap/location/g/a/a;

    invoke-virtual {p1, p2}, Lcom/amap/location/g/a/a;->a(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/g/h;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/amap/location/g/h;->z:Z

    return p1
.end method

.method public static synthetic b(Lcom/amap/location/g/h;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/location/g/h;->y:I

    return p1
.end method

.method public static synthetic b(Lcom/amap/location/g/h;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/amap/location/g/h;->A:J

    return-wide p1
.end method

.method public static synthetic b(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/AmapFps;)Lcom/amap/location/support/bean/AmapFps;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/amap/location/g/h;->r:Lcom/amap/location/support/bean/AmapFps;

    return-object p1
.end method

.method public static synthetic b(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/amap/location/g/h;->n:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    return-object p1
.end method

.method public static synthetic b(Lcom/amap/location/g/h;)Lcom/amap/location/support/handler/AmapHandler;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/amap/location/g/h;->l:Lcom/amap/location/support/handler/AmapHandler;

    return-object p0
.end method

.method public static synthetic c(Lcom/amap/location/g/h;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/location/g/h;->u:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/amap/location/g/h;->j:Lcom/amap/location/protocol/i;

    return-object p0
.end method

.method public static synthetic c(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/amap/location/g/h;->p:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    return-object p1
.end method

.method public static synthetic d(Lcom/amap/location/g/h;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/location/g/h;->y:I

    return p0
.end method

.method public static synthetic d(Lcom/amap/location/g/h;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/amap/location/g/h;->v:J

    return-wide p1
.end method

.method public static synthetic e(Lcom/amap/location/g/h;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/location/g/h;->s:J

    return-wide p1
.end method

.method public static synthetic e(Lcom/amap/location/g/h;)Lcom/amap/location/g/d;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/amap/location/g/h;->d:Lcom/amap/location/g/d;

    return-object p0
.end method

.method public static synthetic f(Lcom/amap/location/g/h;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/location/g/h;->w:J

    return-wide p1
.end method

.method public static synthetic f(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/amap/location/g/h;->n:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    return-object p0
.end method

.method public static synthetic g(Lcom/amap/location/g/h;)Lcom/amap/location/g/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/g/h;->c:Lcom/amap/location/g/b;

    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/amap/location/g/h;)Lcom/amap/location/i/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/g/h;->g:Lcom/amap/location/i/e;

    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/amap/location/g/h;)Lcom/amap/location/f/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/g/h;->h:Lcom/amap/location/f/a/c;

    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/amap/location/g/h;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/g/h;->v:J

    .line 3
    return-wide v0
.end method

.method public static synthetic k(Lcom/amap/location/g/h;)Lcom/amap/location/g/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/g/h;->k:Lcom/amap/location/g/c/a;

    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/g/h;->f:Lcom/amap/location/protocol/k;

    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/amap/location/g/h;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/location/g/h;->z:Z

    .line 3
    return p0
.end method

.method public static synthetic n(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/g/h;->t:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/amap/location/g/h;)Lcom/amap/location/h/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/g/h;->e:Lcom/amap/location/h/a/c;

    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/g/h;->o:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 3
    return-object p0
.end method

.method public static synthetic q(Lcom/amap/location/g/h;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/g/h;->x:J

    .line 3
    return-wide v0
.end method

.method public static synthetic r(Lcom/amap/location/g/h;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/g/h;->w:J

    .line 3
    return-wide v0
.end method

.method public static synthetic s(Lcom/amap/location/g/h;)Lcom/amap/location/g/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/g/h;->i:Lcom/amap/location/g/a/a;

    .line 3
    return-object p0
.end method

.method public static synthetic t(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/g/h;->D:Lcom/amap/location/protocol/h;

    .line 3
    return-object p0
.end method

.method public static synthetic u(Lcom/amap/location/g/h;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/g/h;->u:J

    .line 3
    return-wide v0
.end method

.method public static synthetic v(Lcom/amap/location/g/h;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/location/g/h;->B:Z

    .line 3
    return p0
.end method

.method public static synthetic w(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/g/h;->p:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/AmapFps;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/g/h;->r:Lcom/amap/location/support/bean/AmapFps;

    .line 3
    return-object p0
.end method

.method public static synthetic y(Lcom/amap/location/g/h;)Lcom/amap/location/support/bean/AmapFps;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/g/h;->q:Lcom/amap/location/support/bean/AmapFps;

    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/amap/location/g/h;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/g/h;->s:J

    .line 3
    return-wide v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/amap/location/g/h;->A:J

    return-wide v0
.end method

.method public a(Lcom/amap/location/g/b;)V
    .locals 1

    .line 16
    iput-object p1, p0, Lcom/amap/location/g/h;->c:Lcom/amap/location/g/b;

    .line 17
    iget-object v0, p0, Lcom/amap/location/g/h;->g:Lcom/amap/location/i/e;

    if-eqz v0, :cond_0

    .line 18
    iget-object p1, p1, Lcom/amap/location/g/b;->o:Lcom/amap/location/i/c;

    invoke-virtual {v0, p1}, Lcom/amap/location/i/e;->a(Lcom/amap/location/i/c;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/amap/location/support/bean/AmapFps;ZI)V
    .locals 2

    .line 20
    iput p3, p0, Lcom/amap/location/g/h;->a:I

    .line 21
    invoke-static {p1}, Lcom/amap/location/g/c/d;->a(Lcom/amap/location/support/bean/AmapFps;)Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_d

    .line 22
    iget-object p2, p1, Lcom/amap/location/support/bean/AmapFps;->mainWifi:Lcom/amap/location/support/bean/wifi/AmapWifi;

    if-nez p2, :cond_1

    iget-object p2, p1, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 23
    :goto_1
    iget-object p3, p1, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    .line 24
    :cond_2
    iget-boolean p3, p0, Lcom/amap/location/g/h;->z:Z

    if-eqz p3, :cond_3

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    const p2, 0x18777

    .line 25
    invoke-direct {p0, p2}, Lcom/amap/location/g/h;->a(I)V

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    if-nez v0, :cond_4

    if-nez p2, :cond_4

    const p2, 0x18778

    .line 26
    invoke-direct {p0, p2}, Lcom/amap/location/g/h;->a(I)V

    goto :goto_2

    :cond_4
    if-nez p3, :cond_5

    if-nez v0, :cond_5

    if-nez p2, :cond_5

    const p2, 0x18779

    .line 27
    invoke-direct {p0, p2}, Lcom/amap/location/g/h;->a(I)V

    goto :goto_2

    :cond_5
    if-nez p3, :cond_6

    if-eqz v0, :cond_6

    if-nez p2, :cond_6

    const p2, 0x1877a

    .line 28
    invoke-direct {p0, p2}, Lcom/amap/location/g/h;->a(I)V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    const p2, 0x1877b

    .line 29
    invoke-direct {p0, p2}, Lcom/amap/location/g/h;->a(I)V

    goto :goto_2

    :cond_7
    if-nez v0, :cond_8

    if-eqz p2, :cond_8

    const p2, 0x1877c

    .line 30
    invoke-direct {p0, p2}, Lcom/amap/location/g/h;->a(I)V

    .line 31
    :cond_8
    :goto_2
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 32
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isAirplaneModeOn()Z

    move-result p3

    const-string v0, ""

    if-eqz p3, :cond_9

    .line 33
    iget-object p3, p1, Lcom/amap/location/support/bean/AmapFps;->locResultInfo:Lcom/amap/location/support/nl/NetworkLocationResultInfo;

    const/16 v1, -0xb

    invoke-virtual {p3, v1, v0}, Lcom/amap/location/support/nl/NetworkLocationResultInfo;->onFail(ILjava/lang/String;)V

    const-string p3, "is air"

    .line 34
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const p2, 0x189d2

    .line 35
    invoke-direct {p0, p2}, Lcom/amap/location/g/h;->a(I)V

    goto/16 :goto_3

    .line 36
    :cond_9
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->hasFineLocationPermission()Z

    move-result p3

    if-nez p3, :cond_a

    const-string p3, "no permission"

    .line 37
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    iget-object p2, p1, Lcom/amap/location/support/bean/AmapFps;->locResultInfo:Lcom/amap/location/support/nl/NetworkLocationResultInfo;

    const/16 p3, -0xc

    invoke-virtual {p2, p3, v0}, Lcom/amap/location/support/nl/NetworkLocationResultInfo;->onFail(ILjava/lang/String;)V

    const p2, 0x189d3

    .line 39
    invoke-direct {p0, p2}, Lcom/amap/location/g/h;->a(I)V

    goto/16 :goto_3

    .line 40
    :cond_a
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isLocationOn()Z

    move-result p3

    if-nez p3, :cond_b

    const-string p3, "location close"

    .line 41
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    iget-object p2, p1, Lcom/amap/location/support/bean/AmapFps;->locResultInfo:Lcom/amap/location/support/nl/NetworkLocationResultInfo;

    const/16 p3, -0xd

    invoke-virtual {p2, p3, v0}, Lcom/amap/location/support/nl/NetworkLocationResultInfo;->onFail(ILjava/lang/String;)V

    const p2, 0x189d4

    .line 43
    invoke-direct {p0, p2}, Lcom/amap/location/g/h;->a(I)V

    goto/16 :goto_3

    .line 44
    :cond_b
    iget-boolean p3, p0, Lcom/amap/location/g/h;->z:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p3, ","

    .line 45
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isScreenOn()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 46
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onForeground()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getScene()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onNavi()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/amap/location/g/h;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/amap/location/g/h;->d:Lcom/amap/location/g/d;

    invoke-interface {v0}, Lcom/amap/location/g/d;->c()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 51
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->getProcessImportance()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 52
    iget-object p3, p1, Lcom/amap/location/support/bean/AmapFps;->locResultInfo:Lcom/amap/location/support/nl/NetworkLocationResultInfo;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v1, p2}, Lcom/amap/location/support/nl/NetworkLocationResultInfo;->onFail(ILjava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->getProcessImportance()I

    move-result p2

    const/16 p3, 0xc8

    if-lt p2, p3, :cond_c

    const p2, 0x189d5

    .line 54
    invoke-direct {p0, p2}, Lcom/amap/location/g/h;->a(I)V

    goto :goto_3

    :cond_c
    const p2, 0x189d6

    .line 55
    invoke-direct {p0, p2}, Lcom/amap/location/g/h;->a(I)V

    :goto_3
    const/4 p2, 0x0

    .line 56
    invoke-direct {p0, p2, p2, p1}, Lcom/amap/location/g/h;->a(Lcom/amap/location/protocol/i;Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V

    .line 57
    iget-object p1, p0, Lcom/amap/location/g/h;->d:Lcom/amap/location/g/d;

    invoke-interface {p1}, Lcom/amap/location/g/d;->a()V

    return-void

    .line 58
    :cond_d
    iget-object p3, p0, Lcom/amap/location/g/h;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 59
    :try_start_0
    iget-object p3, p0, Lcom/amap/location/g/h;->l:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz p3, :cond_f

    .line 60
    iget-object p3, p0, Lcom/amap/location/g/h;->l:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz p2, :cond_e

    goto :goto_4

    :cond_e
    const/4 v0, 0x1

    :goto_4
    invoke-interface {p3, v0, p1}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(ILjava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_f
    iget-object p1, p0, Lcom/amap/location/g/h;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amap/location/g/h;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 62
    throw p1
.end method

.method public b()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/amap/location/g/h;->i:Lcom/amap/location/g/a/a;

    invoke-virtual {v0}, Lcom/amap/location/g/a/a;->a()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/amap/location/g/h;->g:Lcom/amap/location/i/e;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/amap/location/i/e;->c()V

    .line 6
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/g/h;->F:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    invoke-interface {v0, v1}, Lcom/amap/location/support/signal/gnss/IGnssManager;->removePassiveUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Z

    return-void
.end method

.method public d()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/amap/location/g/h;->g:Lcom/amap/location/i/e;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/amap/location/i/e;->d()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/g/h;->F:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    iget-object v2, p0, Lcom/amap/location/g/h;->b:Lcom/amap/location/support/handler/AmapLooper;

    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/signal/gnss/IGnssManager;->requestPassiveUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    return-void
.end method

.method public e()V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/amap/location/g/h;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 4
    iget-object v0, p0, Lcom/amap/location/g/h;->l:Lcom/amap/location/support/handler/AmapHandler;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/amap/location/g/h;->l:Lcom/amap/location/support/handler/AmapHandler;

    .line 6
    iget-object v2, p0, Lcom/amap/location/g/h;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object v2

    sget-object v3, Lcom/amap/location/g/h;->C:Lcom/amap/location/support/cloud/IAmapCloudListener;

    invoke-virtual {v2, v3}, Lcom/amap/location/support/dispatch/Dispatcher;->removeListener(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/amap/location/g/h;->k:Lcom/amap/location/g/c/a;

    invoke-virtual {v0}, Lcom/amap/location/g/c/a;->b()V

    .line 10
    iget-object v0, p0, Lcom/amap/location/g/h;->i:Lcom/amap/location/g/a/a;

    invoke-virtual {v0}, Lcom/amap/location/g/a/a;->b()V

    .line 11
    iget-object v0, p0, Lcom/amap/location/g/h;->e:Lcom/amap/location/h/a/c;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/amap/location/h/a/c;->a()V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/amap/location/g/h;->f:Lcom/amap/location/protocol/k;

    invoke-virtual {v0}, Lcom/amap/location/protocol/k;->a()V

    .line 14
    iget-object v0, p0, Lcom/amap/location/g/h;->g:Lcom/amap/location/i/e;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/amap/location/i/e;->b()V

    .line 16
    :cond_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/g/h;->F:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    invoke-interface {v0, v1}, Lcom/amap/location/support/signal/gnss/IGnssManager;->removePassiveUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Z

    :cond_2
    return-void
.end method
