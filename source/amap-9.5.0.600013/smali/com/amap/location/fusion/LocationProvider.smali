.class public Lcom/amap/location/fusion/LocationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_ALL:I = 0x7

.field public static final TYPE_GPS:I = 0x1

.field public static final TYPE_INDOOR:I = 0x4

.field public static final TYPE_NETWORK:I = 0x2

.field public static final TYPE_NONE:I

.field private static volatile j:Lcom/amap/location/fusion/LocationProvider;


# instance fields
.field private a:I

.field private b:J

.field private c:F

.field private d:Lcom/amap/location/support/handler/AmapHandler;

.field private e:Lcom/amap/location/fusion/a/b;

.field private f:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

.field private volatile g:Lcom/amap/location/fusion/b;

.field private h:Z

.field private i:I

.field private k:Z

.field private l:Z

.field private m:I

.field public mNeedUpdateAosParam:Z

.field private n:J

.field private o:F

.field private p:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

.field private q:Z

.field private r:Lcom/amap/location/fusion/a;

.field private s:Ljava/lang/Runnable;

.field private t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/amap/location/support/signal/gnss/AmapLocationListener;ZLcom/amap/location/support/handler/AmapLooper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/amap/location/fusion/LocationProvider;->a:I

    .line 7
    iput-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->h:Z

    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/amap/location/fusion/LocationProvider;->i:I

    .line 12
    iput-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->k:Z

    .line 14
    iput-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->l:Z

    .line 16
    iput v0, p0, Lcom/amap/location/fusion/LocationProvider;->m:I

    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->mNeedUpdateAosParam:Z

    .line 21
    new-instance v0, Lcom/amap/location/fusion/LocationProvider$3;

    .line 23
    invoke-direct {v0, p0}, Lcom/amap/location/fusion/LocationProvider$3;-><init>(Lcom/amap/location/fusion/LocationProvider;)V

    .line 26
    iput-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->r:Lcom/amap/location/fusion/a;

    .line 28
    new-instance v0, Lcom/amap/location/fusion/LocationProvider$4;

    .line 30
    invoke-direct {v0, p0}, Lcom/amap/location/fusion/LocationProvider$4;-><init>(Lcom/amap/location/fusion/LocationProvider;)V

    .line 33
    iput-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->s:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/amap/location/fusion/LocationProvider$5;

    .line 37
    invoke-direct {v0, p0}, Lcom/amap/location/fusion/LocationProvider$5;-><init>(Lcom/amap/location/fusion/LocationProvider;)V

    .line 40
    iput-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->t:Ljava/lang/Runnable;

    .line 42
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-interface {v0, p3, v1}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->d:Lcom/amap/location/support/handler/AmapHandler;

    .line 53
    iput-boolean p2, p0, Lcom/amap/location/fusion/LocationProvider;->q:Z

    .line 55
    iput-object p1, p0, Lcom/amap/location/fusion/LocationProvider;->f:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 57
    invoke-static {}, Lcom/amap/location/fusion/util/AmapExtraUtil;->getDefaultExtra()Lorg/json/JSONObject;

    .line 60
    move-result-object p1

    .line 61
    invoke-static {}, Lcom/amap/location/fusion/util/d;->a()Lcom/amap/location/fusion/util/d;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, p3, p2}, Lcom/amap/location/fusion/util/d;->a(Lcom/amap/location/support/handler/AmapLooper;Z)V

    .line 68
    new-instance v0, Lcom/amap/location/fusion/a/b;

    .line 70
    iget-object v1, p0, Lcom/amap/location/fusion/LocationProvider;->r:Lcom/amap/location/fusion/a;

    .line 72
    invoke-direct {v0, p2, v1, p1, p3}, Lcom/amap/location/fusion/a/b;-><init>(ZLcom/amap/location/support/signal/gnss/AmapLocationListener;Lorg/json/JSONObject;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 75
    iput-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->e:Lcom/amap/location/fusion/a/b;

    .line 77
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/fusion/LocationProvider;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/location/fusion/LocationProvider;->c:F

    return p1
.end method

.method public static synthetic a(Lcom/amap/location/fusion/LocationProvider;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/amap/location/fusion/LocationProvider;->a:I

    return p0
.end method

.method public static synthetic a(Lcom/amap/location/fusion/LocationProvider;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/amap/location/fusion/LocationProvider;->i:I

    return p1
.end method

.method public static synthetic a(Lcom/amap/location/fusion/LocationProvider;J)J
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/amap/location/fusion/LocationProvider;->b:J

    return-wide p1
.end method

.method private a()V
    .locals 8

    .line 33
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->d:Lcom/amap/location/support/handler/AmapHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 34
    invoke-direct/range {v2 .. v7}, Lcom/amap/location/fusion/LocationProvider;->a(IJFZ)V

    .line 35
    invoke-static {}, Lcom/amap/location/fusion/util/d;->a()Lcom/amap/location/fusion/util/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/fusion/util/d;->b()V

    return-void
.end method

.method private a(IJFZ)V
    .locals 7

    if-ltz p1, :cond_1

    const/4 p5, 0x7

    if-gt p1, p5, :cond_1

    const/4 p5, 0x4

    if-eq p1, p5, :cond_0

    .line 30
    iget-object p5, p0, Lcom/amap/location/fusion/LocationProvider;->d:Lcom/amap/location/support/handler/AmapHandler;

    new-instance v6, Lcom/amap/location/fusion/LocationProvider$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/location/fusion/LocationProvider$1;-><init>(Lcom/amap/location/fusion/LocationProvider;IJF)V

    invoke-interface {p5, v6}, Lcom/amap/location/support/handler/AmapHandler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type indoor is not used alone"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "wrong location type:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic a(Lcom/amap/location/fusion/LocationProvider;Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/amap/location/fusion/LocationProvider;->b(Lcom/amap/location/support/bean/location/AmapLocation;)V

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/fusion/LocationProvider;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/amap/location/fusion/LocationProvider;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/fusion/LocationProvider;Ljava/lang/String;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/amap/location/fusion/LocationProvider;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 2

    .line 9
    iget-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->k:Z

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->f:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->p:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    :cond_1
    if-eqz p1, :cond_7

    const-string v0, "gps"

    .line 13
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getType()I

    move-result p1

    if-nez p1, :cond_7

    .line 14
    iget-boolean p1, p0, Lcom/amap/location/fusion/LocationProvider;->k:Z

    if-eqz p1, :cond_4

    .line 15
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x18f46

    goto :goto_0

    :cond_2
    const p1, 0x18f41

    :goto_0
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 16
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onDriveNavi()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x18faa

    goto :goto_1

    :cond_3
    const p1, 0x18fa5

    :goto_1
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    goto :goto_4

    .line 18
    :cond_4
    iget-boolean p1, p0, Lcom/amap/location/fusion/LocationProvider;->l:Z

    if-eqz p1, :cond_7

    .line 19
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x18f48

    goto :goto_2

    :cond_5
    const p1, 0x18f49

    :goto_2
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 20
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onDriveNavi()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 21
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x18fac

    goto :goto_3

    :cond_6
    const p1, 0x18fad

    :goto_3
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    :cond_7
    :goto_4
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->k:Z

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->f:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 28
    :cond_0
    iget-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->p:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onProviderEnabled(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->k:Z

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->f:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    invoke-virtual {v0, p1, p2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onStatusChanged(Ljava/lang/String;I)V

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->p:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {v0, p1, p2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onStatusChanged(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/fusion/LocationProvider;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/amap/location/fusion/LocationProvider;->h:Z

    return p1
.end method

.method public static synthetic b(Lcom/amap/location/fusion/LocationProvider;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/location/fusion/LocationProvider;->a:I

    return p1
.end method

.method public static synthetic b(Lcom/amap/location/fusion/LocationProvider;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/amap/location/fusion/LocationProvider;->b:J

    return-wide v0
.end method

.method public static synthetic b(Lcom/amap/location/fusion/LocationProvider;Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/location/fusion/LocationProvider;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    return-void
.end method

.method public static synthetic b(Lcom/amap/location/fusion/LocationProvider;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/amap/location/fusion/LocationProvider;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 7

    .line 9
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocalSemantic()Lcom/amap/location/support/bean/LocalSemantic;

    move-result-object v0

    if-eqz p1, :cond_5

    if-nez v0, :cond_0

    goto :goto_3

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSemantics()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "source"

    if-nez v2, :cond_3

    :try_start_1
    const-string v2, "{}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 12
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 13
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, -0x1

    if-ge v4, v5, :cond_2

    .line 14
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 15
    invoke-virtual {v5, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_1
    if-eq v4, v6, :cond_4

    .line 16
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 17
    :cond_3
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 18
    :cond_4
    :goto_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 19
    iget v4, v0, Lcom/amap/location/support/bean/LocalSemantic;->source:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "scenes"

    .line 20
    iget-object v0, v0, Lcom/amap/location/support/bean/LocalSemantic;->scene:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 22
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/location/type/location/Location;->setSemantics(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v0, "locprovider"

    .line 23
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->k:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->f:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->p:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onProviderDisabled(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/amap/location/fusion/LocationProvider;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/location/fusion/LocationProvider;->c:F

    return p0
.end method

.method public static synthetic c(Lcom/amap/location/fusion/LocationProvider;Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/location/fusion/LocationProvider;->c(Lcom/amap/location/support/bean/location/AmapLocation;)V

    return-void
.end method

.method private c(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 4

    .line 3
    iget v0, p0, Lcom/amap/location/fusion/LocationProvider;->i:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v2, "indoor"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "gps"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    .line 7
    :cond_2
    instance-of v1, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 8
    check-cast p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getLocType()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_6

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    goto :goto_1

    .line 9
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknow provider "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "locprovider"

    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    .line 10
    :cond_6
    :goto_1
    iget p1, p0, Lcom/amap/location/fusion/LocationProvider;->i:I

    if-ge p1, v1, :cond_7

    .line 11
    iput v1, p0, Lcom/amap/location/fusion/LocationProvider;->i:I

    :cond_7
    return-void
.end method

.method public static synthetic d(Lcom/amap/location/fusion/LocationProvider;)Lcom/amap/location/fusion/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/fusion/LocationProvider;->e:Lcom/amap/location/fusion/a/b;

    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/amap/location/fusion/LocationProvider;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/fusion/LocationProvider;->t:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/amap/location/fusion/LocationProvider;)Lcom/amap/location/support/handler/AmapHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/fusion/LocationProvider;->d:Lcom/amap/location/support/handler/AmapHandler;

    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/amap/location/fusion/LocationProvider;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/location/fusion/LocationProvider;->q:Z

    .line 3
    return p0
.end method

.method public static getMainProvider()Lcom/amap/location/fusion/LocationProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/fusion/LocationProvider;->j:Lcom/amap/location/fusion/LocationProvider;

    .line 3
    return-object v0
.end method

.method public static synthetic h(Lcom/amap/location/fusion/LocationProvider;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/fusion/LocationProvider;->s:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/amap/location/fusion/LocationProvider;)Lcom/amap/location/fusion/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/fusion/LocationProvider;->r:Lcom/amap/location/fusion/a;

    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/amap/location/fusion/LocationProvider;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/location/fusion/LocationProvider;->h:Z

    .line 3
    return p0
.end method

.method public static synthetic k(Lcom/amap/location/fusion/LocationProvider;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/location/fusion/LocationProvider;->i:I

    .line 3
    return p0
.end method

.method public static setMainProvider(Lcom/amap/location/fusion/LocationProvider;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/fusion/LocationProvider;->j:Lcom/amap/location/fusion/LocationProvider;

    .line 3
    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->e:Lcom/amap/location/fusion/a/b;

    .line 4
    invoke-virtual {v0}, Lcom/amap/location/fusion/a/b;->b()V

    .line 7
    invoke-static {}, Lcom/amap/location/fusion/util/d;->a()Lcom/amap/location/fusion/util/d;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/amap/location/fusion/util/d;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public getRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "network"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    const-string p1, ""

    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public declared-synchronized removeFromMain()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->k:Z

    .line 5
    iget-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->l:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->e:Lcom/amap/location/fusion/a/b;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/amap/location/fusion/a/b;->b(Z)V

    .line 15
    iget v3, p0, Lcom/amap/location/fusion/LocationProvider;->m:I

    .line 17
    iget-wide v4, p0, Lcom/amap/location/fusion/LocationProvider;->n:J

    .line 19
    iget v6, p0, Lcom/amap/location/fusion/LocationProvider;->o:F

    .line 21
    const/4 v7, 0x0

    .line 22
    move-object v2, p0

    .line 23
    invoke-direct/range {v2 .. v7}, Lcom/amap/location/fusion/LocationProvider;->a(IJFZ)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/amap/location/fusion/LocationProvider;->a()V

    .line 30
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string v1, "removeFromMain:"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-boolean v1, p0, Lcom/amap/location/fusion/LocationProvider;->k:Z

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ","

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-boolean v1, p0, Lcom/amap/location/fusion/LocationProvider;->l:Z

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    const-string v1, "locprovider"

    .line 61
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    monitor-exit p0

    .line 68
    throw v0
.end method

.method public declared-synchronized removeFromThird()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->l:Z

    .line 5
    iget-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->k:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/amap/location/fusion/LocationProvider;->a()V

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v1, "removeFromThird:"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-boolean v1, p0, Lcom/amap/location/fusion/LocationProvider;->k:Z

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ","

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-boolean v1, p0, Lcom/amap/location/fusion/LocationProvider;->l:Z

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    const-string v1, "locprovider"

    .line 43
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    monitor-exit p0

    .line 50
    throw v0
.end method

.method public declared-synchronized requestFromMain(IJFZ)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->k:Z

    .line 5
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->e:Lcom/amap/location/fusion/a/b;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/amap/location/fusion/a/b;->b(Z)V

    .line 11
    invoke-direct/range {p0 .. p5}, Lcom/amap/location/fusion/LocationProvider;->a(IJFZ)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string p2, "requestFromMain:"

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-boolean p2, p0, Lcom/amap/location/fusion/LocationProvider;->k:Z

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    const-string p2, ","

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-boolean p2, p0, Lcom/amap/location/fusion/LocationProvider;->l:Z

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    const-string p2, "locprovider"

    .line 45
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    monitor-exit p0

    .line 52
    throw p1
.end method

.method public declared-synchronized requestFromThird(IJFLcom/amap/location/support/signal/gnss/AmapLocationListener;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/amap/location/fusion/LocationProvider;->l:Z

    .line 5
    iput p1, p0, Lcom/amap/location/fusion/LocationProvider;->m:I

    .line 7
    iput-wide p2, p0, Lcom/amap/location/fusion/LocationProvider;->n:J

    .line 9
    iput p4, p0, Lcom/amap/location/fusion/LocationProvider;->o:F

    .line 11
    iput-object p5, p0, Lcom/amap/location/fusion/LocationProvider;->p:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 13
    iget-boolean p5, p0, Lcom/amap/location/fusion/LocationProvider;->k:Z

    .line 15
    if-nez p5, :cond_0

    .line 17
    iget-object p5, p0, Lcom/amap/location/fusion/LocationProvider;->e:Lcom/amap/location/fusion/a/b;

    .line 19
    invoke-virtual {p5, v0}, Lcom/amap/location/fusion/a/b;->b(Z)V

    .line 22
    const/4 v6, 0x0

    .line 23
    move-object v1, p0

    .line 24
    move v2, p1

    .line 25
    move-wide v3, p2

    .line 26
    move v5, p4

    .line 27
    invoke-direct/range {v1 .. v6}, Lcom/amap/location/fusion/LocationProvider;->a(IJFZ)V

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string p2, "requestFromThird:"

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-boolean p2, p0, Lcom/amap/location/fusion/LocationProvider;->k:Z

    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    const-string p2, ","

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-boolean p2, p0, Lcom/amap/location/fusion/LocationProvider;->l:Z

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    const-string p2, "locprovider"

    .line 61
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    monitor-exit p0

    .line 68
    throw p1
.end method

.method public setOnFailListener(Lcom/amap/location/fusion/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/LocationProvider;->g:Lcom/amap/location/fusion/b;

    .line 3
    return-void
.end method

.method public updateConfig(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->d:Lcom/amap/location/support/handler/AmapHandler;

    .line 3
    new-instance v1, Lcom/amap/location/fusion/LocationProvider$2;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/amap/location/fusion/LocationProvider$2;-><init>(Lcom/amap/location/fusion/LocationProvider;Lorg/json/JSONObject;)V

    .line 8
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->post(Ljava/lang/Runnable;)Z

    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/amap/location/fusion/LocationProvider;->mNeedUpdateAosParam:Z

    .line 14
    return-void
.end method

.method public updateEngineNaviLink(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->e:Lcom/amap/location/fusion/a/b;

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/a/b;->a(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public updateForegroundStatus(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/amap/location/fusion/LocationProvider;->e:Lcom/amap/location/fusion/a/b;

    .line 5
    invoke-virtual {p1}, Lcom/amap/location/fusion/a/b;->c()V

    .line 8
    const p1, 0x18995

    .line 11
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 14
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->hasFineLocationPermission()Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 28
    const p1, 0x18997

    .line 31
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->hasCoarseLocationPermission()Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 49
    const p1, 0x18998

    .line 52
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const p1, 0x18999

    .line 59
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const p1, 0x18996

    .line 66
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 69
    :goto_0
    return-void
.end method

.method public updateNaviStatus(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->e:Lcom/amap/location/fusion/a/b;

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/a/b;->a(Z)V

    .line 6
    return-void
.end method

.method public updateTestServer(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->e:Lcom/amap/location/fusion/a/b;

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/a/b;->c(Z)V

    .line 6
    return-void
.end method

.method public updateUseHttps(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider;->e:Lcom/amap/location/fusion/a/b;

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/a/b;->d(Z)V

    .line 6
    return-void
.end method
