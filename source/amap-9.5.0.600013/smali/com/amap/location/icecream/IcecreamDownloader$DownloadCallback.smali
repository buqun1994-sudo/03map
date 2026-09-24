.class Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;
.super Lcom/amap/location/icecream/IcecreamSupplier$DownloadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/icecream/IcecreamDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadCallback"
.end annotation


# static fields
.field private static final MSG_CANCEL:I = 0x3

.field private static final MSG_FAILED:I = 0x0

.field private static final MSG_NEXT:I = 0x2

.field private static final MSG_SUCCESS:I = 0x1


# instance fields
.field public mIceCreamInfo:Lcom/amap/location/support/icecream/IcecreamInfo;

.field final synthetic this$0:Lcom/amap/location/icecream/IcecreamDownloader;


# direct methods
.method private constructor <init>(Lcom/amap/location/icecream/IcecreamDownloader;Lcom/amap/location/support/icecream/IcecreamInfo;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;->this$0:Lcom/amap/location/icecream/IcecreamDownloader;

    invoke-direct {p0}, Lcom/amap/location/icecream/IcecreamSupplier$DownloadCallback;-><init>()V

    if-eqz p2, :cond_0

    .line 3
    iput-object p2, p0, Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;->mIceCreamInfo:Lcom/amap/location/support/icecream/IcecreamInfo;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/amap/location/icecream/IcecreamDownloader;Lcom/amap/location/support/icecream/IcecreamInfo;Lcom/amap/location/icecream/IcecreamDownloader$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;-><init>(Lcom/amap/location/icecream/IcecreamDownloader;Lcom/amap/location/support/icecream/IcecreamInfo;)V

    return-void
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;->mIceCreamInfo:Lcom/amap/location/support/icecream/IcecreamInfo;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "unknow"

    .line 10
    :goto_0
    return-object v0
.end method


# virtual methods
.method public onFinish(IILjava/lang/Throwable;)V
    .locals 7

    .line 1
    const-string v0, "icedw"

    .line 3
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 5
    const-string v2, "plugin %s statusCode\uff1a%d, netCode\uff1a%d, error\uff1a%s"

    .line 7
    const/4 v3, 0x4

    .line 8
    new-array v3, v3, [Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;->getName()Ljava/lang/String;

    .line 13
    move-result-object v4

    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v4, v3, v5

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v4

    .line 21
    const/4 v6, 0x1

    .line 22
    aput-object v4, v3, v6

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p2

    .line 28
    const/4 v4, 0x2

    .line 29
    aput-object p2, v3, v4

    .line 31
    invoke-static {p3}, Lcom/amap/location/support/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    const/4 p3, 0x3

    .line 36
    aput-object p2, v3, p3

    .line 38
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    invoke-static {v0, p2}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;->this$0:Lcom/amap/location/icecream/IcecreamDownloader;

    .line 47
    monitor-enter p2

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;->this$0:Lcom/amap/location/icecream/IcecreamDownloader;

    .line 50
    invoke-static {v0}, Lcom/amap/location/icecream/IcecreamDownloader;->access$300(Lcom/amap/location/icecream/IcecreamDownloader;)Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 56
    iget-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;->this$0:Lcom/amap/location/icecream/IcecreamDownloader;

    .line 58
    const/4 p3, 0x0

    .line 59
    invoke-static {p1, p3}, Lcom/amap/location/icecream/IcecreamDownloader;->access$402(Lcom/amap/location/icecream/IcecreamDownloader;Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;)Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;

    .line 62
    goto :goto_2

    .line 63
    :cond_0
    if-eq p1, v6, :cond_3

    .line 65
    if-ne p1, v4, :cond_1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    if-ne p1, p3, :cond_2

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 p3, 0x0

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    :goto_0
    const/4 p3, 0x1

    .line 74
    :goto_1
    iget-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;->this$0:Lcom/amap/location/icecream/IcecreamDownloader;

    .line 76
    iget-object p1, p1, Lcom/amap/location/icecream/IcecreamDownloader;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 78
    invoke-interface {p1, v6, p3, v5}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(III)Z

    .line 81
    :goto_2
    monitor-exit p2

    .line 82
    return-void

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p1
.end method
