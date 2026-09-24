.class public Lcom/autonavi/amapauto/jni/protocol/data/TSRInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public horizontalDistance:I

.field public laneDistance:I

.field public otherSpeedLimitValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public signType:I

.field public speedLimitValue:I

.field public verticalDistance:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
