.class final Lcom/amap/api/service/LocationServiceImpl$a;
.super Landroid/os/RemoteCallbackList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/service/LocationServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Landroid/os/RemoteCallbackList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/service/LocationServiceImpl;


# direct methods
.method private constructor <init>(Lcom/amap/api/service/LocationServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/service/LocationServiceImpl$a;->a:Lcom/amap/api/service/LocationServiceImpl;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amap/api/service/LocationServiceImpl;Lcom/amap/api/service/LocationServiceImpl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/api/service/LocationServiceImpl$a;-><init>(Lcom/amap/api/service/LocationServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 7
    iget-object p2, p0, Lcom/amap/api/service/LocationServiceImpl$a;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 9
    invoke-static {p2}, Lcom/amap/api/service/LocationServiceImpl;->i(Lcom/amap/api/service/LocationServiceImpl;)V

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v0, "AMap RemoteCallbackList died:"

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    const-string p2, "mainservice"

    .line 31
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
