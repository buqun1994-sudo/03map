.class public Lcom/dingtalk/mobile/common/transport/utils/CommonUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile sTargetSdkVersion:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canScheduleExactAlarms(Landroid/content/Context;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x21
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/dingtalk/mobile/common/transport/utils/CommonUtil;->getTargetSdkVersion(Landroid/content/Context;)I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x21

    .line 7
    if-lt v0, v1, :cond_3

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    const/16 v1, 0x22

    .line 13
    if-ge v0, v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    if-nez p0, :cond_1

    .line 19
    return v0

    .line 20
    :cond_1
    const-string v1, "alarm"

    .line 22
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Landroid/app/AlarmManager;

    .line 28
    if-nez p0, :cond_2

    .line 30
    return v0

    .line 31
    :cond_2
    invoke-static {p0}, Lnf;->a(Landroid/app/AlarmManager;)Z

    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 37
    return p0
.end method

.method public static getTargetSdkVersion(Landroid/content/Context;)I
    .locals 4

    .line 1
    sget v0, Lcom/dingtalk/mobile/common/transport/utils/CommonUtil;->sTargetSdkVersion:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    sget p0, Lcom/dingtalk/mobile/common/transport/utils/CommonUtil;->sTargetSdkVersion:I

    .line 8
    return p0

    .line 9
    :cond_0
    if-eqz p0, :cond_2

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 28
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 30
    if-eqz v0, :cond_1

    .line 32
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 34
    sput v0, Lcom/dingtalk/mobile/common/transport/utils/CommonUtil;->sTargetSdkVersion:I

    .line 36
    :cond_1
    sget v0, Lcom/dingtalk/mobile/common/transport/utils/CommonUtil;->sTargetSdkVersion:I

    .line 38
    if-ne v0, v1, :cond_2

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_2

    .line 46
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 48
    sput p0, Lcom/dingtalk/mobile/common/transport/utils/CommonUtil;->sTargetSdkVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :catchall_0
    :cond_2
    sget p0, Lcom/dingtalk/mobile/common/transport/utils/CommonUtil;->sTargetSdkVersion:I

    .line 52
    return p0
.end method
