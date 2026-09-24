.class public Lcom/amap/location/support/bean/location/AmapLocationNetwork;
.super Lcom/amap/location/support/bean/location/AmapLocation;
.source "SourceFile"


# static fields
.field public static final COORD_GD:I = 0x1

.field public static final COORD_UNKNOWN:I = -0x1

.field public static final COORD_WGS84:I = 0x0

.field public static final LOC_TYPE_INT_CACHE:I = 0x3

.field public static final LOC_TYPE_INT_LAST:I = 0x2

.field public static final LOC_TYPE_INT_MINI_OFFLINE:I = 0x5

.field public static final LOC_TYPE_INT_NEW:I = 0x1

.field public static final LOC_TYPE_INT_OFFLINE:I = 0x4

.field public static final LOC_TYPE_INT_UNKNOW:I = 0x0

.field public static final RESULT_TYPE_AMAP_INDOOR:Ljava/lang/String; = "-1"

.field public static final RESULT_TYPE_CAS_INDOOR:Ljava/lang/String; = "-3"

.field public static final RESULT_TYPE_CELL_ONLY:Ljava/lang/String; = "3"

.field public static final RESULT_TYPE_CELL_WITHIN_SAME_ADDRESS:Ljava/lang/String; = "9"

.field public static final RESULT_TYPE_CELL_WITH_NEIGHBORS:Ljava/lang/String; = "4"

.field public static final RESULT_TYPE_FAIL:Ljava/lang/String; = "8"

.field public static final RESULT_TYPE_FAKE_GPS:Ljava/lang/String; = "11"

.field public static final RESULT_TYPE_FILTERED_GPS:Ljava/lang/String; = "12"

.field public static final RESULT_TYPE_FUSED:Ljava/lang/String; = "2"

.field public static final RESULT_TYPE_GOOGLE:Ljava/lang/String; = "-2"

.field public static final RESULT_TYPE_GPS:Ljava/lang/String; = "0"

.field public static final RESULT_TYPE_NEW_FUSED:Ljava/lang/String; = "24"

.field public static final RESULT_TYPE_NEW_WIFI_ONLY:Ljava/lang/String; = "14"

.field public static final RESULT_TYPE_NO_LONGER_USED:Ljava/lang/String; = "6"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_TYPE_OFFLINE:Ljava/lang/String; = "10"

.field public static final RESULT_TYPE_SELF_LAT_LON:Ljava/lang/String; = "5"

.field public static final RESULT_TYPE_SKYHOOK:Ljava/lang/String; = "-4"

.field public static final RESULT_TYPE_SOFT_GPS:Ljava/lang/String; = "13"

.field public static final RESULT_TYPE_STANDARD:Ljava/lang/String; = "-5"

.field public static final RESULT_TYPE_WIFI_ONLY:Ljava/lang/String; = "1"

.field private static final SERVER_PARSE_REQUEST_ERROR:I = 0x1

.field public static final TYPE_CACHE:Ljava/lang/String; = "mem"

.field public static final TYPE_MINI_OFFLINE_CELL:Ljava/lang/String; = "mini"

.field public static final TYPE_NEW:Ljava/lang/String; = "new"

.field public static final TYPE_OFFLINE_CELL:Ljava/lang/String; = "file"

.field public static final TYPE_OFFLINE_WIFI:Ljava/lang/String; = "wifioff"

.field public static final TYPE_OFFLINE_WIFI_V3:Ljava/lang/String; = "wifioffv3"

.field private static final VERSION:Ljava/lang/String; = "v10"

.field public static sCxtFromServer:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAdcode:Ljava/lang/String;

.field private mAoiname:Ljava/lang/String;

.field private mCacheType:Ljava/lang/String;

.field private mCens:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mCitycode:Ljava/lang/String;

.field private mControlType:Ljava/lang/String;

.field private mCoord:I

.field private mCountry:Ljava/lang/String;

.field private mDesc:Ljava/lang/String;

.field private mDistrict:Ljava/lang/String;

.field private mFilterOther:Z

.field private mIsError:Z

.field private mIsLast:Z

.field private mMainCell:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mOptimizedAccuracy:F

.field private mPoiname:Ljava/lang/String;

.field private mProvince:Ljava/lang/String;

.field private mRdesc:Ljava/lang/String;

.field private mResubtype:Ljava/lang/String;

.field private mRetype:Ljava/lang/String;

.field private mRoad:Ljava/lang/String;

.field private mScenarioConfidence:I

.field private mServerError:I

.field private mServerFilterContext:[B

.field private mServerTraceId:Ljava/lang/String;

.field private mStreet:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v0, 0x1

    const/16 v1, -0x3e7

    const-string v2, "network"

    .line 1
    invoke-direct {p0, v2, v0, v1}, Lcom/amap/location/support/bean/location/AmapLocation;-><init>(Ljava/lang/String;II)V

    const-string v0, "new"

    .line 2
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCacheType:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRetype:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRdesc:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCitycode:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mDesc:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mAdcode:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCountry:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mProvince:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCity:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mDistrict:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRoad:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mStreet:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mNumber:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mAoiname:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mPoiname:Ljava/lang/String;

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCens:Ljava/lang/String;

    const/4 v2, 0x0

    .line 18
    iput-boolean v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mIsError:Z

    const/4 v3, -0x1

    .line 19
    iput v3, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCoord:I

    .line 20
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mMainCell:Ljava/lang/String;

    const/4 v4, 0x0

    .line 21
    iput v4, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mOptimizedAccuracy:F

    .line 22
    iput-object v1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerFilterContext:[B

    .line 23
    iput v3, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mScenarioConfidence:I

    .line 24
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mResubtype:Ljava/lang/String;

    .line 25
    iput-boolean v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mFilterOther:Z

    .line 26
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mControlType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V
    .locals 5

    .line 27
    invoke-direct {p0, p1}, Lcom/amap/location/support/bean/location/AmapLocation;-><init>(Lcom/amap/location/support/bean/location/AmapLocation;)V

    const-string v0, "new"

    .line 28
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCacheType:Ljava/lang/String;

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRetype:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRdesc:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCitycode:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mDesc:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mAdcode:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCountry:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mProvince:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCity:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mDistrict:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRoad:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mStreet:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mNumber:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mAoiname:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mPoiname:Ljava/lang/String;

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCens:Ljava/lang/String;

    const/4 v2, 0x0

    .line 44
    iput-boolean v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mIsError:Z

    const/4 v3, -0x1

    .line 45
    iput v3, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCoord:I

    .line 46
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mMainCell:Ljava/lang/String;

    const/4 v4, 0x0

    .line 47
    iput v4, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mOptimizedAccuracy:F

    .line 48
    iput-object v1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerFilterContext:[B

    .line 49
    iput v3, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mScenarioConfidence:I

    .line 50
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mResubtype:Ljava/lang/String;

    .line 51
    iput-boolean v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mFilterOther:Z

    .line 52
    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mControlType:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCacheType:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCacheType:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRetype:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRetype:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRdesc:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRdesc:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCitycode:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCitycode:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mDesc:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mDesc:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mAdcode:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mAdcode:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCountry:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mProvince:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mProvince:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCity:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCity:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mDistrict:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mDistrict:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRoad:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRoad:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mStreet:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mStreet:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mNumber:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mAoiname:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mAoiname:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mPoiname:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mPoiname:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCens:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCens:Ljava/lang/String;

    .line 69
    iget-boolean v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mIsError:Z

    iput-boolean v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mIsError:Z

    .line 70
    iget v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCoord:I

    iput v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCoord:I

    .line 71
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mMainCell:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mMainCell:Ljava/lang/String;

    .line 72
    iget v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mOptimizedAccuracy:F

    iput v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mOptimizedAccuracy:F

    .line 73
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerFilterContext:[B

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerFilterContext:[B

    .line 74
    iget v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerError:I

    iput v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerError:I

    .line 75
    iget v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mScenarioConfidence:I

    iput v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mScenarioConfidence:I

    .line 76
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mResubtype:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mResubtype:Ljava/lang/String;

    .line 77
    iget-boolean v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mIsLast:Z

    iput-boolean v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mIsLast:Z

    .line 78
    iget-object v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerTraceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerTraceId:Ljava/lang/String;

    .line 79
    iget-boolean v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mFilterOther:Z

    iput-boolean v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mFilterOther:Z

    .line 80
    iget-object p1, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mControlType:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mControlType:Ljava/lang/String;

    return-void
.end method

.method public static getLocationFromJson(Lorg/json/JSONObject;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 7

    .line 1
    const-string v0, ""

    .line 3
    if-eqz p0, :cond_0

    .line 5
    :try_start_0
    const-string v1, "version"

    .line 7
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "v10"

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 19
    new-instance v1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 21
    invoke-direct {v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;-><init>()V

    .line 24
    const-string v2, "mProvider"

    .line 26
    const-string v3, "network"

    .line 28
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setProvider(Ljava/lang/String;)V

    .line 35
    const-string v2, "mType"

    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 41
    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setType(I)V

    .line 45
    const-string v2, "mSubType"

    .line 47
    const/16 v3, -0x3e7

    .line 49
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 52
    move-result v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setSubType(I)V

    .line 56
    const-string v2, "mLocationUtcTime"

    .line 58
    const-wide/16 v3, 0x0

    .line 60
    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 63
    move-result-wide v5

    .line 64
    invoke-virtual {v1, v5, v6}, Lcom/amap/location/type/location/Location;->setLocationUtcTime(J)V

    .line 67
    const-string v2, "mLocationTickTime"

    .line 69
    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 72
    move-result-wide v2

    .line 73
    invoke-virtual {v1, v2, v3}, Lcom/amap/location/type/location/Location;->setLocationTickTime(J)V

    .line 76
    const-string v2, "mLatitude"

    .line 78
    const-wide/16 v3, 0x0

    .line 80
    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 83
    move-result-wide v5

    .line 84
    invoke-virtual {v1, v5, v6}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLatitude(D)V

    .line 87
    const-string v2, "mLongitude"

    .line 89
    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 92
    move-result-wide v5

    .line 93
    invoke-virtual {v1, v5, v6}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLongitude(D)V

    .line 96
    const-string v2, "mAltitude"

    .line 98
    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 101
    move-result-wide v5

    .line 102
    invoke-virtual {v1, v5, v6}, Lcom/amap/location/type/location/Location;->setAltitude(D)V

    .line 105
    const-string v2, "mSpeed"

    .line 107
    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 110
    move-result-wide v5

    .line 111
    double-to-float v2, v5

    .line 112
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setSpeed(F)V

    .line 115
    const-string v2, "mBearing"

    .line 117
    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 120
    move-result-wide v5

    .line 121
    double-to-float v2, v5

    .line 122
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setBearing(F)V

    .line 125
    const-string v2, "mAccuracy"

    .line 127
    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 130
    move-result-wide v5

    .line 131
    double-to-float v2, v5

    .line 132
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setAccuracy(F)V

    .line 135
    const-string v2, "mPoiid"

    .line 137
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setPoiid(Ljava/lang/String;)V

    .line 144
    const-string v2, "mFloor"

    .line 146
    const/4 v5, 0x0

    .line 147
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 150
    move-result v2

    .line 151
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setFloor(I)V

    .line 154
    const-string v2, "mFloorName"

    .line 156
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setFloorName(Ljava/lang/String;)V

    .line 163
    const-string v2, "mSource"

    .line 165
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setSource(Ljava/lang/String;)V

    .line 172
    const-string v2, "mDiagnosisType"

    .line 174
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 177
    move-result v2

    .line 178
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setDiagnosisType(I)V

    .line 181
    const-string v2, "mSemantics"

    .line 183
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setSemantics(Ljava/lang/String;)V

    .line 190
    const-string v2, "mSpeedKmh"

    .line 192
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 195
    move-result v2

    .line 196
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setSpeedKmh(Z)V

    .line 199
    const-string v2, "mCoorCanUseInMap"

    .line 201
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 204
    move-result v2

    .line 205
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setCoorCanUseInMap(Z)V

    .line 208
    const-string v2, "mCacheType"

    .line 210
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCacheType(Ljava/lang/String;)V

    .line 217
    const-string v2, "mRetype"

    .line 219
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setRetype(Ljava/lang/String;)V

    .line 226
    const-string v2, "mRdesc"

    .line 228
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setRdesc(Ljava/lang/String;)V

    .line 235
    const-string v2, "mCitycode"

    .line 237
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCitycode(Ljava/lang/String;)V

    .line 244
    const-string v2, "mDesc"

    .line 246
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setDesc(Ljava/lang/String;)V

    .line 253
    const-string v2, "mAdcode"

    .line 255
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setAdcode(Ljava/lang/String;)V

    .line 262
    const-string v2, "mCountry"

    .line 264
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCountry(Ljava/lang/String;)V

    .line 271
    const-string v2, "mProvince"

    .line 273
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setProvince(Ljava/lang/String;)V

    .line 280
    const-string v2, "mCity"

    .line 282
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCity(Ljava/lang/String;)V

    .line 289
    const-string v2, "mDistrict"

    .line 291
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setDistrict(Ljava/lang/String;)V

    .line 298
    const-string v2, "mRoad"

    .line 300
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setRoad(Ljava/lang/String;)V

    .line 307
    const-string v2, "mStreet"

    .line 309
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    move-result-object v2

    .line 313
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setStreet(Ljava/lang/String;)V

    .line 316
    const-string v2, "mNumber"

    .line 318
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setNumber(Ljava/lang/String;)V

    .line 325
    const-string v2, "mAoiname"

    .line 327
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    move-result-object v2

    .line 331
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setAoiname(Ljava/lang/String;)V

    .line 334
    const-string v2, "mPoiname"

    .line 336
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setPoiname(Ljava/lang/String;)V

    .line 343
    const-string v2, "mCens"

    .line 345
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCens(Ljava/lang/String;)V

    .line 352
    const-string v2, "mIsError"

    .line 354
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 357
    move-result v2

    .line 358
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setError(Z)V

    .line 361
    const-string v2, "mCoord"

    .line 363
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCoord(Ljava/lang/String;)V

    .line 370
    const-string v2, "mMainCell"

    .line 372
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 375
    move-result-object v2

    .line 376
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setMainCell(Ljava/lang/String;)V

    .line 379
    const-string v2, "mOptimizedAccuracy"

    .line 381
    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 384
    move-result-wide v2

    .line 385
    double-to-float v2, v2

    .line 386
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setOptimizedAccuracy(F)V

    .line 389
    const-string v2, "mServerError"

    .line 391
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 394
    move-result v2

    .line 395
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setServerError(I)V

    .line 398
    const-string v2, "mScenarioConfidence"

    .line 400
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 403
    move-result v2

    .line 404
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setScenarioConfidence(I)V

    .line 407
    const-string v2, "mResubtype"

    .line 409
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 412
    move-result-object v2

    .line 413
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setResubtype(Ljava/lang/String;)V

    .line 416
    const-string v2, "mIsLast"

    .line 418
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 421
    move-result v2

    .line 422
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLast(Z)V

    .line 425
    const-string v2, "mServerTraceId"

    .line 427
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 430
    move-result-object v2

    .line 431
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setServerTraceId(Ljava/lang/String;)V

    .line 434
    const-string v2, "mFilterOther"

    .line 436
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 439
    move-result v2

    .line 440
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setFilterOther(Z)V

    .line 443
    const-string v2, "mControlType"

    .line 445
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 448
    move-result-object p0

    .line 449
    invoke-virtual {v1, p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setControlType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    return-object v1

    .line 453
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 454
    return-object p0
.end method


# virtual methods
.method public getAdcode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mAdcode:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getAoiname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mAoiname:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCacheType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCacheType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCens()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCens:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCity:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCitycode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCitycode:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getControlType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mControlType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCoord()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCoord:I

    .line 3
    return v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCountry:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mDesc:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mDistrict:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLocType()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isLast()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x2

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const-string v0, "new"

    .line 11
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getCacheType()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const-string v0, "mem"

    .line 25
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getCacheType()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 35
    const/4 v0, 0x3

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const-string v0, "file"

    .line 39
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getCacheType()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_5

    .line 49
    const-string v0, "wifioff"

    .line 51
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getCacheType()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const-string v0, "mini"

    .line 64
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getCacheType()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 74
    const/4 v0, 0x5

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    const/4 v0, 0x0

    .line 77
    goto :goto_1

    .line 78
    :cond_5
    :goto_0
    const/4 v0, 0x4

    .line 79
    :goto_1
    return v0
.end method

.method public getMainCell()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mMainCell:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMainCellLocation()Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getMainCell()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 12
    return-object v2

    .line 13
    :cond_0
    const-string v1, ","

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    array-length v1, v0

    .line 20
    const/4 v3, 0x3

    .line 21
    if-eq v1, v3, :cond_1

    .line 23
    return-object v2

    .line 24
    :cond_1
    new-instance v1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 26
    invoke-direct {v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v1, v3}, Lcom/amap/location/type/location/Location;->setProvider(Ljava/lang/String;)V

    .line 36
    const/4 v3, 0x0

    .line 37
    aget-object v3, v0, v3

    .line 39
    invoke-virtual {v1, v3}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLongitude(Ljava/lang/String;)V

    .line 42
    const/4 v3, 0x1

    .line 43
    aget-object v3, v0, v3

    .line 45
    invoke-virtual {v1, v3}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLatitude(Ljava/lang/String;)V

    .line 48
    const/4 v3, 0x2

    .line 49
    aget-object v0, v0, v3

    .line 51
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 54
    move-result v0

    .line 55
    invoke-virtual {v1, v0}, Lcom/amap/location/type/location/Location;->setAccuracy(F)V

    .line 58
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getCitycode()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v1, v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCitycode(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getAdcode()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v1, v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setAdcode(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getCountry()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v1, v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCountry(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getProvince()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v1, v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setProvince(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getCity()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v1, v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCity(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getDistrict()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v1, v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setDistrict(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 103
    move-result-wide v3

    .line 104
    invoke-virtual {v1, v3, v4}, Lcom/amap/location/type/location/Location;->setLocationUtcTime(J)V

    .line 107
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getCacheType()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v1, v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCacheType(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getCoord()I

    .line 117
    move-result v0

    .line 118
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v1, v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCoord(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_2

    .line 131
    return-object v2

    .line 132
    :cond_2
    return-object v1
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mNumber:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getOptimizedAccuracy()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mOptimizedAccuracy:F

    .line 3
    return v0
.end method

.method public getPoiname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mPoiname:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mProvince:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRdesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRdesc:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getResubtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mResubtype:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRetype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRetype:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRoad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRoad:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getScenarioConfidence()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mScenarioConfidence:I

    .line 3
    return v0
.end method

.method public getServerError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerError:I

    .line 3
    return v0
.end method

.method public getServerFilterContext()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerFilterContext:[B

    .line 3
    return-object v0
.end method

.method public getServerTraceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerTraceId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mStreet:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public hasAccuracy()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/location/type/location/Location;->mAccuracy:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-lez v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasAltitude()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/amap/location/type/location/Location;->mAltitude:D

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmpl-double v4, v0, v2

    .line 7
    if-lez v4, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public hasBearing()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/location/type/location/Location;->mBearing:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-lez v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasSpeed()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/location/type/location/Location;->mSpeed:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-lez v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public isCorrect()Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRetype()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "8"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRetype()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v2, "5"

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRetype()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    const-string v2, "6"

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 44
    move-result-wide v2

    .line 45
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 48
    move-result-wide v4

    .line 49
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    .line 52
    move-result v0

    .line 53
    const-wide v6, -0x3e9ced3020000000L    # -9999999.0

    .line 58
    cmpl-double v8, v2, v6

    .line 60
    if-nez v8, :cond_3

    .line 62
    cmpl-double v8, v4, v6

    .line 64
    if-nez v8, :cond_3

    .line 66
    float-to-double v6, v0

    .line 67
    const-wide/16 v8, 0x0

    .line 69
    cmpl-double v0, v6, v8

    .line 71
    if-nez v0, :cond_3

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const-wide v6, 0x4066800000000000L    # 180.0

    .line 79
    cmpl-double v0, v2, v6

    .line 81
    if-gtz v0, :cond_6

    .line 83
    const-wide v6, 0x4056800000000000L    # 90.0

    .line 88
    cmpl-double v0, v4, v6

    .line 90
    if-lez v0, :cond_4

    .line 92
    goto :goto_0

    .line 93
    :cond_4
    const-wide v6, -0x3f99800000000000L    # -180.0

    .line 98
    cmpg-double v0, v2, v6

    .line 100
    if-ltz v0, :cond_6

    .line 102
    const-wide v2, -0x3fa9800000000000L    # -90.0

    .line 107
    cmpg-double v0, v4, v2

    .line 109
    if-gez v0, :cond_5

    .line 111
    goto :goto_0

    .line 112
    :cond_5
    const/4 v1, 0x1

    .line 113
    :cond_6
    :goto_0
    return v1
.end method

.method public isError()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mIsError:Z

    .line 3
    return v0
.end method

.method public isFilterOther()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mFilterOther:Z

    .line 3
    return v0
.end method

.method public isHDBluetoothLocation()Z
    .locals 2

    .line 1
    const-string v0, "-1"

    .line 3
    iget-object v1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRetype:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const-string v0, "8"

    .line 13
    iget-object v1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mResubtype:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public isLast()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mIsLast:Z

    .line 3
    return v0
.end method

.method public isServerParseRequestError()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerError:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public setAdcode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mAdcode:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setAoiname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mAoiname:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setBearing(F)V
    .locals 1

    .line 1
    const/high16 v0, 0x41200000    # 10.0f

    .line 3
    mul-float p1, p1, v0

    .line 5
    div-float/2addr p1, v0

    .line 6
    iput p1, p0, Lcom/amap/location/type/location/Location;->mBearing:F

    .line 8
    return-void
.end method

.method public setCacheType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCacheType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setCens(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "\\*"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v1, :cond_2

    .line 19
    aget-object v4, v0, v3

    .line 21
    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_1

    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string v0, ","

    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    aget-object v1, v0, v2

    .line 38
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 41
    move-result-wide v1

    .line 42
    invoke-virtual {p0, v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLongitude(D)V

    .line 45
    const/4 v1, 0x1

    .line 46
    aget-object v1, v0, v1

    .line 48
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 51
    move-result-wide v1

    .line 52
    invoke-virtual {p0, v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLatitude(D)V

    .line 55
    const/4 v1, 0x2

    .line 56
    aget-object v0, v0, v1

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    move-result v0

    .line 62
    int-to-float v0, v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/amap/location/type/location/Location;->setAccuracy(F)V

    .line 66
    :cond_2
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCens:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCity:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setCitycode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCitycode:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setControlType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mControlType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setCoord(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCoord:I

    return-void
.end method

.method public setCoord(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 3
    iput v1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCoord:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/location/type/location/Location;->mProvider:Ljava/lang/String;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    iput v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCoord:I

    goto :goto_0

    :cond_1
    const-string v0, "0"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iput v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCoord:I

    goto :goto_0

    :cond_2
    const-string v0, "1"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCoord:I

    goto :goto_0

    .line 10
    :cond_3
    iput v1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCoord:I

    :goto_0
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCountry:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mDesc:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mDistrict:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setError(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mIsError:Z

    .line 3
    return-void
.end method

.method public setFilterOther(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mFilterOther:Z

    .line 3
    return-void
.end method

.method public setLast(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mIsLast:Z

    .line 3
    return-void
.end method

.method public setLatitude(D)V
    .locals 3

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double p1, p1, v0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    div-double/2addr p1, v0

    iput-wide p1, p0, Lcom/amap/location/type/location/Location;->mLatitude:D

    goto :goto_0

    :cond_0
    const-wide p1, -0x3e9ced3020000000L    # -9999999.0

    .line 2
    iput-wide p1, p0, Lcom/amap/location/type/location/Location;->mLatitude:D

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mIsError:Z

    :goto_0
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLatitude(D)V

    return-void
.end method

.method public setLongitude(D)V
    .locals 3

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double p1, p1, v0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    div-double/2addr p1, v0

    iput-wide p1, p0, Lcom/amap/location/type/location/Location;->mLongitude:D

    goto :goto_0

    :cond_0
    const-wide p1, -0x3e9ced3020000000L    # -9999999.0

    .line 2
    iput-wide p1, p0, Lcom/amap/location/type/location/Location;->mLongitude:D

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mIsError:Z

    :goto_0
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLongitude(D)V

    return-void
.end method

.method public setMainCell(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mMainCell:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mNumber:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setOptimizedAccuracy(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mOptimizedAccuracy:F

    .line 3
    return-void
.end method

.method public setPoiname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mPoiname:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mProvince:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setRdesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRdesc:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setResubtype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mResubtype:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setRetype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRetype:Ljava/lang/String;

    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/amap/location/type/location/Location;->setSubType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    return-void
.end method

.method public setRoad(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRoad:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setScenarioConfidence(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mScenarioConfidence:I

    .line 3
    return-void
.end method

.method public setServerError(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerError:I

    .line 3
    return-void
.end method

.method public setServerFilterContext(Ljava/lang/String;)V
    .locals 1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/amap/location/support/security/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerFilterContext:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setServerFilterContext([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerFilterContext:[B

    return-void
.end method

.method public setServerTraceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerTraceId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    const/high16 v0, 0x42c80000    # 100.0f

    .line 3
    cmpl-float v0, p1, v0

    .line 5
    if-lez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/amap/location/type/location/Location;->mSpeed:F

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    .line 13
    mul-float p1, p1, v0

    .line 15
    div-float/2addr p1, v0

    .line 16
    iput p1, p0, Lcom/amap/location/type/location/Location;->mSpeed:F

    .line 18
    :goto_0
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mStreet:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->toJSONSimpleObject()Lorg/json/JSONObject;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    const-string v1, "mAltitude"

    .line 7
    iget-wide v2, p0, Lcom/amap/location/type/location/Location;->mAltitude:D

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 12
    const-string v1, "mSpeed"

    .line 14
    iget v2, p0, Lcom/amap/location/type/location/Location;->mSpeed:F

    .line 16
    float-to-double v2, v2

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 20
    const-string v1, "mBearing"

    .line 22
    iget v2, p0, Lcom/amap/location/type/location/Location;->mBearing:F

    .line 24
    float-to-double v2, v2

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 28
    const-string v1, "mPoiid"

    .line 30
    iget-object v2, p0, Lcom/amap/location/type/location/Location;->mPoiid:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v1, "mFloor"

    .line 37
    iget v2, p0, Lcom/amap/location/type/location/Location;->mFloor:I

    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    const-string v1, "mFloorName"

    .line 44
    iget-object v2, p0, Lcom/amap/location/type/location/Location;->mFloorName:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v1, "mSource"

    .line 51
    iget-object v2, p0, Lcom/amap/location/type/location/Location;->mSource:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v1, "mDiagnosisType"

    .line 58
    iget v2, p0, Lcom/amap/location/type/location/Location;->mDiagnosisType:I

    .line 60
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    const-string v1, "mSemantics"

    .line 65
    iget-object v2, p0, Lcom/amap/location/type/location/Location;->mSemantics:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v1, "mSpeedKmh"

    .line 72
    iget-boolean v2, p0, Lcom/amap/location/type/location/Location;->mSpeedKmh:Z

    .line 74
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 77
    const-string v1, "mCoorCanUseInMap"

    .line 79
    iget-boolean v2, p0, Lcom/amap/location/type/location/Location;->mCoorCanUseInMap:Z

    .line 81
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 84
    const-string v1, "mRetype"

    .line 86
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRetype:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v1, "mRdesc"

    .line 93
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRdesc:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v1, "mCitycode"

    .line 100
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCitycode:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v1, "mDesc"

    .line 107
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mDesc:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v1, "mAdcode"

    .line 114
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mAdcode:Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v1, "mCountry"

    .line 121
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCountry:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v1, "mProvince"

    .line 128
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mProvince:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v1, "mCity"

    .line 135
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCity:Ljava/lang/String;

    .line 137
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v1, "mDistrict"

    .line 142
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mDistrict:Ljava/lang/String;

    .line 144
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v1, "mRoad"

    .line 149
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mRoad:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v1, "mStreet"

    .line 156
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mStreet:Ljava/lang/String;

    .line 158
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v1, "mNumber"

    .line 163
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mNumber:Ljava/lang/String;

    .line 165
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v1, "mAoiname"

    .line 170
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mAoiname:Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v1, "mPoiname"

    .line 177
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mPoiname:Ljava/lang/String;

    .line 179
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v1, "mCens"

    .line 184
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCens:Ljava/lang/String;

    .line 186
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v1, "mIsError"

    .line 191
    iget-boolean v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mIsError:Z

    .line 193
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 196
    const-string v1, "mCoord"

    .line 198
    iget v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCoord:I

    .line 200
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 203
    const-string v1, "mMainCell"

    .line 205
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mMainCell:Ljava/lang/String;

    .line 207
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v1, "mOptimizedAccuracy"

    .line 212
    iget v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mOptimizedAccuracy:F

    .line 214
    float-to-double v2, v2

    .line 215
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 218
    const-string v1, "mServerError"

    .line 220
    iget v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerError:I

    .line 222
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 225
    const-string v1, "mScenarioConfidence"

    .line 227
    iget v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mScenarioConfidence:I

    .line 229
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    const-string v1, "mResubtype"

    .line 234
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mResubtype:Ljava/lang/String;

    .line 236
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v1, "mIsLast"

    .line 241
    iget-boolean v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mIsLast:Z

    .line 243
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 246
    const-string v1, "mServerTraceId"

    .line 248
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mServerTraceId:Ljava/lang/String;

    .line 250
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v1, "mFilterOther"

    .line 255
    iget-boolean v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mFilterOther:Z

    .line 257
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 260
    const-string v1, "mControlType"

    .line 262
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mControlType:Ljava/lang/String;

    .line 264
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :catch_0
    return-object v0
.end method

.method public toJSONSimpleObject()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_0
    const-string v1, "version"

    .line 8
    const-string v2, "v10"

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v1, "mProvider"

    .line 15
    iget-object v2, p0, Lcom/amap/location/type/location/Location;->mProvider:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v1, "mType"

    .line 22
    iget v2, p0, Lcom/amap/location/type/location/Location;->mType:I

    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    const-string v1, "mSubType"

    .line 29
    iget v2, p0, Lcom/amap/location/type/location/Location;->mSubType:I

    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    const-string v1, "mLocationUtcTime"

    .line 36
    iget-wide v2, p0, Lcom/amap/location/type/location/Location;->mLocationUtcTime:J

    .line 38
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 41
    const-string v1, "mLocationTickTime"

    .line 43
    iget-wide v2, p0, Lcom/amap/location/type/location/Location;->mLocationTickTime:J

    .line 45
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 48
    const-string v1, "mLatitude"

    .line 50
    iget-wide v2, p0, Lcom/amap/location/type/location/Location;->mLatitude:D

    .line 52
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 55
    const-string v1, "mLongitude"

    .line 57
    iget-wide v2, p0, Lcom/amap/location/type/location/Location;->mLongitude:D

    .line 59
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 62
    const-string v1, "mAccuracy"

    .line 64
    iget v2, p0, Lcom/amap/location/type/location/Location;->mAccuracy:F

    .line 66
    float-to-double v2, v2

    .line 67
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 70
    const-string v1, "mCacheType"

    .line 72
    iget-object v2, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->mCacheType:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :catch_0
    return-object v0
.end method
