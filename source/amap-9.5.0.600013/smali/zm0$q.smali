.class public Lzm0$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm0;->H0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzm0;


# direct methods
.method public constructor <init>(Lzm0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzm0$q;->a:Lzm0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
    const-string v2, "onConnectionInfoAvailable = {?} "

    .line 11
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-boolean p1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 16
    if-eqz p1, :cond_0

    .line 18
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Lzm0$q$a;

    .line 24
    invoke-direct {v0, p0}, Lzm0$q$a;-><init>(Lzm0$q;)V

    .line 27
    invoke-virtual {p1, v0}, Lxm0;->x(Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)Z

    .line 30
    :cond_0
    return-void
.end method
