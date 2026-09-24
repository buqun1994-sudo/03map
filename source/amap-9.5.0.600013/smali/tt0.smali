.class public abstract synthetic Ltt0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/location/GnssClock;)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/location/GnssClock;->getTimeUncertaintyNanos()D

    move-result-wide v0

    return-wide v0
.end method
