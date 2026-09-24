.class public abstract synthetic Lny;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;)Z

    move-result p0

    return p0
.end method
