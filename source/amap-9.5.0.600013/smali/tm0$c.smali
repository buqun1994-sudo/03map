.class public Ltm0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltm0;->E(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ltm0;


# direct methods
.method public constructor <init>(Ltm0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltm0$c;->a:Ltm0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
    const-string p1, "WifiDirectClientHelper"

    .line 13
    const-string v1, "normal connect device failure reason = {?}"

    .line 15
    invoke-static {p1, v1, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Ltm0$c;->a:Ltm0;

    .line 20
    const/4 v0, 0x3

    .line 21
    invoke-static {p1}, Ltm0;->s(Ltm0;)Lym0;

    .line 24
    move-result-object v1

    .line 25
    invoke-static {p1, v0, v1}, Ltm0;->u(Ltm0;ILym0;)V

    .line 28
    iget-object p1, p0, Ltm0$c;->a:Ltm0;

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-static {p1, v0}, Ltm0;->t(Ltm0;Lym0;)Lym0;

    .line 34
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "WifiDirectClientHelper"

    .line 6
    const-string v2, "normal connect device success"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method
