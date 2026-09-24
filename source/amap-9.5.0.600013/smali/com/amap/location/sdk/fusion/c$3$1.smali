.class Lcom/amap/location/sdk/fusion/c$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/sdk/fusion/c$3;->a([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/support/bean/location/AmapLocation;

.field final synthetic b:Lcom/amap/location/sdk/fusion/c$3;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/fusion/c$3;Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/fusion/c$3$1;->b:Lcom/amap/location/sdk/fusion/c$3;

    .line 3
    iput-object p2, p0, Lcom/amap/location/sdk/fusion/c$3$1;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/c$3$1;->b:Lcom/amap/location/sdk/fusion/c$3;

    .line 3
    iget-object v0, v0, Lcom/amap/location/sdk/fusion/c$3;->a:Lcom/amap/location/sdk/fusion/c;

    .line 5
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/c;->j(Lcom/amap/location/sdk/fusion/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/c$3$1;->b:Lcom/amap/location/sdk/fusion/c$3;

    .line 13
    iget-object v0, v0, Lcom/amap/location/sdk/fusion/c$3;->a:Lcom/amap/location/sdk/fusion/c;

    .line 15
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/c;->j(Lcom/amap/location/sdk/fusion/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/c$3$1;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 21
    invoke-virtual {v0, v1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    const-string v1, "get net location:"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/c$3$1;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 36
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->getLocationLog(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    const-string v1, "mainserviceproxy"

    .line 49
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method
