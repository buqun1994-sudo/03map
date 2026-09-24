.class public abstract Lyg0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .line 1
    if-eqz p0, :cond_1

    .line 3
    const-string v0, "notifyCurrentTheme  begin"

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    const-string v3, "ThemeSwitchConfigs"

    .line 10
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    move-result-object p0

    .line 17
    const-string v0, "ambient_color"

    .line 19
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x1

    .line 28
    const/4 v4, -0x1

    .line 29
    if-nez v0, :cond_0

    .line 31
    const-string v0, ","

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    array-length v0, p0

    .line 38
    if-lez v0, :cond_0

    .line 40
    aget-object v0, p0, v1

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 48
    new-array v0, v2, [Ljava/lang/Object;

    .line 50
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object v5

    .line 54
    aput-object v5, v0, v1

    .line 56
    const-string v5, "notifyCurrentTheme currentTheme"

    .line 58
    invoke-static {v3, v5, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    aget-object p0, p0, v1

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    move-result p0

    .line 67
    invoke-static {p0, v4, v4}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeThemeStyleV2Notify(III)V

    .line 70
    move v4, p0

    .line 71
    :cond_0
    new-array p0, v2, [Ljava/lang/Object;

    .line 73
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v0

    .line 77
    aput-object v0, p0, v1

    .line 79
    const-string v0, "notifyCurrentTheme end currentTheme:{?} "

    .line 81
    invoke-static {v3, v0, p0}, Lcz;->x(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_1
    return-void
.end method
