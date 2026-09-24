.class public Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aroundNum:I

.field private iconId:I

.field private iconRoadInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/jni/protocol/data/IconRoadInfoData;",
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
.method public getAroundNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;->aroundNum:I

    .line 3
    return v0
.end method

.method public getIconId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;->iconId:I

    .line 3
    return v0
.end method

.method public getIconRoadInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/jni/protocol/data/IconRoadInfoData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;->iconRoadInfoList:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public setAroundNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;->aroundNum:I

    .line 3
    return-void
.end method

.method public setIconId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;->iconId:I

    .line 3
    return-void
.end method
