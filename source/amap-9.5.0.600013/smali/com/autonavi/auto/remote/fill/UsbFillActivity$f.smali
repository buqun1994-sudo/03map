.class public Lcom/autonavi/auto/remote/fill/UsbFillActivity$f;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/auto/remote/fill/UsbFillActivity;->k()V
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
    iput-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$f;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

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
    if-eqz p1, :cond_1

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq p1, v1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 12
    iget-object v1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$f;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 14
    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 17
    const-string v1, "\u4fee\u590d\u6210\u529f"

    .line 19
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 22
    new-instance v1, Lcom/autonavi/auto/remote/fill/UsbFillActivity$f$c;

    .line 24
    invoke-direct {v1, p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$f$c;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity$f;)V

    .line 27
    const-string v2, "\u7acb\u5373\u91cd\u542f"

    .line 29
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 32
    new-instance v1, Lcom/autonavi/auto/remote/fill/UsbFillActivity$f$d;

    .line 34
    invoke-direct {v1, p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$f$d;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity$f;)V

    .line 37
    const-string v2, "\u9000\u51fa"

    .line 39
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 42
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 45
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 51
    iget-object v1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$f;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 53
    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    const-string v1, "\u4fee\u590d\u5931\u8d25"

    .line 58
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 61
    new-instance v1, Lcom/autonavi/auto/remote/fill/UsbFillActivity$f$a;

    .line 63
    invoke-direct {v1, p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$f$a;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity$f;)V

    .line 66
    const-string v2, "\u91cd\u65b0\u4fee\u590d"

    .line 68
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    new-instance v1, Lcom/autonavi/auto/remote/fill/UsbFillActivity$f$b;

    .line 73
    invoke-direct {v1, p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$f$b;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity$f;)V

    .line 76
    const-string v2, "\u4e0b\u6b21\u518d\u8bf4"

    .line 78
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 87
    :goto_0
    return-void
.end method
