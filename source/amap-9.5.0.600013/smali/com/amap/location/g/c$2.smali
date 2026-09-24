.class Lcom/amap/location/g/c$2;
.super Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/g/c;


# direct methods
.method public constructor <init>(Lcom/amap/location/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/g/c$2;->a:Lcom/amap/location/g/c;

    .line 3
    invoke-direct {p0}, Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(IIJ[F)V
    .locals 0

    .line 1
    const/4 p2, 0x5

    .line 2
    const/4 p3, 0x0

    .line 3
    if-eq p1, p2, :cond_1

    .line 5
    const/4 p2, 0x6

    .line 6
    if-eq p1, p2, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/amap/location/g/c$2;->a:Lcom/amap/location/g/c;

    .line 11
    aget p2, p5, p3

    .line 13
    invoke-static {p1, p2}, Lcom/amap/location/g/c;->a(Lcom/amap/location/g/c;F)V

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/amap/location/g/c$2;->a:Lcom/amap/location/g/c;

    .line 19
    aget p2, p5, p3

    .line 21
    invoke-static {p1, p2}, Lcom/amap/location/g/c;->b(Lcom/amap/location/g/c;F)V

    .line 24
    :goto_0
    return-void
.end method
