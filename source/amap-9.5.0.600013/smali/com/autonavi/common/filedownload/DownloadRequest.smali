.class public Lcom/autonavi/common/filedownload/DownloadRequest;
.super Lcom/autonavi/core/network/inter/request/HttpRequest;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PROGRESS_INTERVAL:J = 0x3e8L


# instance fields
.field private mNeedHoldCallback:Z

.field public mOutputPath:Ljava/lang/String;

.field private mProgressInterval:J

.field private mSupportRange:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/autonavi/core/network/inter/request/HttpRequest;-><init>()V

    .line 4
    const-wide/16 v0, 0x3e8

    .line 6
    iput-wide v0, p0, Lcom/autonavi/common/filedownload/DownloadRequest;->mProgressInterval:J

    .line 8
    iput-object p1, p0, Lcom/autonavi/common/filedownload/DownloadRequest;->mOutputPath:Ljava/lang/String;

    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/autonavi/common/filedownload/DownloadRequest;->mNeedHoldCallback:Z

    .line 13
    return-void
.end method


# virtual methods
.method public getOutputPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/filedownload/DownloadRequest;->mOutputPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getProgressInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/common/filedownload/DownloadRequest;->mProgressInterval:J

    .line 3
    return-wide v0
.end method

.method public isNeedHoldCallback()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/common/filedownload/DownloadRequest;->mNeedHoldCallback:Z

    .line 3
    return v0
.end method

.method public isSupportRange()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/common/filedownload/DownloadRequest;->mSupportRange:Z

    .line 3
    return v0
.end method

.method public setNeedHoldCallback(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/common/filedownload/DownloadRequest;->mNeedHoldCallback:Z

    .line 3
    return-void
.end method

.method public setOutputPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/common/filedownload/DownloadRequest;->mOutputPath:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setProgressInterval(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/common/filedownload/DownloadRequest;->mProgressInterval:J

    .line 3
    return-void
.end method

.method public setSupportRange(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/common/filedownload/DownloadRequest;->mSupportRange:Z

    .line 3
    return-void
.end method
