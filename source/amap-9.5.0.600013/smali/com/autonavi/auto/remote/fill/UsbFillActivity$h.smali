.class public Lcom/autonavi/auto/remote/fill/UsbFillActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/auto/remote/fill/UsbFillActivity;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;


# direct methods
.method public constructor <init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$h;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 3
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string p2, "android.intent.action.VIEW"

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    const-string p2, "http://www.amapauto.com"

    .line 13
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 20
    iget-object p2, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$h;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 22
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 29
    move-result-object p2

    .line 30
    const/4 v0, 0x1

    .line 31
    if-eqz p2, :cond_0

    .line 33
    iget-object p2, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$h;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 35
    const-string v1, "\u8bf7\u9009\u62e9\u6d4f\u89c8\u5668"

    .line 37
    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    const/16 p1, 0x1f4

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lrv;->y()Landroid/app/Application;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 58
    move-result-object p1

    .line 59
    const-string p2, "\u8bf7\u4f7f\u7528\u6d4f\u89c8\u5668\u8bbf\u95eeamapauto.com\u5b98\u7f51"

    .line 61
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 68
    const/16 p1, 0xbb8

    .line 70
    :goto_0
    new-instance p2, Lcom/autonavi/auto/remote/fill/UsbFillActivity$h$a;

    .line 72
    iget-object v1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$h;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 74
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 77
    move-result-object v1

    .line 78
    invoke-direct {p2, p0, v1}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$h$a;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity$h;Landroid/os/Looper;)V

    .line 81
    int-to-long v1, p1

    .line 82
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 85
    return-void
.end method
