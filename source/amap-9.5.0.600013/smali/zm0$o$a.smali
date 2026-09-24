.class public Lzm0$o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm0$o;->onFailure(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lzm0$o;


# direct methods
.method public constructor <init>(Lzm0$o;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzm0$o$a;->b:Lzm0$o;

    .line 3
    iput p2, p0, Lzm0$o$a;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "WifiDirectServerHelper"

    .line 9
    const-string v2, "removeGroup failure with info = {?}"

    .line 11
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-boolean p1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 16
    if-nez p1, :cond_0

    .line 18
    iget-object p1, p0, Lzm0$o$a;->b:Lzm0$o;

    .line 20
    iget-object p1, p1, Lzm0$o;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 22
    if-eqz p1, :cond_1

    .line 24
    invoke-interface {p1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lzm0$o$a;->b:Lzm0$o;

    .line 30
    iget-object p1, p1, Lzm0$o;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 32
    if-eqz p1, :cond_1

    .line 34
    iget v0, p0, Lzm0$o$a;->a:I

    .line 36
    invoke-interface {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    .line 39
    :cond_1
    :goto_0
    return-void
.end method
