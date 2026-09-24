.class public abstract Lh80;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "com.android.settings"

    .line 8
    const-string v2, "com.android.settings.Settings$OverlaySettingsActivity"

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const/high16 v1, 0x10000000

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 18
    invoke-static {v0, p0}, Lh80;->d(Landroid/content/Intent;Landroid/content/Context;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v1, "com.qihoo360.mobilesafe"

    .line 30
    const-string v2, "com.qihoo360.mobilesafe.ui.index.AppEnterActivity"

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-static {v0, p0}, Lh80;->d(Landroid/content/Intent;Landroid/content/Context;)Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    new-array p0, p0, [Ljava/lang/Object;

    .line 48
    const-string v0, "QikuUtils"

    .line 50
    const-string v1, "can\'t open permission page with particular name, please use \"adb shell dumpsys activity\" command and tell me the name of the float window permission page"

    .line 52
    invoke-static {v0, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const/16 v0, 0x18

    .line 3
    invoke-static {p0, v0}, Lh80;->c(Landroid/content/Context;I)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static c(Landroid/content/Context;I)Z
    .locals 9

    .line 1
    const-string v0, "appops"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/AppOpsManager;

    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    const-class v2, Landroid/app/AppOpsManager;

    .line 12
    const-string v3, "checkOp"

    .line 14
    const/4 v4, 0x3

    .line 15
    new-array v5, v4, [Ljava/lang/Class;

    .line 17
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 19
    aput-object v6, v5, v1

    .line 21
    const/4 v7, 0x1

    .line 22
    aput-object v6, v5, v7

    .line 24
    const-class v6, Ljava/lang/String;

    .line 26
    const/4 v8, 0x2

    .line 27
    aput-object v6, v5, v8

    .line 29
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 32
    move-result-object v2

    .line 33
    new-array v3, v4, [Ljava/lang/Object;

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p1

    .line 39
    aput-object p1, v3, v1

    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 44
    move-result p1

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object p1

    .line 49
    aput-object p1, v3, v7

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    aput-object p0, v3, v8

    .line 57
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ljava/lang/Integer;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 66
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    if-nez p0, :cond_0

    .line 69
    const/4 v1, 0x1

    .line 70
    :cond_0
    return v1

    .line 71
    :catch_0
    move-exception p0

    .line 72
    const-string p1, "checkOp ocuur a Exception!!!"

    .line 74
    new-array v0, v1, [Ljava/lang/Object;

    .line 76
    const-string v2, "QikuUtils"

    .line 78
    invoke-static {v2, p1, p0, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 81
    return v1
.end method

.method public static d(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1, p0}, Lh1;->h(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    move-result p0

    .line 17
    if-lez p0, :cond_1

    .line 19
    const/4 v0, 0x1

    .line 20
    :cond_1
    return v0
.end method
