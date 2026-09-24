.class public Lzm0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm0;->Q0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
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
    iput-object p1, p0, Lzm0$c;->b:Lzm0;

    .line 3
    iput-object p2, p0, Lzm0$c;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lzm0$c;->b:Lzm0;

    .line 3
    iget-object v0, p0, Lzm0$c;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 5
    invoke-static {p1, v0}, Lzm0;->B(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 8
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzm0$c;->b:Lzm0;

    .line 3
    iget-object v1, p0, Lzm0$c;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 5
    invoke-static {v0, v1}, Lzm0;->B(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 8
    return-void
.end method
