.class public Lcom/autonavi/amapauto/MapApplication$d;
.super Lds;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/MapApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/MapApplication;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/MapApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/MapApplication$d;->a:Lcom/autonavi/amapauto/MapApplication;

    .line 3
    invoke-direct {p0}, Lds;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    const-string v0, "MapApplication"

    .line 6
    const-string v1, "MqttNotificationObserver.onSendNotifcation"

    .line 8
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance p1, Landroid/content/Intent;

    .line 13
    const-string v0, "com.autonavi.amapauto.user.al.action.HANDLE_PUSH_MSG"

    .line 15
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/autonavi/amapauto/MapApplication$d;->a:Lcom/autonavi/amapauto/MapApplication;

    .line 20
    invoke-static {v0}, Lcom/autonavi/amapauto/MapApplication;->e(Lcom/autonavi/amapauto/MapApplication;)Landroid/app/Application;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v0, "title"

    .line 33
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string p2, "message"

    .line 38
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string p2, "messageId"

    .line 43
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string p2, "actionUri"

    .line 48
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-static {}, Lrv;->H()Lrv;

    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2}, Lrv;->y()Landroid/app/Application;

    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    const/4 p1, 0x1

    .line 63
    return p1
.end method
