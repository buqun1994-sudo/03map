.class public Lzm0$e;
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
    iput-object p1, p0, Lzm0$e;->b:Lzm0;

    .line 3
    iput-object p2, p0, Lzm0$e;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const-string p1, "WifiDirectServerHelper"

    .line 13
    const-string v1, "changeDeviceName onFailure reason = {?}"

    .line 15
    invoke-static {p1, v1, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
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
    const-string v2, "changeDeviceName success"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lzm0$e;->b:Lzm0;

    .line 13
    const/16 v1, 0x78

    .line 15
    invoke-static {v0, v1}, Lzm0;->D(Lzm0;I)V

    .line 18
    iget-object v0, p0, Lzm0$e;->b:Lzm0;

    .line 20
    invoke-static {v0}, Lzm0;->z(Lzm0;)I

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x2

    .line 25
    if-ne v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lzm0$e;->b:Lzm0;

    .line 29
    iget-object v1, p0, Lzm0$e;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 31
    invoke-static {v0, v1}, Lzm0;->B(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lzm0$e;->b:Lzm0;

    .line 37
    iget-object v1, p0, Lzm0$e;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 39
    invoke-static {v0, v1}, Lzm0;->V(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 42
    :goto_0
    return-void
.end method
