.class Lcom/amap/location/k/d/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnHandleMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/k/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/k/d/c;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/amap/location/k/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/k/d/c$b;->a:Lcom/amap/location/k/d/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(IIILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/k/d/c$b;->b:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/16 v0, 0xa

    .line 8
    if-ne p1, v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/amap/location/k/d/c$b;->a:Lcom/amap/location/k/d/c;

    .line 12
    invoke-static {v0}, Lcom/amap/location/k/d/c;->d(Lcom/amap/location/k/d/c;)Lcom/amap/location/k/d/a;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amap/location/k/d/a;->a(IIILjava/lang/Object;)V

    .line 19
    goto/16 :goto_0

    .line 21
    :cond_1
    const/16 p2, 0xb

    .line 23
    if-ne p1, p2, :cond_2

    .line 25
    iget-object p1, p0, Lcom/amap/location/k/d/c$b;->a:Lcom/amap/location/k/d/c;

    .line 27
    invoke-static {p1}, Lcom/amap/location/k/d/c;->d(Lcom/amap/location/k/d/c;)Lcom/amap/location/k/d/a;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/amap/location/k/d/a;->c()V

    .line 34
    goto/16 :goto_0

    .line 36
    :cond_2
    const/16 p2, 0xc

    .line 38
    if-ne p1, p2, :cond_3

    .line 40
    check-cast p4, Lcom/amap/location/k/a/a;

    .line 42
    iget-object p1, p0, Lcom/amap/location/k/d/c$b;->a:Lcom/amap/location/k/d/c;

    .line 44
    invoke-static {p1}, Lcom/amap/location/k/d/c;->d(Lcom/amap/location/k/d/c;)Lcom/amap/location/k/d/a;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, p4}, Lcom/amap/location/k/d/a;->a(Lcom/amap/location/k/a/a;)V

    .line 51
    goto/16 :goto_0

    .line 53
    :cond_3
    const/16 p2, 0xd

    .line 55
    if-ne p1, p2, :cond_4

    .line 57
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/amap/location/k/d/c$b;->b:Z

    .line 60
    iget-object p1, p0, Lcom/amap/location/k/d/c$b;->a:Lcom/amap/location/k/d/c;

    .line 62
    invoke-static {p1}, Lcom/amap/location/k/d/c;->g(Lcom/amap/location/k/d/c;)Lcom/amap/location/support/handler/AmapHandler;

    .line 65
    move-result-object p1

    .line 66
    const/4 p2, 0x0

    .line 67
    invoke-interface {p1, p2}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Lcom/amap/location/k/d/c$b;->a:Lcom/amap/location/k/d/c;

    .line 72
    invoke-static {p1}, Lcom/amap/location/k/d/c;->d(Lcom/amap/location/k/d/c;)Lcom/amap/location/k/d/a;

    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/amap/location/k/d/a;->d()V

    .line 79
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 86
    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/amap/location/k/d/c$b;->a:Lcom/amap/location/k/d/c;

    .line 89
    invoke-static {p2}, Lcom/amap/location/k/d/c;->h(Lcom/amap/location/k/d/c;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 92
    move-result-object p2

    .line 93
    invoke-interface {p1, p2}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->removeStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;)Z

    .line 96
    iget-object p1, p0, Lcom/amap/location/k/d/c$b;->a:Lcom/amap/location/k/d/c;

    .line 98
    invoke-static {p1}, Lcom/amap/location/k/d/c;->g(Lcom/amap/location/k/d/c;)Lcom/amap/location/support/handler/AmapHandler;

    .line 101
    move-result-object p1

    .line 102
    new-instance p2, Lcom/amap/location/k/d/c$b$1;

    .line 104
    invoke-direct {p2, p0}, Lcom/amap/location/k/d/c$b$1;-><init>(Lcom/amap/location/k/d/c$b;)V

    .line 107
    invoke-interface {p1, p2}, Lcom/amap/location/support/handler/AmapHandler;->post(Ljava/lang/Runnable;)Z

    .line 110
    goto :goto_0

    .line 111
    :cond_4
    const/16 p2, 0xe

    .line 113
    if-ne p1, p2, :cond_5

    .line 115
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 118
    move-result-object p1

    .line 119
    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 122
    move-result-object p1

    .line 123
    iget-object p2, p0, Lcom/amap/location/k/d/c$b;->a:Lcom/amap/location/k/d/c;

    .line 125
    invoke-static {p2}, Lcom/amap/location/k/d/c;->h(Lcom/amap/location/k/d/c;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 128
    move-result-object p2

    .line 129
    invoke-interface {p1, p2}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->removeStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;)Z

    .line 132
    iget-object p1, p0, Lcom/amap/location/k/d/c$b;->a:Lcom/amap/location/k/d/c;

    .line 134
    invoke-static {p1}, Lcom/amap/location/k/d/c;->d(Lcom/amap/location/k/d/c;)Lcom/amap/location/k/d/a;

    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/amap/location/k/d/a;->a()V

    .line 141
    goto :goto_0

    .line 142
    :cond_5
    const/16 p2, 0xf

    .line 144
    if-ne p1, p2, :cond_6

    .line 146
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 153
    move-result-object p1

    .line 154
    iget-object p2, p0, Lcom/amap/location/k/d/c$b;->a:Lcom/amap/location/k/d/c;

    .line 156
    invoke-static {p2}, Lcom/amap/location/k/d/c;->h(Lcom/amap/location/k/d/c;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 159
    move-result-object p2

    .line 160
    iget-object p3, p0, Lcom/amap/location/k/d/c$b;->a:Lcom/amap/location/k/d/c;

    .line 162
    invoke-static {p3}, Lcom/amap/location/k/d/c;->b(Lcom/amap/location/k/d/c;)Lcom/amap/location/support/handler/AmapLooper;

    .line 165
    move-result-object p3

    .line 166
    invoke-interface {p1, p2, p3}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->addStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 169
    iget-object p1, p0, Lcom/amap/location/k/d/c$b;->a:Lcom/amap/location/k/d/c;

    .line 171
    invoke-static {p1}, Lcom/amap/location/k/d/c;->d(Lcom/amap/location/k/d/c;)Lcom/amap/location/k/d/a;

    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lcom/amap/location/k/d/a;->b()V

    .line 178
    :cond_6
    :goto_0
    return-void
.end method
