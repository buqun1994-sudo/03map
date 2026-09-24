.class public Lcom/autonavi/amapauto/common/Coord3DDouble;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public lat:D

.field public lon:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/autonavi/amapauto/common/Coord3DDouble;->lon:D

    .line 4
    iput-wide p3, p0, Lcom/autonavi/amapauto/common/Coord3DDouble;->lat:D

    .line 5
    iput-wide p5, p0, Lcom/autonavi/amapauto/common/Coord3DDouble;->z:D

    return-void
.end method
