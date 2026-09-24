.class public Lz90$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcg;


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
    iput-object p1, p0, Lz90$h;->a:Lz90;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(ILoj;)V
    .locals 5

    .line 1
    const/4 p2, 0x1

    .line 2
    new-array v0, p2, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "RemoteControlLink"

    .line 13
    const-string v3, "[RemoteControlLink] BT onStateChange:{?}"

    .line 15
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-ne p1, p2, :cond_0

    .line 20
    invoke-static {}, Lrv;->H()Lrv;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lrv;->z()Landroid/content/Context;

    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lzc;->o(Landroid/content/Context;)Lzc;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lzc;->n()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-static {}, Lrv;->H()Lrv;

    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Lrv;->z()Landroid/content/Context;

    .line 43
    move-result-object p2

    .line 44
    invoke-static {p2}, Lzc;->o(Landroid/content/Context;)Lzc;

    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Lzc;->m()Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    const/16 v0, 0x64

    .line 54
    invoke-static {v0, p1, p2}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifyBluetoothConnectChange(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    const/4 v0, 0x3

    .line 59
    const/4 v3, 0x0

    .line 60
    if-ne p1, v0, :cond_1

    .line 62
    const/16 p1, 0x67

    .line 64
    invoke-static {p1, v3, v3}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifyBluetoothConnectChange(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const-string v0, "[RemoteControlLink] OnBtStateChangeListener setHasConnected == false"

    .line 70
    new-array v4, v2, [Ljava/lang/Object;

    .line 72
    invoke-static {v1, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lz90$h;->a:Lz90;

    .line 77
    invoke-static {v0}, Lz90;->e(Lz90;)Z

    .line 80
    move-result v0

    .line 81
    if-ne v0, p2, :cond_2

    .line 83
    const-string p1, "[RemoteControlLink] reconnected is true, halt from setHasConnected()."

    .line 85
    new-array p2, v2, [Ljava/lang/Object;

    .line 87
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    return-void

    .line 91
    :cond_2
    iget-object p2, p0, Lz90$h;->a:Lz90;

    .line 93
    invoke-static {p2, v2}, Lz90;->f(Lz90;Z)Z

    .line 96
    const/4 p2, -0x1

    .line 97
    if-eq p1, p2, :cond_6

    .line 99
    const/4 p2, -0x5

    .line 100
    if-ne p1, p2, :cond_3

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    const/4 p2, 0x2

    .line 104
    if-ne p1, p2, :cond_4

    .line 106
    goto :goto_1

    .line 107
    :cond_4
    const/4 p2, -0x2

    .line 108
    if-ne p1, p2, :cond_5

    .line 110
    const-string p1, "Connect faild, Please check peer devices"

    .line 112
    new-array p2, v2, [Ljava/lang/Object;

    .line 114
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    goto :goto_1

    .line 118
    :cond_5
    const/4 p2, -0x3

    .line 119
    if-ne p1, p2, :cond_7

    .line 121
    const/16 p1, 0x66

    .line 123
    invoke-static {p1, v3, v3}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifyBluetoothConnectChange(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    goto :goto_1

    .line 127
    :cond_6
    :goto_0
    const/16 p1, 0x65

    .line 129
    invoke-static {p1, v3, v3}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifyBluetoothConnectChange(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_7
    :goto_1
    return-void
.end method
