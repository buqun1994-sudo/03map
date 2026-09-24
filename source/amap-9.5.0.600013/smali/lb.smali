.class public abstract Llb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->L()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Llb;->a:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_ADD_OIL"

    .line 3
    invoke-static {p0, p1, v0}, Llb;->k(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static b(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_PARK"

    .line 3
    invoke-static {p0, p1, v0}, Llb;->k(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static c(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_SET_DESTINATION"

    .line 3
    invoke-static {p0, p1, v0}, Llb;->k(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static d(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_AUDIO_LOGIC_SWITCH"

    .line 3
    invoke-static {p0, p1, v0}, Llb;->k(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static e(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_MAIN_MAP"

    .line 3
    invoke-static {p0, p1, v0}, Llb;->k(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static f(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-class v1, Lcom/autonavi/autowidget/AutoWidgetProvider;

    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    const-string v1, "com.autonavi.amapauto.AUTO_WIDGET_CONTROLL_SWITCH"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    sget-object v1, Llb;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const-string v1, "type"

    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    invoke-static {p0, v0}, Llb;->j(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static g(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_GO_COMPANY"

    .line 3
    invoke-static {p0, p1, v0}, Llb;->k(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static h(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_GO_HOME"

    .line 3
    invoke-static {p0, p1, v0}, Llb;->k(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static i(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_GO_HOME_OR_COMPANY"

    .line 3
    invoke-static {p0, p1, v0}, Llb;->k(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static j(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1f

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    const/high16 v0, 0xc000000

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 v0, 0x8000000

    .line 12
    :goto_0
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v1, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static k(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-class v1, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;

    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    sget-object p2, Llb;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const-string p2, "type"

    .line 18
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    invoke-static {p0, v0}, Llb;->j(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static l(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_ZOOM_IN"

    .line 3
    invoke-static {p0, p1, v0}, Llb;->k(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static m(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_ZOOM_OUT"

    .line 3
    invoke-static {p0, p1, v0}, Llb;->k(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
