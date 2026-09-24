.class public Lad;
.super Lmc;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "BoJunB31InteractionImpl"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lmc;-><init>()V

    .line 4
    sget-object v0, Lad;->a:Ljava/lang/String;

    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    const-string v2, "BoJunB31InteractionImpl()"

    .line 11
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getLocationInfo(Landroid/location/Location;)Lcom/autonavi/amapauto/location/model/LocDrPos;
    .locals 0

    .line 1
    invoke-static {p1}, Lvy;->a(Landroid/location/Location;)Lcom/autonavi/amapauto/location/model/LocDrPos;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getMapMatchFeedbackInfo(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lvy;->d(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
