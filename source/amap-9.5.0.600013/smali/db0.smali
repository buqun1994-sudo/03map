.class public abstract Ldb0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 9
    const-string v4, "RomUtils"

    .line 11
    const-string v5, "\u5224\u65ad\u662f\u5426\u62e5\u6709\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650->\u8bc6\u522b\u662f\u5426\u4e3a\u5947\u9177360\u7cfb\u7edf\uff1aMANUFACTURER\uff1a{?}"

    .line 13
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    const-string v1, "QiKU"

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 24
    const-string v1, "360"

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :cond_1
    :goto_0
    return v0
.end method

.method public static b()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    const-string v2, "RomUtils"

    .line 11
    const-string v3, "\u5224\u65ad\u662f\u5426\u62e5\u6709\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650->\u8bc6\u522b\u662f\u5426\u4e3a\u534e\u4e3a\u7cfb\u7edf\uff1aMANUFACTURER\uff1a{?}"

    .line 13
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    const-string v0, "HUAWEI"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public static c()Z
    .locals 6

    .line 1
    const-string v0, "ro.build.display.id"

    .line 3
    invoke-static {v0}, Lqh;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v0, v2, v3

    .line 13
    const-string v4, "RomUtils"

    .line 15
    const-string v5, "\u5224\u65ad\u662f\u5426\u62e5\u6709\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650->\u8bc6\u522b\u662f\u5426\u4e3aMEIZU\u7cfb\u7edf\uff1ameizuFlymeOSFlag\uff1a{?}"

    .line 17
    invoke-static {v4, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 26
    return v3

    .line 27
    :cond_0
    const-string v2, "flyme"

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return v3

    .line 47
    :cond_2
    :goto_0
    return v1
.end method

.method public static d()Z
    .locals 5

    .line 1
    const-string v0, "ro.miui.ui.version.name"

    .line 3
    invoke-static {v0}, Lqh;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v0, v2, v3

    .line 13
    const-string v3, "RomUtils"

    .line 15
    const-string v4, "\u5224\u65ad\u662f\u5426\u62e5\u6709\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650->\u8bc6\u522b\u662f\u5426\u4e3aMIUI\u7cfb\u7edf\uff1adisplay.id\uff1a{?}"

    .line 17
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v0

    .line 24
    xor-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public static e()D
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "ro.build.version.emui"

    .line 3
    invoke-static {v0}, Lqh;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 12
    move-result v1

    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 22
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-wide v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 30
    return-wide v0
.end method
