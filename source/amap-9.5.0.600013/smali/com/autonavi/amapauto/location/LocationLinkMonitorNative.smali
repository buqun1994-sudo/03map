.class public Lcom/autonavi/amapauto/location/LocationLinkMonitorNative;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSwitchState(I)I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "LocationLinkMonitorNative"

    .line 13
    const-string v4, "getSwitchState,swithType={?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-eqz p0, :cond_2

    .line 20
    if-eq p0, v0, :cond_1

    .line 22
    const/4 v0, 0x2

    .line 23
    if-eq p0, v0, :cond_0

    .line 25
    packed-switch p0, :pswitch_data_0

    .line 28
    return v3

    .line 29
    :pswitch_0
    invoke-static {}, Lpy;->c()Lpy;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lpy;->j()Z

    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :pswitch_1
    invoke-static {}, Lpy;->c()Lpy;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lpy;->k()I

    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :pswitch_2
    invoke-static {}, Lpy;->c()Lpy;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lpy;->g()I

    .line 54
    move-result p0

    .line 55
    return p0

    .line 56
    :pswitch_3
    invoke-static {}, Lpy;->c()Lpy;

    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lpy;->l()I

    .line 63
    move-result p0

    .line 64
    return p0

    .line 65
    :pswitch_4
    invoke-static {}, Lpy;->c()Lpy;

    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lpy;->d()I

    .line 72
    move-result p0

    .line 73
    return p0

    .line 74
    :cond_0
    invoke-static {}, Lpy;->c()Lpy;

    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Lpy;->n()I

    .line 81
    move-result p0

    .line 82
    return p0

    .line 83
    :cond_1
    invoke-static {}, Lpy;->c()Lpy;

    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Lpy;->f()I

    .line 90
    move-result p0

    .line 91
    return p0

    .line 92
    :cond_2
    invoke-static {}, Lpy;->c()Lpy;

    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Lpy;->h()I

    .line 99
    move-result p0

    .line 100
    return p0

    .line 101
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static native locLinkMonitor(IIIIJ)V
.end method

.method public static nmeaMonitor(J)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, -0x1

    .line 4
    const/4 v3, -0x1

    .line 5
    move-wide v4, p0

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/autonavi/amapauto/location/LocationLinkMonitorNative;->locLinkMonitor(IIIIJ)V

    .line 9
    return-void
.end method

.method public static statelliteMonitor(II)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, -0x1

    .line 3
    const-wide/16 v4, -0x1

    .line 5
    move v2, p0

    .line 6
    move v3, p1

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/autonavi/amapauto/location/LocationLinkMonitorNative;->locLinkMonitor(IIIIJ)V

    .line 10
    return-void
.end method

.method public static native switchState(II)V
.end method

.method public static sysGpsMonitor()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, -0x1

    .line 4
    const/4 v3, -0x1

    .line 5
    const-wide/16 v4, -0x1

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/autonavi/amapauto/location/LocationLinkMonitorNative;->locLinkMonitor(IIIIJ)V

    .line 10
    return-void
.end method

.method public static wifiResultMonitor(I)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v2, -0x1

    .line 3
    const/4 v3, -0x1

    .line 4
    const-wide/16 v4, -0x1

    .line 6
    move v1, p0

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/autonavi/amapauto/location/LocationLinkMonitorNative;->locLinkMonitor(IIIIJ)V

    .line 10
    return-void
.end method
