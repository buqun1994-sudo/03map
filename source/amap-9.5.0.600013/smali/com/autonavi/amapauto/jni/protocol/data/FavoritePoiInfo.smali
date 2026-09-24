.class public Lcom/autonavi/amapauto/jni/protocol/data/FavoritePoiInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private favoritePoiName:Ljava/lang/String;

.field private favoriteType:I

.field private poiAddress:Ljava/lang/String;

.field private poiDistance:I

.field private poiId:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "1.0"

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/FavoritePoiInfo;->version:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getFavoritePoiName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/FavoritePoiInfo;->favoritePoiName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFavoriteType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/FavoritePoiInfo;->favoriteType:I

    .line 3
    return v0
.end method

.method public getPoiAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/FavoritePoiInfo;->poiAddress:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPoiDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/FavoritePoiInfo;->poiDistance:I

    .line 3
    return v0
.end method

.method public getPoiId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/FavoritePoiInfo;->poiId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/FavoritePoiInfo;->version:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setFavoritePoiName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/FavoritePoiInfo;->favoritePoiName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFavoriteType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/FavoritePoiInfo;->favoriteType:I

    .line 3
    return-void
.end method

.method public setPoiAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/FavoritePoiInfo;->poiAddress:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setPoiDistance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/FavoritePoiInfo;->poiDistance:I

    .line 3
    return-void
.end method

.method public setPoiId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/FavoritePoiInfo;->poiId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/FavoritePoiInfo;->version:Ljava/lang/String;

    .line 3
    return-void
.end method
