.class public Lcom/autonavi/amapauto/utils/LanguageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurLanguage()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x9c4a

    .line 8
    invoke-virtual {v0, v1}, Lse;->getStringValue(I)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    return-object v0

    .line 15
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    const/16 v1, 0x18

    .line 19
    const/4 v2, 0x0

    .line 20
    if-lt v0, v1, :cond_1

    .line 22
    invoke-static {}, Lrw;->a()Landroid/os/LocaleList;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0, v2}, Lsw;->a(Landroid/os/LocaleList;I)Ljava/util/Locale;

    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {}, Lrv;->H()Lrv;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 46
    move-result-object v0

    .line 47
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 49
    :goto_0
    if-nez v0, :cond_2

    .line 51
    const-string v0, "zh"

    .line 53
    return-object v0

    .line 54
    :cond_2
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    const/4 v1, 0x1

    .line 59
    new-array v1, v1, [Ljava/lang/Object;

    .line 61
    aput-object v0, v1, v2

    .line 63
    const-string v2, "LanguageUtils"

    .line 65
    const-string v3, "getCurLanguage ={?}"

    .line 67
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-object v0
.end method

.method public static isNoLimit()Z
    .locals 2

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x273f

    .line 7
    invoke-virtual {v0, v1}, Lse;->getBooleanValue(I)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public static native nativeNotifyLangChange(Ljava/lang/String;)V
.end method

.method public static native nativeNotifyLangChangeNoLimit(Ljava/lang/String;)V
.end method

.method public static notifyLanageChange(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x273f

    .line 7
    invoke-virtual {v0, v1}, Lse;->getBooleanValue(I)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object p0, v1, v2

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object v3

    .line 22
    aput-object v3, v1, v2

    .line 24
    const-string v2, "LanguageUtils"

    .line 26
    const-string v3, "notifyLanageChange ={?} ,langChangeNoLimit = {?}"

    .line 28
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    if-eqz v0, :cond_0

    .line 33
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/LanguageUtils;->nativeNotifyLangChangeNoLimit(Ljava/lang/String;)V

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/LanguageUtils;->nativeNotifyLangChange(Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void
.end method
