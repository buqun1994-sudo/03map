.class public Lcj0$e;
.super Lcj0$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcj0$k;-><init>(Lcj0$b;)V

    .line 5
    return-void
.end method


# virtual methods
.method public l()Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Lcj0;->a()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "storage"

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/os/storage/StorageManager;

    .line 18
    const-string v2, "UsbDiskPathFuncRepository"

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 23
    const-string v1, "getUsbUpdataPath StorageManager null"

    .line 25
    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    invoke-static {v2, v1, v3}, Lg;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    return-object v0

    .line 31
    :cond_0
    invoke-static {v1}, Ldj0;->a(Landroid/os/storage/StorageManager;)Ljava/util/List;

    .line 34
    move-result-object v1

    .line 35
    :try_start_0
    const-string v4, "android.os.storage.StorageVolume"

    .line 37
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 40
    move-result-object v4

    .line 41
    const-string v5, "getPath"

    .line 43
    new-array v6, v3, [Ljava/lang/Class;

    .line 45
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    move-result-object v5

    .line 49
    const-string v6, "isRemovable"

    .line 51
    new-array v7, v3, [Ljava/lang/Class;

    .line 53
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 56
    move-result-object v4

    .line 57
    const/4 v6, 0x0

    .line 58
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 61
    move-result v7

    .line 62
    if-ge v6, v7, :cond_2

    .line 64
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v7

    .line 68
    invoke-static {v7}, Lej0;->a(Ljava/lang/Object;)Landroid/os/storage/StorageVolume;

    .line 71
    move-result-object v7

    .line 72
    new-array v8, v3, [Ljava/lang/Object;

    .line 74
    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object v8

    .line 78
    check-cast v8, Ljava/lang/String;

    .line 80
    new-array v9, v3, [Ljava/lang/Object;

    .line 82
    invoke-virtual {v4, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object v7

    .line 86
    check-cast v7, Ljava/lang/Boolean;

    .line 88
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_1

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v9, "find udisk:"

    .line 101
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v7

    .line 111
    new-array v9, v3, [Ljava/lang/Object;

    .line 113
    invoke-static {v2, v7, v9}, Lg;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 121
    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    const-string v4, "getUsbUpdataPath:"

    .line 125
    new-array v3, v3, [Ljava/lang/Object;

    .line 127
    invoke-static {v2, v4, v1, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 130
    :cond_2
    return-object v0
.end method

.method public varargs p([Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
