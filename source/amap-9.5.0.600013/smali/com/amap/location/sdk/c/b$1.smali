.class Lcom/amap/location/sdk/c/b$1;
.super Lcom/amap/location/support/cloud/IAmapCloudListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/sdk/c/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/c/b;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/c/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/c/b$1;->a:Lcom/amap/location/sdk/c/b;

    .line 3
    invoke-direct {p0, p2}, Lcom/amap/location/support/cloud/IAmapCloudListener;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onDisabled()V
    .locals 0

    return-void
.end method

.method public onUpdated()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/location/support/network/gateway/LocalGatewayConfig;->build()Lcom/amap/location/support/network/gateway/LocalGatewayConfig;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/amap/location/sdk/c/b$1;->a:Lcom/amap/location/sdk/c/b;

    .line 7
    invoke-static {v1}, Lcom/amap/location/sdk/c/b;->a(Lcom/amap/location/sdk/c/b;)Lcom/amap/location/support/network/gateway/LocalGateway;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/amap/location/support/network/gateway/LocalGateway;->update(Lcom/amap/location/support/network/gateway/LocalGatewayConfig;)V

    .line 14
    return-void
.end method
