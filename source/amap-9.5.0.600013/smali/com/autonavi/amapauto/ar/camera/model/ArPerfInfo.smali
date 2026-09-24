.class public Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public autoCpu:F

.field public frameInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field public maxIntervalTime:J

.field public maxRealGetImageFps:F

.field public maxReceiveImageFps:F

.field public minIntervalTime:J

.field public minRealGetImageFps:F

.field public minReceiveImageFps:F

.field public realGetImageFps:F

.field public realIntervalTime:J

.field public realReceiveImageFps:F

.field public totalCpu:F

.field public workMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->frameInfos:Ljava/util/ArrayList;

    .line 11
    return-void
.end method
