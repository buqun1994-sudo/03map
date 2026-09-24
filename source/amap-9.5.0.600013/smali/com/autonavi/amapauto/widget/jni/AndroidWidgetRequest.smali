.class public Lcom/autonavi/amapauto/widget/jni/AndroidWidgetRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidWidgetRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native abortRequestInfo(I)V
.end method

.method public static native isRequesting(I)Z
.end method

.method public static onAroundSearchInfo(II)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const-string v1, "AndroidWidgetRequest"

    .line 20
    const-string v2, "onAroundSearchInfo type={?},distance={?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lrv;->H()Lrv;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x3

    .line 34
    if-ne p0, v1, :cond_0

    .line 36
    invoke-static {v0, p1}, Lgc0;->h(Landroid/content/Context;I)V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x4

    .line 41
    if-ne p0, v1, :cond_1

    .line 43
    invoke-static {v0, p1}, Lgc0;->g(Landroid/content/Context;I)V

    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public static onCommuteInfo(ILjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/widget/jni/TrafficEarthWorm;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p0

    .line 9
    aput-object p0, v0, v1

    .line 11
    const/4 p0, 0x1

    .line 12
    aput-object p1, v0, p0

    .line 14
    const/4 p0, 0x2

    .line 15
    aput-object p2, v0, p0

    .line 17
    const-string p0, "AndroidWidgetRequest"

    .line 19
    const-string p1, "onCommuteInfo type={?},routeTime={?},traffic={?}"

    .line 21
    invoke-static {p0, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public static onPoiReverseInfo(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v1, "AndroidWidgetRequest"

    .line 9
    const-string v2, "onPoiReverseInfo addr={?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    sput-object p0, Lnb;->j:Ljava/lang/String;

    .line 16
    invoke-static {}, Lrv;->H()Lrv;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Ljm0;->d(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public static onWeatherInfo(ILjava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    aput-object p1, v0, v1

    .line 14
    const-string v1, "AndroidWidgetRequest"

    .line 16
    const-string v2, "onWeatherInfo temperature={?},weatherCondition={?}"

    .line 18
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    new-instance v0, Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;

    .line 23
    invoke-direct {v0}, Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;-><init>()V

    .line 26
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    iput-object p0, v0, Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;->a:Ljava/lang/String;

    .line 32
    iput-object p1, v0, Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;->c:Ljava/lang/String;

    .line 34
    invoke-static {}, Lrv;->H()Lrv;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0, v0}, Lpm0;->a(Landroid/content/Context;Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;)V

    .line 45
    return-void
.end method

.method public static native requestWidgetInfo(I)V
.end method
