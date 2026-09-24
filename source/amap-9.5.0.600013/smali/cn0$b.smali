.class public Lcn0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn0;->D()V
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
    iput-object p1, p0, Lcn0$b;->a:Lcn0;

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
    iget-object v0, p0, Lcn0$b;->a:Lcn0;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcn0;->f(Lcn0;Z)Z

    .line 7
    return-void
.end method
