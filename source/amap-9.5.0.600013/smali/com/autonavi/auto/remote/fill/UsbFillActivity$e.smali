.class public Lcom/autonavi/auto/remote/fill/UsbFillActivity$e;
.super Ljava/lang/Thread;
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
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Lcom/autonavi/auto/remote/fill/UsbFillActivity;


# direct methods
.method public constructor <init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$e;->b:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 3
    iput-object p2, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$e;->a:Landroid/os/Handler;

    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$e$a;

    .line 3
    invoke-direct {v0, p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$e$a;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity$e;)V

    .line 6
    invoke-static {}, Lrv;->H()Lrv;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    const-wide/32 v2, 0x1e000

    .line 17
    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/common/tool/b;->i(Lcom/autonavi/common/tool/e$c;Landroid/content/Context;J)V

    .line 20
    invoke-static {}, Lrv;->H()Lrv;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/autonavi/common/tool/b;->V(Landroid/content/Context;)V

    .line 31
    return-void
.end method
