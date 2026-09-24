.class Lcom/amap/location/support/network/FileDownLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/support/network/FileDownLoader;->readOnlineFile(Lcom/amap/location/support/network/HttpRequest;Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amap/location/support/network/FileDownLoader;

.field final synthetic val$baseRequest:Lcom/amap/location/support/network/HttpRequest;

.field final synthetic val$callback:Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;


# direct methods
.method public constructor <init>(Lcom/amap/location/support/network/FileDownLoader;Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;Lcom/amap/location/support/network/HttpRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/network/FileDownLoader$2;->this$0:Lcom/amap/location/support/network/FileDownLoader;

    .line 3
    iput-object p2, p0, Lcom/amap/location/support/network/FileDownLoader$2;->val$callback:Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;

    .line 5
    iput-object p3, p0, Lcom/amap/location/support/network/FileDownLoader$2;->val$baseRequest:Lcom/amap/location/support/network/HttpRequest;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const-string v0, ""

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/amap/location/support/network/FileDownLoader$2;->val$callback:Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;

    .line 7
    invoke-static {v3}, Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;->access$200(Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;)Z

    .line 10
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    if-eqz v3, :cond_0

    .line 13
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 16
    iget-object v3, p0, Lcom/amap/location/support/network/FileDownLoader$2;->val$callback:Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;

    .line 18
    const/4 v4, 0x3

    .line 19
    :goto_0
    invoke-virtual {v3, v4, v1, v0, v2}, Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;->onFinish(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    return-void

    .line 23
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/amap/location/support/network/FileDownLoader$2;->val$baseRequest:Lcom/amap/location/support/network/HttpRequest;

    .line 25
    iput-boolean v1, v3, Lcom/amap/location/support/network/HttpRequest;->returnBytes:Z

    .line 27
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetwork()Lcom/amap/location/support/network/INetwork;

    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Lcom/amap/location/support/network/FileDownLoader$2;->val$baseRequest:Lcom/amap/location/support/network/HttpRequest;

    .line 33
    invoke-interface {v3, v4}, Lcom/amap/location/support/network/INetwork;->get(Lcom/amap/location/support/network/HttpRequest;)Lcom/amap/location/support/network/HttpResponse;

    .line 36
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    if-nez v3, :cond_1

    .line 39
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 42
    iget-object v3, p0, Lcom/amap/location/support/network/FileDownLoader$2;->val$callback:Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;

    .line 44
    const/4 v4, 0x4

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :try_start_2
    iget v1, v3, Lcom/amap/location/support/network/HttpResponse;->statusCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    const/16 v4, 0x190

    .line 50
    if-lt v1, v4, :cond_2

    .line 52
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 55
    iget-object v3, p0, Lcom/amap/location/support/network/FileDownLoader$2;->val$callback:Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;

    .line 57
    const/4 v4, 0x6

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    :try_start_3
    iget-object v3, v3, Lcom/amap/location/support/network/HttpResponse;->stream:Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    if-nez v3, :cond_3

    .line 63
    invoke-static {v3}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    iget-object v3, p0, Lcom/amap/location/support/network/FileDownLoader$2;->val$callback:Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;

    .line 68
    const/4 v4, 0x5

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    :try_start_4
    invoke-static {v3}, Lcom/amap/location/support/util/IOUtils;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 73
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    invoke-static {v3}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 77
    iget-object v3, p0, Lcom/amap/location/support/network/FileDownLoader$2;->val$callback:Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;

    .line 79
    const/4 v4, 0x1

    .line 80
    goto :goto_2

    .line 81
    :catchall_0
    move-exception v2

    .line 82
    goto :goto_1

    .line 83
    :catchall_1
    move-exception v3

    .line 84
    move-object v5, v3

    .line 85
    move-object v3, v2

    .line 86
    move-object v2, v5

    .line 87
    :goto_1
    invoke-static {v3}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 90
    iget-object v3, p0, Lcom/amap/location/support/network/FileDownLoader$2;->val$callback:Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;

    .line 92
    const/4 v4, 0x7

    .line 93
    :goto_2
    invoke-virtual {v3, v4, v1, v0, v2}, Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;->onFinish(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method
