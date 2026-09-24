.class public Ldd0$g$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldd0$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldd0$g;


# direct methods
.method public constructor <init>(Ldd0$g;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldd0$g$b;->a:Ldd0$g;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 4
    invoke-static {}, Ldd0;->b()Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v1, v0, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v2, v1, v3

    .line 18
    const-string v2, "QiruiT15_InteractionImpl onChange ContentObserver onChange URI = {?}"

    .line 20
    invoke-static {p1, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Ldd0$g$b;->a:Ldd0$g;

    .line 25
    invoke-static {p1}, Ldd0$g;->q(Ldd0$g;)Landroid/net/Uri;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 35
    invoke-static {}, Ldd0;->b()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    const-string p2, "QiruiT15_InteractionImpl uri.equals URI_CARSTATUS_LIGHT_SWITCH"

    .line 41
    new-array v1, v3, [Ljava/lang/Object;

    .line 43
    invoke-static {p1, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Ldd0$g$b;->a:Ldd0$g;

    .line 48
    invoke-static {p1}, Ldd0$g;->r(Ldd0$g;)Landroid/os/Handler;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 55
    :cond_0
    return-void
.end method
