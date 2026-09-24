.class public Lc8;
.super Lfi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lfi;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    const-string v1, "AutoLiteCheLiZiImpl"

    .line 9
    invoke-static {v1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getBooleanValue(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x2711

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 8
    const-string v1, "android.settings.WIFI_SETTINGS"

    .line 10
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    const-string v1, "com.cneeds.gosmart.setting"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const-string v1, "android.intent.category.DEFAULT"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const/high16 v1, 0x10000000

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 28
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 47
    move-result-object v0

    .line 48
    const-string v1, "\u5e94\u7528\u4e0d\u5b58\u5728"

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 58
    :goto_0
    invoke-super {p0, p1}, Lac;->getBooleanValue(I)Z

    .line 61
    move-result p1

    .line 62
    return p1
.end method
