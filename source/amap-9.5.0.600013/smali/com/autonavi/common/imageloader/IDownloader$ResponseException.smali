.class public Lcom/autonavi/common/imageloader/IDownloader$ResponseException;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/common/imageloader/IDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseException"
.end annotation


# instance fields
.field final localCacheOnly:Z

.field final responseCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Lcom/autonavi/common/imageloader/NetworkPolicy;->isOfflineOnly(I)Z

    .line 7
    move-result p1

    .line 8
    iput-boolean p1, p0, Lcom/autonavi/common/imageloader/IDownloader$ResponseException;->localCacheOnly:Z

    .line 10
    iput p3, p0, Lcom/autonavi/common/imageloader/IDownloader$ResponseException;->responseCode:I

    .line 12
    return-void
.end method
