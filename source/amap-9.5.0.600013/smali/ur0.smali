.class public abstract synthetic Lur0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/location/GnssMeasurement;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->getCodeType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
