.class public Lzm0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm0;->p0(I)V
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
    iput-object p1, p0, Lzm0$f;->a:Lzm0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzm0$f;->a:Lzm0;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, v1, p1}, Lzm0;->W(Lzm0;IZI)V

    .line 7
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzm0$f;->a:Lzm0;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v1, v2, v1}, Lzm0;->W(Lzm0;IZI)V

    .line 8
    return-void
.end method
