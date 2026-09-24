.class Lcom/autonavi/common/filedownload/FileDownloader$StrongListenerKeeper;
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
    name = "StrongListenerKeeper"
.end annotation


# instance fields
.field mDownloadCallback:Lcom/autonavi/common/filedownload/DownloadCallback;


# direct methods
.method public constructor <init>(Lcom/autonavi/common/filedownload/DownloadCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/common/filedownload/FileDownloader$StrongListenerKeeper;->mDownloadCallback:Lcom/autonavi/common/filedownload/DownloadCallback;

    .line 6
    return-void
.end method


# virtual methods
.method public get()Lcom/autonavi/common/filedownload/DownloadCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/filedownload/FileDownloader$StrongListenerKeeper;->mDownloadCallback:Lcom/autonavi/common/filedownload/DownloadCallback;

    .line 3
    return-object v0
.end method
