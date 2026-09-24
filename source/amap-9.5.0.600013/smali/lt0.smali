.class public abstract synthetic Llt0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/location/GnssClock;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/location/GnssClock;->getFullBiasNanos()J

    move-result-wide v0

    return-wide v0
.end method
