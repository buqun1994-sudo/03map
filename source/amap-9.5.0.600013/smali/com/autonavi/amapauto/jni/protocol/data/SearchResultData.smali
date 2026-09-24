.class public Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;
.super Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;
.source "SourceFile"


# static fields
.field public static final G_ERR_SEARCH_NO_ROUTE:I = 0x5


# instance fields
.field public categoryDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/SearchCategoryData;",
            ">;"
        }
    .end annotation
.end field

.field private cityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/CitysuggestionData;",
            ">;"
        }
    .end annotation
.end field

.field private pois:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/PoiData;",
            ">;"
        }
    .end annotation
.end field

.field public searchMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getCategoryDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/SearchCategoryData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->categoryDataList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getCityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/CitysuggestionData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->cityList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getPois()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/PoiData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->pois:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getSearchMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->searchMode:I

    .line 3
    return v0
.end method

.method public setCityList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/CitysuggestionData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->cityList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setPois(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/PoiData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->pois:Ljava/util/List;

    .line 3
    return-void
.end method
