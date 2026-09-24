.class public Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryS51EV_InteractionImpl;
.super Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;
.source "SourceFile"


# static fields
.field static final CAR_TYPE:Ljava/lang/String; = "S51"

.field private static final TAG:Ljava/lang/String; = "CheryS51EV_InteractionImpl"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    .line 7
    const-string v0, "CheryS51EV_InteractionImpl"

    .line 9
    const-string v1, "Simba S51EV impl"

    .line 11
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getBooleanValue(I)Z
    .locals 4

    .line 1
    const-string v0, "CheryS51EV_InteractionImpl"

    .line 3
    const/16 v1, 0x2711

    .line 5
    if-eq p1, v1, :cond_0

    .line 7
    invoke-super {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->getBooleanValue(I)Z

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    const/high16 v1, 0x10000000

    .line 15
    :try_start_0
    const-string v2, "S51EV SHOW_NETWORK_SETTING"

    .line 17
    new-array v3, p1, [Ljava/lang/Object;

    .line 19
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    new-instance v2, Landroid/content/Intent;

    .line 24
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 27
    const-string v3, "com.simba.intent.action.SETTINGS_WIFI"

    .line 29
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    iget-object v3, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    new-instance v2, Landroid/content/Intent;

    .line 47
    const-string v3, "android.settings.WIFI_SETTINGS"

    .line 49
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    const-string v1, "S51EV SHOW_NETWORK_SETTING error"

    .line 62
    new-array p1, p1, [Ljava/lang/Object;

    .line 64
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :goto_0
    const/4 p1, 0x1

    .line 68
    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x3b07

    .line 3
    if-eq p1, v0, :cond_1

    .line 5
    const v0, 0x9c43

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    invoke-super {p0, p1}, Lmc;->getStringValue(I)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryS51EV_InteractionImpl;->getUUID()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    new-array p1, p1, [Ljava/lang/Object;

    .line 23
    const-string v0, "CheryS51EV_InteractionImpl"

    .line 25
    const-string v1, "C04010241041"

    .line 27
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    return-object v1
.end method

.method public getUUID()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "ro.co.system.uuid"

    .line 3
    invoke-static {v0}, Lvf0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, ""

    .line 16
    :goto_0
    const/4 v1, 0x1

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object v0, v1, v2

    .line 22
    const-string v2, "CheryS51EV_InteractionImpl"

    .line 24
    const-string v3, "deviceId is {?}"

    .line 26
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-object v0
.end method
