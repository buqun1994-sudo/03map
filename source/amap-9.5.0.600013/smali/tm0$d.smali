.class public Ltm0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltm0;->z(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

.field public final synthetic b:Ltm0;


# direct methods
.method public constructor <init>(Ltm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltm0$d;->b:Ltm0;

    .line 3
    iput-object p2, p0, Ltm0$d;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "WifiDirectClientHelper"

    .line 13
    const-string v3, "changeDeviceName onFailure reason = {?}"

    .line 15
    invoke-static {v1, v3, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Ltm0$d;->b:Ltm0;

    .line 20
    invoke-static {v0, v2}, Ltm0;->v(Ltm0;Z)Z

    .line 23
    iget-object v0, p0, Ltm0$d;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 25
    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    .line 30
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "WifiDirectClientHelper"

    .line 6
    const-string v2, "changeDeviceName onSuccess"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Ltm0$d;->b:Ltm0;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v0, v1}, Ltm0;->v(Ltm0;Z)Z

    .line 17
    iget-object v0, p0, Ltm0$d;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    .line 24
    :cond_0
    return-void
.end method
