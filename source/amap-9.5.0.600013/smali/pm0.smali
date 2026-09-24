.class public Lpm0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lpm0;->a:Z

    .line 7
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p1, Lpm0;->b:Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;

    .line 5
    new-instance v0, Landroid/content/Intent;

    .line 7
    const-string v1, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_WEATHER_INFO"

    .line 9
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v1, "WEATHER_INFO_KEY"

    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17
    invoke-static {}, Lrv;->H()Lrv;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lrv;->L()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 31
    :cond_0
    return-void
.end method
