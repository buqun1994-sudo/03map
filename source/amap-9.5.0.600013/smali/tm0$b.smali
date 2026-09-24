.class public Ltm0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltm0;->Y()V
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
    iput-object p1, p0, Ltm0$b;->a:Ltm0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ltm0$b$a;

    .line 7
    invoke-direct {v1, p0}, Ltm0$b$a;-><init>(Ltm0$b;)V

    .line 10
    invoke-virtual {v0, v1}, Lxm0;->m(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 13
    return-void
.end method
