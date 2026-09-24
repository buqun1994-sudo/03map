.class Lcom/amap/location/sdk/fusion/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/app/MessageCenterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/sdk/fusion/c;-><init>(Landroid/content/Context;Lcom/amap/location/sdk/fusion/c$a;Landroid/content/Intent;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/fusion/c;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/fusion/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/fusion/c$1;->a:Lcom/amap/location/sdk/fusion/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getAction()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public onChange(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onForeground()Z

    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/c$1;->a:Lcom/amap/location/sdk/fusion/c;

    .line 12
    invoke-static {p1}, Lcom/amap/location/sdk/fusion/c;->a(Lcom/amap/location/sdk/fusion/c;)Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/c$1;->a:Lcom/amap/location/sdk/fusion/c;

    .line 20
    invoke-static {p1}, Lcom/amap/location/sdk/fusion/c;->b(Lcom/amap/location/sdk/fusion/c;)Lcom/amap/location/sdk/fusion/ILocationService;

    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_0

    .line 26
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/c$1;->a:Lcom/amap/location/sdk/fusion/c;

    .line 28
    invoke-static {p1}, Lcom/amap/location/sdk/fusion/c;->c(Lcom/amap/location/sdk/fusion/c;)I

    .line 31
    move-result p1

    .line 32
    const/4 v1, 0x3

    .line 33
    if-gt p1, v1, :cond_0

    .line 35
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 38
    move-result-object p1

    .line 39
    const-string v1, "sub_retry"

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v1, v2}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;I)I

    .line 45
    move-result p1

    .line 46
    if-ne p1, v0, :cond_0

    .line 48
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/c$1;->a:Lcom/amap/location/sdk/fusion/c;

    .line 50
    invoke-static {p1, v2}, Lcom/amap/location/sdk/fusion/c;->a(Lcom/amap/location/sdk/fusion/c;Z)Z

    .line 53
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/c$1;->a:Lcom/amap/location/sdk/fusion/c;

    .line 55
    invoke-static {p1}, Lcom/amap/location/sdk/fusion/c;->d(Lcom/amap/location/sdk/fusion/c;)Landroid/content/Context;

    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/c$1;->a:Lcom/amap/location/sdk/fusion/c;

    .line 61
    invoke-static {v1}, Lcom/amap/location/sdk/fusion/c;->e(Lcom/amap/location/sdk/fusion/c;)Landroid/content/Intent;

    .line 64
    move-result-object v1

    .line 65
    invoke-static {p1, v0, v1}, Lcom/amap/location/sdk/fusion/c;->a(Lcom/amap/location/sdk/fusion/c;Landroid/content/Context;Landroid/content/Intent;)V

    .line 68
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/c$1;->a:Lcom/amap/location/sdk/fusion/c;

    .line 70
    invoke-static {p1}, Lcom/amap/location/sdk/fusion/c;->f(Lcom/amap/location/sdk/fusion/c;)I

    .line 73
    :cond_0
    return-void
.end method
