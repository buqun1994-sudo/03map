.class public Lz90$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lum0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz90;


# direct methods
.method public constructor <init>(Lz90;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz90$a;->a:Lz90;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lym0;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "RemoteControlLink"

    .line 9
    const-string v2, "onFoundMyAmapDevice wifiDirectDevice = {?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    if-nez p1, :cond_0

    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v3, 0x1

    .line 18
    const/16 v4, 0x6f

    .line 20
    iget-object v5, p1, Lym0;->c:Ljava/lang/String;

    .line 22
    iget-object v6, p1, Lym0;->b:Ljava/lang/String;

    .line 24
    const-string v7, ""

    .line 26
    const-string v8, ""

    .line 28
    invoke-static/range {v3 .. v8}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifyLinkWifiChange(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public c(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "RemoteControlLink"

    .line 13
    const-string v2, "onDirectStateChanged directState = {?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v0, Ljava/lang/Thread;

    .line 20
    new-instance v1, Lz90$a$a;

    .line 22
    invoke-direct {v1, p0, p1}, Lz90$a$a;-><init>(Lz90$a;I)V

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->getLoginUserNickName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 11
    const-string v2, "RemoteControlLink"

    .line 13
    const-string v3, "userNickName = {?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-object v0
.end method

.method public e(Ljava/util/List;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    const/16 v1, 0x70

    .line 13
    const-string v2, ""

    .line 15
    const-string v3, ""

    .line 17
    const-string v4, ""

    .line 19
    const-string v5, ""

    .line 21
    invoke-static/range {v0 .. v5}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifyLinkWifiChange(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lr50;->d()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "/direct/"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public g(Lym0;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "RemoteControlLink"

    .line 9
    const-string v2, "onInvitedWithDevice device = {?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    if-nez p1, :cond_0

    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v3, 0x1

    .line 18
    const/16 v4, 0x68

    .line 20
    iget-object v5, p1, Lym0;->c:Ljava/lang/String;

    .line 22
    iget-object v6, p1, Lym0;->b:Ljava/lang/String;

    .line 24
    const-string v7, ""

    .line 26
    const-string v8, ""

    .line 28
    invoke-static/range {v3 .. v8}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifyLinkWifiChange(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public h(ILym0;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v3

    .line 9
    aput-object v3, v1, v2

    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object p2, v1, v2

    .line 14
    const-string v3, "RemoteControlLink"

    .line 16
    const-string v4, "RemoteControlLink~onConnectStateChanged state = {?},device = {?}"

    .line 18
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    if-nez p2, :cond_0

    .line 23
    return-void

    .line 24
    :cond_0
    if-eqz p1, :cond_6

    .line 26
    if-eq p1, v0, :cond_3

    .line 28
    const/4 v0, 0x3

    .line 29
    if-eq p1, v0, :cond_1

    .line 31
    goto :goto_3

    .line 32
    :cond_1
    iget p1, p2, Lym0;->a:I

    .line 34
    if-ne p1, v2, :cond_2

    .line 36
    const/16 p1, 0x6a

    .line 38
    const/16 v1, 0x6a

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/16 p1, 0x6d

    .line 43
    const/16 v1, 0x6d

    .line 45
    :goto_0
    const/4 v0, 0x1

    .line 46
    iget-object v2, p2, Lym0;->c:Ljava/lang/String;

    .line 48
    iget-object v3, p2, Lym0;->b:Ljava/lang/String;

    .line 50
    iget-wide p1, p2, Lym0;->i:J

    .line 52
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    const-string v5, ""

    .line 58
    invoke-static/range {v0 .. v5}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifyLinkWifiChange(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    iget p1, p2, Lym0;->a:I

    .line 64
    if-ne p1, v2, :cond_4

    .line 66
    const/16 p1, 0x69

    .line 68
    const/16 v1, 0x69

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    const/16 p1, 0x6b

    .line 73
    const/16 v1, 0x6b

    .line 75
    :goto_1
    iget-object p1, p2, Lym0;->j:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_5

    .line 83
    iget-object p1, p2, Lym0;->c:Ljava/lang/String;

    .line 85
    goto :goto_2

    .line 86
    :cond_5
    iget-object p1, p2, Lym0;->j:Ljava/lang/String;

    .line 88
    :goto_2
    move-object v2, p1

    .line 89
    const/4 v0, 0x1

    .line 90
    iget-object v3, p2, Lym0;->b:Ljava/lang/String;

    .line 92
    iget-object v4, p2, Lym0;->h:Ljava/lang/String;

    .line 94
    iget-object v5, p2, Lym0;->k:Ljava/lang/String;

    .line 96
    invoke-static/range {v0 .. v5}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifyLinkWifiChange(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p1, p2, Lym0;->h:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lz90;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    goto :goto_3

    .line 105
    :cond_6
    const/4 v0, 0x1

    .line 106
    const/16 v1, 0x6c

    .line 108
    iget-object v2, p2, Lym0;->c:Ljava/lang/String;

    .line 110
    iget-object v3, p2, Lym0;->b:Ljava/lang/String;

    .line 112
    const-string v4, ""

    .line 114
    const-string v5, ""

    .line 116
    invoke-static/range {v0 .. v5}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifyLinkWifiChange(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_3
    return-void
.end method
