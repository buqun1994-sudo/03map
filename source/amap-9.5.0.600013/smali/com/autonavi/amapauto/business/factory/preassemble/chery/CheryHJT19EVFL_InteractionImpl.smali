.class public Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryHJT19EVFL_InteractionImpl;
.super Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;
.source "SourceFile"


# static fields
.field private static final ACTION_OPEN_WIFI_SETTINGS:Ljava/lang/String; = "com.carocean.action.open_wifi_settings"

.field static final CAR_TYPE:Ljava/lang/String; = "T19EVFL"

.field private static final TAG:Ljava/lang/String; = "CheryHJT19EVFL_InteractionImpl"


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
    const-string v0, "CheryHJT19EVFL_InteractionImpl"

    .line 9
    const-string v1, "HongJing T19_EVFL impl"

    .line 11
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
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
    invoke-super {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->getBooleanValue(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    .line 13
    const-string v0, "CheryHJT19EVFL_InteractionImpl"

    .line 15
    const-string v1, "T19_EVFL show network setting"

    .line 17
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    new-instance p1, Landroid/content/Intent;

    .line 22
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 25
    const-string v0, "com.carocean.action.open_wifi_settings"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, p1}, Lbc;->sendBroadcast(Landroid/content/Intent;)V

    .line 33
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x3b07

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lmc;->getStringValue(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    .line 13
    const-string v0, "CheryHJT19EVFL_InteractionImpl"

    .line 15
    const-string v1, "C04010241019"

    .line 17
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    return-object v1
.end method

.method public getSystemMaxVolume()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
