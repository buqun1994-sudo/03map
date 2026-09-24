.class public Lcom/amap/location/support/bean/wifi/AmapWifi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INVALID_MAC:J = 0x0L

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public connected:Z

.field public frequency:I

.field public freshness:S

.field public lastUpdateUtcMills:J

.field public mac:J

.field public rssi:I

.field public ssid:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x71

    .line 2
    iput v0, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->rssi:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->lastUpdateUtcMills:J

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x71

    .line 5
    iput v0, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->rssi:I

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->lastUpdateUtcMills:J

    .line 7
    iput-boolean p1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->connected:Z

    return-void
.end method

.method public static longToMac(J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/amap/location/support/util/MacUtils;->longToMac(J)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static macToLong(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/amap/location/support/util/MacUtils;->macToLong(Ljava/lang/String;)J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method


# virtual methods
.method public clone()Lcom/amap/location/support/bean/wifi/AmapWifi;
    .locals 3

    .line 2
    new-instance v0, Lcom/amap/location/support/bean/wifi/AmapWifi;

    iget-boolean v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->connected:Z

    invoke-direct {v0, v1}, Lcom/amap/location/support/bean/wifi/AmapWifi;-><init>(Z)V

    .line 3
    iget-wide v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->mac:J

    iput-wide v1, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->mac:J

    .line 4
    iget-object v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->ssid:Ljava/lang/String;

    iput-object v1, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->ssid:Ljava/lang/String;

    .line 5
    iget v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->rssi:I

    iput v1, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->rssi:I

    .line 6
    iget v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->frequency:I

    iput v1, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->frequency:I

    .line 7
    iget-wide v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->timestamp:J

    iput-wide v1, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->timestamp:J

    .line 8
    iget-wide v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->lastUpdateUtcMills:J

    iput-wide v1, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->lastUpdateUtcMills:J

    .line 9
    iget-short v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->freshness:S

    iput-short v1, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->freshness:S

    .line 10
    iget-boolean v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->connected:Z

    iput-boolean v1, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->connected:Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/bean/wifi/AmapWifi;->clone()Lcom/amap/location/support/bean/wifi/AmapWifi;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-boolean v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->connected:Z

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "#"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-wide v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->mac:J

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AmapWifi{mac="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-wide v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->mac:J

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", ssid="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->ssid:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", rssi="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->rssi:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", frequency="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->frequency:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", timestamp="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-wide v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->timestamp:J

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", lastUpdateUtcMills="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-wide v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->lastUpdateUtcMills:J

    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", freshness="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-short v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->freshness:S

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", connected="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-boolean v1, p0, Lcom/amap/location/support/bean/wifi/AmapWifi;->connected:Z

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    const/16 v1, 0x7d

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method
