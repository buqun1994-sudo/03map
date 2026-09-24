.class public Lcom/amap/location/support/bean/AmapFps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AmapFps"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public bluetoothUpdateSystemTime:J

.field public bluetooths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;",
            ">;"
        }
    .end annotation
.end field

.field public cellUpdateSystemTime:J

.field public cells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/cell/AmapCell;",
            ">;"
        }
    .end annotation
.end field

.field public cn0Count:[I

.field public historyCells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/cell/AmapCell;",
            ">;"
        }
    .end annotation
.end field

.field public lightSensorValue:F

.field public locResultInfo:Lcom/amap/location/support/nl/NetworkLocationResultInfo;

.field public mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

.field public mainWifi:Lcom/amap/location/support/bean/wifi/AmapWifi;

.field public networkOperator:Ljava/lang/String;

.field public pressureSensorValue:F

.field public wifiUpdateSystemTime:J

.field public wifis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/wifi/AmapWifi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->bluetooths:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->historyCells:Ljava/util/List;

    .line 32
    const/4 v0, 0x0

    .line 33
    filled-new-array {v0, v0}, [I

    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->cn0Count:[I

    .line 39
    new-instance v0, Lcom/amap/location/support/nl/NetworkLocationResultInfo;

    .line 41
    invoke-direct {v0}, Lcom/amap/location/support/nl/NetworkLocationResultInfo;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->locResultInfo:Lcom/amap/location/support/nl/NetworkLocationResultInfo;

    .line 46
    return-void
.end method


# virtual methods
.method public clearBluetoothInfo()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/amap/location/support/bean/AmapFps;->bluetoothUpdateSystemTime:J

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->bluetooths:Ljava/util/List;

    .line 12
    return-void
.end method

.method public clearCellInfo()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/amap/location/support/bean/AmapFps;->cellUpdateSystemTime:J

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->networkOperator:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    .line 17
    return-void
.end method

.method public clearWifiInfo()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/amap/location/support/bean/AmapFps;->wifiUpdateSystemTime:J

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->mainWifi:Lcom/amap/location/support/bean/wifi/AmapWifi;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    .line 15
    return-void
.end method

.method public clone()Lcom/amap/location/support/bean/AmapFps;
    .locals 5

    .line 2
    new-instance v0, Lcom/amap/location/support/bean/AmapFps;

    invoke-direct {v0}, Lcom/amap/location/support/bean/AmapFps;-><init>()V

    .line 3
    iget-wide v1, p0, Lcom/amap/location/support/bean/AmapFps;->cellUpdateSystemTime:J

    iput-wide v1, v0, Lcom/amap/location/support/bean/AmapFps;->cellUpdateSystemTime:J

    .line 4
    iget-wide v1, p0, Lcom/amap/location/support/bean/AmapFps;->wifiUpdateSystemTime:J

    iput-wide v1, v0, Lcom/amap/location/support/bean/AmapFps;->wifiUpdateSystemTime:J

    .line 5
    iget-wide v1, p0, Lcom/amap/location/support/bean/AmapFps;->bluetoothUpdateSystemTime:J

    iput-wide v1, v0, Lcom/amap/location/support/bean/AmapFps;->bluetoothUpdateSystemTime:J

    .line 6
    iget-object v1, p0, Lcom/amap/location/support/bean/AmapFps;->networkOperator:Ljava/lang/String;

    iput-object v1, v0, Lcom/amap/location/support/bean/AmapFps;->networkOperator:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/amap/location/support/bean/cell/AmapCell;->clone()Lcom/amap/location/support/bean/cell/AmapCell;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/amap/location/support/bean/AmapFps;->mainWifi:Lcom/amap/location/support/bean/wifi/AmapWifi;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/amap/location/support/bean/wifi/AmapWifi;->clone()Lcom/amap/location/support/bean/wifi/AmapWifi;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/location/support/bean/AmapFps;->mainWifi:Lcom/amap/location/support/bean/wifi/AmapWifi;

    .line 11
    :cond_1
    iget-object v1, v0, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    iget-object v2, p0, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v1, v0, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    iget-object v2, p0, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object v1, v0, Lcom/amap/location/support/bean/AmapFps;->bluetooths:Ljava/util/List;

    iget-object v2, p0, Lcom/amap/location/support/bean/AmapFps;->bluetooths:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    iget-object v1, v0, Lcom/amap/location/support/bean/AmapFps;->historyCells:Ljava/util/List;

    iget-object v2, p0, Lcom/amap/location/support/bean/AmapFps;->historyCells:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    iget v1, p0, Lcom/amap/location/support/bean/AmapFps;->pressureSensorValue:F

    iput v1, v0, Lcom/amap/location/support/bean/AmapFps;->pressureSensorValue:F

    .line 16
    iget v1, p0, Lcom/amap/location/support/bean/AmapFps;->lightSensorValue:F

    iput v1, v0, Lcom/amap/location/support/bean/AmapFps;->lightSensorValue:F

    .line 17
    iget-object v1, v0, Lcom/amap/location/support/bean/AmapFps;->cn0Count:[I

    iget-object v2, p0, Lcom/amap/location/support/bean/AmapFps;->cn0Count:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v3, 0x1

    .line 18
    aget v2, v2, v3

    aput v2, v1, v3

    .line 19
    iget-object v1, p0, Lcom/amap/location/support/bean/AmapFps;->locResultInfo:Lcom/amap/location/support/nl/NetworkLocationResultInfo;

    invoke-virtual {v1}, Lcom/amap/location/support/nl/NetworkLocationResultInfo;->clone()Lcom/amap/location/support/nl/NetworkLocationResultInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/location/support/bean/AmapFps;->locResultInfo:Lcom/amap/location/support/nl/NetworkLocationResultInfo;

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
    invoke-virtual {p0}, Lcom/amap/location/support/bean/AmapFps;->clone()Lcom/amap/location/support/bean/AmapFps;

    move-result-object v0

    return-object v0
.end method

.method public shallowCopyBluetooth(Lcom/amap/location/support/bean/AmapFps;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-wide v0, p1, Lcom/amap/location/support/bean/AmapFps;->bluetoothUpdateSystemTime:J

    .line 5
    iput-wide v0, p0, Lcom/amap/location/support/bean/AmapFps;->bluetoothUpdateSystemTime:J

    .line 7
    iget-object p1, p1, Lcom/amap/location/support/bean/AmapFps;->bluetooths:Ljava/util/List;

    .line 9
    iput-object p1, p0, Lcom/amap/location/support/bean/AmapFps;->bluetooths:Ljava/util/List;

    .line 11
    :cond_0
    return-void
.end method

.method public shallowCopyCell(Lcom/amap/location/support/bean/AmapFps;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-wide v0, p1, Lcom/amap/location/support/bean/AmapFps;->cellUpdateSystemTime:J

    .line 5
    iput-wide v0, p0, Lcom/amap/location/support/bean/AmapFps;->cellUpdateSystemTime:J

    .line 7
    iget-object v0, p1, Lcom/amap/location/support/bean/AmapFps;->networkOperator:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->networkOperator:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    .line 13
    iput-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    .line 15
    iget-object p1, p1, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    .line 19
    :cond_0
    return-void
.end method

.method public shallowCopyWifi(Lcom/amap/location/support/bean/AmapFps;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-wide v0, p1, Lcom/amap/location/support/bean/AmapFps;->wifiUpdateSystemTime:J

    .line 5
    iput-wide v0, p0, Lcom/amap/location/support/bean/AmapFps;->wifiUpdateSystemTime:J

    .line 7
    iget-object v0, p1, Lcom/amap/location/support/bean/AmapFps;->mainWifi:Lcom/amap/location/support/bean/wifi/AmapWifi;

    .line 9
    iput-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->mainWifi:Lcom/amap/location/support/bean/wifi/AmapWifi;

    .line 11
    iget-object p1, p1, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    .line 15
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AmapFps{cellUpdateSystemTime="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-wide v1, p0, Lcom/amap/location/support/bean/AmapFps;->cellUpdateSystemTime:J

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", wifiUpdateSystemTime="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-wide v1, p0, Lcom/amap/location/support/bean/AmapFps;->wifiUpdateSystemTime:J

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", bluetoothUpdateSystemTime="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-wide v1, p0, Lcom/amap/location/support/bean/AmapFps;->bluetoothUpdateSystemTime:J

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", networkOperator=\'"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/amap/location/support/bean/AmapFps;->networkOperator:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const/16 v1, 0x27

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", pressureSensorValue="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lcom/amap/location/support/bean/AmapFps;->pressureSensorValue:F

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", lightSensorValue="

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lcom/amap/location/support/bean/AmapFps;->lightSensorValue:F

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", cn0Count="

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lcom/amap/location/support/bean/AmapFps;->cn0Count:[I

    .line 78
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", mainAmapCell="

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ", mainAmapWifi="

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lcom/amap/location/support/bean/AmapFps;->mainWifi:Lcom/amap/location/support/bean/wifi/AmapWifi;

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", amapCellList="

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ", amapWifiList="

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, ", amapBluetoothList="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lcom/amap/location/support/bean/AmapFps;->bluetooths:Ljava/util/List;

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ", historyCellList="

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lcom/amap/location/support/bean/AmapFps;->historyCells:Ljava/util/List;

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    const/16 v1, 0x7d

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 154
    return-object v0
.end method
