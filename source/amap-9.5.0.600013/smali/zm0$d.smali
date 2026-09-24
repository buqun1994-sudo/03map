.class public Lzm0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm0;->S0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
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
    iput-object p1, p0, Lzm0$d;->b:Lzm0;

    .line 3
    iput-object p2, p0, Lzm0$d;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzm0$d;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzm0$d;->b:Lzm0;

    .line 3
    const/16 v1, 0x78

    .line 5
    invoke-static {v0, v1}, Lzm0;->D(Lzm0;I)V

    .line 8
    iget-object v0, p0, Lzm0$d;->b:Lzm0;

    .line 10
    invoke-static {v0}, Lzm0;->z(Lzm0;)I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_0

    .line 17
    iget-object v0, p0, Lzm0$d;->b:Lzm0;

    .line 19
    iget-object v1, p0, Lzm0$d;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 21
    invoke-static {v0, v1}, Lzm0;->B(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lzm0$d;->b:Lzm0;

    .line 27
    iget-object v1, p0, Lzm0$d;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 29
    invoke-static {v0, v1}, Lzm0;->V(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 32
    :goto_0
    return-void
.end method
