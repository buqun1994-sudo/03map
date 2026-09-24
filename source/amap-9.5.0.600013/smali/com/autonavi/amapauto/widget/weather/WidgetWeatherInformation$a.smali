.class public Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;
    .locals 3

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 10
    move-result v2

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, v1, v2, p1}, Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    return-object v0
.end method

.method public b(I)[Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;

    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation$a;->a(Landroid/os/Parcel;)Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation$a;->b(I)[Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
