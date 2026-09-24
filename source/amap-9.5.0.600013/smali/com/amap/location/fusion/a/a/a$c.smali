.class Lcom/amap/location/fusion/a/a/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field a:Lcom/amap/location/support/app/MessageCenterListener;

.field final synthetic b:Lcom/amap/location/fusion/a/a/a;

.field private c:Lcom/amap/location/support/location/AbstractLocator;

.field private d:[Ljava/lang/String;

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Lcom/amap/location/support/bean/location/AmapLocation;

.field private i:Lcom/amap/location/support/location/AbstractLocationCallback;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/a/a/a;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a$c;->b:Lcom/amap/location/fusion/a/a/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-wide/16 v0, 0x2710

    .line 8
    iput-wide v0, p0, Lcom/amap/location/fusion/a/a/a$c;->e:J

    .line 10
    new-instance p1, Lcom/amap/location/fusion/a/a/a$c$1;

    .line 12
    invoke-direct {p1, p0}, Lcom/amap/location/fusion/a/a/a$c$1;-><init>(Lcom/amap/location/fusion/a/a/a$c;)V

    .line 15
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a$c;->i:Lcom/amap/location/support/location/AbstractLocationCallback;

    .line 17
    new-instance p1, Lcom/amap/location/fusion/a/a/a$c$2;

    .line 19
    invoke-direct {p1, p0}, Lcom/amap/location/fusion/a/a/a$c$2;-><init>(Lcom/amap/location/fusion/a/a/a$c;)V

    .line 22
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a$c;->a:Lcom/amap/location/support/app/MessageCenterListener;

    .line 24
    invoke-static {}, Lcom/amap/location/support/location/LocatorFactory;->getInstance()Lcom/amap/location/support/location/LocatorFactory;

    .line 27
    move-result-object p1

    .line 28
    const-string v0, "9"

    .line 30
    invoke-virtual {p1, v0}, Lcom/amap/location/support/location/LocatorFactory;->create(Ljava/lang/String;)Lcom/amap/location/support/location/AbstractLocator;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a$c;->c:Lcom/amap/location/support/location/AbstractLocator;

    .line 36
    if-eqz p1, :cond_0

    .line 38
    invoke-interface {p1}, Lcom/amap/location/support/app/IModule;->init()V

    .line 41
    iget-object p1, p0, Lcom/amap/location/fusion/a/a/a$c;->c:Lcom/amap/location/support/location/AbstractLocator;

    .line 43
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a$c;->i:Lcom/amap/location/support/location/AbstractLocationCallback;

    .line 45
    invoke-virtual {p1, v0}, Lcom/amap/location/support/location/AbstractLocator;->setCallback(Lcom/amap/location/support/location/AbstractLocationCallback;)V

    .line 48
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    .line 54
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    const-string v1, "hms"

    .line 59
    invoke-virtual {p1, v1, v0}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 62
    move-result-object p1

    .line 63
    const-string v0, "timeout"

    .line 65
    iget-wide v1, p0, Lcom/amap/location/fusion/a/a/a$c;->e:J

    .line 67
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 70
    move-result-wide v0

    .line 71
    iput-wide v0, p0, Lcom/amap/location/fusion/a/a/a$c;->e:J

    .line 73
    const-string v0, "city"

    .line 75
    const-string v1, ""

    .line 77
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    const-string v0, ","

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a$c;->d:[Ljava/lang/String;

    .line 89
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/fusion/a/a/a$c;Lcom/amap/location/support/bean/location/AmapLocation;)Lcom/amap/location/support/bean/location/AmapLocation;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a$c;->h:Lcom/amap/location/support/bean/location/AmapLocation;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/fusion/a/a/a$c;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/amap/location/fusion/a/a/a$c;->f:Z

    return p0
.end method

.method private e()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a$c;->d:[Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 6
    array-length v2, v0

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v2, :cond_2

    .line 10
    aget-object v4, v0, v3

    .line 12
    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/amap/location/fusion/a/a/a$c;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/amap/location/fusion/a/a/a$c;->f:Z

    .line 5
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$c;->a:Lcom/amap/location/support/app/MessageCenterListener;

    invoke-static {v1}, Lcom/amap/location/support/app/MessageCenter;->addStatListener(Lcom/amap/location/support/app/MessageCenterListener;)V

    .line 6
    invoke-direct {p0}, Lcom/amap/location/fusion/a/a/a$c;->e()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$c;->c:Lcom/amap/location/support/location/AbstractLocator;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/amap/location/support/location/AbstractLocator;->start()V

    .line 9
    iput-boolean v0, p0, Lcom/amap/location/fusion/a/a/a$c;->g:Z

    :cond_2
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/fusion/a/a/a$c;->g:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/amap/location/fusion/a/a/a$c;->f:Z

    .line 9
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$c;->c:Lcom/amap/location/support/location/AbstractLocator;

    .line 11
    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1}, Lcom/amap/location/support/location/AbstractLocator;->stop()V

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$c;->a:Lcom/amap/location/support/app/MessageCenterListener;

    .line 18
    invoke-static {v1}, Lcom/amap/location/support/app/MessageCenter;->removeStatListener(Lcom/amap/location/support/app/MessageCenterListener;)V

    .line 21
    iput-boolean v0, p0, Lcom/amap/location/fusion/a/a/a$c;->g:Z

    .line 23
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/fusion/a/a/a$c;->b()V

    .line 4
    return-void
.end method

.method public d()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a$c;->h:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/amap/location/fusion/a/a/a$c;->h:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 15
    invoke-virtual {v2}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 18
    move-result-wide v2

    .line 19
    sub-long/2addr v0, v2

    .line 20
    iget-wide v2, p0, Lcom/amap/location/fusion/a/a/a$c;->e:J

    .line 22
    cmp-long v4, v0, v2

    .line 24
    if-gez v4, :cond_0

    .line 26
    const/4 v0, 0x1

    .line 27
    return v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return v0
.end method
