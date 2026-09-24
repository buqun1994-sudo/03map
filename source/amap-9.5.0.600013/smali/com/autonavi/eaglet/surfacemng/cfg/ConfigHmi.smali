.class public Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;
    }
.end annotation


# static fields
.field public static final CONFIG_sm_eagletVariables:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;

.field public static final CONFIG_u_forebackState:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;

.field public static final CONFIG_u_wndFocusState:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;

.field private static final TAG_FN_WRITE:Ljava/lang/String; = "sm_func_config_write_enable"

.field private static final TAG_VER_DEVELOP:Ljava/lang/String; = "sm_is_verDevelop"

.field public static final smDeclareFnConfig:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final smDeclareUIConfig:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;

    .line 3
    const-string v1, "sm_eagletVariables"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v1, v2, v3, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$a;)V

    .line 10
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;->CONFIG_sm_eagletVariables:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;

    .line 12
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;

    .line 14
    const/4 v1, 0x1

    .line 15
    const-string v4, "u_forebackState"

    .line 17
    const-string v5, "-1"

    .line 19
    invoke-direct {v0, v4, v5, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$a;)V

    .line 22
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;->CONFIG_u_forebackState:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;

    .line 24
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;

    .line 26
    const-string v1, "u_wndFocusState"

    .line 28
    invoke-direct {v0, v1, v5, v3, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$a;)V

    .line 31
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;->CONFIG_u_wndFocusState:Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;

    .line 33
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 35
    const-string v1, "sm_def_fn_config"

    .line 37
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 40
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;->smDeclareFnConfig:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 42
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 44
    const-string v1, "sm_def_ui_config"

    .line 46
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 49
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;->smDeclareUIConfig:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishLoad()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;->initFnUIConfig()V

    .line 4
    return-void
.end method

.method public static initFnUIConfig()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;->setFnConfigByDeclare()V

    .line 4
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;->isWarnChecked()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;->setUiConfigByDeclare()V

    .line 13
    :cond_0
    return-void
.end method

.method public static isWarnChecked()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->TurboConfig()Lut;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "warn"

    .line 7
    const-string v2, "0"

    .line 9
    invoke-interface {v0, v1, v2}, Lut;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v2, "WarnChecked: "

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;)V

    .line 33
    const-string v1, "1"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 41
    const-string v1, "true"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 53
    :goto_1
    return v0
.end method

.method public static preLoad()V
    .locals 0

    return-void
.end method

.method private static setFnConfigByDeclare()V
    .locals 12

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;->smDeclareFnConfig:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "\\|"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 32
    return-void

    .line 33
    :cond_1
    const-string v1, "sm_is_verDevelop"

    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-static {v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->setEagletVariable(Ljava/lang/String;I)V

    .line 39
    const-string v3, "sm_func_config_write_enable"

    .line 41
    invoke-static {v3, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->setEagletVariable(Ljava/lang/String;I)V

    .line 44
    array-length v4, v0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    :goto_0
    if-ge v6, v4, :cond_3

    .line 49
    aget-object v7, v0, v6

    .line 51
    const-string v8, "="

    .line 53
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 56
    move-result-object v7

    .line 57
    array-length v8, v7

    .line 58
    const/4 v9, 0x2

    .line 59
    if-ge v8, v9, :cond_2

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->TurboConfig()Lut;

    .line 65
    move-result-object v8

    .line 66
    aget-object v10, v7, v5

    .line 68
    aget-object v11, v7, v2

    .line 70
    invoke-interface {v8, v10, v11}, Lut;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    move-result v8

    .line 74
    const/4 v10, 0x3

    .line 75
    new-array v10, v10, [Ljava/lang/Object;

    .line 77
    aget-object v11, v7, v5

    .line 79
    aput-object v11, v10, v5

    .line 81
    aget-object v7, v7, v2

    .line 83
    aput-object v7, v10, v2

    .line 85
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 88
    move-result-object v7

    .line 89
    aput-object v7, v10, v9

    .line 91
    const-string v7, "setFnConfig %s=%s, %b"

    .line 93
    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    move-result-object v7

    .line 97
    invoke-static {v7}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;)V

    .line 100
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-static {v3, v5}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->setEagletVariable(Ljava/lang/String;I)V

    .line 106
    invoke-static {v1, v5}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->setEagletVariable(Ljava/lang/String;I)V

    .line 109
    :cond_4
    :goto_2
    return-void
.end method

.method private static setUiConfigByDeclare()V
    .locals 10

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;->smDeclareUIConfig:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "\\|"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 32
    return-void

    .line 33
    :cond_1
    array-length v1, v0

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_0
    if-ge v3, v1, :cond_3

    .line 38
    aget-object v4, v0, v3

    .line 40
    const-string v5, "="

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 46
    array-length v5, v4

    .line 47
    const/4 v6, 0x2

    .line 48
    if-ge v5, v6, :cond_2

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->TurboConfig()Lut;

    .line 54
    move-result-object v5

    .line 55
    aget-object v7, v4, v2

    .line 57
    const/4 v8, 0x1

    .line 58
    aget-object v9, v4, v8

    .line 60
    invoke-interface {v5, v7, v9}, Lut;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    move-result v5

    .line 64
    const/4 v7, 0x3

    .line 65
    new-array v7, v7, [Ljava/lang/Object;

    .line 67
    aget-object v9, v4, v2

    .line 69
    aput-object v9, v7, v2

    .line 71
    aget-object v4, v4, v8

    .line 73
    aput-object v4, v7, v8

    .line 75
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    move-result-object v4

    .line 79
    aput-object v4, v7, v6

    .line 81
    const-string v4, "setUIConfig %s=%s, %b"

    .line 83
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    move-result-object v4

    .line 87
    invoke-static {v4}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;)V

    .line 90
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    :goto_2
    return-void
.end method
