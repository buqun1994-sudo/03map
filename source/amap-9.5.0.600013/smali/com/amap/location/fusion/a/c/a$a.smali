.class Lcom/amap/location/fusion/a/c/a$a;
.super Lcom/amap/location/support/location/LocationFilterCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/a/c/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/a/c/a;ILcom/amap/location/support/location/AbstractPriorityLocationFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/a/c/a$a;->a:Lcom/amap/location/fusion/a/c/a;

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/amap/location/support/location/LocationFilterCallback;-><init>(ILcom/amap/location/support/location/AbstractPriorityLocationFilter;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/a$a;->a:Lcom/amap/location/fusion/a/c/a;

    .line 3
    invoke-static {v0}, Lcom/amap/location/fusion/a/c/a;->a(Lcom/amap/location/fusion/a/c/a;)Lcom/amap/location/fusion/a/c/c;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 16
    move-result-wide v3

    .line 17
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amap/location/support/fence/RectangleFence;->isIn(DD)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getPoiid()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 33
    iget-object v0, v0, Lcom/amap/location/fusion/a/c/c;->b:Ljava/lang/String;

    .line 35
    invoke-virtual {p1, v0}, Lcom/amap/location/type/location/Location;->setPoiid(Ljava/lang/String;)V

    .line 38
    :cond_0
    invoke-super {p0, p1}, Lcom/amap/location/support/location/LocationFilterCallback;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v1, "loc out of fence:"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 55
    move-result-wide v1

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, "#"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 67
    move-result-wide v1

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    const-string v0, "prilocmgr"

    .line 77
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void
.end method
