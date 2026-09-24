.class public Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private drivewayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;",
            ">;"
        }
    .end annotation
.end field

.field public isEnable:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrivewayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;->drivewayList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public setDrivewayList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;->drivewayList:Ljava/util/List;

    .line 3
    return-void
.end method
