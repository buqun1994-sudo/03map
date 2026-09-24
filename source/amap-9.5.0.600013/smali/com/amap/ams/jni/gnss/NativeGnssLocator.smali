.class public Lcom/amap/ams/jni/gnss/NativeGnssLocator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/amap/location/support/signal/gnss/AmapLocationListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "amsgnss"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static a(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/ams/jni/gnss/NativeGnssLocator;->a:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 3
    return-void
.end method

.method public static native destory()I
.end method

.method public static native init(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native sendDiffData(I[BILjava/lang/String;)V
.end method

.method public static native sendGnssLocation(JJDDDFFFFFF)V
.end method

.method public static native sendRCscene(I)V
.end method

.method public static native sendRawMeasurement([Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;Lcom/amap/location/support/bean/gnss/AmapGnssClock;J)V
.end method

.method public static native sendRtcmRgm([BI)V
.end method

.method public static native sendSensor(IFFFJ)V
.end method

.method public static native start()I
.end method

.method public static native stop()I
.end method

.method public static native updateEphemeris(Ljava/lang/String;)I
.end method
