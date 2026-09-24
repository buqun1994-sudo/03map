.class Lcom/amap/location/sdk/fusion/LocationManagerProxy$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/fusion/LocationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

.field private b:J

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$6;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$6;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$6;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 9
    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->o(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_1

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v0

    .line 19
    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$6;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 21
    invoke-static {v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->o(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 24
    move-result-object v2

    .line 25
    const-string v3, "cmdmainheartbeat"

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-interface {v2, v3, v5, v5, v4}, Lcom/amap/location/sdk/fusion/a;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 32
    invoke-static {v0, v1}, Lcom/amap/location/support/app/MessageCenter;->setMainProcessLastActiveTime(J)V

    .line 35
    iget-wide v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$6;->b:J

    .line 37
    const-wide/16 v4, 0x0

    .line 39
    const-string v6, "mainmgrproxy"

    .line 41
    cmp-long v7, v2, v4

    .line 43
    if-lez v7, :cond_0

    .line 45
    sub-long v2, v0, v2

    .line 47
    const-wide/32 v4, 0x186a0

    .line 50
    cmp-long v7, v2, v4

    .line 52
    if-lez v7, :cond_0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string v3, "process cached:"

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-wide v3, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$6;->b:J

    .line 66
    sub-long v3, v0, v3

    .line 68
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    const-string v3, "#"

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v4, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$6;->d:I

    .line 78
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget v3, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$6;->c:I

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    invoke-static {v6, v2}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    iput-wide v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$6;->b:J

    .line 98
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getScene()I

    .line 101
    move-result v0

    .line 102
    iput v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$6;->c:I

    .line 104
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 107
    move-result-object v0

    .line 108
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 111
    move-result-object v0

    .line 112
    invoke-interface {v0}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->getProcessImportance()I

    .line 115
    move-result v0

    .line 116
    iput v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$6;->d:I

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    const-string v1, "remoteProcess importance:"

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 131
    move-result-object v1

    .line 132
    invoke-interface {v1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 135
    move-result-object v1

    .line 136
    const-string v2, "com.autonavi.minimap:locationservice"

    .line 138
    invoke-interface {v1, v2}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->getProcessImportance(Ljava/lang/String;)I

    .line 141
    move-result v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    invoke-static {v6, v0}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$6;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 154
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->H(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Z

    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$6;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 162
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->i(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Landroid/os/Handler;

    .line 165
    move-result-object v0

    .line 166
    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$6;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 170
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->i(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Landroid/os/Handler;

    .line 173
    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$6;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 176
    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->F(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Ljava/lang/Runnable;

    .line 179
    move-result-object v1

    .line 180
    const-wide/32 v2, 0xea60

    .line 183
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    :cond_2
    return-void
.end method
