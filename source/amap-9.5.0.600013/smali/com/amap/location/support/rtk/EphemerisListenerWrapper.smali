.class public Lcom/amap/location/support/rtk/EphemerisListenerWrapper;
.super Lcom/amap/location/support/dispatch/ListenerWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/location/support/dispatch/ListenerWrapper<",
        "Lcom/amap/location/support/rtk/EphemerisListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final MSG_EPHEMERIS_CHANGED:I = 0x64


# instance fields
.field private mFirst:Z


# direct methods
.method public constructor <init>(Lcom/amap/location/support/rtk/EphemerisListener;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/dispatch/ListenerWrapper;-><init>(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/amap/location/support/rtk/EphemerisListenerWrapper;->mFirst:Z

    .line 7
    return-void
.end method


# virtual methods
.method public handleMessage(IIILjava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p4, :cond_9

    .line 3
    const/16 p2, 0x64

    .line 5
    if-eq p1, p2, :cond_0

    .line 7
    goto :goto_2

    .line 8
    :cond_0
    :try_start_0
    check-cast p4, [Ljava/lang/Object;

    .line 10
    array-length p1, p4

    .line 11
    const/4 p2, 0x3

    .line 12
    if-ge p1, p2, :cond_1

    .line 14
    const-string p1, "Ephemeris"

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-string p3, "objs size:"

    .line 23
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    array-length p3, p4

    .line 27
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    invoke-static {p1, p2}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    aget-object p2, p4, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    const-string p3, ""

    .line 43
    if-eqz p2, :cond_2

    .line 45
    :try_start_1
    check-cast p2, Ljava/lang/String;

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move-object p2, p3

    .line 49
    :goto_0
    invoke-static {p2}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 55
    return-void

    .line 56
    :cond_3
    const/4 v0, 0x1

    .line 57
    aget-object v0, p4, v0

    .line 59
    if-eqz v0, :cond_4

    .line 61
    move-object p3, v0

    .line 62
    check-cast p3, Ljava/lang/String;

    .line 64
    :cond_4
    invoke-static {p3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_5

    .line 70
    return-void

    .line 71
    :cond_5
    const/4 v0, 0x2

    .line 72
    aget-object p4, p4, v0

    .line 74
    if-eqz p4, :cond_6

    .line 76
    check-cast p4, Ljava/lang/Boolean;

    .line 78
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    move-result p4

    .line 82
    goto :goto_1

    .line 83
    :cond_6
    const/4 p4, 0x0

    .line 84
    :goto_1
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/ListenerWrapper;->getListener()Ljava/lang/Object;

    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/amap/location/support/rtk/EphemerisListener;

    .line 90
    if-nez v0, :cond_7

    .line 92
    return-void

    .line 93
    :cond_7
    if-nez p4, :cond_8

    .line 95
    iget-boolean p4, p0, Lcom/amap/location/support/rtk/EphemerisListenerWrapper;->mFirst:Z

    .line 97
    if-eqz p4, :cond_9

    .line 99
    :cond_8
    invoke-interface {v0, p2, p3}, Lcom/amap/location/support/rtk/EphemerisListener;->onChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iput-boolean p1, p0, Lcom/amap/location/support/rtk/EphemerisListenerWrapper;->mFirst:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    goto :goto_2

    .line 105
    :catch_0
    move-exception p1

    .line 106
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 109
    :cond_9
    :goto_2
    return-void
.end method
