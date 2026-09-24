.class public Lmf$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llf$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lmf$a;->g()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 10
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 13
    new-instance v2, Landroid/content/ComponentName;

    .line 15
    const-string v3, "com.glsx.ddbox"

    .line 17
    const-string v4, "com.glsx.launcher.activity.LauncherActivity"

    .line 19
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 25
    const/high16 v2, 0x10800000

    .line 27
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 30
    invoke-static {}, Lrv;->H()Lrv;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    invoke-static {v0, v1, v1}, Lu1;->c(Landroid/content/Intent;II)Z

    .line 44
    move-result v0

    .line 45
    return v0

    .line 46
    :cond_0
    return v1
.end method

.method public final g()Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

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
