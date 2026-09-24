.class public Lcom/autonavi/amapauto/business/factory/preassemble/chery/QiruiM1AXF_InteractionImpl;
.super Lmc;
.source "SourceFile"


# static fields
.field private static final SDCAR_PATH:Ljava/lang/String; = "/sdcard"

.field private static final UDISK_PATH:Ljava/lang/String; = "/udisk"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmc;-><init>()V

    .line 4
    return-void
.end method

.method private getUUID()Ljava/lang/String;
    .locals 7

    .line 1
    const-class v0, Ljava/lang/String;

    .line 3
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "get"

    .line 11
    const/4 v3, 0x2

    .line 12
    new-array v4, v3, [Ljava/lang/Class;

    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v0, v4, v5

    .line 17
    const/4 v6, 0x1

    .line 18
    aput-object v0, v4, v6

    .line 20
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    move-result-object v0

    .line 24
    new-array v2, v3, [Ljava/lang/Object;

    .line 26
    const-string v3, "persist.sys.navi.uuid"

    .line 28
    aput-object v3, v2, v5

    .line 30
    const-string v3, "unknow"

    .line 32
    aput-object v3, v2, v6

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object v0

    .line 41
    :catch_0
    const/4 v0, 0x0

    .line 42
    return-object v0
.end method


# virtual methods
.method public getBooleanValue(I)Z
    .locals 2

    .line 1
    const/16 v0, 0x2711

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lmc;->getBooleanValue(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lrv;->y()Landroid/app/Application;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    move-result-object p1

    .line 26
    const-string v0, "com.iflytek.autofly.setting"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    move-result-object p1

    .line 32
    const-string v0, "isFromNavi"

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    invoke-static {}, Lrv;->H()Lrv;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return v1

    .line 54
    :catch_0
    const/4 p1, 0x0

    .line 55
    return p1
.end method

.method public getIntValue(I)I
    .locals 1

    .line 1
    const/16 v0, 0x7537

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lmc;->getIntValue(I)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Lmc;->getStringValue(I)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    return-object p1

    .line 9
    :pswitch_0
    const-string p1, "/sdcard"

    .line 11
    return-object p1

    .line 12
    :pswitch_1
    invoke-direct {p0}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/QiruiM1AXF_InteractionImpl;->getUUID()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :pswitch_data_0
    .packed-switch 0x9c43
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getUsbUpdataPath()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v1, "/udisk"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    return-object v0
.end method

.method public startup()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
