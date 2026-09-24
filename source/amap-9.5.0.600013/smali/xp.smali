.class public abstract Lxp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 11

    .line 1
    const-string v0, "ocuur a Exception!!!!"

    .line 3
    const-string v1, "com.huawei.systemmanager"

    .line 5
    const-string v2, "HuaweiUtils"

    .line 7
    const/high16 v3, 0x10000000

    .line 9
    const/4 v4, 0x0

    .line 10
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    .line 12
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 15
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 18
    new-instance v6, Landroid/content/ComponentName;

    .line 20
    const-string v7, "com.huawei.systemmanager.addviewmonitor.AddViewMonitorActivity"

    .line 22
    invoke-direct {v6, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 28
    invoke-static {}, Ldb0;->e()D

    .line 31
    move-result-wide v6

    .line 32
    const-wide v8, 0x4008cccccccccccdL    # 3.1

    .line 37
    cmpl-double v10, v6, v8

    .line 39
    if-nez v10, :cond_0

    .line 41
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v6, Landroid/content/ComponentName;

    .line 47
    const-string v7, "com.huawei.notificationmanager.ui.NotificationManagmentActivity"

    .line 49
    invoke-direct {v6, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    const-string v3, "\u8bf7\u6c42\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650->applyPermission "

    .line 62
    new-array v5, v4, [Ljava/lang/Object;

    .line 64
    invoke-static {v2, v3, v1, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 67
    const-string v3, "\u8fdb\u5165\u8bbe\u7f6e\u9875\u9762\u5931\u8d25\uff0c\u8bf7\u524d\u5f80\u624b\u52a8\u8bbe\u7f6e"

    .line 69
    const/4 v5, 0x1

    .line 70
    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 77
    new-array p0, v4, [Ljava/lang/Object;

    .line 79
    invoke-static {v2, v0, v1, p0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 82
    goto :goto_0

    .line 83
    :catch_1
    move-exception v1

    .line 84
    new-instance v5, Landroid/content/Intent;

    .line 86
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 89
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    new-instance v3, Landroid/content/ComponentName;

    .line 94
    const-string v6, "com.Android.settings"

    .line 96
    const-string v7, "com.android.settings.permission.TabItem"

    .line 98
    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    new-array p0, v4, [Ljava/lang/Object;

    .line 112
    invoke-static {v2, v0, v1, p0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 115
    goto :goto_0

    .line 116
    :catch_2
    move-exception v5

    .line 117
    new-instance v6, Landroid/content/Intent;

    .line 119
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 122
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    new-instance v3, Landroid/content/ComponentName;

    .line 127
    const-string v7, "com.huawei.permissionmanager.ui.MainActivity"

    .line 129
    invoke-direct {v3, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    new-array p0, v4, [Ljava/lang/Object;

    .line 140
    invoke-static {v2, v0, v5, p0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 143
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const/16 v0, 0x18

    .line 3
    invoke-static {p0, v0}, Lxp;->c(Landroid/content/Context;I)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static c(Landroid/content/Context;I)Z
    .locals 9

    .line 1
    const-string v0, "appops"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/AppOpsManager;

    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    const-class v2, Landroid/app/AppOpsManager;

    .line 12
    const-string v3, "checkOp"

    .line 14
    const/4 v4, 0x3

    .line 15
    new-array v5, v4, [Ljava/lang/Class;

    .line 17
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 19
    aput-object v6, v5, v1

    .line 21
    const/4 v7, 0x1

    .line 22
    aput-object v6, v5, v7

    .line 24
    const-class v6, Ljava/lang/String;

    .line 26
    const/4 v8, 0x2

    .line 27
    aput-object v6, v5, v8

    .line 29
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 32
    move-result-object v2

    .line 33
    new-array v3, v4, [Ljava/lang/Object;

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p1

    .line 39
    aput-object p1, v3, v1

    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 44
    move-result p1

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object p1

    .line 49
    aput-object p1, v3, v7

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    aput-object p0, v3, v8

    .line 57
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ljava/lang/Integer;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 66
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    if-nez p0, :cond_0

    .line 69
    const/4 v1, 0x1

    .line 70
    :cond_0
    return v1

    .line 71
    :catch_0
    move-exception p0

    .line 72
    const-string p1, "ocuur a Exception!!!!"

    .line 74
    new-array v0, v1, [Ljava/lang/Object;

    .line 76
    const-string v2, "HuaweiUtils"

    .line 78
    invoke-static {v2, p1, p0, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 81
    return v1
.end method
