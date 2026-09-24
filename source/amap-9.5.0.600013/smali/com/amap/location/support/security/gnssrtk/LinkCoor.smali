.class public Lcom/amap/location/support/security/gnssrtk/LinkCoor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public lat:D

.field public lon:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/amap/location/support/security/gnssrtk/LinkCoor;->lat:D

    .line 6
    iput-wide p3, p0, Lcom/amap/location/support/security/gnssrtk/LinkCoor;->lon:D

    .line 8
    return-void
.end method
