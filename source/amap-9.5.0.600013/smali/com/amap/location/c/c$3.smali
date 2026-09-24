.class Lcom/amap/location/c/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/status/PhoneStatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/c/c;


# direct methods
.method public constructor <init>(Lcom/amap/location/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/c/c$3;->a:Lcom/amap/location/c/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getAction()J
    .locals 2

    const-wide/16 v0, 0x20

    return-wide v0
.end method

.method public onChange(JLorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/c/c$3;->getAction()J

    .line 4
    move-result-wide v0

    .line 5
    cmp-long p3, p1, v0

    .line 7
    if-eqz p3, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isScreenOn()Z

    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p0, Lcom/amap/location/c/c$3;->a:Lcom/amap/location/c/c;

    .line 26
    invoke-static {p1}, Lcom/amap/location/c/c;->c(Lcom/amap/location/c/c;)Lcom/amap/location/c/b;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/amap/location/c/b;->a()Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 36
    iget-object p1, p0, Lcom/amap/location/c/c$3;->a:Lcom/amap/location/c/c;

    .line 38
    invoke-static {p1}, Lcom/amap/location/c/c;->i(Lcom/amap/location/c/c;)V

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/amap/location/c/c$3;->a:Lcom/amap/location/c/c;

    .line 44
    invoke-static {p1}, Lcom/amap/location/c/c;->c(Lcom/amap/location/c/c;)Lcom/amap/location/c/b;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/amap/location/c/b;->a()Z

    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 54
    iget-object p1, p0, Lcom/amap/location/c/c$3;->a:Lcom/amap/location/c/c;

    .line 56
    invoke-static {p1}, Lcom/amap/location/c/c;->k(Lcom/amap/location/c/c;)V

    .line 59
    :cond_2
    :goto_0
    return-void
.end method
