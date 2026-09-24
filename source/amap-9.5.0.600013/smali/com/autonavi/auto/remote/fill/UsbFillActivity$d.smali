.class public Lcom/autonavi/auto/remote/fill/UsbFillActivity$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/auto/remote/fill/UsbFillActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;


# direct methods
.method public constructor <init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$d;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x2

    .line 6
    if-eqz p1, :cond_1

    .line 8
    if-ne p1, v2, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x2

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$d;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 14
    invoke-static {p1, v2, v0, v1}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->a(Lcom/autonavi/auto/remote/fill/UsbFillActivity;III)V

    .line 17
    iget-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$d;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 19
    invoke-static {p1}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->c(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)V

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$d;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 25
    invoke-static {p1, v2, v1, v0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->a(Lcom/autonavi/auto/remote/fill/UsbFillActivity;III)V

    .line 28
    sget-object p1, Lcom/autonavi/amapauto/MapApplication;->q:Lcom/autonavi/amapauto/MapApplication;

    .line 30
    invoke-virtual {p1}, Lcom/autonavi/amapauto/MapApplication;->initAfterSoCorrupt()V

    .line 33
    iget-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$d;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 35
    invoke-static {p1}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->b(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)V

    .line 38
    :goto_1
    return-void
.end method
