.class public Lcom/amap/location/fusion/a/a/a;
.super Lcom/amap/location/fusion/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/fusion/a/a/a$b;,
        Lcom/amap/location/fusion/a/a/a$e;,
        Lcom/amap/location/fusion/a/a/a$c;,
        Lcom/amap/location/fusion/a/a/a$d;,
        Lcom/amap/location/fusion/a/a/a$a;
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field private A:Lcom/amap/location/support/nl/NetworkLocationListener;

.field private B:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

.field private C:Lcom/amap/location/support/location/AbstractLocationCallback;

.field private D:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

.field private E:Ljava/lang/Runnable;

.field private F:Ljava/lang/Runnable;

.field b:Lcom/amap/location/support/app/MessageCenterListener;

.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Lcom/amap/location/support/handler/AmapLooper;

.field private m:Lcom/amap/location/support/handler/AmapHandler;

.field private n:Z

.field private final o:Lcom/amap/location/fusion/util/c;

.field private final p:Lcom/amap/location/fusion/b/b;

.field private final q:Lcom/amap/location/e/b;

.field private final r:Lcom/amap/location/e/c;

.field private final s:Lcom/amap/location/e/g;

.field private final t:Lcom/amap/location/fusion/a/a/a$a;

.field private final u:Lcom/amap/location/fusion/a/a/a$d;

.field private v:J

.field private w:Lcom/amap/location/support/location/AbstractLocator;

.field private x:Lcom/amap/location/fusion/a/a/a$c;

.field private y:Z

.field private z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZLcom/amap/location/support/handler/AmapLooper;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/amap/location/fusion/a/a;-><init>()V

    .line 4
    const/16 v0, 0x2710

    .line 6
    iput v0, p0, Lcom/amap/location/fusion/a/a/a;->c:I

    .line 8
    const/16 v1, 0x7d0

    .line 10
    iput v1, p0, Lcom/amap/location/fusion/a/a/a;->d:I

    .line 12
    const/4 v2, 0x0

    .line 13
    iput-boolean v2, p0, Lcom/amap/location/fusion/a/a/a;->e:Z

    .line 15
    const v3, 0x493e0

    .line 18
    iput v3, p0, Lcom/amap/location/fusion/a/a/a;->f:I

    .line 20
    iput v0, p0, Lcom/amap/location/fusion/a/a/a;->g:I

    .line 22
    iput v1, p0, Lcom/amap/location/fusion/a/a/a;->h:I

    .line 24
    iput v3, p0, Lcom/amap/location/fusion/a/a/a;->i:I

    .line 26
    iput v2, p0, Lcom/amap/location/fusion/a/a/a;->j:I

    .line 28
    const-string v0, "#5#1#2#"

    .line 30
    iput-object v0, p0, Lcom/amap/location/fusion/a/a/a;->k:Ljava/lang/String;

    .line 32
    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/amap/location/fusion/a/a/a;->v:J

    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/amap/location/fusion/a/a/a;->z:Z

    .line 39
    new-instance v1, Lcom/amap/location/fusion/a/a/a$2;

    .line 41
    invoke-direct {v1, p0}, Lcom/amap/location/fusion/a/a/a$2;-><init>(Lcom/amap/location/fusion/a/a/a;)V

    .line 44
    iput-object v1, p0, Lcom/amap/location/fusion/a/a/a;->b:Lcom/amap/location/support/app/MessageCenterListener;

    .line 46
    new-instance v1, Lcom/amap/location/fusion/a/a/a$3;

    .line 48
    const/4 v2, 0x2

    .line 49
    invoke-direct {v1, p0, v2}, Lcom/amap/location/fusion/a/a/a$3;-><init>(Lcom/amap/location/fusion/a/a/a;I)V

    .line 52
    iput-object v1, p0, Lcom/amap/location/fusion/a/a/a;->A:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 54
    new-instance v1, Lcom/amap/location/fusion/a/a/a$4;

    .line 56
    const-string v2, "location"

    .line 58
    invoke-direct {v1, p0, v2}, Lcom/amap/location/fusion/a/a/a$4;-><init>(Lcom/amap/location/fusion/a/a/a;Ljava/lang/String;)V

    .line 61
    iput-object v1, p0, Lcom/amap/location/fusion/a/a/a;->B:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 63
    new-instance v1, Lcom/amap/location/fusion/a/a/a$5;

    .line 65
    invoke-direct {v1, p0}, Lcom/amap/location/fusion/a/a/a$5;-><init>(Lcom/amap/location/fusion/a/a/a;)V

    .line 68
    iput-object v1, p0, Lcom/amap/location/fusion/a/a/a;->C:Lcom/amap/location/support/location/AbstractLocationCallback;

    .line 70
    new-instance v1, Lcom/amap/location/fusion/a/a/a$6;

    .line 72
    invoke-direct {v1, p0}, Lcom/amap/location/fusion/a/a/a$6;-><init>(Lcom/amap/location/fusion/a/a/a;)V

    .line 75
    iput-object v1, p0, Lcom/amap/location/fusion/a/a/a;->D:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 77
    new-instance v1, Lcom/amap/location/fusion/a/a/a$7;

    .line 79
    invoke-direct {v1, p0}, Lcom/amap/location/fusion/a/a/a$7;-><init>(Lcom/amap/location/fusion/a/a/a;)V

    .line 82
    iput-object v1, p0, Lcom/amap/location/fusion/a/a/a;->E:Ljava/lang/Runnable;

    .line 84
    new-instance v1, Lcom/amap/location/fusion/a/a/a$8;

    .line 86
    invoke-direct {v1, p0}, Lcom/amap/location/fusion/a/a/a$8;-><init>(Lcom/amap/location/fusion/a/a/a;)V

    .line 89
    iput-object v1, p0, Lcom/amap/location/fusion/a/a/a;->F:Ljava/lang/Runnable;

    .line 91
    iput-boolean p1, p0, Lcom/amap/location/fusion/a/a/a;->n:Z

    .line 93
    iput-object p2, p0, Lcom/amap/location/fusion/a/a/a;->l:Lcom/amap/location/support/handler/AmapLooper;

    .line 95
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 98
    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/amap/location/fusion/a/a/a;->l:Lcom/amap/location/support/handler/AmapLooper;

    .line 101
    const/4 v3, 0x0

    .line 102
    invoke-interface {v1, v2, v3}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 105
    move-result-object v1

    .line 106
    iput-object v1, p0, Lcom/amap/location/fusion/a/a/a;->m:Lcom/amap/location/support/handler/AmapHandler;

    .line 108
    invoke-static {}, Lcom/amap/location/fusion/util/h;->a()Lcom/amap/location/fusion/util/h;

    .line 111
    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/amap/location/fusion/a/a/a;->l:Lcom/amap/location/support/handler/AmapLooper;

    .line 114
    invoke-virtual {v1, v2}, Lcom/amap/location/fusion/util/h;->a(Lcom/amap/location/support/handler/AmapLooper;)V

    .line 117
    new-instance v1, Lcom/amap/location/e/g;

    .line 119
    invoke-direct {v1, p2}, Lcom/amap/location/e/g;-><init>(Lcom/amap/location/support/handler/AmapLooper;)V

    .line 122
    iput-object v1, p0, Lcom/amap/location/fusion/a/a/a;->s:Lcom/amap/location/e/g;

    .line 124
    new-instance v1, Lcom/amap/location/fusion/util/c;

    .line 126
    invoke-direct {v1, p2}, Lcom/amap/location/fusion/util/c;-><init>(Lcom/amap/location/support/handler/AmapLooper;)V

    .line 129
    iput-object v1, p0, Lcom/amap/location/fusion/a/a/a;->o:Lcom/amap/location/fusion/util/c;

    .line 131
    new-instance v1, Lcom/amap/location/e/b;

    .line 133
    invoke-direct {v1}, Lcom/amap/location/e/b;-><init>()V

    .line 136
    iput-object v1, p0, Lcom/amap/location/fusion/a/a/a;->q:Lcom/amap/location/e/b;

    .line 138
    invoke-virtual {v1, p1}, Lcom/amap/location/e/b;->a(Z)V

    .line 141
    invoke-static {}, Lcom/amap/location/e/d;->a()Lcom/amap/location/e/d;

    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2, p2, p1}, Lcom/amap/location/e/d;->a(Lcom/amap/location/support/handler/AmapLooper;Z)V

    .line 148
    new-instance v2, Lcom/amap/location/fusion/b/b;

    .line 150
    iget-object v3, p0, Lcom/amap/location/fusion/a/a/a;->D:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 152
    invoke-direct {v2, v1, v3, p2}, Lcom/amap/location/fusion/b/b;-><init>(Lcom/amap/location/e/b;Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 155
    iput-object v2, p0, Lcom/amap/location/fusion/a/a/a;->p:Lcom/amap/location/fusion/b/b;

    .line 157
    new-instance v2, Lcom/amap/location/e/c;

    .line 159
    invoke-direct {v2, p2, v1}, Lcom/amap/location/e/c;-><init>(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/e/b;)V

    .line 162
    iput-object v2, p0, Lcom/amap/location/fusion/a/a/a;->r:Lcom/amap/location/e/c;

    .line 164
    new-instance v1, Lcom/amap/location/fusion/a/a/a$a;

    .line 166
    invoke-direct {v1, p0}, Lcom/amap/location/fusion/a/a/a$a;-><init>(Lcom/amap/location/fusion/a/a/a;)V

    .line 169
    iput-object v1, p0, Lcom/amap/location/fusion/a/a/a;->t:Lcom/amap/location/fusion/a/a/a$a;

    .line 171
    new-instance v1, Lcom/amap/location/fusion/a/a/a$d;

    .line 173
    invoke-direct {v1, p0}, Lcom/amap/location/fusion/a/a/a$d;-><init>(Lcom/amap/location/fusion/a/a/a;)V

    .line 176
    iput-object v1, p0, Lcom/amap/location/fusion/a/a/a;->u:Lcom/amap/location/fusion/a/a/a$d;

    .line 178
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->B:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 180
    const-wide/16 v2, 0x3e8

    .line 182
    invoke-virtual {v1, v2, v3}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->setMinTime(J)V

    .line 185
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->B:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 187
    const-wide/16 v2, 0x0

    .line 189
    invoke-virtual {v1, v2, v3}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->setMinDistance(D)V

    .line 192
    if-eqz p1, :cond_4

    .line 194
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 197
    move-result-object p1

    .line 198
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 201
    move-result v1

    .line 202
    const-string v2, ""

    .line 204
    if-nez v1, :cond_0

    .line 206
    const-string v1, "amap"

    .line 208
    goto :goto_0

    .line 209
    :cond_0
    move-object v1, v2

    .line 210
    :goto_0
    const-string v3, "rtk_type_soft"

    .line 212
    invoke-virtual {p1, v3, v1}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    move-result-object p1

    .line 216
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 219
    move-result-object v1

    .line 220
    const-string v3, "rtk_type_soft_scene"

    .line 222
    iget-object v4, p0, Lcom/amap/location/fusion/a/a/a;->k:Ljava/lang/String;

    .line 224
    invoke-virtual {v1, v3, v4}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    move-result-object v1

    .line 228
    iput-object v1, p0, Lcom/amap/location/fusion/a/a/a;->k:Ljava/lang/String;

    .line 230
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 233
    move-result p1

    .line 234
    if-nez p1, :cond_1

    .line 236
    new-instance p1, Lvo0;

    .line 238
    invoke-direct {p1}, Lvo0;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a;->w:Lcom/amap/location/support/location/AbstractLocator;

    .line 243
    invoke-interface {p1}, Lcom/amap/location/support/app/IModule;->init()V

    .line 246
    iget-object p1, p0, Lcom/amap/location/fusion/a/a/a;->w:Lcom/amap/location/support/location/AbstractLocator;

    .line 248
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->C:Lcom/amap/location/support/location/AbstractLocationCallback;

    .line 250
    invoke-virtual {p1, v1}, Lcom/amap/location/support/location/AbstractLocator;->setCallback(Lcom/amap/location/support/location/AbstractLocationCallback;)V

    .line 253
    :cond_1
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 256
    move-result-object p1

    .line 257
    const-string v1, "softrtk_expansion"

    .line 259
    invoke-virtual {p1, v1, v0}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Z)Z

    .line 262
    move-result p1

    .line 263
    iput-boolean p1, p0, Lcom/amap/location/fusion/a/a/a;->y:Z

    .line 265
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 268
    move-result-object p1

    .line 269
    const-string v0, "rtk_type_sys"

    .line 271
    invoke-virtual {p1, v0, v2}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    move-result-object p1

    .line 275
    const-string v0, "hms"

    .line 277
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_3

    .line 283
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    .line 286
    move-result p1

    .line 287
    if-nez p1, :cond_2

    .line 289
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHonor()Z

    .line 292
    move-result p1

    .line 293
    if-eqz p1, :cond_3

    .line 295
    :cond_2
    new-instance p1, Lcom/amap/location/fusion/a/a/a$c;

    .line 297
    invoke-direct {p1, p0}, Lcom/amap/location/fusion/a/a/a$c;-><init>(Lcom/amap/location/fusion/a/a/a;)V

    .line 300
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a;->x:Lcom/amap/location/fusion/a/a/a$c;

    .line 302
    :cond_3
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 305
    move-result-object p1

    .line 306
    new-instance v0, Lcom/amap/location/fusion/a/a/a$1;

    .line 308
    const-string v1, "heartbeat"

    .line 310
    invoke-direct {v0, p0, v1}, Lcom/amap/location/fusion/a/a/a$1;-><init>(Lcom/amap/location/fusion/a/a/a;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1, v0, p2}, Lcom/amap/location/support/dispatch/Dispatcher;->addListener(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 316
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 319
    move-result p1

    .line 320
    const/16 p2, 0x8

    .line 322
    if-ne p1, p2, :cond_4

    .line 324
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 327
    move-result-object p1

    .line 328
    const-string p2, "keepAlgoSoft"

    .line 330
    sget-boolean v0, Lcom/amap/location/fusion/a/a/a;->a:Z

    .line 332
    invoke-virtual {p1, p2, v0}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Z)Z

    .line 335
    move-result p1

    .line 336
    sput-boolean p1, Lcom/amap/location/fusion/a/a/a;->a:Z

    .line 338
    :cond_4
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/fusion/a/a/a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/amap/location/fusion/a/a/a;->f:I

    return p1
.end method

.method public static synthetic a(Lcom/amap/location/fusion/a/a/a;Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/location/fusion/a/a/a;->b(Lcom/amap/location/support/bean/location/AmapLocation;)V

    return-void
.end method

.method private a(I)Z
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public static synthetic a(Lcom/amap/location/fusion/a/a/a;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/amap/location/fusion/a/a/a;->e:Z

    return p0
.end method

.method public static synthetic a(Lcom/amap/location/fusion/a/a/a;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/amap/location/fusion/a/a/a;->e:Z

    return p1
.end method

.method public static synthetic b(Lcom/amap/location/fusion/a/a/a;)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/amap/location/fusion/a/a/a;->f:I

    return p0
.end method

.method public static synthetic b(Lcom/amap/location/fusion/a/a/a;I)I
    .locals 0

    .line 4
    iput p1, p0, Lcom/amap/location/fusion/a/a/a;->g:I

    return p1
.end method

.method private b(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 6

    .line 5
    invoke-static {p1}, Lcom/amap/location/support/bean/location/AmapLocation;->isLocationCorrect(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "gpsloc"

    const-string v0, "gps loc is null"

    .line 6
    invoke-static {p1, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x18f44

    goto :goto_0

    :cond_1
    const v0, 0x18f3f

    :goto_0
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 8
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onDriveNavi()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x18fa8

    goto :goto_1

    :cond_2
    const v0, 0x18fa3

    :goto_1
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 10
    :cond_3
    invoke-static {}, Lcom/amap/location/fusion/util/h;->a()Lcom/amap/location/fusion/util/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/util/h;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Lcom/amap/location/support/util/TextUtils;->getSimpleLocationLog(Lcom/amap/location/support/bean/location/AmapLocation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->t:Lcom/amap/location/fusion/a/a/a$a;

    invoke-virtual {v1, p1}, Lcom/amap/location/fusion/a/a/a$a;->a(Lcom/amap/location/support/bean/location/AmapLocation;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    .line 13
    iget-boolean p1, p0, Lcom/amap/location/fusion/a/a/a;->n:Z

    invoke-static {v3, v3, p1}, Lcom/amap/location/support/gnssblockstate/GnssBlockState;->setGnssBlockState(IIZ)V

    const p1, 0x187a5

    .line 14
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const v0, 0x1ae16

    invoke-static {v0, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    return-void

    .line 16
    :cond_4
    invoke-static {}, Lcom/amap/location/e/d;->a()Lcom/amap/location/e/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amap/location/e/d;->a(Lcom/amap/location/support/bean/location/AmapLocation;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v3, :cond_6

    const/16 v4, 0x305

    .line 17
    invoke-virtual {p1, v4}, Lcom/amap/location/type/location/Location;->setSubType(I)V

    .line 18
    iget-boolean v4, p0, Lcom/amap/location/fusion/a/a/a;->n:Z

    invoke-static {v3, v2, v4}, Lcom/amap/location/support/gnssblockstate/GnssBlockState;->setGnssBlockState(IIZ)V

    const v4, 0x1ae14

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 20
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getDisturbSwitch()Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v0, -0x3e6

    .line 21
    invoke-virtual {p1, v0}, Lcom/amap/location/type/location/Location;->setType(I)V

    .line 22
    iget-object v0, p0, Lcom/amap/location/support/location/AbstractLocator;->mCallback:Lcom/amap/location/support/location/AbstractLocationCallback;

    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {v0, p1}, Lcom/amap/location/support/location/AbstractLocationCallback;->onSubLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    :cond_5
    return-void

    .line 24
    :cond_6
    iget-object v4, p0, Lcom/amap/location/fusion/a/a/a;->q:Lcom/amap/location/e/b;

    invoke-virtual {v4, p1}, Lcom/amap/location/e/b;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 25
    iget-object v4, p0, Lcom/amap/location/fusion/a/a/a;->r:Lcom/amap/location/e/c;

    invoke-virtual {v4, p1}, Lcom/amap/location/e/c;->a(Lcom/amap/location/support/bean/location/AmapLocation;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v3, :cond_7

    .line 26
    iget-boolean p1, p0, Lcom/amap/location/fusion/a/a/a;->n:Z

    invoke-static {v3, v5, p1}, Lcom/amap/location/support/gnssblockstate/GnssBlockState;->setGnssBlockState(IIZ)V

    const p1, 0x1ae15

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    return-void

    .line 28
    :cond_7
    invoke-static {}, Lcom/amap/location/fusion/util/d;->a()Lcom/amap/location/fusion/util/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/util/d;->c(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 29
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->u:Lcom/amap/location/fusion/a/a/a$d;

    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/a/a/a$d;->a(Lcom/amap/location/support/bean/location/AmapLocation;)I

    move-result v0

    if-ne v0, v3, :cond_8

    const/4 p1, 0x5

    .line 30
    iget-boolean v0, p0, Lcom/amap/location/fusion/a/a/a;->n:Z

    invoke-static {v3, p1, v0}, Lcom/amap/location/support/gnssblockstate/GnssBlockState;->setGnssBlockState(IIZ)V

    return-void

    :cond_8
    if-eq v1, v5, :cond_a

    if-ne v4, v5, :cond_9

    goto :goto_2

    .line 31
    :cond_9
    iget-boolean v0, p0, Lcom/amap/location/fusion/a/a/a;->n:Z

    invoke-static {v2, v0}, Lcom/amap/location/support/gnssblockstate/GnssBlockState;->setGnssBlockState(IZ)V

    goto :goto_3

    .line 32
    :cond_a
    :goto_2
    iget-boolean v0, p0, Lcom/amap/location/fusion/a/a/a;->n:Z

    invoke-static {v5, v0}, Lcom/amap/location/support/gnssblockstate/GnssBlockState;->setGnssBlockState(IZ)V

    .line 33
    :goto_3
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->o:Lcom/amap/location/fusion/util/c;

    invoke-virtual {v0}, Lcom/amap/location/fusion/util/c;->b()V

    .line 34
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->p:Lcom/amap/location/fusion/b/b;

    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/b/b;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/amap/location/support/location/AbstractLocator;->report(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 36
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x18f45

    goto :goto_4

    :cond_b
    const v0, 0x18f40

    :goto_4
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 37
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onDriveNavi()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 38
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x18fa9

    goto :goto_5

    :cond_c
    const v0, 0x18fa4

    :goto_5
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 39
    :cond_d
    invoke-static {}, Lcom/amap/location/protocol/a/a;->a()Lcom/amap/location/protocol/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/location/protocol/a/a;->a(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    const/16 v0, 0x6a

    .line 40
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 41
    invoke-direct {p0, p1}, Lcom/amap/location/fusion/a/a/a;->c(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 42
    iget-boolean v0, p0, Lcom/amap/location/fusion/a/a/a;->z:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/amap/location/e/d;->a()Lcom/amap/location/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/amap/location/fusion/a/a/a;->z:Z

    .line 44
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->A:Lcom/amap/location/support/nl/NetworkLocationListener;

    invoke-virtual {v1, v3}, Lcom/amap/location/support/nl/NetworkLocationListener;->setOnlayOnline(Z)V

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46
    iget v2, p0, Lcom/amap/location/fusion/a/a/a;->j:I

    int-to-double v2, v2

    invoke-static {p1, v2, v3, v0}, Lcom/amap/location/support/nl/NetworkLocatorParam;->getLocationStr(Lcom/amap/location/support/bean/location/AmapLocation;DI)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gpscache"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->A:Lcom/amap/location/support/nl/NetworkLocationListener;

    iget-object v2, p0, Lcom/amap/location/fusion/a/a/a;->l:Lcom/amap/location/support/handler/AmapLooper;

    invoke-interface {p1, v0, v2, v1}, Lcom/amap/location/support/nl/INetworkLocator;->requestLocationOnce(Lcom/amap/location/support/nl/NetworkLocationListener;Lcom/amap/location/support/handler/AmapLooper;Ljava/util/Map;)V

    .line 48
    :cond_e
    sget-boolean p1, Lcom/amap/location/fusion/a/a/a;->a:Z

    if-nez p1, :cond_f

    .line 49
    iget-object p1, p0, Lcom/amap/location/fusion/a/a/a;->p:Lcom/amap/location/fusion/b/b;

    invoke-virtual {p1}, Lcom/amap/location/fusion/b/b;->d()V

    .line 50
    :cond_f
    iget-object p1, p0, Lcom/amap/location/fusion/a/a/a;->m:Lcom/amap/location/support/handler/AmapHandler;

    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->E:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    iget-object p1, p0, Lcom/amap/location/fusion/a/a/a;->m:Lcom/amap/location/support/handler/AmapHandler;

    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->E:Ljava/lang/Runnable;

    iget v1, p0, Lcom/amap/location/fusion/a/a/a;->c:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    iget-object p1, p0, Lcom/amap/location/fusion/a/a/a;->m:Lcom/amap/location/support/handler/AmapHandler;

    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->F:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    iget-object p1, p0, Lcom/amap/location/fusion/a/a/a;->m:Lcom/amap/location/support/handler/AmapHandler;

    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->F:Ljava/lang/Runnable;

    iget v1, p0, Lcom/amap/location/fusion/a/a/a;->d:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic c(Lcom/amap/location/fusion/a/a/a;)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/amap/location/fusion/a/a/a;->g:I

    return p0
.end method

.method public static synthetic c(Lcom/amap/location/fusion/a/a/a;I)I
    .locals 0

    .line 4
    iput p1, p0, Lcom/amap/location/fusion/a/a/a;->h:I

    return p1
.end method

.method private c(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 18

    move-object/from16 v0, p0

    .line 5
    iget-boolean v1, v0, Lcom/amap/location/fusion/a/a/a;->e:Z

    if-nez v1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/amap/location/support/bean/location/AmapLocation;->isLocationCorrect(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getPcdType()I

    move-result v1

    if-lez v1, :cond_2

    return-void

    .line 8
    :cond_2
    iget v1, v0, Lcom/amap/location/fusion/a/a/a;->i:I

    iget v2, v0, Lcom/amap/location/fusion/a/a/a;->f:I

    if-ne v1, v2, :cond_4

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getSpeed()F

    move-result v1

    const v2, 0x40666666    # 3.6f

    mul-float v1, v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    return-void

    .line 10
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    return-void

    .line 11
    :cond_4
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v1

    .line 12
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/location/support/nl/INetworkLocator;->getLastAmapLocationNetwork()Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 13
    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getLocationTickTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    sub-long v5, v1, v5

    const-wide/16 v7, 0xbb8

    cmp-long v9, v5, v7

    if-gez v9, :cond_5

    .line 14
    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v16

    invoke-static/range {v10 .. v17}, Lcom/amap/location/support/util/GeoUtils;->distance(DDDD)D

    move-result-wide v5

    double-to-int v3, v5

    iput v3, v0, Lcom/amap/location/fusion/a/a/a;->j:I

    goto :goto_0

    .line 15
    :cond_5
    iput v4, v0, Lcom/amap/location/fusion/a/a/a;->j:I

    .line 16
    :goto_0
    iget-wide v5, v0, Lcom/amap/location/fusion/a/a/a;->v:J

    sub-long v5, v1, v5

    iget v3, v0, Lcom/amap/location/fusion/a/a/a;->i:I

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-gez v3, :cond_6

    return-void

    .line 17
    :cond_6
    iput-wide v1, v0, Lcom/amap/location/fusion/a/a/a;->v:J

    .line 18
    iget-object v1, v0, Lcom/amap/location/fusion/a/a/a;->A:Lcom/amap/location/support/nl/NetworkLocationListener;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/location/support/nl/NetworkLocationListener;->setOnlayOnline(Z)V

    .line 19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20
    iget v2, v0, Lcom/amap/location/fusion/a/a/a;->j:I

    int-to-double v2, v2

    move-object/from16 v5, p1

    invoke-static {v5, v2, v3, v4}, Lcom/amap/location/support/nl/NetworkLocatorParam;->getLocationStr(Lcom/amap/location/support/bean/location/AmapLocation;DI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gpscache"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    move-result-object v2

    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a;->A:Lcom/amap/location/support/nl/NetworkLocationListener;

    iget-object v4, v0, Lcom/amap/location/fusion/a/a/a;->l:Lcom/amap/location/support/handler/AmapLooper;

    invoke-interface {v2, v3, v4, v1}, Lcom/amap/location/support/nl/INetworkLocator;->requestLocationOnce(Lcom/amap/location/support/nl/NetworkLocationListener;Lcom/amap/location/support/handler/AmapLooper;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic d(Lcom/amap/location/fusion/a/a/a;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/amap/location/fusion/a/a/a;->h:I

    return p0
.end method

.method private d()V
    .locals 2

    .line 4
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->A:Lcom/amap/location/support/nl/NetworkLocationListener;

    invoke-interface {v0, v1}, Lcom/amap/location/support/nl/INetworkLocator;->removeUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;)V

    const-string v0, "gpsloc"

    const-string v1, "request-heartbeat remove"

    .line 5
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/amap/location/fusion/a/a/a;I)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/location/fusion/a/a/a;->a(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/amap/location/fusion/a/a/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/location/fusion/a/a/a;->j:I

    return p1
.end method

.method public static synthetic e(Lcom/amap/location/fusion/a/a/a;)Lcom/amap/location/support/location/AbstractLocator;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/amap/location/fusion/a/a/a;->w:Lcom/amap/location/support/location/AbstractLocator;

    return-object p0
.end method

.method public static synthetic f(Lcom/amap/location/fusion/a/a/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/location/fusion/a/a/a;->i:I

    return p1
.end method

.method public static synthetic f(Lcom/amap/location/fusion/a/a/a;)Lcom/amap/location/fusion/a/a/a$c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/amap/location/fusion/a/a/a;->x:Lcom/amap/location/fusion/a/a/a$c;

    return-object p0
.end method

.method public static synthetic g(Lcom/amap/location/fusion/a/a/a;)Lcom/amap/location/support/handler/AmapLooper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/fusion/a/a/a;->l:Lcom/amap/location/support/handler/AmapLooper;

    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/amap/location/fusion/a/a/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/location/fusion/a/a/a;->j:I

    .line 3
    return p0
.end method

.method public static synthetic i(Lcom/amap/location/fusion/a/a/a;)Lcom/amap/location/fusion/util/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/fusion/a/a/a;->o:Lcom/amap/location/fusion/util/c;

    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/amap/location/fusion/a/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/fusion/a/a/a;->d()V

    .line 4
    return-void
.end method

.method public static synthetic k(Lcom/amap/location/fusion/a/a/a;)Lcom/amap/location/fusion/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/fusion/a/a/a;->p:Lcom/amap/location/fusion/b/b;

    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 1

    .line 6
    instance-of v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 8
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->q:Lcom/amap/location/e/b;

    invoke-virtual {v0, p1}, Lcom/amap/location/e/b;->b(Lcom/amap/location/support/bean/location/AmapLocation;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->q:Lcom/amap/location/e/b;

    invoke-virtual {v0, p1}, Lcom/amap/location/e/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Z)V
    .locals 2

    const/16 v0, 0x2710

    if-eqz p1, :cond_0

    const/16 v1, 0x1388

    goto :goto_0

    :cond_0
    const/16 v1, 0x2710

    .line 10
    :goto_0
    iput v1, p0, Lcom/amap/location/fusion/a/a/a;->c:I

    if-eqz p1, :cond_1

    const/16 v0, 0x4b0

    .line 11
    :cond_1
    iput v0, p0, Lcom/amap/location/fusion/a/a/a;->d:I

    .line 12
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->q:Lcom/amap/location/e/b;

    invoke-virtual {v0, p1}, Lcom/amap/location/e/b;->b(Z)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractLocator;->hasStart()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->q:Lcom/amap/location/e/b;

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/e/b;->c()V

    .line 6
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->s:Lcom/amap/location/e/g;

    .line 8
    invoke-virtual {v0}, Lcom/amap/location/e/g;->a()V

    .line 11
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->p:Lcom/amap/location/fusion/b/b;

    .line 13
    invoke-virtual {v0}, Lcom/amap/location/fusion/b/b;->e()V

    .line 16
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->o:Lcom/amap/location/fusion/util/c;

    .line 18
    invoke-virtual {v0}, Lcom/amap/location/fusion/util/c;->b()V

    .line 21
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->u:Lcom/amap/location/fusion/a/a/a$d;

    .line 23
    invoke-static {v0}, Lcom/amap/location/fusion/a/a/a$d;->a(Lcom/amap/location/fusion/a/a/a$d;)V

    .line 26
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->w:Lcom/amap/location/support/location/AbstractLocator;

    .line 28
    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Lcom/amap/location/support/app/IModule;->release()V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a;->x:Lcom/amap/location/fusion/a/a/a$c;

    .line 35
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0}, Lcom/amap/location/fusion/a/a/a$c;->c()V

    .line 40
    :cond_1
    return-void
.end method

.method public startLocation()V
    .locals 5

    .line 1
    const-string v0, "gpsloc"

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->B:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 5
    invoke-virtual {p0}, Lcom/amap/location/fusion/a/a;->a()J

    .line 8
    move-result-wide v2

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->setMinTime(J)V

    .line 12
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/amap/location/fusion/a/a/a;->B:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 22
    iget-object v3, p0, Lcom/amap/location/fusion/a/a/a;->l:Lcom/amap/location/support/handler/AmapLooper;

    .line 24
    invoke-interface {v1, v2, v3}, Lcom/amap/location/support/signal/gnss/IGnssManager;->requestGnssUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 27
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->p:Lcom/amap/location/fusion/b/b;

    .line 29
    invoke-virtual {v1}, Lcom/amap/location/fusion/b/b;->a()V

    .line 32
    const-string v1, "req gps update"

    .line 34
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->m:Lcom/amap/location/support/handler/AmapHandler;

    .line 39
    iget-object v2, p0, Lcom/amap/location/fusion/a/a/a;->E:Ljava/lang/Runnable;

    .line 41
    invoke-interface {v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->m:Lcom/amap/location/support/handler/AmapHandler;

    .line 46
    iget-object v2, p0, Lcom/amap/location/fusion/a/a/a;->E:Ljava/lang/Runnable;

    .line 48
    iget v3, p0, Lcom/amap/location/fusion/a/a/a;->c:I

    .line 50
    int-to-long v3, v3

    .line 51
    invoke-interface {v1, v2, v3, v4}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->m:Lcom/amap/location/support/handler/AmapHandler;

    .line 56
    iget-object v2, p0, Lcom/amap/location/fusion/a/a/a;->F:Ljava/lang/Runnable;

    .line 58
    invoke-interface {v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->m:Lcom/amap/location/support/handler/AmapHandler;

    .line 63
    iget-object v2, p0, Lcom/amap/location/fusion/a/a/a;->F:Ljava/lang/Runnable;

    .line 65
    sget-boolean v3, Lcom/amap/location/fusion/a/a/a;->a:Z

    .line 67
    if-eqz v3, :cond_0

    .line 69
    const-wide/16 v3, 0x64

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget v3, p0, Lcom/amap/location/fusion/a/a/a;->d:I

    .line 74
    int-to-long v3, v3

    .line 75
    :goto_0
    invoke-interface {v1, v2, v3, v4}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    sget-boolean v1, Lcom/amap/location/e/a/d;->v:Z

    .line 80
    if-nez v1, :cond_1

    .line 82
    sget-boolean v1, Lcom/amap/location/e/a/d;->q:Z

    .line 84
    if-eqz v1, :cond_2

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->q:Lcom/amap/location/e/b;

    .line 88
    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v1}, Lcom/amap/location/e/b;->a()V

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->b:Lcom/amap/location/support/app/MessageCenterListener;

    .line 95
    invoke-static {v1}, Lcom/amap/location/support/app/MessageCenter;->addStatListener(Lcom/amap/location/support/app/MessageCenterListener;)V

    .line 98
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->t:Lcom/amap/location/fusion/a/a/a$a;

    .line 100
    invoke-virtual {v1}, Lcom/amap/location/fusion/a/a/a$a;->a()V

    .line 103
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getScene()I

    .line 106
    move-result v1

    .line 107
    invoke-direct {p0, v1}, Lcom/amap/location/fusion/a/a/a;->a(I)Z

    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_3

    .line 113
    iget-object v2, p0, Lcom/amap/location/fusion/a/a/a;->w:Lcom/amap/location/support/location/AbstractLocator;

    .line 115
    if-eqz v2, :cond_3

    .line 117
    invoke-virtual {v2}, Lcom/amap/location/support/location/AbstractLocator;->start()V

    .line 120
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const-string v3, "rtk is in scene:"

    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getScene()I

    .line 133
    move-result v3

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const-string v3, ","

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 149
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/amap/location/e/d;->a()Lcom/amap/location/e/d;

    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/amap/location/e/d;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_1

    .line 160
    :catch_0
    move-exception v1

    .line 161
    const-string v2, "gps request error:"

    .line 163
    invoke-static {v0, v2, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    :goto_1
    return-void
.end method

.method public stopLocation()V
    .locals 3

    .line 1
    const-string v0, "gpsloc"

    .line 3
    :try_start_0
    invoke-static {}, Lcom/amap/location/e/d;->a()Lcom/amap/location/e/d;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/amap/location/e/d;->d()V

    .line 10
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->b:Lcom/amap/location/support/app/MessageCenterListener;

    .line 12
    invoke-static {v1}, Lcom/amap/location/support/app/MessageCenter;->removeStatListener(Lcom/amap/location/support/app/MessageCenterListener;)V

    .line 15
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->m:Lcom/amap/location/support/handler/AmapHandler;

    .line 17
    iget-object v2, p0, Lcom/amap/location/fusion/a/a/a;->E:Ljava/lang/Runnable;

    .line 19
    invoke-interface {v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->m:Lcom/amap/location/support/handler/AmapHandler;

    .line 24
    iget-object v2, p0, Lcom/amap/location/fusion/a/a/a;->F:Ljava/lang/Runnable;

    .line 26
    invoke-interface {v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->o:Lcom/amap/location/fusion/util/c;

    .line 31
    invoke-virtual {v1}, Lcom/amap/location/fusion/util/c;->b()V

    .line 34
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->p:Lcom/amap/location/fusion/b/b;

    .line 36
    invoke-virtual {v1}, Lcom/amap/location/fusion/b/b;->d()V

    .line 39
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->q:Lcom/amap/location/e/b;

    .line 41
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Lcom/amap/location/e/b;->b()V

    .line 46
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v1}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 53
    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/amap/location/fusion/a/a/a;->B:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 56
    invoke-interface {v1, v2}, Lcom/amap/location/support/signal/gnss/IGnssManager;->removeGnssUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Z

    .line 59
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->p:Lcom/amap/location/fusion/b/b;

    .line 61
    invoke-virtual {v1}, Lcom/amap/location/fusion/b/b;->b()V

    .line 64
    const-string v1, "remove gps update"

    .line 66
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->w:Lcom/amap/location/support/location/AbstractLocator;

    .line 71
    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v1}, Lcom/amap/location/support/location/AbstractLocator;->stop()V

    .line 76
    const-string v1, "remove rkt update"

    .line 78
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->x:Lcom/amap/location/fusion/a/a/a$c;

    .line 83
    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {v1}, Lcom/amap/location/fusion/a/a/a$c;->b()V

    .line 88
    const-string v1, "remove hms update"

    .line 90
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_2
    invoke-static {}, Lcom/amap/location/fusion/util/h;->a()Lcom/amap/location/fusion/util/h;

    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/amap/location/fusion/util/h;->b()V

    .line 100
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a;->u:Lcom/amap/location/fusion/a/a/a$d;

    .line 102
    invoke-static {v1}, Lcom/amap/location/fusion/a/a/a$d;->a(Lcom/amap/location/fusion/a/a/a$d;)V

    .line 105
    const/4 v1, 0x1

    .line 106
    iput-boolean v1, p0, Lcom/amap/location/fusion/a/a/a;->z:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    const-string v2, "gps remove error:"

    .line 112
    invoke-static {v0, v2, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    :goto_0
    return-void
.end method
