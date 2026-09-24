.class public Lvo0$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lvo0;


# direct methods
.method public constructor <init>(Lvo0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0$l;->a:Lvo0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const-string v0, "GnssSoftLocator"

    .line 3
    :try_start_0
    iget-object v1, p0, Lvo0$l;->a:Lvo0;

    .line 5
    invoke-static {v1}, Lvo0;->P(Lvo0;)I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x3

    .line 10
    if-ge v1, v2, :cond_3

    .line 12
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 15
    move-result-object v1

    .line 16
    const-string v2, "rtk_type_soft"

    .line 18
    const-string v3, "amap"

    .line 20
    invoke-virtual {v1, v2, v3}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v2, p0, Lvo0$l;->a:Lvo0;

    .line 33
    invoke-static {v2}, Lvo0;->Q(Lvo0;)Lcom/amap/location/support/icecream/PluginClassLoader;

    .line 36
    move-result-object v2

    .line 37
    if-nez v2, :cond_1

    .line 39
    iget-object v2, p0, Lvo0$l;->a:Lvo0;

    .line 41
    new-instance v3, Lcom/amap/location/support/icecream/PluginClassLoader;

    .line 43
    const-string v4, "diff"

    .line 45
    invoke-direct {v3, v4}, Lcom/amap/location/support/icecream/PluginClassLoader;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-static {v2, v3}, Lvo0;->k(Lvo0;Lcom/amap/location/support/icecream/PluginClassLoader;)Lcom/amap/location/support/icecream/PluginClassLoader;

    .line 51
    :cond_1
    iget-object v2, p0, Lvo0$l;->a:Lvo0;

    .line 53
    invoke-static {v2}, Lvo0;->Q(Lvo0;)Lcom/amap/location/support/icecream/PluginClassLoader;

    .line 56
    move-result-object v2

    .line 57
    const-string v3, "proxy"

    .line 59
    invoke-virtual {v2, v3}, Lcom/amap/location/support/icecream/PluginClassLoader;->getPluginLoader(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;

    .line 65
    if-eqz v2, :cond_2

    .line 67
    invoke-static {v2}, Lcom/amap/location/support/AmapContext;->initDiffGnssDataProvider(Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;)V

    .line 70
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getDiffGnssDataProvider()Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;

    .line 73
    move-result-object v1

    .line 74
    iget-object v2, p0, Lvo0$l;->a:Lvo0;

    .line 76
    invoke-static {v2}, Lvo0;->R(Lvo0;)Lcom/amap/location/support/rtk/diffgnss/IDiffDataCallback;

    .line 79
    move-result-object v2

    .line 80
    invoke-interface {v1, v2}, Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;->init(Lcom/amap/location/support/rtk/diffgnss/IDiffDataCallback;)V

    .line 83
    iget-object v1, p0, Lvo0$l;->a:Lvo0;

    .line 85
    invoke-static {v1}, Lvo0;->S(Lvo0;)Ljava/lang/Runnable;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Lvo0;->x(Lvo0;Ljava/lang/Runnable;)V

    .line 92
    iget-object v1, p0, Lvo0$l;->a:Lvo0;

    .line 94
    const/4 v2, 0x0

    .line 95
    invoke-static {v1, v2}, Lvo0;->B(Lvo0;I)I

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    const-string v3, "diff loader fail:"

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lvo0$l;->a:Lvo0;

    .line 121
    invoke-static {v1}, Lvo0;->T(Lvo0;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    goto :goto_0

    .line 125
    :catchall_0
    move-exception v1

    .line 126
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    :cond_3
    :goto_0
    return-void
.end method
