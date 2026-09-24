.class Lcom/amap/location/c/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnHandleMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/c/c;


# direct methods
.method public constructor <init>(Lcom/amap/location/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/c/c$a;->a:Lcom/amap/location/c/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(IIILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    if-eq p1, p2, :cond_0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 12
    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/amap/location/c/c$a;->a:Lcom/amap/location/c/c;

    .line 15
    invoke-static {p2}, Lcom/amap/location/c/c;->h(Lcom/amap/location/c/c;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 18
    move-result-object p2

    .line 19
    invoke-interface {p1, p2}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->removeStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;)Z

    .line 22
    iget-object p1, p0, Lcom/amap/location/c/c$a;->a:Lcom/amap/location/c/c;

    .line 24
    invoke-static {p1}, Lcom/amap/location/c/c;->k(Lcom/amap/location/c/c;)V

    .line 27
    iget-object p1, p0, Lcom/amap/location/c/c$a;->a:Lcom/amap/location/c/c;

    .line 29
    invoke-static {p1}, Lcom/amap/location/c/c;->f(Lcom/amap/location/c/c;)Lcom/amap/location/support/handler/AmapHandler;

    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x0

    .line 34
    invoke-interface {p1, p2}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lcom/amap/location/c/c$a;->a:Lcom/amap/location/c/c;

    .line 39
    invoke-static {p1}, Lcom/amap/location/c/c;->a(Lcom/amap/location/c/c;)Lcom/amap/location/c/g/a;

    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 45
    iget-object p1, p0, Lcom/amap/location/c/c$a;->a:Lcom/amap/location/c/c;

    .line 47
    invoke-static {p1}, Lcom/amap/location/c/c;->a(Lcom/amap/location/c/c;)Lcom/amap/location/c/g/a;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/amap/location/c/g/a;->b()V

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/amap/location/c/c$a;->a:Lcom/amap/location/c/c;

    .line 56
    invoke-static {p1}, Lcom/amap/location/c/c;->f(Lcom/amap/location/c/c;)Lcom/amap/location/support/handler/AmapHandler;

    .line 59
    move-result-object p1

    .line 60
    new-instance p2, Lcom/amap/location/c/c$a$1;

    .line 62
    invoke-direct {p2, p0}, Lcom/amap/location/c/c$a$1;-><init>(Lcom/amap/location/c/c$a;)V

    .line 65
    invoke-interface {p1, p2}, Lcom/amap/location/support/handler/AmapHandler;->post(Ljava/lang/Runnable;)Z

    .line 68
    :goto_0
    return-void
.end method
