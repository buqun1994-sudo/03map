.class public Lcom/amap/location/support/bean/protocal/HistoryLocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final INT_LATLNG:Ljava/lang/Double;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public lat:I

.field public locType:I

.field public lon:I

.field public radius:I

.field public retype:I

.field public subretype:I

.field public time:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, 0x416312d000000000L    # 1.0E7

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->INT_LATLNG:Ljava/lang/Double;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeLocationByGpsLocation(Lcom/amap/location/support/bean/location/AmapLocation;)Lcom/amap/location/support/bean/protocal/HistoryLocation;
    .locals 6

    .line 1
    if-eqz p0, :cond_0

    .line 3
    new-instance v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;

    .line 5
    invoke-direct {v0}, Lcom/amap/location/support/bean/protocal/HistoryLocation;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 11
    move-result-wide v1

    .line 12
    iput-wide v1, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->time:J

    .line 14
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 17
    move-result-wide v1

    .line 18
    sget-object v3, Lcom/amap/location/support/bean/protocal/HistoryLocation;->INT_LATLNG:Ljava/lang/Double;

    .line 20
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 23
    move-result-wide v4

    .line 24
    mul-double v1, v1, v4

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 29
    move-result-wide v1

    .line 30
    long-to-int v2, v1

    .line 31
    iput v2, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lon:I

    .line 33
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 36
    move-result-wide v1

    .line 37
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 40
    move-result-wide v3

    .line 41
    mul-double v1, v1, v3

    .line 43
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 46
    move-result-wide v1

    .line 47
    long-to-int v2, v1

    .line 48
    iput v2, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lat:I

    .line 50
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    .line 53
    move-result p0

    .line 54
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 57
    move-result p0

    .line 58
    iput p0, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->radius:I

    .line 60
    const/4 p0, 0x1

    .line 61
    iput p0, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->locType:I

    .line 63
    const/16 p0, 0x3f

    .line 65
    iput p0, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->retype:I

    .line 67
    const/4 p0, 0x0

    .line 68
    iput p0, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->subretype:I

    .line 70
    return-object v0

    .line 71
    :cond_0
    const/4 p0, 0x0

    .line 72
    return-object p0
.end method

.method public static makeLocationByNetworkLocation(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/protocal/HistoryLocation;
    .locals 6

    .line 1
    if-eqz p0, :cond_0

    .line 3
    new-instance v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;

    .line 5
    invoke-direct {v0}, Lcom/amap/location/support/bean/protocal/HistoryLocation;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 11
    move-result-wide v1

    .line 12
    iput-wide v1, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->time:J

    .line 14
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 17
    move-result-wide v1

    .line 18
    sget-object v3, Lcom/amap/location/support/bean/protocal/HistoryLocation;->INT_LATLNG:Ljava/lang/Double;

    .line 20
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 23
    move-result-wide v4

    .line 24
    mul-double v1, v1, v4

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 29
    move-result-wide v1

    .line 30
    long-to-int v2, v1

    .line 31
    iput v2, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lon:I

    .line 33
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 36
    move-result-wide v1

    .line 37
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 40
    move-result-wide v3

    .line 41
    mul-double v1, v1, v3

    .line 43
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 46
    move-result-wide v1

    .line 47
    long-to-int v2, v1

    .line 48
    iput v2, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lat:I

    .line 50
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    .line 53
    move-result v1

    .line 54
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 57
    move-result v1

    .line 58
    iput v1, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->radius:I

    .line 60
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getLocType()I

    .line 63
    move-result v1

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 66
    iput v1, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->locType:I

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRetype()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 75
    move-result v1

    .line 76
    iput v1, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->retype:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 79
    :catch_0
    const/16 v1, 0x3f

    .line 81
    iput v1, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->retype:I

    .line 83
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getResubtype()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 90
    move-result p0

    .line 91
    iput p0, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->subretype:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    goto :goto_1

    .line 94
    :catch_1
    const/4 p0, 0x0

    .line 95
    iput p0, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->subretype:I

    .line 97
    :goto_1
    return-object v0

    .line 98
    :cond_0
    const/4 p0, 0x0

    .line 99
    return-object p0
.end method

.method public static makeLocationByText(Ljava/lang/String;)Lcom/amap/location/support/bean/protocal/HistoryLocation;
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 9
    :try_start_0
    const-string v0, ","

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;

    .line 17
    invoke-direct {v0}, Lcom/amap/location/support/bean/protocal/HistoryLocation;-><init>()V

    .line 20
    const/4 v1, 0x0

    .line 21
    aget-object v1, p0, v1

    .line 23
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 26
    move-result-wide v1

    .line 27
    iput-wide v1, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->time:J

    .line 29
    const/4 v1, 0x1

    .line 30
    aget-object v1, p0, v1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    move-result v1

    .line 36
    iput v1, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lon:I

    .line 38
    const/4 v1, 0x2

    .line 39
    aget-object v1, p0, v1

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    move-result v1

    .line 45
    iput v1, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lat:I

    .line 47
    const/4 v1, 0x3

    .line 48
    aget-object v1, p0, v1

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    move-result v1

    .line 54
    iput v1, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->radius:I

    .line 56
    const/4 v1, 0x4

    .line 57
    aget-object v1, p0, v1

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    move-result v1

    .line 63
    iput v1, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->locType:I

    .line 65
    const/4 v1, 0x5

    .line 66
    aget-object v1, p0, v1

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 71
    move-result v1

    .line 72
    iput v1, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->retype:I

    .line 74
    const/4 v1, 0x6

    .line 75
    aget-object p0, p0, v1

    .line 77
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 80
    move-result p0

    .line 81
    iput p0, v0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->subretype:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-object v0

    .line 84
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 85
    return-object p0
.end method


# virtual methods
.method public distanceTo(Lcom/amap/location/support/bean/protocal/HistoryLocation;)D
    .locals 13

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lat:I

    .line 5
    int-to-double v0, v0

    .line 6
    sget-object v2, Lcom/amap/location/support/bean/protocal/HistoryLocation;->INT_LATLNG:Ljava/lang/Double;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 11
    move-result-wide v3

    .line 12
    div-double v5, v0, v3

    .line 14
    iget v0, p0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lon:I

    .line 16
    int-to-double v0, v0

    .line 17
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 20
    move-result-wide v3

    .line 21
    div-double v7, v0, v3

    .line 23
    iget v0, p1, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lat:I

    .line 25
    int-to-double v0, v0

    .line 26
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 29
    move-result-wide v3

    .line 30
    div-double v9, v0, v3

    .line 32
    iget p1, p1, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lon:I

    .line 34
    int-to-double v0, p1

    .line 35
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 38
    move-result-wide v2

    .line 39
    div-double v11, v0, v2

    .line 41
    invoke-static/range {v5 .. v12}, Lcom/amap/location/support/util/GeoUtils;->distance(DDDD)D

    .line 44
    move-result-wide v0

    .line 45
    return-wide v0

    .line 46
    :cond_0
    const-wide/16 v0, 0x0

    .line 48
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Lcom/amap/location/support/bean/protocal/HistoryLocation;

    .line 21
    iget v2, p0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lon:I

    .line 23
    iget v3, p1, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lon:I

    .line 25
    if-ne v2, v3, :cond_2

    .line 27
    iget v2, p0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lat:I

    .line 29
    iget v3, p1, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lat:I

    .line 31
    if-ne v2, v3, :cond_2

    .line 33
    iget v2, p0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->radius:I

    .line 35
    iget p1, p1, Lcom/amap/location/support/bean/protocal/HistoryLocation;->radius:I

    .line 37
    if-ne v2, p1, :cond_2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    .line 42
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lon:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget v1, p0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lat:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 22
    iget v1, p0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->radius:I

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    aput-object v1, v0, v2

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 34
    move-result v0

    .line 35
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-wide v1, p0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->time:J

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ","

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v2, p0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lon:I

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget v2, p0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lat:I

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v2, p0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->radius:I

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget v2, p0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->locType:I

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v2, p0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->retype:I

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lcom/amap/location/support/bean/protocal/HistoryLocation;->subretype:I

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
