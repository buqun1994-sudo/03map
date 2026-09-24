.class Lcom/amap/location/c/i/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/status/PhoneStatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/c/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/c/i/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/c/i/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/c/i/a$1;->a:Lcom/amap/location/c/i/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getAction()J
    .locals 2

    const-wide/16 v0, 0x2

    return-wide v0
.end method

.method public onChange(JLorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/c/i/a$1;->getAction()J

    .line 4
    move-result-wide v0

    .line 5
    cmp-long p3, p1, v0

    .line 7
    if-nez p3, :cond_0

    .line 9
    iget-object p1, p0, Lcom/amap/location/c/i/a$1;->a:Lcom/amap/location/c/i/a;

    .line 11
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p2}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 18
    move-result-object p2

    .line 19
    invoke-interface {p2}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isAirplaneModeOn()Z

    .line 22
    move-result p2

    .line 23
    invoke-static {p1, p2}, Lcom/amap/location/c/i/a;->a(Lcom/amap/location/c/i/a;Z)Z

    .line 26
    :cond_0
    return-void
.end method
