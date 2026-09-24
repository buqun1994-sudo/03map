.class public Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public actionType:I

.field public dPoiId:Ljava/lang/String;

.field public dev:I

.field public dlat:D

.field public dlon:D

.field public dname:Ljava/lang/String;

.field public entrylat:D

.field public entrylon:D

.field public fMidPoiId:Ljava/lang/String;

.field public fmidlat:D

.field public fmidlon:D

.field public fmidname:Ljava/lang/String;

.field public fmidtype:I

.field public isFromVR:Z

.field public newStrategy:I

.field public poiType:Ljava/lang/String;

.field public requestId:I

.field public sMidPoiId:Ljava/lang/String;

.field public sPoiId:Ljava/lang/String;

.field public slat:D

.field public slon:D

.field public smidlat:D

.field public smidlon:D

.field public smidname:Ljava/lang/String;

.field public smidtype:I

.field public sname:Ljava/lang/String;

.field public strategy:I

.field public tMidPoiId:Ljava/lang/String;

.field public tmidlat:D

.field public tmidlon:D

.field public tmidname:Ljava/lang/String;

.field public tmidtype:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidlat:D

    .line 8
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidlon:D

    .line 10
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidlat:D

    .line 12
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidlon:D

    .line 14
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidlat:D

    .line 16
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidlon:D

    .line 18
    const/16 v0, -0x64

    .line 20
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->newStrategy:I

    .line 22
    return-void
.end method
