.class public Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/openspace/IOpenSpaceDetector;


# static fields
.field private static final TAG:Ljava/lang/String; = "osd"


# instance fields
.field private mOpenSpaceDetectorProvider:Lcom/amap/location/support/openspace/IOpenSpaceDetector;

.field private mWork:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isOpenSpace()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;->mOpenSpaceDetectorProvider:Lcom/amap/location/support/openspace/IOpenSpaceDetector;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/amap/location/support/openspace/IOpenSpaceDetector;->isOpenSpace()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;->mOpenSpaceDetectorProvider:Lcom/amap/location/support/openspace/IOpenSpaceDetector;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    const-string v1, "osd"

    .line 8
    const-string v2, "reset"

    .line 10
    invoke-static {v1, v2}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-interface {v0}, Lcom/amap/location/support/openspace/IOpenSpaceDetector;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 21
    :goto_0
    return-void
.end method

.method public sceneChanged(I)V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    const-string v1, "osd"

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    new-instance p1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;

    .line 8
    invoke-direct {p1}, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;->mOpenSpaceDetectorProvider:Lcom/amap/location/support/openspace/IOpenSpaceDetector;

    .line 13
    const-string p1, "use car"

    .line 15
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x6

    .line 20
    if-ne p1, v0, :cond_1

    .line 22
    new-instance p1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;

    .line 24
    invoke-direct {p1}, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;->mOpenSpaceDetectorProvider:Lcom/amap/location/support/openspace/IOpenSpaceDetector;

    .line 29
    const-string p1, "use ride"

    .line 31
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;->mOpenSpaceDetectorProvider:Lcom/amap/location/support/openspace/IOpenSpaceDetector;

    .line 37
    if-eqz p1, :cond_2

    .line 39
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;->mOpenSpaceDetectorProvider:Lcom/amap/location/support/openspace/IOpenSpaceDetector;

    .line 42
    const-string p1, "no use"

    .line 44
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public setDebugLogger(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;->mOpenSpaceDetectorProvider:Lcom/amap/location/support/openspace/IOpenSpaceDetector;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Lcom/amap/location/support/openspace/IOpenSpaceDetector;->setDebugLogger(Ljava/lang/StringBuffer;)V

    .line 9
    return-void
.end method

.method public updateStatus(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;->mOpenSpaceDetectorProvider:Lcom/amap/location/support/openspace/IOpenSpaceDetector;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getType()I

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 12
    iget-boolean p1, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;->mWork:Z

    .line 14
    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;->reset()V

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;->mWork:Z

    .line 22
    return-void

    .line 23
    :cond_2
    instance-of v1, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 25
    if-eqz v1, :cond_3

    .line 27
    move-object v1, p1

    .line 28
    check-cast v1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 30
    invoke-virtual {v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getLocType()I

    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x1

    .line 35
    if-ne v1, v2, :cond_3

    .line 37
    iput-boolean v2, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;->mWork:Z

    .line 39
    :try_start_0
    invoke-interface {v0, p1}, Lcom/amap/location/support/openspace/IOpenSpaceDetector;->updateStatus(Lcom/amap/location/support/bean/location/AmapLocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 47
    :cond_3
    :goto_0
    return-void
.end method
