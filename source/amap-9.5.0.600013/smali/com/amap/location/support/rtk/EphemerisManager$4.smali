.class Lcom/amap/location/support/rtk/EphemerisManager$4;
.super Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/support/rtk/EphemerisManager;->downloadConfigFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amap/location/support/rtk/EphemerisManager;


# direct methods
.method public constructor <init>(Lcom/amap/location/support/rtk/EphemerisManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/rtk/EphemerisManager$4;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 3
    invoke-direct {p0}, Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFinish(IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    const/4 p2, 0x1

    .line 2
    if-ne p1, p2, :cond_2

    .line 4
    invoke-static {p3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_3

    .line 10
    const-string p1, "[\\r\\n]"

    .line 12
    const-string p4, ""

    .line 14
    invoke-virtual {p3, p1, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    const-string p3, ";"

    .line 24
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    array-length p3, p1

    .line 29
    const/4 p4, 0x2

    .line 30
    if-ne p3, p4, :cond_3

    .line 32
    const/4 p3, 0x0

    .line 33
    aget-object v0, p1, p3

    .line 35
    aget-object p1, p1, p2

    .line 37
    iget-object v1, p0, Lcom/amap/location/support/rtk/EphemerisManager$4;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget-object v3, p0, Lcom/amap/location/support/rtk/EphemerisManager$4;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 46
    invoke-static {v3}, Lcom/amap/location/support/rtk/EphemerisManager;->access$500(Lcom/amap/location/support/rtk/EphemerisManager;)Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v3, "/"

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-static {v1, v2, p1}, Lcom/amap/location/support/rtk/EphemerisManager;->access$600(Lcom/amap/location/support/rtk/EphemerisManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/amap/location/support/rtk/EphemerisManager$4;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 73
    invoke-static {p1, v0}, Lcom/amap/location/support/rtk/EphemerisManager;->access$702(Lcom/amap/location/support/rtk/EphemerisManager;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    iget-object p1, p0, Lcom/amap/location/support/rtk/EphemerisManager$4;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    iget-object v2, p0, Lcom/amap/location/support/rtk/EphemerisManager$4;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 85
    invoke-static {v2}, Lcom/amap/location/support/rtk/EphemerisManager;->access$500(Lcom/amap/location/support/rtk/EphemerisManager;)Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    invoke-static {p1, v1}, Lcom/amap/location/support/rtk/EphemerisManager;->access$802(Lcom/amap/location/support/rtk/EphemerisManager;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    iget-object p1, p0, Lcom/amap/location/support/rtk/EphemerisManager$4;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 107
    const/4 v1, 0x3

    .line 108
    new-array v1, v1, [Ljava/lang/Object;

    .line 110
    invoke-static {p1}, Lcom/amap/location/support/rtk/EphemerisManager;->access$800(Lcom/amap/location/support/rtk/EphemerisManager;)Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 114
    aput-object v2, v1, p3

    .line 116
    aput-object v0, v1, p2

    .line 118
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 120
    aput-object p2, v1, p4

    .line 122
    const/16 p2, 0x64

    .line 124
    invoke-virtual {p1, p2, v1}, Lcom/amap/location/support/dispatch/Dispatcher;->callback(ILjava/lang/Object;)V

    .line 127
    goto :goto_0

    .line 128
    :cond_0
    iget-object p2, p0, Lcom/amap/location/support/rtk/EphemerisManager$4;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 130
    invoke-static {p2}, Lcom/amap/location/support/rtk/EphemerisManager;->access$900(Lcom/amap/location/support/rtk/EphemerisManager;)V

    .line 133
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 136
    move-result p2

    .line 137
    const/16 p3, 0x8

    .line 139
    if-ne p2, p3, :cond_1

    .line 141
    iget-object p2, p0, Lcom/amap/location/support/rtk/EphemerisManager$4;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 143
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 146
    move-result-object p3

    .line 147
    invoke-interface {p3}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 150
    move-result-wide p3

    .line 151
    invoke-static {p3, p4}, Lcom/amap/location/support/rtk/EphemerisManager;->access$1000(J)Ljava/lang/String;

    .line 154
    move-result-object p3

    .line 155
    invoke-static {p2, p3, p1}, Lcom/amap/location/support/rtk/EphemerisManager;->access$1100(Lcom/amap/location/support/rtk/EphemerisManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    goto :goto_0

    .line 159
    :cond_1
    iget-object p2, p0, Lcom/amap/location/support/rtk/EphemerisManager$4;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 161
    invoke-static {p2, v0, p1}, Lcom/amap/location/support/rtk/EphemerisManager;->access$1100(Lcom/amap/location/support/rtk/EphemerisManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    goto :goto_0

    .line 165
    :cond_2
    iget-object p1, p0, Lcom/amap/location/support/rtk/EphemerisManager$4;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 167
    invoke-static {p1}, Lcom/amap/location/support/rtk/EphemerisManager;->access$1200(Lcom/amap/location/support/rtk/EphemerisManager;)V

    .line 170
    :cond_3
    :goto_0
    return-void
.end method
