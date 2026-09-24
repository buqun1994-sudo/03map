.class public Lzm0$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm0;->P0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

.field public final synthetic b:Lzm0;


# direct methods
.method public constructor <init>(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzm0$m;->b:Lzm0;

    .line 3
    iput-object p2, p0, Lzm0$m;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "WifiDirectServerHelper"

    .line 6
    const-string v2, "discoverPeers failure"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lzm0$m;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    .line 18
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
    const-string v1, "WifiDirectServerHelper"

    .line 6
    const-string v2, "discoverPeers success"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lzm0$m;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    .line 18
    :cond_0
    return-void
.end method
