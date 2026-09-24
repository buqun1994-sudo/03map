.class public Lud0$z;
.super Lud0$a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "z"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lud0$a0;-><init>()V

    .line 4
    iput-object p1, p0, Lud0$z;->a:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public i()Z
    .locals 4

    .line 1
    invoke-static {}, Lud0;->a()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lud0$z;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const-string v1, "WIFI"

    .line 19
    const/16 v2, 0x29a

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    const/high16 v1, 0x10000000

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    invoke-static {v0}, Lu1;->d(Landroid/content/Intent;)Z

    .line 32
    move-result v0

    .line 33
    return v0

    .line 34
    :cond_0
    const/4 v0, 0x1

    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    iget-object v1, p0, Lud0$z;->a:Ljava/lang/String;

    .line 39
    const/4 v2, 0x0

    .line 40
    aput-object v1, v0, v2

    .line 42
    const-string v1, "ChanganImplShowWifiSettingFunc"

    .line 44
    const-string v3, "setWifiSetting, getLaunchIntentForPackage return null.settingPackage={?}"

    .line 46
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return v2
.end method
