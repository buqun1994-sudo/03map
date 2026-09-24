.class public Lcn0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn0;->v()V
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
    iput-object p1, p0, Lcn0$c;->a:Lcn0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 4

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
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v3

    .line 13
    aput-object v3, v1, v2

    .line 15
    const-string v2, "onFailure reason = {?}"

    .line 17
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    const/4 v0, 0x2

    .line 21
    if-ne p1, v0, :cond_0

    .line 23
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Lcn0$c$a;

    .line 29
    invoke-direct {v0, p0}, Lcn0$c$a;-><init>(Lcn0$c;)V

    .line 32
    invoke-virtual {p1, v0}, Lxm0;->u(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 35
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 1
    invoke-static {}, Lcn0;->a()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    const-string v3, "createGroup onSuccess"

    .line 10
    invoke-static {v0, v3, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcn0$c;->a:Lcn0;

    .line 15
    invoke-static {v0, v1}, Lcn0;->h(Lcn0;Z)Z

    .line 18
    return-void
.end method
