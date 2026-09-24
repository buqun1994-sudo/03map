.class public Lzm0$q$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm0$q$a;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzm0$q$a;


# direct methods
.method public constructor <init>(Lzm0$q$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzm0$q$a$b;->a:Lzm0$q$a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    const-string v0, "WifiDirectServerHelper"

    .line 6
    const-string v1, "changeDeviceName onFailure"

    .line 8
    invoke-static {v0, v1, p1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Lzm0$q$a$b$b;

    .line 17
    invoke-direct {v0, p0}, Lzm0$q$a$b$b;-><init>(Lzm0$q$a$b;)V

    .line 20
    invoke-virtual {p1, v0}, Lxm0;->u(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 23
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
    const-string v2, "changeDeviceName onSuccess"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lzm0$q$a$b$a;

    .line 17
    invoke-direct {v1, p0}, Lzm0$q$a$b$a;-><init>(Lzm0$q$a$b;)V

    .line 20
    invoke-virtual {v0, v1}, Lxm0;->u(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 23
    return-void
.end method
