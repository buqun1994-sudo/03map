.class public Lxm0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxm0;->o(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lxm0;


# direct methods
.method public constructor <init>(Lxm0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxm0$a;->a:Lxm0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxm0$a;->a:Lxm0;

    .line 3
    invoke-static {v0, p1}, Lxm0;->a(Lxm0;Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    .line 6
    return-void
.end method
