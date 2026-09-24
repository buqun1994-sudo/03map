.class Lcom/autonavi/common/filedownload/FileDownloader$WeakListenerKeeper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/common/filedownload/FileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeakListenerKeeper"
.end annotation


# instance fields
.field mDownloadCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autonavi/common/filedownload/DownloadCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/autonavi/common/filedownload/DownloadCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/autonavi/common/filedownload/FileDownloader$WeakListenerKeeper;->mDownloadCallbackRef:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public get()Lcom/autonavi/common/filedownload/DownloadCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/filedownload/FileDownloader$WeakListenerKeeper;->mDownloadCallbackRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/autonavi/common/filedownload/DownloadCallback;

    .line 9
    return-object v0
.end method
