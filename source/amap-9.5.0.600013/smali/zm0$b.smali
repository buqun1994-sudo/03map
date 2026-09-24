.class public Lzm0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm0;->V0(ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

.field public final synthetic c:I

.field public final synthetic d:Lzm0;


# direct methods
.method public constructor <init>(Lzm0;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzm0$b;->d:Lzm0;

    .line 3
    iput-boolean p2, p0, Lzm0$b;->a:Z

    .line 5
    iput-object p3, p0, Lzm0$b;->b:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 7
    iput p4, p0, Lzm0$b;->c:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    .line 1
    iget v0, p0, Lzm0$b;->c:I

    .line 3
    if-gtz v0, :cond_0

    .line 5
    iget-object v0, p0, Lzm0$b;->b:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lzm0$b;->d:Lzm0;

    .line 15
    const-wide/16 v0, 0x1f4

    .line 17
    invoke-static {p1, v0, v1}, Lzm0;->F(Lzm0;J)V

    .line 20
    iget-object p1, p0, Lzm0$b;->d:Lzm0;

    .line 22
    iget-boolean v0, p0, Lzm0$b;->a:Z

    .line 24
    iget-object v1, p0, Lzm0$b;->b:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 26
    iget v2, p0, Lzm0$b;->c:I

    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 30
    invoke-static {p1, v0, v1, v2}, Lzm0;->R(Lzm0;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V

    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lzm0$b;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lzm0$b;->d:Lzm0;

    .line 7
    iget-object v1, p0, Lzm0$b;->b:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 9
    invoke-static {v0, v1}, Lzm0;->T(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lzm0$b;->d:Lzm0;

    .line 15
    iget-object v1, p0, Lzm0$b;->b:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 17
    invoke-static {v0, v1}, Lzm0;->U(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 20
    :goto_0
    return-void
.end method
