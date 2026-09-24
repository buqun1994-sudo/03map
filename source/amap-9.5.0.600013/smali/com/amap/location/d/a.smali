.class public Lcom/amap/location/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Z

.field private static b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 3
    filled-new-array {v0, v0, v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amap/location/d/a;->b:[Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static a()[Ljava/lang/String;
    .locals 5

    .line 1
    sget-boolean v0, Lcom/amap/location/d/a;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/amap/location/d/a;->b:[Ljava/lang/String;

    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-static {}, Lcom/amap/location/d/d;->a()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Lcom/amap/location/d/a;->b:[Ljava/lang/String;

    .line 27
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 29
    aput-object v4, v2, v3

    .line 31
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 33
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x1

    .line 38
    aput-object v3, v2, v4

    .line 40
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 42
    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 54
    sget-object v1, Lcom/amap/location/d/a;->b:[Ljava/lang/String;

    .line 56
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    const/4 v2, 0x2

    .line 61
    aput-object v0, v1, v2

    .line 63
    :cond_1
    sput-boolean v4, Lcom/amap/location/d/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 70
    :goto_0
    sget-object v0, Lcom/amap/location/d/a;->b:[Ljava/lang/String;

    .line 72
    return-object v0
.end method
