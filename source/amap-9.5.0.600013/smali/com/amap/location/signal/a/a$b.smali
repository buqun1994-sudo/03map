.class Lcom/amap/location/signal/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/status/PhoneStatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/signal/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/signal/a/a;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/amap/location/signal/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/signal/a/a$b;->a:Lcom/amap/location/signal/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amap/location/signal/a/a;Lcom/amap/location/signal/a/a$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/location/signal/a/a$b;-><init>(Lcom/amap/location/signal/a/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/signal/a/a$b;->b:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, p0, v1}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->addStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/amap/location/signal/a/a$b;->b:Z

    .line 24
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/signal/a/a$b;->b:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p0}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->removeStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;)Z

    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/amap/location/signal/a/a$b;->b:Z

    .line 20
    return-void
.end method

.method public getAction()J
    .locals 2

    const-wide/16 v0, 0x100

    return-wide v0
.end method

.method public onChange(JLorg/json/JSONObject;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x100

    .line 3
    cmp-long p3, p1, v0

    .line 5
    if-eqz p3, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const-string p1, "bluemgr"

    .line 10
    const-string p2, "bluetooth mode change"

    .line 12
    invoke-static {p1, p2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/amap/location/signal/a/a$b;->a:Lcom/amap/location/signal/a/a;

    .line 17
    invoke-static {p1}, Lcom/amap/location/signal/a/a;->b(Lcom/amap/location/signal/a/a;)Lcom/amap/location/signal/a/a$a;

    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-static {p1, p2}, Lcom/amap/location/signal/a/a$a;->a(Lcom/amap/location/signal/a/a$a;Z)V

    .line 25
    return-void
.end method
