.class public Lzm0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm0;->U0(ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
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
    iput-object p1, p0, Lzm0$a;->d:Lzm0;

    .line 3
    iput-boolean p2, p0, Lzm0$a;->a:Z

    .line 5
    iput-object p3, p0, Lzm0$a;->b:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 7
    iput p4, p0, Lzm0$a;->c:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
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
    const-string v2, "startServerDiscoveryRemoveGroup onFailure "

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p1, v0, :cond_1

    .line 14
    iget-object v0, p0, Lzm0$a;->b:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    .line 21
    :cond_0
    return-void

    .line 22
    :cond_1
    iget v0, p0, Lzm0$a;->c:I

    .line 24
    if-gtz v0, :cond_2

    .line 26
    iget-object v0, p0, Lzm0$a;->b:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 28
    if-eqz v0, :cond_3

    .line 30
    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object p1, p0, Lzm0$a;->d:Lzm0;

    .line 36
    const-wide/16 v0, 0x1f4

    .line 38
    invoke-static {p1, v0, v1}, Lzm0;->F(Lzm0;J)V

    .line 41
    iget-object p1, p0, Lzm0$a;->d:Lzm0;

    .line 43
    iget-boolean v0, p0, Lzm0$a;->a:Z

    .line 45
    iget-object v1, p0, Lzm0$a;->b:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 47
    iget v2, p0, Lzm0$a;->c:I

    .line 49
    add-int/lit8 v2, v2, -0x1

    .line 51
    invoke-static {p1, v0, v1, v2}, Lzm0;->S(Lzm0;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V

    .line 54
    :cond_3
    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "WifiDirectServerHelper"

    .line 6
    const-string v2, "startServerDiscoveryRemoveGroup onSuccess"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lzm0$a;->d:Lzm0;

    .line 13
    iget-boolean v1, p0, Lzm0$a;->a:Z

    .line 15
    iget-object v2, p0, Lzm0$a;->b:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-static {v0, v1, v2, v3}, Lzm0;->R(Lzm0;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V

    .line 21
    return-void
.end method
