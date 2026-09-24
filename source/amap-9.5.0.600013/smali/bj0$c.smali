.class public Lbj0$c;
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
    .locals 1

    .line 1
    const-string v0, "com.ofilm.mapservice.action.USB_EVENT"

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public j(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 4

    .line 1
    const-string p1, "com.ofilm.mapservice.extra.USB_STATE"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, "com.ofilm.mapservice.extra.USB_PATH"

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    const/4 v1, 0x0

    .line 17
    aput-object p1, v0, v1

    .line 19
    const/4 v1, 0x1

    .line 20
    aput-object p2, v0, v1

    .line 22
    const-string v2, "UsbDeviceChangedFuncRepository"

    .line 24
    const-string v3, "onReceive: udisk usbState={?} usbPath={?}"

    .line 26
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    if-eqz p1, :cond_1

    .line 31
    if-eqz p2, :cond_1

    .line 33
    const-string v0, "mounted"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 41
    invoke-static {v1, p2}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeStorageActionChange(ILjava/lang/String;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v0, "removed"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 53
    const/4 p1, -0x1

    .line 54
    invoke-static {p1, p2}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeStorageActionChange(ILjava/lang/String;)V

    .line 57
    :cond_1
    :goto_0
    return v1
.end method
