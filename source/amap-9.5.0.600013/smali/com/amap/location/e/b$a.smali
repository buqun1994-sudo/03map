.class final Lcom/amap/location/e/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnHandleMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/e/b;


# direct methods
.method private constructor <init>(Lcom/amap/location/e/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/b$a;->a:Lcom/amap/location/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amap/location/e/b;Lcom/amap/location/e/b$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/location/e/b$a;-><init>(Lcom/amap/location/e/b;)V

    return-void
.end method


# virtual methods
.method public handleMessage(IIILjava/lang/Object;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_7

    .line 3
    const/4 p3, 0x1

    .line 4
    if-eq p1, p3, :cond_6

    .line 6
    const/4 p3, 0x2

    .line 7
    if-eq p1, p3, :cond_4

    .line 9
    const/4 p3, 0x3

    .line 10
    if-eq p1, p3, :cond_3

    .line 12
    const/4 p2, 0x4

    .line 13
    if-eq p1, p2, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/amap/location/e/b$a;->a:Lcom/amap/location/e/b;

    .line 18
    invoke-static {p1}, Lcom/amap/location/e/b;->i(Lcom/amap/location/e/b;)V

    .line 21
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 28
    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/amap/location/e/b$a;->a:Lcom/amap/location/e/b;

    .line 31
    invoke-static {p2}, Lcom/amap/location/e/b;->j(Lcom/amap/location/e/b;)Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p1, p2}, Lcom/amap/location/support/signal/gnss/IGnssManager;->unregisterSatelliteStatusCallback(Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;)Z

    .line 38
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Lcom/amap/location/support/security/INativeAbility;->destroy3DMA()V

    .line 45
    iget-object p1, p0, Lcom/amap/location/e/b$a;->a:Lcom/amap/location/e/b;

    .line 47
    invoke-static {p1}, Lcom/amap/location/e/b;->k(Lcom/amap/location/e/b;)Lcom/amap/location/e/a/h;

    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_1

    .line 53
    iget-object p1, p0, Lcom/amap/location/e/b$a;->a:Lcom/amap/location/e/b;

    .line 55
    invoke-static {p1}, Lcom/amap/location/e/b;->k(Lcom/amap/location/e/b;)Lcom/amap/location/e/a/h;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/amap/location/e/a/h;->b()V

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/amap/location/e/b$a;->a:Lcom/amap/location/e/b;

    .line 64
    invoke-static {p1}, Lcom/amap/location/e/b;->l(Lcom/amap/location/e/b;)Lcom/amap/location/e/a/a/e;

    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_2

    .line 70
    iget-object p1, p0, Lcom/amap/location/e/b$a;->a:Lcom/amap/location/e/b;

    .line 72
    invoke-static {p1}, Lcom/amap/location/e/b;->l(Lcom/amap/location/e/b;)Lcom/amap/location/e/a/a/e;

    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/amap/location/e/a/a/e;->e()V

    .line 79
    :cond_2
    iget-object p1, p0, Lcom/amap/location/e/b$a;->a:Lcom/amap/location/e/b;

    .line 81
    invoke-static {p1}, Lcom/amap/location/e/b;->m(Lcom/amap/location/e/b;)Lcom/amap/location/support/handler/AmapLooper;

    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_8

    .line 87
    iget-object p1, p0, Lcom/amap/location/e/b$a;->a:Lcom/amap/location/e/b;

    .line 89
    invoke-static {p1}, Lcom/amap/location/e/b;->m(Lcom/amap/location/e/b;)Lcom/amap/location/support/handler/AmapLooper;

    .line 92
    move-result-object p1

    .line 93
    invoke-interface {p1}, Lcom/amap/location/support/handler/AmapLooper;->quit()V

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    iget-object p1, p0, Lcom/amap/location/e/b$a;->a:Lcom/amap/location/e/b;

    .line 99
    invoke-static {p1, p2}, Lcom/amap/location/e/b;->b(Lcom/amap/location/e/b;I)V

    .line 102
    goto :goto_0

    .line 103
    :cond_4
    if-nez p4, :cond_5

    .line 105
    return-void

    .line 106
    :cond_5
    check-cast p4, Lcom/amap/location/e/a/a;

    .line 108
    iget-object p1, p0, Lcom/amap/location/e/b$a;->a:Lcom/amap/location/e/b;

    .line 110
    invoke-static {p1, p2, p4}, Lcom/amap/location/e/b;->a(Lcom/amap/location/e/b;ILcom/amap/location/e/a/a;)V

    .line 113
    goto :goto_0

    .line 114
    :cond_6
    iget-object p1, p0, Lcom/amap/location/e/b$a;->a:Lcom/amap/location/e/b;

    .line 116
    invoke-static {p1}, Lcom/amap/location/e/b;->i(Lcom/amap/location/e/b;)V

    .line 119
    goto :goto_0

    .line 120
    :cond_7
    iget-object p1, p0, Lcom/amap/location/e/b$a;->a:Lcom/amap/location/e/b;

    .line 122
    invoke-static {p1}, Lcom/amap/location/e/b;->h(Lcom/amap/location/e/b;)V

    .line 125
    :cond_8
    :goto_0
    return-void
.end method
