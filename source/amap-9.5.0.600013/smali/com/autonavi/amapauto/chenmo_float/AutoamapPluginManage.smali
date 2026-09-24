.class public Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;
.super Ljava/lang/Object;
.source "AutoamapPluginManage.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;


# instance fields
.field private application:Landroid/app/Application;

.field private context:Landroid/content/Context;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;->application:Landroid/app/Application;

    .line 23
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;->context:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Lcom/autonavi/amapauto/chenmo_float/ApplicationInitialization;->init(Landroid/app/Application;)V

    .line 27
    invoke-static {}, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->getInstance()Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->init(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->getInstance()Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/chenmo_float/FloatWindowsManage;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public static load(Landroid/app/Application;)V
    .locals 4
    .param p0, "application"    # Landroid/app/Application;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 33
    invoke-static {p0}, Lcom/autonavi/amapauto/chenmo_float/Utils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "processName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 35
    :cond_0
    sget-object v1, Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load: processName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not main process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    :goto_0
    return-void

    .line 38
    :cond_2
    sget-object v1, Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load: processName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is main process, start init"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v1, Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;->instance:Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;

    if-nez v1, :cond_1

    .line 40
    const-class v2, Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;

    monitor-enter v2

    .line 41
    :try_start_0
    sget-object v1, Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;->instance:Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;

    if-nez v1, :cond_3

    .line 42
    new-instance v1, Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;

    invoke-direct {v1, p0}, Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;->instance:Lcom/autonavi/amapauto/chenmo_float/AutoamapPluginManage;

    .line 44
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
