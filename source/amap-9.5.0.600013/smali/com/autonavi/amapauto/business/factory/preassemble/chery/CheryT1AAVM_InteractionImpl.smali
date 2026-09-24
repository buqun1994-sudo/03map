.class public Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryT1AAVM_InteractionImpl;
.super Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;
.source "SourceFile"


# static fields
.field static final CAR_TYPE:Ljava/lang/String; = "T1A_AVM"

.field static final CAR_TYPE2:Ljava/lang/String; = "M1DFL2"

.field static final CAR_TYPE3:Ljava/lang/String; = "T1A_2021"

.field private static final TAG:Ljava/lang/String; = "CheryT1AAVM_InteractionImpl"

.field private static final TYPE_UUID:Ljava/lang/String; = "navi_tuid"


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
    const-string v0, "CheryT1AAVM_InteractionImpl"

    .line 9
    const-string v1, "TianBao T1A_AVM impl"

    .line 11
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getBooleanValue(I)Z
    .locals 4

    .line 1
    const-string v0, "CheryT1AAVM_InteractionImpl"

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
    const-string v2, "T1A AVM SHOW_NETWORK_SETTING"

    .line 17
    new-array v3, p1, [Ljava/lang/Object;

    .line 19
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    new-instance v2, Landroid/content/Intent;

    .line 24
    const-string v3, "android.settings.WIRELESS_SETTINGS"

    .line 26
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    iget-object v3, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    new-instance v2, Landroid/content/Intent;

    .line 44
    const-string v3, "android.settings.WIFI_SETTINGS"

    .line 46
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 57
    const-string v1, "T1A AVM SHOW_NETWORK_SETTING error"

    .line 59
    new-array p1, p1, [Ljava/lang/Object;

    .line 61
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :goto_0
    const/4 p1, 0x1

    .line 65
    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x3b07

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "CheryT1AAVM_InteractionImpl"

    .line 6
    if-eq p1, v0, :cond_1

    .line 8
    const v0, 0x9c43

    .line 11
    if-eq p1, v0, :cond_0

    .line 13
    invoke-super {p0, p1}, Lmc;->getStringValue(I)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    move-result-object p1

    .line 24
    const-string v0, "navi_tuid"

    .line 26
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x1

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    aput-object p1, v0, v1

    .line 35
    const-string v1, "uuid ={?}"

    .line 37
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    return-object p1

    .line 41
    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 43
    const-string v0, "C04010241020"

    .line 45
    invoke-static {v2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return-object v0
.end method

.method public getSystemMaxVolume()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
