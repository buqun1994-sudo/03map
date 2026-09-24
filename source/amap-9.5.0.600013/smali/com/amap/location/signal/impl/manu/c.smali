.class public Lcom/amap/location/signal/impl/manu/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/net/Uri;

.field private static b:Landroid/content/ContentResolver;

.field private static c:Z

.field private static d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "content://com.vivo.permissionmanager.provider.permission/fuzzy_location_apps"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amap/location/signal/impl/manu/c;->a:Landroid/net/Uri;

    .line 9
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/amap/location/signal/impl/manu/c;->b:Landroid/content/ContentResolver;

    .line 12
    const/4 v0, 0x0

    .line 13
    sput-boolean v0, Lcom/amap/location/signal/impl/manu/c;->c:Z

    .line 15
    const/4 v1, 0x1

    .line 16
    sput-boolean v1, Lcom/amap/location/signal/impl/manu/c;->d:Z

    .line 18
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 21
    move-result-object v2

    .line 22
    const-string v3, "dim"

    .line 24
    const/16 v4, 0xf

    .line 26
    invoke-virtual {v2, v3, v4}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;I)I

    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x2

    .line 31
    and-int/2addr v2, v3

    .line 32
    if-ne v2, v3, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 35
    :cond_0
    sput-boolean v0, Lcom/amap/location/signal/impl/manu/c;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v1, "VivoDimLocator"

    .line 41
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    :goto_0
    return-void
.end method

.method public static a(Landroid/os/Bundle;)F
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "flAcc"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/high16 p0, 0x44fa0000    # 2000.0f

    :goto_0
    return p0
.end method

.method public static a()Z
    .locals 3

    const/4 v0, 0x0

    .line 3
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    sget-boolean v1, Lcom/amap/location/signal/impl/manu/c;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "VivoDimLocator"

    .line 4
    invoke-static {v2, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static b()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/signal/impl/manu/c;->a()Z

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
    sget-boolean v0, Lcom/amap/location/signal/impl/manu/c;->c:Z

    .line 11
    return v0
.end method

.method public static c()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/amap/location/signal/impl/manu/c;->a()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    sget-object v2, Lcom/amap/location/signal/impl/manu/c;->b:Landroid/content/ContentResolver;

    .line 12
    if-nez v2, :cond_1

    .line 14
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/content/Context;

    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    move-result-object v2

    .line 24
    sput-object v2, Lcom/amap/location/signal/impl/manu/c;->b:Landroid/content/ContentResolver;

    .line 26
    :cond_1
    sget-object v3, Lcom/amap/location/signal/impl/manu/c;->b:Landroid/content/ContentResolver;

    .line 28
    sget-object v4, Lcom/amap/location/signal/impl/manu/c;->a:Landroid/net/Uri;

    .line 30
    const/4 v2, 0x2

    .line 31
    new-array v5, v2, [Ljava/lang/String;

    .line 33
    const-string v2, "package_name"

    .line 35
    aput-object v2, v5, v0

    .line 37
    const-string v2, "selected_fuzzy"

    .line 39
    const/4 v9, 0x1

    .line 40
    aput-object v2, v5, v9

    .line 42
    const-string v6, "package_name=?"

    .line 44
    new-array v7, v9, [Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getPackageName()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    aput-object v2, v7, v0

    .line 52
    const/4 v8, 0x0

    .line 53
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 56
    move-result-object v1

    .line 57
    :cond_2
    if-eqz v1, :cond_3

    .line 59
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_3

    .line 65
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_2

    .line 71
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 74
    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-ne v2, v9, :cond_2

    .line 77
    const/4 v0, 0x1

    .line 78
    :cond_3
    sput-boolean v0, Lcom/amap/location/signal/impl/manu/c;->c:Z

    .line 80
    if-eqz v1, :cond_4

    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v2

    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception v2

    .line 86
    :try_start_1
    const-string v3, "VivoDimLocator"

    .line 88
    invoke-static {v3, v2}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    sput-boolean v0, Lcom/amap/location/signal/impl/manu/c;->c:Z

    .line 93
    if-eqz v1, :cond_4

    .line 95
    goto :goto_0

    .line 96
    :catch_1
    move-exception v2

    .line 97
    :try_start_2
    invoke-static {v2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    sput-boolean v0, Lcom/amap/location/signal/impl/manu/c;->c:Z

    .line 102
    if-eqz v1, :cond_4

    .line 104
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_4
    return-void

    .line 108
    :goto_1
    sput-boolean v0, Lcom/amap/location/signal/impl/manu/c;->c:Z

    .line 110
    if-eqz v1, :cond_5

    .line 112
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_5
    throw v2
.end method
