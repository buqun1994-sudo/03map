.class public interface abstract Lcom/autonavi/common/imageloader/IDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/common/imageloader/IDownloader$ResponseException;
    }
.end annotation


# virtual methods
.method public abstract load(Landroid/net/Uri;I)Lcom/autonavi/common/imageloader/RequestHandler$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setClient(Lcom/autonavi/core/network/inter/NetworkClient;)V
.end method

.method public abstract shutdown()V
.end method
