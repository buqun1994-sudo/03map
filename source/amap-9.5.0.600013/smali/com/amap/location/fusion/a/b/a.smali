.class public Lcom/amap/location/fusion/a/b/a;
.super Lcom/amap/location/fusion/a/a;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/location/g/b;

.field private b:Lcom/amap/location/g/f;

.field private c:Lcom/amap/location/fusion/util/f;

.field private d:I

.field private e:Z

.field private f:Lcom/amap/location/support/handler/AmapLooper;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/amap/location/support/nl/NetworkLocationListener;


# direct methods
.method public constructor <init>(ZLorg/json/JSONObject;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/amap/location/fusion/a/a;-><init>()V

    .line 4
    new-instance v0, Lcom/amap/location/fusion/util/f;

    .line 6
    invoke-direct {v0}, Lcom/amap/location/fusion/util/f;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/amap/location/fusion/a/b/a;->c:Lcom/amap/location/fusion/util/f;

    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/amap/location/fusion/a/b/a;->d:I

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/amap/location/fusion/a/b/a;->e:Z

    .line 17
    iput-boolean v0, p0, Lcom/amap/location/fusion/a/b/a;->g:Z

    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/amap/location/fusion/a/b/a;->h:Z

    .line 22
    iput-boolean v0, p0, Lcom/amap/location/fusion/a/b/a;->i:Z

    .line 24
    new-instance v2, Lcom/amap/location/fusion/a/b/a$1;

    .line 26
    invoke-direct {v2, p0, v1}, Lcom/amap/location/fusion/a/b/a$1;-><init>(Lcom/amap/location/fusion/a/b/a;I)V

    .line 29
    iput-object v2, p0, Lcom/amap/location/fusion/a/b/a;->j:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 31
    iput-object p3, p0, Lcom/amap/location/fusion/a/b/a;->f:Lcom/amap/location/support/handler/AmapLooper;

    .line 33
    new-instance p3, Lcom/amap/location/g/b;

    .line 35
    invoke-direct {p3}, Lcom/amap/location/g/b;-><init>()V

    .line 38
    iput-object p3, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    .line 40
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getLicense()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    iput-object v2, p3, Lcom/amap/location/g/b;->b:Ljava/lang/String;

    .line 46
    iget-object p3, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    .line 48
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getMapkey()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    iput-object v2, p3, Lcom/amap/location/g/b;->c:Ljava/lang/String;

    .line 54
    iget-object p3, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    .line 56
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_0

    .line 62
    const-string v2, "AmapSS_v2.0_R131029"

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProcessName()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    :goto_0
    iput-object v2, p3, Lcom/amap/location/g/b;->a:Ljava/lang/String;

    .line 71
    iget-object p3, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    .line 73
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    iput-object v2, p3, Lcom/amap/location/g/b;->d:Ljava/lang/String;

    .line 79
    iget-object p3, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    .line 81
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getCollVersion()Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    iput-object v2, p3, Lcom/amap/location/g/b;->e:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 90
    move-result p3

    .line 91
    if-eqz p3, :cond_1

    .line 93
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 96
    move-result p3

    .line 97
    const/4 v2, 0x3

    .line 98
    if-eq p3, v2, :cond_1

    .line 100
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 103
    move-result p3

    .line 104
    const/16 v2, 0x8

    .line 106
    if-ne p3, v2, :cond_2

    .line 108
    :cond_1
    iget-object p3, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    .line 110
    invoke-static {p2}, Lcom/amap/location/fusion/b/c;->a(Lorg/json/JSONObject;)Lcom/amap/location/g/b$b;

    .line 113
    move-result-object v2

    .line 114
    iput-object v2, p3, Lcom/amap/location/g/b;->m:Lcom/amap/location/g/b$b;

    .line 116
    :cond_2
    iget-object p3, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    .line 118
    invoke-static {}, Lcom/amap/location/fusion/b/c;->a()Lcom/amap/location/i/c;

    .line 121
    move-result-object v2

    .line 122
    iput-object v2, p3, Lcom/amap/location/g/b;->o:Lcom/amap/location/i/c;

    .line 124
    iget-object p3, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    .line 126
    new-instance v2, Lcom/amap/location/fusion/b/d;

    .line 128
    invoke-direct {v2, p1}, Lcom/amap/location/fusion/b/d;-><init>(Z)V

    .line 131
    iput-object v2, p3, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    .line 133
    iget-object p1, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    .line 135
    iput-boolean v0, p1, Lcom/amap/location/g/b;->i:Z

    .line 137
    iput-boolean v1, p1, Lcom/amap/location/g/b;->j:Z

    .line 139
    iget-object p3, p1, Lcom/amap/location/g/b;->n:Lcom/amap/location/g/b$a;

    .line 141
    iget-object p1, p1, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    .line 143
    check-cast p1, Lcom/amap/location/fusion/b/d;

    .line 145
    invoke-static {p2, p3, p1}, Lcom/amap/location/fusion/b/c;->a(Lorg/json/JSONObject;Lcom/amap/location/g/b$a;Lcom/amap/location/fusion/b/d;)V

    .line 148
    new-instance p1, Lcom/amap/location/g/f;

    .line 150
    iget-object p2, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    .line 152
    invoke-direct {p1, p2}, Lcom/amap/location/g/f;-><init>(Lcom/amap/location/g/b;)V

    .line 155
    iput-object p1, p0, Lcom/amap/location/fusion/a/b/a;->b:Lcom/amap/location/g/f;

    .line 157
    invoke-static {p1}, Lcom/amap/location/support/AmapContext;->initNetworkLocator(Lcom/amap/location/support/nl/INetworkLocator;)V

    .line 160
    iget-object p1, p0, Lcom/amap/location/fusion/a/b/a;->b:Lcom/amap/location/g/f;

    .line 162
    invoke-virtual {p1}, Lcom/amap/location/g/f;->a()V

    .line 165
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/fusion/a/b/a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/amap/location/fusion/a/b/a;->d:I

    return p1
.end method

.method public static synthetic a(Lcom/amap/location/fusion/a/b/a;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/location/fusion/a/b/a;->a(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V

    return-void
.end method

.method private a(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRetype()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getResubtype()Ljava/lang/String;

    move-result-object p1

    const-string v1, "-1"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_0
    iget-boolean v0, p0, Lcom/amap/location/fusion/a/b/a;->g:Z

    if-eq p1, v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    iget-object v0, v0, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    check-cast v0, Lcom/amap/location/fusion/b/d;

    .line 25
    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/b/d;->c(Z)V

    .line 26
    iput-boolean p1, p0, Lcom/amap/location/fusion/a/b/a;->g:Z

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/fusion/a/b/a;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/amap/location/fusion/a/b/a;->e:Z

    return p0
.end method

.method public static synthetic b(Lcom/amap/location/fusion/a/b/a;)Lcom/amap/location/fusion/util/f;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/amap/location/fusion/a/b/a;->c:Lcom/amap/location/fusion/util/f;

    return-object p0
.end method

.method public static synthetic c(Lcom/amap/location/fusion/a/b/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/location/fusion/a/b/a;->d:I

    return p0
.end method

.method private d()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a;->j:Lcom/amap/location/support/nl/NetworkLocationListener;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setWifiScanInterval(I)V

    .line 3
    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a;->j:Lcom/amap/location/support/nl/NetworkLocationListener;

    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onNavi()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2710

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setWifiConnectScanInterval(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "amapnl"

    .line 5
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractLocator;->hasStart()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/amap/location/fusion/a/b/a;->stopLocation()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getLicense()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/location/g/b;->b:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getMapkey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/location/g/b;->c:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    iget-object v1, v0, Lcom/amap/location/g/b;->n:Lcom/amap/location/g/b$a;

    iget-object v0, v0, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    check-cast v0, Lcom/amap/location/fusion/b/d;

    invoke-static {p1, v1, v0}, Lcom/amap/location/fusion/b/c;->a(Lorg/json/JSONObject;Lcom/amap/location/g/b$a;Lcom/amap/location/fusion/b/d;)V

    .line 11
    invoke-static {}, Lcom/amap/location/fusion/b/c;->a()Lcom/amap/location/i/c;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    iput-object v0, v1, Lcom/amap/location/g/b;->o:Lcom/amap/location/i/c;

    .line 13
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    invoke-static {p1}, Lcom/amap/location/fusion/b/c;->a(Lorg/json/JSONObject;)Lcom/amap/location/g/b$b;

    move-result-object p1

    iput-object p1, v0, Lcom/amap/location/g/b;->m:Lcom/amap/location/g/b$b;

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/amap/location/fusion/a/b/a;->b:Lcom/amap/location/g/f;

    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    invoke-virtual {p1, v0}, Lcom/amap/location/g/f;->a(Lcom/amap/location/g/b;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 16
    iput-boolean p1, p0, Lcom/amap/location/fusion/a/b/a;->e:Z

    .line 17
    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    iget-object v0, v0, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    check-cast v0, Lcom/amap/location/fusion/b/d;

    .line 18
    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/b/d;->b(Z)V

    .line 19
    invoke-direct {p0}, Lcom/amap/location/fusion/a/b/a;->d()V

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    iget-object v0, v0, Lcom/amap/location/g/b;->l:Lcom/amap/location/g/e;

    check-cast v0, Lcom/amap/location/fusion/b/d;

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/b/d;->f(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractLocator;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/amap/location/fusion/a/b/a;->startLocation()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 4
    iget-object p1, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/amap/location/g/b;->i:Z

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a;->a:Lcom/amap/location/g/b;

    iput-boolean p1, v0, Lcom/amap/location/g/b;->j:Z

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/fusion/a/b/a;->i:Z

    .line 3
    return v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a;->b:Lcom/amap/location/g/f;

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/g/f;->b()V

    .line 6
    return-void
.end method

.method public startLocation()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/fusion/a/b/a;->i:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/amap/location/fusion/a/b/a;->i:Z

    .line 8
    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a;->j:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 10
    invoke-virtual {p0}, Lcom/amap/location/fusion/a/a;->a()J

    .line 13
    move-result-wide v1

    .line 14
    long-to-int v2, v1

    .line 15
    invoke-virtual {v0, v2}, Lcom/amap/location/support/nl/NetworkLocationListener;->setInterval(I)V

    .line 18
    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a;->j:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setOnlayOnline(Z)V

    .line 24
    invoke-direct {p0}, Lcom/amap/location/fusion/a/b/a;->d()V

    .line 27
    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a;->b:Lcom/amap/location/g/f;

    .line 29
    iget-object v2, p0, Lcom/amap/location/fusion/a/b/a;->j:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 31
    iget-boolean v3, p0, Lcom/amap/location/fusion/a/b/a;->h:Z

    .line 33
    iget-object v4, p0, Lcom/amap/location/fusion/a/b/a;->f:Lcom/amap/location/support/handler/AmapLooper;

    .line 35
    invoke-virtual {v0, v2, v3, v4}, Lcom/amap/location/g/f;->requestLocationUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;ZLcom/amap/location/support/handler/AmapLooper;)V

    .line 38
    iput-boolean v1, p0, Lcom/amap/location/fusion/a/b/a;->h:Z

    .line 40
    const-string v0, "netloc"

    .line 42
    const-string v1, "req net update"

    .line 44
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public stopLocation()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/fusion/a/b/a;->i:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/amap/location/fusion/a/b/a;->i:Z

    .line 8
    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a;->b:Lcom/amap/location/g/f;

    .line 10
    iget-object v1, p0, Lcom/amap/location/fusion/a/b/a;->j:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 12
    invoke-virtual {v0, v1}, Lcom/amap/location/g/f;->removeUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;)V

    .line 15
    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a;->c:Lcom/amap/location/fusion/util/f;

    .line 17
    invoke-virtual {v0}, Lcom/amap/location/fusion/util/f;->a()V

    .line 20
    :cond_0
    return-void
.end method
