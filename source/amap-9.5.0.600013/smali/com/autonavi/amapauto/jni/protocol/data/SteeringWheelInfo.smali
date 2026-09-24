.class public Lcom/autonavi/amapauto/jni/protocol/data/SteeringWheelInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public angularSpeed:I

.field public steerAngle:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide v0, -0x3f07961000000000L    # -99999.0

    .line 9
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SteeringWheelInfo;->steerAngle:D

    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SteeringWheelInfo;->angularSpeed:I

    .line 14
    return-void
.end method
