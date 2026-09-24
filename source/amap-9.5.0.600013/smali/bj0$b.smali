.class public Lbj0$b;
.super Lbj0$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lbj0$f;-><init>(Lbj0$a;)V

    .line 5
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v1, "DA2APP_STORAGE_USB_MOUNT"

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    const-string v1, "DA2APP_STORAGE_USB_UNMOUNT"

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    return-object v0
.end method

.method public j(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 5

    .line 1
    const-string v0, "external_usb_dir"

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object p2, v1, v2

    .line 17
    const/4 p2, 0x1

    .line 18
    aput-object v0, v1, p2

    .line 20
    const-string v3, "UsbDeviceChangedFuncRepository"

    .line 22
    const-string v4, "onReceive: action={?},path={?}"

    .line 24
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 33
    return v2

    .line 34
    :cond_0
    const-string v1, "DA2APP_STORAGE_USB_MOUNT"

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 40
    invoke-static {p1, v0}, Lbj0;->a(ZLjava/lang/String;)V

    .line 43
    return p2
.end method
