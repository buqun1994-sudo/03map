.class public abstract synthetic Lbs0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/location/GnssMeasurement;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->getReceivedSvTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method
