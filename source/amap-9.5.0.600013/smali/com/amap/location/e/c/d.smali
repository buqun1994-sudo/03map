.class public Lcom/amap/location/e/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(DDI)J
    .locals 2

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/amap/location/e/c/f;->a(DDI)Lcom/amap/location/e/c/e;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/amap/location/e/c/e;->a()Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Integer;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p1

    .line 15
    int-to-long p1, p1

    .line 16
    invoke-virtual {p0}, Lcom/amap/location/e/c/e;->b()Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/Integer;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result p0

    .line 26
    int-to-long v0, p0

    .line 27
    invoke-static {p1, p2, v0, v1, p4}, Lcom/amap/location/e/c/f;->a(JJI)J

    .line 30
    move-result-wide p0

    .line 31
    return-wide p0
.end method
