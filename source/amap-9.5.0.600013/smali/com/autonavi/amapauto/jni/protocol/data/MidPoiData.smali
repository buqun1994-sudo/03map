.class public Lcom/autonavi/amapauto/jni/protocol/data/MidPoiData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private listMidPoi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/PoiData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMidPoiList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/MidPoiData;->listMidPoi:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public setMidPoiList(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/MidPoiData;->listMidPoi:Ljava/util/List;

    .line 3
    return-void
.end method
