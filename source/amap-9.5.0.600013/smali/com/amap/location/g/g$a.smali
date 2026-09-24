.class final Lcom/amap/location/g/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/status/PhoneStatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/g/g;


# direct methods
.method private constructor <init>(Lcom/amap/location/g/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/g/g$a;->a:Lcom/amap/location/g/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amap/location/g/g;Lcom/amap/location/g/g$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/location/g/g$a;-><init>(Lcom/amap/location/g/g;)V

    return-void
.end method


# virtual methods
.method public getAction()J
    .locals 2

    const-wide/16 v0, 0xaf

    return-wide v0
.end method

.method public onChange(JLorg/json/JSONObject;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x20

    .line 3
    cmp-long p3, p1, v0

    .line 5
    if-nez p3, :cond_0

    .line 7
    iget-object p1, p0, Lcom/amap/location/g/g$a;->a:Lcom/amap/location/g/g;

    .line 9
    invoke-static {}, Lcom/amap/location/g/c/d;->c()Z

    .line 12
    move-result p2

    .line 13
    invoke-static {p1, p2}, Lcom/amap/location/g/g;->b(Lcom/amap/location/g/g;Z)V

    .line 16
    goto/16 :goto_0

    .line 18
    :cond_0
    const-wide/16 v0, 0x2

    .line 20
    cmp-long p3, p1, v0

    .line 22
    if-nez p3, :cond_1

    .line 24
    iget-object p1, p0, Lcom/amap/location/g/g$a;->a:Lcom/amap/location/g/g;

    .line 26
    invoke-static {}, Lcom/amap/location/g/c/d;->a()Z

    .line 29
    move-result p2

    .line 30
    xor-int/lit8 p2, p2, 0x1

    .line 32
    invoke-static {p1, p2}, Lcom/amap/location/g/g;->c(Lcom/amap/location/g/g;Z)V

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-wide/16 v0, 0x8

    .line 38
    cmp-long p3, p1, v0

    .line 40
    if-nez p3, :cond_2

    .line 42
    iget-object p1, p0, Lcom/amap/location/g/g$a;->a:Lcom/amap/location/g/g;

    .line 44
    invoke-static {}, Lcom/amap/location/g/c/d;->b()Z

    .line 47
    move-result p2

    .line 48
    invoke-static {p1, p2}, Lcom/amap/location/g/g;->d(Lcom/amap/location/g/g;Z)V

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-wide/16 v0, 0x4

    .line 54
    cmp-long p3, p1, v0

    .line 56
    if-nez p3, :cond_3

    .line 58
    iget-object p1, p0, Lcom/amap/location/g/g$a;->a:Lcom/amap/location/g/g;

    .line 60
    invoke-static {p1}, Lcom/amap/location/g/g;->g(Lcom/amap/location/g/g;)V

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const-wide/16 v0, 0x1

    .line 66
    cmp-long p3, p1, v0

    .line 68
    if-nez p3, :cond_4

    .line 70
    iget-object p1, p0, Lcom/amap/location/g/g$a;->a:Lcom/amap/location/g/g;

    .line 72
    invoke-static {p1}, Lcom/amap/location/g/g;->h(Lcom/amap/location/g/g;)Z

    .line 75
    move-result p1

    .line 76
    iget-object p2, p0, Lcom/amap/location/g/g$a;->a:Lcom/amap/location/g/g;

    .line 78
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 81
    move-result-object p3

    .line 82
    invoke-interface {p3}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 85
    move-result-object p3

    .line 86
    invoke-interface {p3}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isLocationOn()Z

    .line 89
    move-result p3

    .line 90
    invoke-static {p2, p3}, Lcom/amap/location/g/g;->e(Lcom/amap/location/g/g;Z)Z

    .line 93
    iget-object p2, p0, Lcom/amap/location/g/g$a;->a:Lcom/amap/location/g/g;

    .line 95
    invoke-static {p2}, Lcom/amap/location/g/g;->h(Lcom/amap/location/g/g;)Z

    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_5

    .line 101
    if-nez p1, :cond_5

    .line 103
    iget-object p1, p0, Lcom/amap/location/g/g$a;->a:Lcom/amap/location/g/g;

    .line 105
    const-wide/16 p2, 0x0

    .line 107
    invoke-static {p1, p2, p3}, Lcom/amap/location/g/g;->a(Lcom/amap/location/g/g;J)J

    .line 110
    iget-object p1, p0, Lcom/amap/location/g/g$a;->a:Lcom/amap/location/g/g;

    .line 112
    invoke-static {p1, p2, p3}, Lcom/amap/location/g/g;->b(Lcom/amap/location/g/g;J)J

    .line 115
    goto :goto_0

    .line 116
    :cond_4
    const-wide/16 v0, 0x80

    .line 118
    cmp-long p3, p1, v0

    .line 120
    if-nez p3, :cond_5

    .line 122
    iget-object p1, p0, Lcom/amap/location/g/g$a;->a:Lcom/amap/location/g/g;

    .line 124
    invoke-static {}, Lcom/amap/location/g/c/d;->b()Z

    .line 127
    move-result p2

    .line 128
    invoke-static {p1, p2}, Lcom/amap/location/g/g;->d(Lcom/amap/location/g/g;Z)V

    .line 131
    :cond_5
    :goto_0
    return-void
.end method
