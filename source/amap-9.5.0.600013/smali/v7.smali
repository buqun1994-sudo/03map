.class public Lv7;
.super Lfi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv7$a;
    }
.end annotation


# instance fields
.field public d:Lv7$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lfi;-><init>()V

    .line 4
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 6
    new-instance v1, Lv7$a;

    .line 8
    invoke-direct {v1, v0}, Lv7$a;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object v1, p0, Lv7;->d:Lv7$a;

    .line 13
    const-string v0, "W320"

    .line 15
    invoke-virtual {v1}, Lv7$a;->b()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez v0, :cond_2

    .line 26
    iget-object v0, p0, Lv7;->d:Lv7$a;

    .line 28
    invoke-virtual {v0}, Lv7$a;->b()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    const-string v2, "W1280"

    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lv7;->d:Lv7$a;

    .line 43
    invoke-virtual {v0}, Lv7$a;->b()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    const-string v2, "W1600"

    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lv7;->d:Lv7$a;

    .line 57
    invoke-virtual {v0}, Lv7$a;->a()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    const-string v2, "N98A"

    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 69
    const/16 v0, 0xc2

    .line 71
    const/16 v2, 0xf6

    .line 73
    invoke-virtual {p0, v0, v1, v2, v1}, Lac;->d(IIII)V

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const/16 v0, 0xc8

    .line 79
    invoke-virtual {p0, v0, v1, v0, v1}, Lac;->d(IIII)V

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    :goto_0
    const/16 v0, 0xa0

    .line 85
    invoke-virtual {p0, v0, v1, v0, v1}, Lac;->d(IIII)V

    .line 88
    :cond_3
    :goto_1
    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object v2

    .line 10
    const-string v3, "mService"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_0

    .line 26
    return-object v0

    .line 27
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    move-result-object v2

    .line 31
    const-string v3, "getAddress"

    .line 33
    const/4 v4, 0x0

    .line 34
    new-array v5, v4, [Ljava/lang/Class;

    .line 36
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    move-result-object v2

    .line 40
    new-array v3, v4, [Ljava/lang/Object;

    .line 42
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 48
    instance-of v2, v1, Ljava/lang/String;

    .line 50
    if-eqz v2, :cond_1

    .line 52
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-object v1

    .line 55
    :cond_1
    return-object v0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    goto :goto_0

    .line 61
    :catch_1
    move-exception v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    goto :goto_0

    .line 66
    :catch_2
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    goto :goto_0

    .line 71
    :catch_3
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    goto :goto_0

    .line 76
    :catch_4
    move-exception v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    :goto_0
    return-object v0
.end method


# virtual methods
.method public createRealChannelImpl()Leq;
    .locals 1

    .line 1
    const/16 v0, 0x3b07

    .line 3
    invoke-virtual {p0, v0}, Lv7;->getStringValue(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p0}, Lre;->a(Ljava/lang/String;Leq;)Leq;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x3b07

    .line 3
    if-eq p1, v0, :cond_3

    .line 5
    const v0, 0x9c41

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object p1, p0, Lv7;->d:Lv7$a;

    .line 13
    invoke-virtual {p1}, Lv7$a;->a()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    const-string v0, "N60"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_2

    .line 25
    iget-object p1, p0, Lv7;->d:Lv7$a;

    .line 27
    invoke-virtual {p1}, Lv7$a;->a()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    const-string v0, "N98Z"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_2

    .line 39
    iget-object p1, p0, Lv7;->d:Lv7$a;

    .line 41
    invoke-virtual {p1}, Lv7$a;->a()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    const-string v0, "N98A"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    return-object p1

    .line 56
    :cond_2
    :goto_0
    invoke-static {}, Lv7;->e()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_3
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 63
    const/4 v1, 0x1

    .line 64
    const-string v2, "aimi.properties"

    .line 66
    const/16 v3, 0x2e

    .line 68
    invoke-virtual {p0, v0, v3, v1, v2}, Lac;->getDeviceCustomer(Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_4

    .line 78
    return-object v0

    .line 79
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lac;->getStringValue(I)Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method

.method public onActivityLifecycleChanged(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lbc;->onActivityLifecycleChanged(Landroid/app/Activity;I)V

    .line 4
    instance-of p1, p1, Lzr;

    .line 6
    if-eqz p1, :cond_1

    .line 8
    const/4 p1, 0x3

    .line 9
    const-string v0, "sys.force_full_screen"

    .line 11
    if-ne p2, p1, :cond_0

    .line 13
    const-string p1, "true"

    .line 15
    invoke-static {v0, p1}, Luf0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x4

    .line 20
    if-ne p2, p1, :cond_1

    .line 22
    const-string p1, "false"

    .line 24
    invoke-static {v0, p1}, Luf0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_1
    :goto_0
    return-void
.end method
