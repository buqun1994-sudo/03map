.class public Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/signal/impl/manu/XiaomiDimLocator$IMessenger;
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Z

.field private static c:Z

.field private static d:D

.field private static e:Landroid/content/ContentResolver;

.field private static f:Landroid/os/Bundle;

.field private static g:Z

.field private static h:Lcom/amap/location/signal/impl/manu/XiaomiDimLocator$IMessenger;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "content://com.lbe.security.miui.autostartmgr"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->a:Landroid/net/Uri;

    .line 9
    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->c:Z

    .line 12
    const-wide v1, 0x40c3880000000000L    # 10000.0

    .line 17
    sput-wide v1, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->d:D

    .line 19
    const/4 v1, 0x1

    .line 20
    sput-boolean v1, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->g:Z

    .line 22
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 24
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    move-result-object v2

    .line 28
    const-string v3, "getInt"

    .line 30
    const/4 v4, 0x2

    .line 31
    new-array v5, v4, [Ljava/lang/Class;

    .line 33
    const-class v6, Ljava/lang/String;

    .line 35
    aput-object v6, v5, v0

    .line 37
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 39
    aput-object v6, v5, v1

    .line 41
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    move-result-object v3

    .line 45
    new-array v4, v4, [Ljava/lang/Object;

    .line 47
    const-string v5, "ro.miui.ui.version.code"

    .line 49
    aput-object v5, v4, v0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v5

    .line 55
    aput-object v5, v4, v1

    .line 57
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/Integer;

    .line 63
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 66
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :try_start_1
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 70
    move-result-object v3

    .line 71
    const-string v4, "dim"

    .line 73
    const/16 v5, 0xf

    .line 75
    invoke-virtual {v3, v4, v5}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;I)I

    .line 78
    move-result v3

    .line 79
    and-int/2addr v3, v1

    .line 80
    if-ne v3, v1, :cond_0

    .line 82
    const/4 v3, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const/4 v3, 0x0

    .line 85
    :goto_0
    sput-boolean v3, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->g:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    goto :goto_2

    .line 88
    :catch_0
    move-exception v3

    .line 89
    goto :goto_1

    .line 90
    :catch_1
    move-exception v3

    .line 91
    const/4 v2, 0x0

    .line 92
    :goto_1
    invoke-static {v3}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 95
    :goto_2
    const/16 v3, 0xb

    .line 97
    if-lt v2, v3, :cond_1

    .line 99
    const/4 v0, 0x1

    .line 100
    :cond_1
    sput-boolean v0, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->b:Z

    .line 102
    new-instance v0, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator$1;

    .line 104
    invoke-direct {v0}, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator$1;-><init>()V

    .line 107
    sput-object v0, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->h:Lcom/amap/location/signal/impl/manu/XiaomiDimLocator$IMessenger;

    .line 109
    return-void
.end method

.method public static synthetic a(D)D
    .locals 0

    .line 1
    sput-wide p0, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->d:D

    return-wide p0
.end method

.method public static a()Z
    .locals 3

    const/4 v0, 0x0

    .line 3
    :try_start_0
    sget-boolean v1, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->b:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "XiaomiDimLocator"

    .line 4
    invoke-static {v2, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static synthetic a(Z)Z
    .locals 0

    .line 2
    sput-boolean p0, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->c:Z

    return p0
.end method

.method public static b()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->a()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->e:Landroid/content/ContentResolver;

    .line 10
    if-nez v0, :cond_1

    .line 12
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/content/Context;

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->e:Landroid/content/ContentResolver;

    .line 24
    :cond_1
    sget-object v0, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->f:Landroid/os/Bundle;

    .line 26
    if-nez v0, :cond_2

    .line 28
    new-instance v0, Landroid/os/Bundle;

    .line 30
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    sput-object v0, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->f:Landroid/os/Bundle;

    .line 35
    sget-object v1, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->h:Lcom/amap/location/signal/impl/manu/XiaomiDimLocator$IMessenger;

    .line 37
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 40
    move-result-object v1

    .line 41
    const-string v2, "callback"

    .line 43
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 46
    :cond_2
    :try_start_0
    sget-object v0, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->e:Landroid/content/ContentResolver;

    .line 48
    sget-object v1, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->a:Landroid/net/Uri;

    .line 50
    const-string v2, "queryLocationState"

    .line 52
    sget-object v3, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->f:Landroid/os/Bundle;

    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v1, "XiaomiDimLocator"

    .line 62
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    goto :goto_0

    .line 66
    :catch_1
    move-exception v0

    .line 67
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 70
    :goto_0
    return-void
.end method

.method public static c()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->a()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    sget-boolean v0, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->c:Z

    .line 11
    return v0
.end method

.method public static d()F
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->a()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const v0, 0x461c4000    # 10000.0f

    .line 10
    return v0

    .line 11
    :cond_0
    sget-wide v0, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->d:D

    .line 13
    double-to-float v0, v0

    .line 14
    return v0
.end method
