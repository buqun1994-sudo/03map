.class public abstract synthetic Lnt0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/location/GnssClock;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/location/GnssClock;->getHardwareClockDiscontinuityCount()I

    move-result p0

    return p0
.end method
