.class public Lzv;
.super Lei;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lei;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "com.glsx.ddbox"

    .line 15
    const/16 v2, 0x80

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public getBooleanValue(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x271d

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lei;->getBooleanValue(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lzv;->e()Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 16
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 18
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 21
    new-instance v0, Landroid/content/ComponentName;

    .line 23
    const-string v1, "com.glsx.ddbox"

    .line 25
    const-string v2, "com.glsx.launcher.activity.LauncherActivity"

    .line 27
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    const/high16 v0, 0x10800000

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 38
    invoke-static {}, Lrv;->H()Lrv;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    invoke-virtual {p0}, Ldi;->callSystemLauncher()V

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Ldi;->callSystemLauncher()V

    .line 61
    :goto_0
    const/4 p1, 0x1

    .line 62
    return p1
.end method
