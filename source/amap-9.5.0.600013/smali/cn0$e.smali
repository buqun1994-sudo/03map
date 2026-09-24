.class public Lcn0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn0;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn0;


# direct methods
.method public constructor <init>(Lcn0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn0$e;->a:Lcn0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Lcn0;->a()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object p1, v1, v2

    .line 11
    const-string v2, "onConnectionInfoAvailable = {?} "

    .line 13
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-boolean p1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 18
    if-eqz p1, :cond_0

    .line 20
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Lcn0$e$a;

    .line 26
    invoke-direct {v0, p0}, Lcn0$e$a;-><init>(Lcn0$e;)V

    .line 29
    invoke-virtual {p1, v0}, Lxm0;->x(Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)Z

    .line 32
    :cond_0
    return-void
.end method
