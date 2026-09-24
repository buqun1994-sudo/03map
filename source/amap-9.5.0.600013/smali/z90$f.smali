.class public Lz90$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz90;->C()V
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
    iput-object p1, p0, Lz90$f;->a:Lz90;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RemoteControlLink"

    .line 6
    const-string v2, "[RemoteControlLink] Wifi\u8fde\u63a5\u65ad\u5f00\uff01"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v3, 0x0

    .line 12
    const/16 v4, 0x65

    .line 14
    const/4 v5, 0x0

    .line 15
    const-string v6, ""

    .line 17
    const-string v7, ""

    .line 19
    const-string v8, ""

    .line 21
    invoke-static/range {v3 .. v8}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifyLinkWifiChange(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public b(Loj;)V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p1, Loj;->a:Ljava/lang/String;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    iget-object v1, p1, Loj;->c:Ljava/lang/String;

    .line 11
    const/4 v3, 0x1

    .line 12
    aput-object v1, v0, v3

    .line 14
    const-string v1, "RemoteControlLink"

    .line 16
    const-string v4, "[RemoteControlLink] Wifi\u8fde\u63a5\u6210\u529f\uff01deviceName:{?}, httpPort:{?}"

    .line 18
    invoke-static {v1, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v7, p1, Loj;->a:Ljava/lang/String;

    .line 23
    iget-object v10, p1, Loj;->e:Ljava/lang/String;

    .line 25
    const-string p1, "[RemoteControlLink] OnUdpBroadcastListener setHasConnected == true"

    .line 27
    new-array v0, v2, [Ljava/lang/Object;

    .line 29
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    const/4 v5, 0x0

    .line 33
    const/16 v6, 0x64

    .line 35
    const-string v8, ""

    .line 37
    const-string v9, ""

    .line 39
    invoke-static/range {v5 .. v10}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifyLinkWifiChange(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-array p1, v3, [Ljava/lang/Object;

    .line 44
    const/16 v0, 0x64

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v0

    .line 50
    aput-object v0, p1, v2

    .line 52
    const-string v0, "[RemoteControlLink] onBroadcastEnd:{?}"

    .line 54
    invoke-static {v1, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method
