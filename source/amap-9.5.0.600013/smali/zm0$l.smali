.class public Lzm0$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm0;->R0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lym0;

.field public final synthetic b:Lzm0;


# direct methods
.method public constructor <init>(Lzm0;Lym0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzm0$l;->b:Lzm0;

    .line 3
    iput-object p2, p0, Lzm0$l;->a:Lym0;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lzm0$l;->b:Lzm0;

    .line 11
    iget-object v0, p0, Lzm0$l;->a:Lym0;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {p1, v0, v1}, Len0;->u(Lnj;Lym0;Z)Lap;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Lzm0;->E(Lzm0;Lap;)Lap;

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lzm0$l;->b:Lzm0;

    .line 24
    iget-object v0, p0, Lzm0$l;->a:Lym0;

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {p1, v0, v1}, Len0;->u(Lnj;Lym0;Z)Lap;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {p1, v0}, Lzm0;->E(Lzm0;Lap;)Lap;

    .line 34
    :cond_1
    :goto_0
    return-void
.end method
