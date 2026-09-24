.class Lcom/amap/location/support/rtk/EphemerisManager$5;
.super Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/support/rtk/EphemerisManager;->downloadEphemerisFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amap/location/support/rtk/EphemerisManager;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$md5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/location/support/rtk/EphemerisManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/rtk/EphemerisManager$5;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 3
    iput-object p2, p0, Lcom/amap/location/support/rtk/EphemerisManager$5;->val$filePath:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/amap/location/support/rtk/EphemerisManager$5;->val$md5:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/amap/location/support/rtk/EphemerisManager$5;->val$fileName:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onFinish(IILjava/lang/Throwable;)V
    .locals 3

    .line 1
    const-string v0, "EphemerisManager"

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/amap/location/support/rtk/EphemerisManager$5;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 8
    iget-object p2, p0, Lcom/amap/location/support/rtk/EphemerisManager$5;->val$filePath:Ljava/lang/String;

    .line 10
    iget-object p3, p0, Lcom/amap/location/support/rtk/EphemerisManager$5;->val$md5:Ljava/lang/String;

    .line 12
    invoke-static {p1, p2, p3}, Lcom/amap/location/support/rtk/EphemerisManager;->access$600(Lcom/amap/location/support/rtk/EphemerisManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 18
    const-string p1, "updateEphemeris is suc"

    .line 20
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/amap/location/support/rtk/EphemerisManager$5;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 25
    iget-object p2, p0, Lcom/amap/location/support/rtk/EphemerisManager$5;->val$filePath:Ljava/lang/String;

    .line 27
    invoke-static {p1, p2}, Lcom/amap/location/support/rtk/EphemerisManager;->access$802(Lcom/amap/location/support/rtk/EphemerisManager;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    iget-object p1, p0, Lcom/amap/location/support/rtk/EphemerisManager$5;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 32
    iget-object p2, p0, Lcom/amap/location/support/rtk/EphemerisManager$5;->val$fileName:Ljava/lang/String;

    .line 34
    invoke-static {p1, p2}, Lcom/amap/location/support/rtk/EphemerisManager;->access$702(Lcom/amap/location/support/rtk/EphemerisManager;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    iget-object p1, p0, Lcom/amap/location/support/rtk/EphemerisManager$5;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 39
    const/4 p2, 0x3

    .line 40
    new-array p2, p2, [Ljava/lang/Object;

    .line 42
    const/4 p3, 0x0

    .line 43
    invoke-static {p1}, Lcom/amap/location/support/rtk/EphemerisManager;->access$800(Lcom/amap/location/support/rtk/EphemerisManager;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    aput-object v0, p2, p3

    .line 49
    iget-object p3, p0, Lcom/amap/location/support/rtk/EphemerisManager$5;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 51
    invoke-static {p3}, Lcom/amap/location/support/rtk/EphemerisManager;->access$700(Lcom/amap/location/support/rtk/EphemerisManager;)Ljava/lang/String;

    .line 54
    move-result-object p3

    .line 55
    aput-object p3, p2, v1

    .line 57
    const/4 p3, 0x2

    .line 58
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 60
    aput-object v0, p2, p3

    .line 62
    const/16 p3, 0x64

    .line 64
    invoke-virtual {p1, p3, p2}, Lcom/amap/location/support/dispatch/Dispatcher;->callback(ILjava/lang/Object;)V

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/amap/location/support/rtk/EphemerisManager$5;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 70
    invoke-static {p1}, Lcom/amap/location/support/rtk/EphemerisManager;->access$1200(Lcom/amap/location/support/rtk/EphemerisManager;)V

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/amap/location/support/rtk/EphemerisManager$5;->this$0:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 76
    invoke-static {v1}, Lcom/amap/location/support/rtk/EphemerisManager;->access$1200(Lcom/amap/location/support/rtk/EphemerisManager;)V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    const-string v2, "download failed:"

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string p1, ","

    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    if-eqz p3, :cond_2

    .line 105
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    const-string p1, ""

    .line 112
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_1
    return-void
.end method
