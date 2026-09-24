.class public Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryT1E_InteractionImpl;
.super Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;
.source "SourceFile"


# static fields
.field static final CAR_TYPE:Ljava/lang/String; = "T1E"

.field private static final TAG:Ljava/lang/String; = "CheryT1E_InteractionImpl"


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
    const-string v0, "CheryT1E_InteractionImpl"

    .line 9
    const-string v1, "T1E impl"

    .line 11
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
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
    invoke-super {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->getBooleanValue(I)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    return v1

    .line 16
    :cond_1
    const/high16 p1, 0x10000000

    .line 18
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 20
    const-string v2, "android.settings.WIRELESS_SETTINGS"

    .line 22
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 28
    iget-object v2, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    new-instance v0, Landroid/content/Intent;

    .line 40
    const-string v2, "android.settings.WIFI_SETTINGS"

    .line 42
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 48
    iget-object p1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    :goto_0
    return v1
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
    const-string p1, "C04010241016"

    .line 22
    return-object p1
.end method

.method public getSystemMaxVolume()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
