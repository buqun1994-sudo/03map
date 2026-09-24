.class public Lud0$w;
.super Lud0$a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lud0$a0;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public i()Z
    .locals 10

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.settings.WIFI_SETTINGS"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "com.cneeds.gosmart.setting"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string v1, "android.intent.category.DEFAULT"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const/high16 v1, 0x10000000

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 23
    :try_start_0
    invoke-static {}, Lud0;->a()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    const/4 v0, 0x1

    .line 31
    return v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-static {}, Lrv;->H()Lrv;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 40
    move-result-object v1

    .line 41
    const-string v2, "\u5e94\u7528\u4e0d\u5b58\u5728"

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 51
    const/4 v4, 0x3

    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v6, 0x2

    .line 54
    const/4 v7, 0x0

    .line 55
    invoke-static {}, Lpi;->n()Lpi;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lpi;->m()Ljava/lang/String;

    .line 62
    move-result-object v8

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 66
    move-result-object v9

    .line 67
    invoke-static/range {v4 .. v9}, Ll1;->a(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 70
    return v3
.end method
