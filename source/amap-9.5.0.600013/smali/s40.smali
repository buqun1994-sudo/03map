.class public Ls40;
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
.method public getBooleanValue(I)Z
    .locals 2

    .line 1
    const/16 v0, 0x2711

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
    const/high16 p1, 0x10000000

    .line 12
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 14
    const-string v1, "com.android.settings.category.wireless"

    .line 16
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 22
    iget-object v1, p0, Lac;->a:Landroid/content/Context;

    .line 24
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    new-instance v0, Landroid/content/Intent;

    .line 34
    const-string v1, "android.settings.WIFI_SETTINGS"

    .line 36
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    iget-object p1, p0, Lac;->a:Landroid/content/Context;

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    :goto_0
    const/4 p1, 0x1

    .line 48
    return p1
.end method
