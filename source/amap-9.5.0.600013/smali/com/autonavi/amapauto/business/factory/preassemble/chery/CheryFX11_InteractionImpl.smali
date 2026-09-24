.class public Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11_InteractionImpl;
.super Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;
.source "SourceFile"


# static fields
.field static final CAR_TYPE:Ljava/lang/String; = "FX11"

.field private static final G_NAVI_INFO_ENTER_MAIN_PAGE:I = 0x2e

.field private static final TAG:Ljava/lang/String; = "CheryFX11_InteractionImpl"


# instance fields
.field private mEnterMainPageStatusHasSent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11_InteractionImpl;->mEnterMainPageStatusHasSent:Z

    .line 7
    return-void
.end method

.method private shouldSendBroadcast(Landroid/content/Intent;)Z
    .locals 4

    .line 1
    const-string v0, "KEY_TYPE"

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    const/16 v2, 0x2723

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v2, :cond_1

    .line 13
    const-string v0, "EXTRA_STATE"

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    move-result p1

    .line 19
    const/16 v0, 0x2e

    .line 21
    if-ne p1, v0, :cond_1

    .line 23
    iget-boolean p1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11_InteractionImpl;->mEnterMainPageStatusHasSent:Z

    .line 25
    const-string v0, "CheryFX11_InteractionImpl"

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz p1, :cond_0

    .line 30
    const-string p1, "10019:46 already send before"

    .line 32
    new-array v2, v1, [Ljava/lang/Object;

    .line 34
    invoke-static {v0, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const/4 v3, 0x0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string p1, "10019:46 can be sent"

    .line 41
    new-array v1, v1, [Ljava/lang/Object;

    .line 43
    invoke-static {v0, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iput-boolean v3, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11_InteractionImpl;->mEnterMainPageStatusHasSent:Z

    .line 48
    :cond_1
    :goto_0
    return v3
.end method


# virtual methods
.method public getBooleanValue(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x2711

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 6
    const/16 v0, 0x2712

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    invoke-super {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->getBooleanValue(I)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    return v1

    .line 16
    :cond_1
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 18
    const-string v0, "android.intent.action.autoai.settings"

    .line 20
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    const-string v0, "gosettings"

    .line 25
    const-string v2, "wifi"

    .line 27
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const/high16 v0, 0x10000000

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    iget-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    new-array v0, v1, [Ljava/lang/Object;

    .line 44
    const/4 v2, 0x0

    .line 45
    aput-object p1, v0, v2

    .line 47
    const-string p1, "CheryFX11_InteractionImpl"

    .line 49
    const-string v2, "SHOW_NETWORK_SETTING Exception "

    .line 51
    invoke-static {p1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :goto_0
    return v1
.end method

.method public getIntValue(I)I
    .locals 1

    .line 1
    const/16 v0, 0x7532

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->getIntValue(I)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/16 p1, 0x46

    .line 12
    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 1

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
    invoke-virtual {p0}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->getUUID()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_1
    const-string p1, "C04010241014"

    .line 22
    return-object p1
.end method

.method public isDayNightModeFollowAuto()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNeedImmersiveMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityLifecycleChanged(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->onActivityLifecycleChanged(Landroid/app/Activity;I)V

    .line 4
    instance-of p1, p1, Lzr;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 9
    if-ne p2, p1, :cond_0

    .line 11
    const-string p1, "main map activity created"

    .line 13
    const/4 p2, 0x0

    .line 14
    new-array v0, p2, [Ljava/lang/Object;

    .line 16
    const-string v1, "CheryFX11_InteractionImpl"

    .line 18
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iput-boolean p2, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11_InteractionImpl;->mEnterMainPageStatusHasSent:Z

    .line 23
    :cond_0
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11_InteractionImpl;->shouldSendBroadcast(Landroid/content/Intent;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    .line 10
    const-string v0, "CheryFX11_InteractionImpl"

    .line 12
    const-string v1, "broadcast won\'t send"

    .line 14
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void

    .line 18
    :cond_0
    invoke-super {p0, p1}, Lbc;->sendBroadcast(Landroid/content/Intent;)V

    .line 21
    return-void
.end method
