.class public Lcom/autonavi/amapauto/jni/protocol/data/SearchData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public appname:Ljava/lang/String;

.field public centerLat:D

.field public centerLon:D

.field public charge:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public classify:Ljava/lang/String;

.field public dev:I

.field public isRecommend:Z

.field public keyword:Ljava/lang/String;

.field public lat:D

.field public leftTopLat:D

.field public leftTopLon:D

.field public lon:D

.field public maxCount:I

.field public needCharge:I

.field public needChildPoi:I

.field public needClassify:I

.field public needRange:I

.field public needSort:I

.field public radius:I

.field public range:Ljava/lang/String;

.field public requestId:I

.field public requestType:I

.field public rightBottomLat:D

.field public rightBottomLon:D

.field public searchCenter:I

.field public searchType:I

.field public sort:Ljava/lang/String;

.field public sortOrder:I

.field public style:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lat:D

    .line 8
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lon:D

    .line 10
    const/4 v2, 0x0

    .line 11
    iput v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->dev:I

    .line 13
    iput v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->style:I

    .line 15
    const/16 v3, 0x14

    .line 17
    iput v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->maxCount:I

    .line 19
    iput v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->radius:I

    .line 21
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->centerLat:D

    .line 23
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->centerLon:D

    .line 25
    iput v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sortOrder:I

    .line 27
    iput v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchType:I

    .line 29
    iput v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->requestType:I

    .line 31
    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchCenter:I

    .line 34
    iput-boolean v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->isRecommend:Z

    .line 36
    return-void
.end method
