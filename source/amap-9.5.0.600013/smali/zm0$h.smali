.class public Lzm0$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm0;->i0(Lym0;I)V
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
    iput-object p1, p0, Lzm0$h;->a:Lzm0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzm0$h;->a:Lzm0;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lzm0;->X(Lzm0;Z)Z

    .line 7
    iget-object v0, p0, Lzm0$h;->a:Lzm0;

    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-static {v0, v2, v1, p1}, Lzm0;->W(Lzm0;IZI)V

    .line 13
    iget-object p1, p0, Lzm0$h;->a:Lzm0;

    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-static {p1, v0}, Lzm0;->P(Lzm0;I)V

    .line 19
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 1
    iget-object v0, p0, Lzm0$h;->a:Lzm0;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lzm0;->X(Lzm0;Z)Z

    .line 7
    iget-object v0, p0, Lzm0$h;->a:Lzm0;

    .line 9
    const/4 v2, 0x4

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-static {v0, v2, v3, v1}, Lzm0;->W(Lzm0;IZI)V

    .line 14
    return-void
.end method
