.class public Lzm0$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm0;->k0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

.field public final synthetic b:I

.field public final synthetic c:Lzm0;


# direct methods
.method public constructor <init>(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzm0$p;->c:Lzm0;

    .line 3
    iput-object p2, p0, Lzm0$p;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 5
    iput p3, p0, Lzm0$p;->b:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 1
    iget v0, p0, Lzm0$p;->b:I

    .line 3
    if-gtz v0, :cond_0

    .line 5
    iget-object v0, p0, Lzm0$p;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lzm0$p;->c:Lzm0;

    .line 15
    const-wide/16 v0, 0x1f4

    .line 17
    invoke-static {p1, v0, v1}, Lzm0;->F(Lzm0;J)V

    .line 20
    iget-object p1, p0, Lzm0$p;->c:Lzm0;

    .line 22
    iget-object v0, p0, Lzm0$p;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 24
    iget v1, p0, Lzm0$p;->b:I

    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 28
    invoke-static {p1, v0, v1}, Lzm0;->G(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V

    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lzm0$p;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    .line 8
    :cond_0
    return-void
.end method
