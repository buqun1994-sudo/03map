.class Lcom/amap/location/fusion/LocationProvider$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/LocationProvider;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/LocationProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/LocationProvider$5;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$5;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 3
    invoke-static {v0}, Lcom/amap/location/fusion/LocationProvider;->j(Lcom/amap/location/fusion/LocationProvider;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$5;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 12
    invoke-static {v0}, Lcom/amap/location/fusion/LocationProvider;->k(Lcom/amap/location/fusion/LocationProvider;)I

    .line 15
    move-result v0

    .line 16
    const v1, 0x7fffffff

    .line 19
    if-eq v0, v1, :cond_1

    .line 21
    packed-switch v0, :pswitch_data_0

    .line 24
    goto :goto_0

    .line 25
    :pswitch_0
    const v0, 0x18708

    .line 28
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 31
    goto :goto_0

    .line 32
    :pswitch_1
    const v0, 0x18709

    .line 35
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 38
    goto :goto_0

    .line 39
    :pswitch_2
    const v0, 0x1870c

    .line 42
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 45
    goto :goto_0

    .line 46
    :pswitch_3
    const v0, 0x1870b

    .line 49
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 52
    goto :goto_0

    .line 53
    :pswitch_4
    const v0, 0x1870a

    .line 56
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 59
    goto :goto_0

    .line 60
    :pswitch_5
    const v0, 0x18710

    .line 63
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 66
    goto :goto_0

    .line 67
    :pswitch_6
    const v0, 0x1870d

    .line 70
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const v0, 0x1870f

    .line 77
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 80
    :goto_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 87
    move-result-object v0

    .line 88
    invoke-interface {v0}, Lcom/amap/location/support/signal/gnss/IGnssManager;->isGnssEnable()Z

    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$5;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 96
    invoke-static {v0}, Lcom/amap/location/fusion/LocationProvider;->k(Lcom/amap/location/fusion/LocationProvider;)I

    .line 99
    move-result v0

    .line 100
    const/4 v1, 0x5

    .line 101
    if-eq v0, v1, :cond_2

    .line 103
    const v0, 0x18776

    .line 106
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$5;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 111
    const/4 v1, -0x1

    .line 112
    invoke-static {v0, v1}, Lcom/amap/location/fusion/LocationProvider;->a(Lcom/amap/location/fusion/LocationProvider;I)I

    .line 115
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$5;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 117
    invoke-static {v0}, Lcom/amap/location/fusion/LocationProvider;->f(Lcom/amap/location/fusion/LocationProvider;)Lcom/amap/location/support/handler/AmapHandler;

    .line 120
    move-result-object v0

    .line 121
    const-wide/16 v1, 0x1388

    .line 123
    invoke-interface {v0, p0, v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    return-void

    .line 127
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
