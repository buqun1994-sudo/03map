.class public abstract Lo3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 15
    if-eqz v2, :cond_0

    .line 17
    const/4 v2, 0x2

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    aput-object v3, v2, v0

    .line 26
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 28
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 30
    aput-object v0, v2, v1

    .line 32
    const-string v0, "AutoAppUpdateUtil"

    .line 34
    const-string v1, "checkApkPkgName app = {?}, apk = {?}"

    .line 36
    invoke-static {v0, v1, v2}, Lzy;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 45
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_0
    return v0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v2, "ContentValues"

    .line 9
    const-string v3, "install: filePath = {?}"

    .line 11
    invoke-static {v2, v3, v0}, Lzy;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-instance v0, Ljava/io/File;

    .line 16
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    new-array p0, v1, [Ljava/lang/Object;

    .line 21
    const-string v3, "after new file"

    .line 23
    invoke-static {v2, v3, p0}, Lzy;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    const-string p0, "SelfUpdate"

    .line 28
    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v3, Landroid/content/Intent;

    .line 33
    const-string v4, "android.intent.action.VIEW"

    .line 35
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    new-array v4, v1, [Ljava/lang/Object;

    .line 40
    const-string v5, "after new Intent"

    .line 42
    invoke-static {v2, v5, v4}, Lzy;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    const/16 v5, 0x18

    .line 52
    const-string v6, "application/vnd.android.package-archive"

    .line 54
    if-lt v4, v5, :cond_0

    .line 56
    const-string v4, "com.autonavi.amapauto.bootstrap.fileProvider"

    .line 58
    invoke-static {p1, v4, v0}, Landroidx/core/content/FileProvider;->e(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 61
    move-result-object v0

    .line 62
    const-string v4, "after FileProvider"

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    .line 66
    invoke-static {v2, v4, v1}, Lzy;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const-string v1, "after FileProvider.getUriForFile"

    .line 71
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const v1, 0x10000043

    .line 77
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 86
    const-string v4, "version limit n"

    .line 88
    invoke-static {v2, v4, v1}, Lzy;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/high16 v1, 0x10000000

    .line 96
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    :goto_0
    const-string v0, "startActivity"

    .line 108
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method public static c(Ljava/lang/String;Landroid/content/Context;)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v2, "ContentValues AppDownLoader getDepinfo : result = {?}"

    .line 9
    invoke-static {v2, v0}, Lzy;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    if-eqz p0, :cond_2

    .line 14
    new-instance v0, Ljava/io/File;

    .line 16
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 25
    invoke-static {p1, p0}, Lo3;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 31
    invoke-static {p0, p1}, Lo3;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 44
    :cond_1
    const-string p0, " VoiceDownloader getDepinfo : \u5305\u540d\u6821\u9a8c\u5931\u8d25"

    .line 46
    new-array p1, v1, [Ljava/lang/Object;

    .line 48
    const-string v0, "ContentValues"

    .line 50
    invoke-static {v0, p0, p1}, Lzy;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_2
    const/4 v1, -0x1

    .line 54
    :goto_0
    return v1
.end method
