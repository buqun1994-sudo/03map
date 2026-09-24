.class public Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11E_InteractionImpl;
.super Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;
.source "SourceFile"


# static fields
.field static final CAR_TYPE:Ljava/lang/String; = "FX11E"

.field private static final TAG:Ljava/lang/String; = "CheryFX11_InteractionImpl"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
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
    const-string p1, "C04010241015"

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
