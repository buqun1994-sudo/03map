.class public Lcom/autonavi/amapauto/common/LanguageChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "com.autonavi.amapauto.common.LanguageChangeReceiver"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 4
    sget-object p2, Lcom/autonavi/amapauto/common/LanguageChangeReceiver;->a:Ljava/lang/String;

    .line 6
    const-string v0, "[onReceive] intent == null"

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    .line 10
    invoke-static {p2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v0, Lcom/autonavi/amapauto/common/LanguageChangeReceiver;->a:Ljava/lang/String;

    .line 16
    const/4 v1, 0x1

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v1, p1

    .line 25
    const-string p1, "intent.getAction()={?}"

    .line 27
    invoke-static {v0, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    const-string p1, "android.intent.action.LOCALE_CHANGED"

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 42
    invoke-static {}, Lcom/autonavi/amapauto/utils/LanguageUtils;->getCurLanguage()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/autonavi/amapauto/utils/LanguageUtils;->notifyLanageChange(Ljava/lang/String;)V

    .line 49
    :cond_1
    return-void
.end method
