.class public Lvo0$h;
.super Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lww0;

.field public final synthetic c:Lvo0;


# direct methods
.method public constructor <init>(Lvo0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0$h;->c:Lvo0;

    .line 3
    invoke-direct {p0}, Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;-><init>()V

    .line 6
    new-instance p1, Lww0;

    .line 8
    invoke-direct {p1}, Lww0;-><init>()V

    .line 11
    iput-object p1, p0, Lvo0$h;->b:Lww0;

    .line 13
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSensorChanged(IIJ[F)V
    .locals 6

    .line 1
    const/4 p2, 0x0

    .line 2
    aget v1, p5, p2

    .line 4
    const/4 p2, 0x1

    .line 5
    aget v2, p5, p2

    .line 7
    const/4 p2, 0x2

    .line 8
    aget v3, p5, p2

    .line 10
    move v0, p1

    .line 11
    move-wide v4, p3

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/amap/ams/jni/gnss/NativeGnssLocator;->sendSensor(IFFFJ)V

    .line 15
    iget-object v0, p0, Lvo0$h;->c:Lvo0;

    .line 17
    invoke-static {v0}, Lvo0;->Z(Lvo0;)I

    .line 20
    move-result v0

    .line 21
    if-le v0, p2, :cond_0

    .line 23
    iget-object p2, p0, Lvo0$h;->b:Lww0;

    .line 25
    invoke-virtual {p2, p1, p3, p4, p5}, Lww0;->d(IJ[F)V

    .line 28
    :cond_0
    return-void
.end method
