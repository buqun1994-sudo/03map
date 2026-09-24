.class Lcom/amap/api/service/LocationServiceImpl$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/service/LocationServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/service/LocationServiceImpl;


# direct methods
.method public constructor <init>(Lcom/amap/api/service/LocationServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/service/LocationServiceImpl$9;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/amap/api/service/LocationServiceImpl$9;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 11
    invoke-static {v2}, Lcom/amap/api/service/LocationServiceImpl;->j(Lcom/amap/api/service/LocationServiceImpl;)J

    .line 14
    move-result-wide v2

    .line 15
    const-wide/16 v4, 0x0

    .line 17
    cmp-long v6, v2, v4

    .line 19
    if-lez v6, :cond_0

    .line 21
    iget-object v2, p0, Lcom/amap/api/service/LocationServiceImpl$9;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 23
    invoke-static {v2}, Lcom/amap/api/service/LocationServiceImpl;->j(Lcom/amap/api/service/LocationServiceImpl;)J

    .line 26
    move-result-wide v2

    .line 27
    sub-long v2, v0, v2

    .line 29
    const-wide/32 v4, 0x186a0

    .line 32
    cmp-long v6, v2, v4

    .line 34
    if-lez v6, :cond_0

    .line 36
    invoke-static {}, Lcom/amap/location/sdk/f/a;->a()Lcom/amap/location/sdk/f/a;

    .line 39
    move-result-object v4

    .line 40
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onForeground()Z

    .line 43
    move-result v5

    .line 44
    xor-int/lit8 v5, v5, 0x1

    .line 46
    invoke-virtual {v4, v2, v3, v5}, Lcom/amap/location/sdk/f/a;->a(JZ)V

    .line 49
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 56
    move-result-object v2

    .line 57
    const v3, 0x1ae4e

    .line 60
    invoke-static {v3, v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/amap/api/service/LocationServiceImpl$9;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 65
    invoke-static {v2, v0, v1}, Lcom/amap/api/service/LocationServiceImpl;->a(Lcom/amap/api/service/LocationServiceImpl;J)J

    .line 68
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl$9;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 70
    invoke-static {v0}, Lcom/amap/api/service/LocationServiceImpl;->e(Lcom/amap/api/service/LocationServiceImpl;)Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl$9;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 78
    invoke-static {v0}, Lcom/amap/api/service/LocationServiceImpl;->k(Lcom/amap/api/service/LocationServiceImpl;)Lcom/amap/location/support/handler/AmapHandler;

    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl$9;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 86
    invoke-static {v0}, Lcom/amap/api/service/LocationServiceImpl;->k(Lcom/amap/api/service/LocationServiceImpl;)Lcom/amap/location/support/handler/AmapHandler;

    .line 89
    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl$9;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 92
    invoke-static {v1}, Lcom/amap/api/service/LocationServiceImpl;->l(Lcom/amap/api/service/LocationServiceImpl;)Ljava/lang/Runnable;

    .line 95
    move-result-object v1

    .line 96
    const-wide/32 v2, 0xea60

    .line 99
    invoke-interface {v0, v1, v2, v3}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    :cond_1
    return-void
.end method
