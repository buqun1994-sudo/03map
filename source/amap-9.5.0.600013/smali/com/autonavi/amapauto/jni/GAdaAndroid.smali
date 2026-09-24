.class public Lcom/autonavi/amapauto/jni/GAdaAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANDROID_PERMISSION_NAME:Ljava/lang/String; = "android.permission"

.field public static final CAMERA_NAME:Ljava/lang/String; = ".CAMERA"

.field public static final CAR_ENERGY:Ljava/lang/String; = "android.car.permission.CAR_ENERGY"

.field public static final FLAG_DYSMORPHISM:I = 0x3

.field public static final FLAG_LARGE_SCREEN:I = 0x2

.field private static final KEY_FLAG_FULLSCREEN:Ljava/lang/String; = "FLAG_FULLSCREEN"

.field private static final KEY_IS_FIRST_STARTUP:Ljava/lang/String; = "KEY_IS_FIRST_STARTUP"

.field public static final KEY_RMT_SPLIT_SCREEN:Ljava/lang/String; = "rmt_split_screen"

.field private static PERMISSIONS:[Ljava/lang/String; = null

.field public static final PERMISSION_POST_NOTIFICATIONS:Ljava/lang/String; = "android.permission.POST_NOTIFICATIONS"

.field private static final TAG:Ljava/lang/String; = "GAdaAndroid"

.field private static gframeAnrTriggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Los;",
            ">;"
        }
    .end annotation
.end field

.field public static isBindService:Z

.field private static isRestartGnss:Z

.field private static naviStatusChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljs;",
            ">;"
        }
    .end annotation
.end field

.field private static serviceStartListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lqs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 3
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 5
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 7
    const-string v3, "android.permission.RECORD_AUDIO"

    .line 9
    const-string v4, ".CAMERA"

    .line 11
    const-string v5, "android.permission.READ_CONTACTS"

    .line 13
    const-string v6, "android.car.permission.CAR_ENERGY"

    .line 15
    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    .line 17
    const-string v8, "android.permission.POST_NOTIFICATIONS"

    .line 19
    const-string v9, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->PERMISSIONS:[Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    sput-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->serviceStartListener:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    sput-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->naviStatusChangeListeners:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    sput-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->gframeAnrTriggers:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    .line 49
    sput-boolean v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->isBindService:Z

    .line 51
    sput-boolean v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->isRestartGnss:Z

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AmapEncodeV2(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeAmapEncodeV2(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$002(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->isRestartGnss:Z

    .line 3
    return p0
.end method

.method public static addGframeAnrTriggerObserver(Los;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->gframeAnrTriggers:Ljava/util/List;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->gframeAnrTriggers:Ljava/util/List;

    .line 11
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    return-void
.end method

.method public static addNaviStatusChangeListener(Ljs;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->naviStatusChangeListeners:Ljava/util/List;

    .line 5
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->naviStatusChangeListeners:Ljava/util/List;

    .line 13
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    return-void
.end method

.method public static addNetworkListener()V
    .locals 1

    .line 1
    invoke-static {}, Le30;->m()Le30;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Le30;->k()V

    .line 8
    return-void
.end method

.method public static addServiceStartListener(Lqs;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->serviceStartListener:Ljava/util/List;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->serviceStartListener:Ljava/util/List;

    .line 11
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    return-void
.end method

.method public static alcInitNotify()V
    .locals 3

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/GAdaAndroid$g;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid$g;-><init>()V

    .line 6
    const-wide/16 v1, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Lbg0;->d(Ljava/lang/Runnable;J)V

    .line 11
    return-void
.end method

.method public static autoLogControl(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "GAdaAndroid"

    .line 13
    const-string v3, "autoLogControl OnOff={?}"

    .line 15
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {p0}, Lcz;->C(Z)V

    .line 21
    invoke-static {}, Lrv;->H()Lrv;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "SharedPreferences"

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 38
    move-result-object v0

    .line 39
    const-string v1, "isWriteLog"

    .line 41
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    invoke-static {}, Lcz;->j()V

    .line 51
    if-eqz p0, :cond_0

    .line 53
    new-instance p0, Lcom/autonavi/amapauto/jni/GAdaAndroid$b;

    .line 55
    invoke-direct {p0}, Lcom/autonavi/amapauto/jni/GAdaAndroid$b;-><init>()V

    .line 58
    invoke-static {p0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static autoProtocolAssertControl(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "GAdaAndroid"

    .line 13
    const-string v3, "autoProtocolAssertControl OnOff={?}"

    .line 15
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lrv;->H()Lrv;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "SharedPreferences"

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 35
    move-result-object v0

    .line 36
    const-string v1, "isWriteProtocolLog"

    .line 38
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    invoke-static {}, Lr70;->b()V

    .line 48
    if-eqz p0, :cond_0

    .line 50
    new-instance p0, Lcom/autonavi/amapauto/jni/GAdaAndroid$e;

    .line 52
    invoke-direct {p0}, Lcom/autonavi/amapauto/jni/GAdaAndroid$e;-><init>()V

    .line 55
    invoke-static {p0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 58
    :cond_0
    return-void
.end method

.method public static callNumber(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v1, "GAdaAndroid"

    .line 9
    const-string v2, "callNumber num:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lse;->c()Lse;

    .line 17
    move-result-object v0

    .line 18
    const/16 v1, 0x2748

    .line 20
    invoke-virtual {v0, v1}, Lse;->getBooleanValue(I)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Leq$a;

    .line 28
    invoke-direct {v0, p0}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lse;->c()Lse;

    .line 34
    move-result-object p0

    .line 35
    const v1, 0xea70

    .line 38
    invoke-virtual {p0, v1, v0}, Lse;->setOptionalValue(ILeq$a;)V

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 44
    const-string v1, "android.intent.action.DIAL"

    .line 46
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    const/high16 v1, 0x10000000

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string v2, "tel:"

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 78
    invoke-static {}, Lrv;->H()Lrv;

    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    :goto_0
    return-void
.end method

.method public static callPhone(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "GAdaAndroid"

    .line 13
    const-string v2, "callPhone num:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 20
    const-string v1, "android.intent.action.CALL"

    .line 22
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    const/high16 v1, 0x10000000

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string v2, "tel:"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 58
    invoke-static {}, Lrv;->H()Lrv;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 65
    move-result-object p0

    .line 66
    const-string v1, "android.permission.CALL_PHONE"

    .line 68
    filled-new-array {v1}, [Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    invoke-static {p0, v2}, Lu50;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_0

    .line 78
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 81
    return-void

    .line 82
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method public static checkPermission(I)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->splitCameraPermissionName()V

    .line 4
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->PERMISSIONS:[Ljava/lang/String;

    .line 6
    array-length v0, v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-ge p0, v0, :cond_0

    .line 10
    invoke-static {}, Lrv;->H()Lrv;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    sget-object v2, Lcom/autonavi/amapauto/jni/GAdaAndroid;->PERMISSIONS:[Ljava/lang/String;

    .line 20
    aget-object v2, v2, p0

    .line 22
    filled-new-array {v2}, [Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0, v2}, Lu50;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x2

    .line 31
    new-array v2, v2, [Ljava/lang/Object;

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p0

    .line 37
    aput-object p0, v2, v1

    .line 39
    const/4 p0, 0x1

    .line 40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    move-result-object v1

    .line 44
    aput-object v1, v2, p0

    .line 46
    const-string p0, "GAdaAndroid"

    .line 48
    const-string v1, "checkPermission permissionType:{?},result={?}"

    .line 50
    invoke-static {p0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    return v0

    .line 54
    :cond_0
    return v1
.end method

.method public static checkPermissionOverAndroidMVersion(I)I
    .locals 8

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->splitCameraPermissionName()V

    .line 4
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->PERMISSIONS:[Ljava/lang/String;

    .line 6
    array-length v0, v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const-string v2, "GAdaAndroid"

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ge p0, v0, :cond_2

    .line 13
    invoke-static {}, Lrv;->H()Lrv;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lrv;->Q()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->PERMISSIONS:[Ljava/lang/String;

    .line 25
    aget-object v0, v0, p0

    .line 27
    const-string v4, "android.car.permission.CAR_ENERGY"

    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 35
    return v3

    .line 36
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 43
    move-result-object v0

    .line 44
    sget-object v4, Lcom/autonavi/amapauto/jni/GAdaAndroid;->PERMISSIONS:[Ljava/lang/String;

    .line 46
    aget-object v4, v4, p0

    .line 48
    invoke-static {v0, v4}, Ltg;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 51
    move-result v0

    .line 52
    const/4 v4, 0x2

    .line 53
    new-array v5, v4, [Ljava/lang/Object;

    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v6

    .line 59
    aput-object v6, v5, v3

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v6

    .line 65
    const/4 v7, 0x1

    .line 66
    aput-object v6, v5, v7

    .line 68
    const-string v6, "checkPermissionOverAndroidMVersion befor permissionType:{?},result={?}"

    .line 70
    invoke-static {v2, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    if-ne v0, v1, :cond_1

    .line 75
    sget-object v1, Lcom/autonavi/amapauto/jni/GAdaAndroid;->PERMISSIONS:[Ljava/lang/String;

    .line 77
    aget-object v1, v1, p0

    .line 79
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_1

    .line 85
    const/4 v0, -0x2

    .line 86
    :cond_1
    new-array v1, v4, [Ljava/lang/Object;

    .line 88
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object p0

    .line 92
    aput-object p0, v1, v3

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object p0

    .line 98
    aput-object p0, v1, v7

    .line 100
    const-string p0, "checkPermissionOverAndroidMVersion after permissionType:{?},result={?}"

    .line 102
    invoke-static {v2, p0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return v0

    .line 106
    :cond_2
    const-string p0, "checkPermissionOverAndroidMVersion permissionType > PERMISSIONS.length"

    .line 108
    new-array v0, v3, [Ljava/lang/Object;

    .line 110
    invoke-static {v2, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return v1
.end method

.method public static cloudSwitchStatusNotify(IZ)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v3

    .line 9
    aput-object v3, v1, v2

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x1

    .line 16
    aput-object v2, v1, v3

    .line 18
    const-string v2, "GAdaAndroid"

    .line 20
    const-string v4, "cloudSwitchStatusNotify cloudSwitchType={?}, OnOff={?}"

    .line 22
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    if-nez p0, :cond_0

    .line 27
    invoke-static {}, Ls7;->k()Ls7;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, p1}, Ls7;->n(Z)V

    .line 34
    invoke-static {p1}, Lcz;->D(Z)V

    .line 37
    invoke-static {p1}, Lcz;->E(Z)V

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    and-int/lit8 v1, p0, 0x1

    .line 43
    if-ne v1, v3, :cond_1

    .line 45
    invoke-static {}, Ls7;->k()Ls7;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, p1}, Ls7;->n(Z)V

    .line 52
    invoke-static {p1}, Lcz;->E(Z)V

    .line 55
    :cond_1
    and-int/2addr p0, v0

    .line 56
    if-ne p0, v0, :cond_2

    .line 58
    invoke-static {p1}, Lcz;->D(Z)V

    .line 61
    :cond_2
    :goto_0
    return-void
.end method

.method private static dispatchNaviStatusChange(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->naviStatusChangeListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljs;

    .line 19
    if-eqz v1, :cond_0

    .line 21
    invoke-interface {v1, p0}, Ljs;->a(I)V

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return-void
.end method

.method public static doUpdateFullScreen(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "GAdaAndroid"

    .line 13
    const-string v2, "doUpdateFullScreen isFullScreen:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v0, Lcom/autonavi/amapauto/jni/GAdaAndroid$a;

    .line 20
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/jni/GAdaAndroid$a;-><init>(Z)V

    .line 23
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method

.method public static exitApp(ZZ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/GAdaAndroid$c;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/autonavi/amapauto/jni/GAdaAndroid$c;-><init>(ZZ)V

    .line 6
    const-wide/16 p0, 0x12c

    .line 8
    invoke-static {v0, p0, p1}, Lbg0;->d(Ljava/lang/Runnable;J)V

    .line 11
    return-void
.end method

.method public static finishActivity()I
    .locals 4

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->F()Landroid/app/Activity;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "GAdaAndroid"

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    const-string v3, " activity \u4e3anull "

    .line 19
    invoke-static {v1, v3, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 22
    const/4 v0, 0x1

    .line 23
    return v0

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 30
    const-string v0, "activity.isFinishing"

    .line 32
    new-array v3, v2, [Ljava/lang/Object;

    .line 34
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return v2

    .line 38
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 41
    return v2
.end method

.method public static getAssetManager()Ljava/lang/Object;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x18

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    invoke-static {}, Lrv;->H()Lrv;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "user"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/os/UserManager;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v2, "getAssetManager unlocked:"

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {v0}, Lbn;->a(Landroid/os/UserManager;)Z

    .line 36
    move-result v0

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .line 45
    new-array v1, v1, [Ljava/lang/Object;

    .line 47
    const-string v2, "GAdaAndroid"

    .line 49
    invoke-static {v2, v0, v1}, Lcz;->x(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method

.method public static getContext()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getCurrentClassName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->J()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getDataDataPath()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ls1;->k()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getDataDirectorySize()J
    .locals 5

    .line 1
    invoke-static {}, Ls1;->l()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    cmp-long v4, v0, v2

    .line 9
    if-lez v4, :cond_0

    .line 11
    const-wide/16 v2, 0x3e8

    .line 13
    div-long/2addr v0, v2

    .line 14
    const/4 v2, 0x1

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    move-result-object v4

    .line 22
    aput-object v4, v2, v3

    .line 24
    const-string v3, "GAdaAndroid"

    .line 26
    const-string v4, "getDataDirectorySize size={?}"

    .line 28
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-wide v0

    .line 32
    :cond_0
    return-wide v2
.end method

.method public static getDiskInfo(Ljava/lang/String;)Lcom/autonavi/amapauto/offline/model/StorageInfo;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v1, "GAdaAndroid"

    .line 9
    const-string v2, "getDiskInfo path:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {p0}, Ls1;->m(Ljava/lang/String;)Lcom/autonavi/amapauto/offline/model/StorageInfo;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static getDiskInfoList(I)[Lcom/autonavi/amapauto/offline/model/StorageInfo;
    .locals 0

    .line 1
    invoke-static {p0}, Ls1;->n(I)[Lcom/autonavi/amapauto/offline/model/StorageInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getDiskPathReadWritePerm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ls1;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p0, v0, v1

    .line 11
    const-string v1, "GAdaAndroid"

    .line 13
    const-string v2, "getDiskPathReadWritePerm resetPath = {?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-object p0
.end method

.method public static getDiskPermissions(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-static {p0}, Ls1;->x(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Ls1;->y(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    if-eqz v1, :cond_0

    .line 16
    const/4 v0, 0x3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-nez v0, :cond_1

    .line 20
    if-eqz v1, :cond_1

    .line 22
    const/4 v0, 0x2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-eqz v0, :cond_2

    .line 26
    if-nez v1, :cond_2

    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 31
    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    .line 33
    aput-object p0, v1, v4

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p0

    .line 39
    aput-object p0, v1, v2

    .line 41
    const-string p0, "GAdaAndroid"

    .line 43
    const-string v2, "getDiskPermissions path:{?}, permissions:{?}"

    .line 45
    invoke-static {p0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return v0
.end method

.method public static getDrInfo()Lcom/autonavi/amapauto/jni/DrInfo;
    .locals 6

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/DrInfo;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/DrInfo;-><init>()V

    .line 6
    invoke-static {}, Lzm;->d()Lzm;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lzm;->g()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v2, v1, :cond_1

    .line 17
    new-instance v1, Lcom/autonavi/amapauto/location/model/LocModeType;

    .line 19
    invoke-direct {v1}, Lcom/autonavi/amapauto/location/model/LocModeType;-><init>()V

    .line 22
    invoke-static {}, Lse;->c()Lse;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lse;->getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 29
    move-result-object v2

    .line 30
    iput-object v2, v1, Lcom/autonavi/amapauto/location/model/LocModeType;->mountAngle:Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 32
    if-eqz v2, :cond_0

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    iget-object v3, v1, Lcom/autonavi/amapauto/location/model/LocModeType;->mountAngle:Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 41
    iget-wide v3, v3, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 43
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 46
    const-string v3, ";"

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v4, v1, Lcom/autonavi/amapauto/location/model/LocModeType;->mountAngle:Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 53
    iget-wide v4, v4, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 55
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, v1, Lcom/autonavi/amapauto/location/model/LocModeType;->mountAngle:Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 63
    iget-wide v3, v1, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 65
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const/4 v1, 0x0

    .line 74
    :goto_0
    sget-boolean v2, Lcom/autonavi/amapauto/jni/GAdaAndroid;->isBindService:Z

    .line 76
    iput-boolean v2, v0, Lcom/autonavi/amapauto/jni/DrInfo;->isBindService:Z

    .line 78
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/DrInfo;->mountAngleInfo:Ljava/lang/String;

    .line 80
    :cond_1
    return-object v0
.end method

.method public static getIconId()I
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->G()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static getNativeLibsPath()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ls1;->r()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 11
    const-string v2, "GAdaAndroid"

    .line 13
    const-string v3, "getNativeLibsPath: path = {?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-object v0
.end method

.method public static getNetworkState()I
    .locals 4

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lpa;->h(Landroid/content/Context;)I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v3

    .line 21
    aput-object v3, v1, v2

    .line 23
    const-string v2, "GAdaAndroid"

    .line 25
    const-string v3, "[getNetworkState]getNetWorkType:{?}"

    .line 27
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    return v0
.end method

.method public static getSignalLevel()I
    .locals 1

    .line 1
    invoke-static {}, Le30;->m()Le30;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Le30;->n()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static getSystemLibPath()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lr50;->n()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 11
    const-string v2, "GAdaAndroid"

    .line 13
    const-string v3, "getSystemLibPath: path = {?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-object v0
.end method

.method public static getTravelSharePhoneAddress()[Lcom/autonavi/amapauto/user/UserPhone;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "GAdaAndroid"

    .line 6
    const-string v3, "[getTravelSharePhoneAddress]enter"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lse;->getTravelSharePhoneAddress()Ljava/util/List;

    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 21
    const/4 v3, 0x1

    .line 22
    new-array v4, v3, [Ljava/lang/Object;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object v5

    .line 28
    aput-object v5, v4, v0

    .line 30
    const-string v5, "[getTravelSharePhoneAddress]userPhones:{?}"

    .line 32
    invoke-static {v2, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 38
    move-result v4

    .line 39
    new-array v5, v4, [Lcom/autonavi/amapauto/user/UserPhone;

    .line 41
    const/4 v6, 0x0

    .line 42
    :goto_0
    if-ge v6, v4, :cond_0

    .line 44
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Lcom/autonavi/amapauto/user/UserPhone;

    .line 50
    aput-object v7, v5, v6

    .line 52
    new-array v8, v3, [Ljava/lang/Object;

    .line 54
    invoke-virtual {v7}, Lcom/autonavi/amapauto/user/UserPhone;->getPhone()Ljava/lang/String;

    .line 57
    move-result-object v7

    .line 58
    aput-object v7, v8, v0

    .line 60
    const-string v7, "[getTravelSharePhoneAddress]getPhone:{?}"

    .line 62
    invoke-static {v2, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    new-array v7, v3, [Ljava/lang/Object;

    .line 67
    aget-object v8, v5, v6

    .line 69
    invoke-virtual {v8}, Lcom/autonavi/amapauto/user/UserPhone;->getName()Ljava/lang/String;

    .line 72
    move-result-object v8

    .line 73
    aput-object v8, v7, v0

    .line 75
    const-string v8, "[getTravelSharePhoneAddress]getName:{?}"

    .line 77
    invoke-static {v2, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    new-array v7, v3, [Ljava/lang/Object;

    .line 82
    aget-object v8, v5, v6

    .line 84
    invoke-virtual {v8}, Lcom/autonavi/amapauto/user/UserPhone;->getIsHistory()Z

    .line 87
    move-result v8

    .line 88
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 91
    move-result-object v8

    .line 92
    aput-object v8, v7, v0

    .line 94
    const-string v8, "[getTravelSharePhoneAddress]getIsHistory:{?}"

    .line 96
    invoke-static {v2, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    new-array v7, v3, [Ljava/lang/Object;

    .line 101
    aget-object v8, v5, v6

    .line 103
    invoke-virtual {v8}, Lcom/autonavi/amapauto/user/UserPhone;->getPinyin()Ljava/lang/String;

    .line 106
    move-result-object v8

    .line 107
    aput-object v8, v7, v0

    .line 109
    const-string v8, "[getTravelSharePhoneAddress]getPinyin:{?}"

    .line 111
    invoke-static {v2, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    new-array v7, v3, [Ljava/lang/Object;

    .line 116
    aget-object v8, v5, v6

    .line 118
    invoke-virtual {v8}, Lcom/autonavi/amapauto/user/UserPhone;->getFirstLetter()Ljava/lang/String;

    .line 121
    move-result-object v8

    .line 122
    aput-object v8, v7, v0

    .line 124
    const-string v8, "[getTravelSharePhoneAddress]getFirstLetter:{?}"

    .line 126
    invoke-static {v2, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    add-int/lit8 v6, v6, 0x1

    .line 131
    goto :goto_0

    .line 132
    :cond_0
    return-object v5

    .line 133
    :cond_1
    const-string v1, "[getTravelSharePhoneAddress] getTravelSharePhoneAddress == null"

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    .line 137
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    const/4 v0, 0x0

    .line 141
    return-object v0
.end method

.method public static getUUID()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x9c43

    .line 8
    invoke-virtual {v0, v1}, Lse;->getStringValue(I)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    invoke-static {}, Lf30;->r()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object v0, v1, v2

    .line 24
    const-string v2, "GAdaAndroid"

    .line 26
    const-string v3, "deviceId ={?}"

    .line 28
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-object v0
.end method

.method public static getWifiStatus()I
    .locals 1

    .line 1
    invoke-static {}, Le30;->m()Le30;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Le30;->o()I

    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->switchWifiStatusToHmi(I)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static isInDysmorphismState()Z
    .locals 5

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lzm;->A:Ljava/lang/String;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    const-string v3, "GAdaAndroid"

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const-string v0, "isNeedForcedToSpecialScreen = true"

    .line 19
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    return v1

    .line 25
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    .line 28
    move-result-object v0

    .line 29
    const/16 v4, 0x2712

    .line 31
    invoke-virtual {v0, v4}, Lse;->getBooleanValue(I)Z

    .line 34
    move-result v0

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object v4

    .line 41
    aput-object v4, v1, v2

    .line 43
    const-string v2, "isInDysmorphismState={?}"

    .line 45
    invoke-static {v3, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return v0
.end method

.method public static isInMultiWindowMode(Landroid/app/Activity;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x18

    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 8
    invoke-static {p0}, Lwj;->a(Landroid/app/Activity;)Z

    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_2

    .line 14
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    .line 17
    move-result-object p0

    .line 18
    const/16 v0, 0x2741

    .line 20
    invoke-virtual {p0, v0}, Lse;->getIntValue(I)I

    .line 23
    move-result p0

    .line 24
    if-ne v2, p0, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v2, 0x0

    .line 28
    :cond_2
    :goto_0
    return v2
.end method

.method public static isLocationEnabled()Z
    .locals 6

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "location"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/location/LocationManager;

    .line 17
    const-string v1, "GAdaAndroid"

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 22
    const-string v0, "isLocationEnabled false  caz lm is null!!!"

    .line 24
    new-array v3, v2, [Ljava/lang/Object;

    .line 26
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return v2

    .line 30
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    const/16 v4, 0x1c

    .line 34
    const/4 v5, 0x1

    .line 35
    if-lt v3, v4, :cond_1

    .line 37
    new-array v3, v5, [Ljava/lang/Object;

    .line 39
    invoke-static {v0}, Lwu0;->a(Landroid/location/LocationManager;)Z

    .line 42
    move-result v4

    .line 43
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    move-result-object v4

    .line 47
    aput-object v4, v3, v2

    .line 49
    const-string v2, "isLocationEnabled:{?}"

    .line 51
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-static {v0}, Lwu0;->a(Landroid/location/LocationManager;)Z

    .line 57
    move-result v0

    .line 58
    return v0

    .line 59
    :cond_1
    const-string v1, "gps"

    .line 61
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 67
    const-string v1, "network"

    .line 69
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 75
    :cond_2
    const/4 v2, 0x1

    .line 76
    :cond_3
    return v2
.end method

.method public static jniGetCrusingDis()I
    .locals 1

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lse;->getCruisingDis()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static jniGetCurrentWifiChannel()I
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lpa;->f(Landroid/content/Context;)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static jniGetDeviceScreenHeight()I
    .locals 4

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lsi;->H()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v3

    .line 25
    aput-object v3, v1, v2

    .line 27
    const-string v2, "GAdaAndroid"

    .line 29
    const-string v3, "jniGetDeviceScreenHeight height:{?}"

    .line 31
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    return v0
.end method

.method public static jniGetDeviceScreenWidth()I
    .locals 4

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lsi;->I()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v3

    .line 25
    aput-object v3, v1, v2

    .line 27
    const-string v2, "GAdaAndroid"

    .line 29
    const-string v3, "jniGetDeviceScreenWidth width:{?}"

    .line 31
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    return v0
.end method

.method public static jniGetOilStatus()I
    .locals 1

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lse;->getOilType()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static jniGetSystemClock()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static jniGframeAnrTrigger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    aput-object p1, v0, v1

    .line 10
    const/4 v1, 0x2

    .line 11
    aput-object p2, v0, v1

    .line 13
    const-string v1, "GAdaAndroid"

    .line 15
    const-string v2, "jniGframeAnrTrigger {?} ,{?}, {?}"

    .line 17
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->gframeAnrTriggers:Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Los;

    .line 38
    if-eqz v1, :cond_0

    .line 40
    invoke-interface {v1, p0, p1, p2}, Los;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method

.method public static jniLoadScreenFlag()Z
    .locals 5

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "auto_config"

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lzm;->d()Lzm;

    .line 19
    move-result-object v1

    .line 20
    sget-object v3, Lzm;->r:Ljava/lang/String;

    .line 22
    invoke-virtual {v1, v3, v2}, Lzm;->e(Ljava/lang/String;I)I

    .line 25
    move-result v1

    .line 26
    const/4 v3, 0x1

    .line 27
    if-nez v1, :cond_0

    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    const-string v4, "FLAG_FULLSCREEN"

    .line 34
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 37
    move-result v0

    .line 38
    new-array v1, v3, [Ljava/lang/Object;

    .line 40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    move-result-object v3

    .line 44
    aput-object v3, v1, v2

    .line 46
    const-string v2, "GAdaAndroid"

    .line 48
    const-string v3, "loadScreenFlag isFullScreen={?}"

    .line 50
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    return v0
.end method

.method public static jniProcessSendQuit()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "GAdaAndroid"

    .line 6
    const-string v2, "jniProcessSendQuit"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lcom/autonavi/amapauto/jni/GAdaAndroid$d;

    .line 13
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid$d;-><init>()V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 19
    return-void
.end method

.method public static jniSendPayloadBuffer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    aput-object p1, v0, v1

    .line 10
    const-string v1, "GAdaAndroid"

    .line 12
    const-string v2, "jniSendPayloadBuffer signalId:{?}, payload:{?}"

    .line 14
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-static {}, Lse;->c()Lse;

    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Leq$a;

    .line 23
    filled-new-array {p0, p1}, [Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v1, p0}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 30
    const p0, 0xea6b

    .line 33
    invoke-virtual {v0, p0, v1}, Lse;->setOptionalValue(ILeq$a;)V

    .line 36
    return-void
.end method

.method public static jniSendSDLinksData(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v1, "GAdaAndroid"

    .line 9
    const-string v2, "jniSendSDLinksData sdLinks:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lse;->c()Lse;

    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Leq$a;

    .line 20
    invoke-direct {v1, p0}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 23
    const p0, 0xea65

    .line 26
    invoke-virtual {v0, p0, v1}, Lse;->setOptionalValue(ILeq$a;)V

    .line 29
    return-void
.end method

.method public static jniSetSystemUiLightMode(IZ)Z
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const-string v1, "GAdaAndroid"

    .line 20
    const-string v2, "jniSetSystemUiLightMode uiType:{?}, isLight"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lse;->c()Lse;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0, p1}, Lse;->setSystemUiLightMode(IZ)Z

    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public static jniSysTimeMillisGet()J
    .locals 2

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0xea63

    .line 8
    invoke-virtual {v0, v1}, Lse;->getOptionalValue(I)Leq$a;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Leq$a;->a()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v0}, Leq$a;->a()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Long;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 27
    move-result-wide v0

    .line 28
    return-wide v0

    .line 29
    :cond_0
    const-wide/16 v0, 0x0

    .line 31
    return-wide v0
.end method

.method public static killProcess()I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    const-string v1, "GAdaAndroid"

    .line 17
    const-string v3, "killProcess pid={?}"

    .line 19
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 29
    return v2
.end method

.method public static launchAuto()I
    .locals 2

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x2732

    .line 7
    invoke-virtual {v0, v1}, Lse;->getBooleanValue(I)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lrv;->H()Lrv;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lrv;->X()V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lrv;->W()V

    .line 28
    :goto_0
    const/4 v0, 0x0

    .line 29
    return v0
.end method

.method public static launchThirdAppActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p4

    .line 10
    move v6, p5

    .line 11
    invoke-virtual/range {v0 .. v6}, Lrv;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    return-void
.end method

.method public static moveTaskToBack()I
    .locals 6

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->F()Landroid/app/Activity;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const-string v2, "GAdaAndroid"

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 18
    const-string v4, " moveTaskToBack activity \u4e3anull "

    .line 20
    invoke-static {v2, v4, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 23
    return v1

    .line 24
    :cond_0
    const-string v4, "activity.moveTaskToBack"

    .line 26
    new-array v5, v3, [Ljava/lang/Object;

    .line 28
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 34
    return v3
.end method

.method public static native nativeAmapEncodeV2(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeCollectionData(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static native nativeCollectionDataDB(Ljava/lang/String;ILjava/lang/String;I)V
.end method

.method public static native nativeCollectionDataEx(Ljava/lang/String;ILjava/lang/String;I)V
.end method

.method public static native nativeCollectionDataMemory(Ljava/lang/String;ILjava/lang/String;I)V
.end method

.method public static native nativeGetColomboMsg(I)V
.end method

.method public static native nativeGetCurrentCityAdCode()I
.end method

.method public static native nativeGetCurrentPage()Ljava/lang/String;
.end method

.method public static native nativeGetGPSTime()J
.end method

.method public static native nativeGetNetworkTime()J
.end method

.method public static native nativeGetTime([I)V
.end method

.method public static native nativeGetUserDataPath()Ljava/lang/String;
.end method

.method public static native nativeIsActive()Z
.end method

.method public static native nativeIsMute()Z
.end method

.method public static native nativeIsNightMode()Z
.end method

.method public static native nativeNotifyCarTeamChanged(Ljava/lang/String;)V
.end method

.method public static native nativeOnActivityCreated()V
.end method

.method public static native nativeOnActivityLifecycleChanged(II)V
.end method

.method public static native nativeOnKeyDown(I)V
.end method

.method public static native nativeOnLayoutChange(III)V
.end method

.method public static native nativePushServerStartState(I)V
.end method

.method public static native nativeRequestPermissionsResult([I[I)V
.end method

.method public static native nativeSetFrontground(Z)V
.end method

.method public static nativeSetNetWorkState(I)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "GAdaAndroid"

    .line 13
    const-string v4, "begin nativeSetNetWorkState networkState:{?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v1, Leq$a;

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v4

    .line 24
    invoke-direct {v1, v4}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 27
    invoke-static {}, Lse;->c()Lse;

    .line 30
    move-result-object v4

    .line 31
    const v5, 0xea6d

    .line 34
    invoke-virtual {v4, v5, v1}, Lse;->setOptionalValue(ILeq$a;)V

    .line 37
    invoke-virtual {v1}, Leq$a;->b()Z

    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 43
    invoke-virtual {v1}, Leq$a;->a()Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Ljava/lang/Integer;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 52
    move-result p0

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeSetNetWorkStateV2(I)V

    .line 56
    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object p0

    .line 62
    aput-object p0, v0, v3

    .line 64
    const-string p0, "end nativeSetNetWorkState networkState:{?}"

    .line 66
    invoke-static {v2, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method private static native nativeSetNetWorkStateV2(I)V
.end method

.method public static native nativeSetSignalLevel(I)V
.end method

.method public static native nativeSetWifiState(Z)V
.end method

.method public static native nativeStartHook()V
.end method

.method public static native nativeStorageActionChange(ILjava/lang/String;)V
.end method

.method public static native nativeTurboDumpLogd(Ljava/lang/String;)V
.end method

.method public static native nativeUpdateAsset()V
.end method

.method public static naviOperationNotify(I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "GAdaAndroid"

    .line 13
    const-string v4, "naviOperationNotify type={?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-eqz p0, :cond_6

    .line 20
    if-eq p0, v0, :cond_5

    .line 22
    const/4 v1, 0x2

    .line 23
    if-eq p0, v1, :cond_3

    .line 25
    const/4 v1, 0x3

    .line 26
    if-eq p0, v1, :cond_2

    .line 28
    const/4 v1, 0x4

    .line 29
    if-eq p0, v1, :cond_1

    .line 31
    const/4 v0, 0x5

    .line 32
    if-eq p0, v0, :cond_0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-static {v3}, Lcz;->B(Z)V

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {v0}, Lcz;->B(Z)V

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    sput-boolean v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->isRestartGnss:Z

    .line 45
    invoke-static {}, Lzx;->h()Lzx;

    .line 48
    move-result-object p0

    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lzx;->x(Lzx$d;)V

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    new-instance p0, Lcom/autonavi/amapauto/jni/GAdaAndroid$f;

    .line 56
    invoke-direct {p0}, Lcom/autonavi/amapauto/jni/GAdaAndroid$f;-><init>()V

    .line 59
    sget-boolean v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->isRestartGnss:Z

    .line 61
    if-eqz v0, :cond_4

    .line 63
    const-wide/16 v0, 0x3e8

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    const-wide/16 v0, 0x0

    .line 68
    :goto_0
    invoke-static {p0, v0, v1}, Lbg0;->d(Ljava/lang/Runnable;J)V

    .line 71
    goto :goto_1

    .line 72
    :cond_5
    invoke-static {v3}, Lf;->o(Z)V

    .line 75
    goto :goto_1

    .line 76
    :cond_6
    invoke-static {v0}, Lf;->o(Z)V

    .line 79
    :goto_1
    return-void
.end method

.method public static notifyColomboMsg(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lef;->b(ILjava/lang/String;)V

    .line 4
    return-void
.end method

.method public static onDayNightChange(I)V
    .locals 4

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne p0, v1, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {v0, v1}, Lse;->notifyNightModeChange(Z)V

    .line 16
    new-array v0, v2, [Ljava/lang/Object;

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p0

    .line 22
    aput-object p0, v0, v3

    .line 24
    const-string p0, "GAdaAndroid"

    .line 26
    const-string v1, "onDayNightChange mode:{?}"

    .line 28
    invoke-static {p0, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static onLocServiceStart()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "GAdaAndroid"

    .line 6
    const-string v2, "onLocServiceStart"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->serviceStartListener:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lqs;

    .line 29
    if-eqz v1, :cond_0

    .line 31
    invoke-interface {v1}, Lqs;->c()V

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public static onLocServiceStop()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "GAdaAndroid"

    .line 6
    const-string v2, "onLocServiceStop"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->serviceStartListener:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lqs;

    .line 29
    if-eqz v1, :cond_0

    .line 31
    invoke-interface {v1}, Lqs;->a()V

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public static onNaviStatusChange(I)V
    .locals 2

    .line 1
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lhm0;->n(I)V

    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p0, v0, :cond_1

    .line 11
    const/16 v1, 0x137

    .line 13
    if-eq p0, v1, :cond_0

    .line 15
    packed-switch p0, :pswitch_data_0

    .line 18
    goto :goto_0

    .line 19
    :pswitch_0
    invoke-static {}, Lob;->e()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 25
    new-instance v0, Landroid/content/Intent;

    .line 27
    const-string v1, "com.autonavi.amapauto.AUTO_WIDGET_AUDIO_UI_SWITCH"

    .line 29
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lrv;->H()Lrv;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lrv;->L()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-static {}, Lrv;->H()Lrv;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Lf30;->F()V

    .line 58
    invoke-static {}, Lrv;->H()Lrv;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1, v0}, Lrv;->l0(Z)V

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-static {}, Lrv;->H()Lrv;

    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lrv;->F()Landroid/app/Activity;

    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_2

    .line 76
    invoke-static {}, Lrv;->H()Lrv;

    .line 79
    move-result-object v0

    .line 80
    invoke-static {}, Lrv;->H()Lrv;

    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lrv;->F()Landroid/app/Activity;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lrv;->r(Landroid/content/Intent;)V

    .line 95
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->dispatchNaviStatusChange(I)V

    .line 98
    return-void

    .line 99
    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static onPushServiceStart()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "GAdaAndroid"

    .line 6
    const-string v2, "onPushServiceStart"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->serviceStartListener:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lqs;

    .line 29
    if-eqz v1, :cond_0

    .line 31
    invoke-interface {v1}, Lqs;->b()V

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public static playSystemClick()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "GAdaAndroid"

    .line 6
    const-string v2, "playSystemClick"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lse;->playClickSound()Z

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public static readSystemFile(Ljava/lang/String;)[B
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v1, "GAdaAndroid"

    .line 9
    const-string v2, "readSystemFile fileName:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-instance v0, Lpf0;

    .line 16
    invoke-direct {v0}, Lpf0;-><init>()V

    .line 19
    invoke-virtual {v0, p0}, Lpf0;->c(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lse;->c()Lse;

    .line 25
    move-result-object p0

    .line 26
    new-instance v1, Leq$a;

    .line 28
    invoke-direct {v1, v0}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 31
    const v2, 0xea72

    .line 34
    invoke-virtual {p0, v2, v1}, Lse;->setOptionalValue(ILeq$a;)V

    .line 37
    invoke-virtual {v0}, Lpf0;->a()[B

    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static removeGframeAnrTriggerObserver(Los;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->gframeAnrTriggers:Ljava/util/List;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->gframeAnrTriggers:Ljava/util/List;

    .line 11
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    return-void
.end method

.method public static removeNaviStatusChangeListener(Ljs;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->naviStatusChangeListeners:Ljava/util/List;

    .line 5
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->naviStatusChangeListeners:Ljava/util/List;

    .line 13
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    return-void
.end method

.method public static removeNetworkListener()V
    .locals 1

    .line 1
    invoke-static {}, Le30;->m()Le30;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Le30;->s()V

    .line 8
    return-void
.end method

.method public static removeServiceStartListener(Lqs;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->serviceStartListener:Ljava/util/List;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->serviceStartListener:Ljava/util/List;

    .line 11
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    return-void
.end method

.method public static requestPermissions([I)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "GAdaAndroid"

    .line 6
    const-string v3, "requestPermissions"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->splitCameraPermissionName()V

    .line 14
    if-eqz p0, :cond_4

    .line 16
    array-length v1, p0

    .line 17
    if-lez v1, :cond_4

    .line 19
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    const/16 v3, 0x17

    .line 23
    if-lt v1, v3, :cond_1

    .line 25
    array-length v1, p0

    .line 26
    new-array v1, v1, [Ljava/lang/String;

    .line 28
    :goto_0
    array-length v2, p0

    .line 29
    if-ge v0, v2, :cond_0

    .line 31
    sget-object v2, Lcom/autonavi/amapauto/jni/GAdaAndroid;->PERMISSIONS:[Ljava/lang/String;

    .line 33
    aget v3, p0, v0

    .line 35
    aget-object v2, v2, v3

    .line 37
    aput-object v2, v1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0, v1}, Lse;->requestPermissions([Ljava/lang/String;)V

    .line 49
    goto :goto_3

    .line 50
    :cond_1
    array-length v1, p0

    .line 51
    new-array v1, v1, [I

    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_1
    array-length v4, p0

    .line 55
    if-ge v3, v4, :cond_3

    .line 57
    aget v4, p0, v3

    .line 59
    invoke-static {v4}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->checkPermission(I)Z

    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_2

    .line 65
    const/4 v4, 0x0

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    const/4 v4, -0x1

    .line 68
    :goto_2
    aput v4, v1, v3

    .line 70
    const/4 v4, 0x3

    .line 71
    new-array v4, v4, [Ljava/lang/Object;

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v5

    .line 77
    aput-object v5, v4, v0

    .line 79
    aget v5, p0, v3

    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v5

    .line 85
    const/4 v6, 0x1

    .line 86
    aput-object v5, v4, v6

    .line 88
    aget v5, v1, v3

    .line 90
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object v5

    .line 94
    const/4 v6, 0x2

    .line 95
    aput-object v5, v4, v6

    .line 97
    const-string v5, "requestPermissions i:{?};permissionType:{?};grantResult:{?}"

    .line 99
    invoke-static {v2, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    invoke-static {p0, v1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeRequestPermissionsResult([I[I)V

    .line 108
    goto :goto_3

    .line 109
    :cond_4
    const-string p0, "requestPermissions permissionTypes==null || permissionTypes.length <= 0,cancle"

    .line 111
    new-array v0, v0, [Ljava/lang/Object;

    .line 113
    invoke-static {v2, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :goto_3
    return-void
.end method

.method public static requestPermissionsByAdaptor([Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "GAdaAndroid"

    .line 6
    const-string v3, "requestPermissionsByAdaptor"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    if-eqz p0, :cond_2

    .line 16
    array-length v1, p0

    .line 17
    if-gtz v1, :cond_0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :try_start_0
    array-length v1, p0

    .line 21
    if-lez v1, :cond_1

    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    const/16 v3, 0x17

    .line 27
    if-lt v1, v3, :cond_1

    .line 29
    invoke-static {}, Lrv;->H()Lrv;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lrv;->F()Landroid/app/Activity;

    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 39
    const-string v3, "requestPermissionsByAdaptor, permissionTypes:{?}"

    .line 41
    const/4 v4, 0x1

    .line 42
    new-array v4, v4, [Ljava/lang/Object;

    .line 44
    aget-object v5, p0, v0

    .line 46
    aput-object v5, v4, v0

    .line 48
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v4, "requestPermissionsByAdaptor, permissionTypes:"

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    aget-object v4, p0, v0

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v3, 0x2

    .line 74
    invoke-static {v1, p0, v3}, Li1;->a(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p0

    .line 79
    const-string v1, "Exception"

    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    .line 83
    invoke-static {v2, v1, p0, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    :goto_1
    new-array p0, v0, [Ljava/lang/Object;

    .line 89
    const-string v0, "requestPermissionsByAdaptor permissionTypes == null || permissionTypes.length <= 0"

    .line 91
    invoke-static {v2, v0, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public static requestPermissionsResult([Ljava/lang/String;[I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "GAdaAndroid"

    .line 8
    const-string v4, "requestPermissionsResult"

    .line 10
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    if-eqz v0, :cond_8

    .line 18
    if-nez p1, :cond_0

    .line 20
    goto/16 :goto_4

    .line 22
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->splitCameraPermissionName()V

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    array-length v5, v0

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    :goto_0
    if-ge v6, v5, :cond_4

    .line 40
    aget-object v8, v0, v6

    .line 42
    sget-object v9, Lcom/autonavi/amapauto/jni/GAdaAndroid;->PERMISSIONS:[Ljava/lang/String;

    .line 44
    array-length v10, v9

    .line 45
    const/4 v11, 0x0

    .line 46
    const/4 v12, 0x0

    .line 47
    :goto_1
    if-ge v11, v10, :cond_3

    .line 49
    aget-object v13, v9, v11

    .line 51
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v14

    .line 55
    if-eqz v14, :cond_2

    .line 57
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v14

    .line 61
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {}, Lib;->k()Z

    .line 67
    move-result v14

    .line 68
    if-eqz v14, :cond_1

    .line 70
    aget v14, p1, v7

    .line 72
    const/4 v15, -0x1

    .line 73
    if-ne v14, v15, :cond_1

    .line 75
    invoke-static {v13}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 78
    move-result v13

    .line 79
    if-nez v13, :cond_1

    .line 81
    const/4 v13, -0x2

    .line 82
    aput v13, p1, v7

    .line 84
    :cond_1
    aget v13, p1, v7

    .line 86
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v13

    .line 90
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 95
    add-int/lit8 v11, v11, 0x1

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 100
    add-int/lit8 v6, v6, 0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    const-string v5, "requestPermissionsResult permissionTypes="

    .line 110
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v5, ";grantResults_filt="

    .line 122
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    new-array v5, v1, [Ljava/lang/Object;

    .line 138
    invoke-static {v3, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 144
    move-result v0

    .line 145
    if-gtz v0, :cond_5

    .line 147
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 150
    move-result v0

    .line 151
    if-gtz v0, :cond_5

    .line 153
    const-string v0, "requestPermissionsResult permissionTypes.size() <= 0 && grantResults_filt.size()<= 0\uff0creturn"

    .line 155
    new-array v5, v1, [Ljava/lang/Object;

    .line 157
    invoke-static {v3, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 163
    move-result v0

    .line 164
    new-array v0, v0, [I

    .line 166
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 169
    move-result v3

    .line 170
    new-array v3, v3, [I

    .line 172
    const/4 v5, 0x0

    .line 173
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 176
    move-result v6

    .line 177
    if-ge v5, v6, :cond_6

    .line 179
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    move-result-object v6

    .line 183
    check-cast v6, Ljava/lang/Integer;

    .line 185
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 188
    move-result v6

    .line 189
    aput v6, v0, v5

    .line 191
    add-int/lit8 v5, v5, 0x1

    .line 193
    goto :goto_2

    .line 194
    :cond_6
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 197
    move-result v2

    .line 198
    if-ge v1, v2, :cond_7

    .line 200
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Ljava/lang/Integer;

    .line 206
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 209
    move-result v2

    .line 210
    aput v2, v3, v1

    .line 212
    add-int/lit8 v1, v1, 0x1

    .line 214
    goto :goto_3

    .line 215
    :cond_7
    invoke-static {v0, v3}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeRequestPermissionsResult([I[I)V

    .line 218
    return-void

    .line 219
    :cond_8
    :goto_4
    const-string v0, "requestPermissionsResult permissions == null || grantResults == null"

    .line 221
    new-array v1, v1, [Ljava/lang/Object;

    .line 223
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    return-void
.end method

.method public static saveScreenFlag(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "GAdaAndroid"

    .line 13
    const-string v3, "saveScreenFlag isFullScreen={?}"

    .line 15
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lrv;->H()Lrv;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    const-string v3, "auto_config"

    .line 28
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 35
    move-result-object v0

    .line 36
    const-string v3, "FLAG_FULLSCREEN"

    .line 38
    invoke-interface {v0, v3, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    invoke-static {}, Lrv;->H()Lrv;

    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lrv;->F()Landroid/app/Activity;

    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->updateFullScreenBySave(Landroid/app/Activity;)V

    .line 55
    const-string p0, "saveScreenFlag end"

    .line 57
    new-array v0, v2, [Ljava/lang/Object;

    .line 59
    invoke-static {v1, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public static setPushServerStartState(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativePushServerStartState(I)V

    .line 4
    return-void
.end method

.method private static setWindowScreenFlag(Landroid/app/Activity;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "GAdaAndroid"

    .line 13
    const-string v3, "setWindowScreenFlag isFullScreen:{?}"

    .line 15
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    if-nez p0, :cond_0

    .line 21
    const-string p0, " activity \u4e3anull "

    .line 23
    new-array p1, v2, [Ljava/lang/Object;

    .line 25
    invoke-static {v1, p0, v0, p1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    move-result-object v3

    .line 33
    if-nez v3, :cond_1

    .line 35
    const-string p0, " activity.getWindow() \u4e3anull "

    .line 37
    new-array p1, v2, [Ljava/lang/Object;

    .line 39
    invoke-static {v1, p0, v0, p1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 42
    return-void

    .line 43
    :cond_1
    const/16 v0, 0x400

    .line 45
    if-eqz p1, :cond_2

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 62
    :goto_0
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const-string v3, "GAdaAndroid"

    .line 9
    const-string v4, "shouldShowRequestPermissionRationale permission:{?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v4, "shouldShowRequestPermissionRationale permission:"

    .line 21
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    const/16 v4, 0x17

    .line 38
    if-lt v1, v4, :cond_0

    .line 40
    invoke-static {}, Lrv;->H()Lrv;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lrv;->F()Landroid/app/Activity;

    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    .line 50
    invoke-static {}, Lrv;->H()Lrv;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lrv;->F()Landroid/app/Activity;

    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1, p0}, Lk1;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 61
    move-result p0

    .line 62
    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    move-result-object v1

    .line 68
    aput-object v1, v0, v2

    .line 70
    const-string v1, "shouldShowRequestPermissionRationale shouldShowResult:{?}"

    .line 72
    invoke-static {v3, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    const-string v1, "shouldShowRequestPermissionRationale shouldShowResult:"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return p0

    .line 96
    :cond_0
    return v0
.end method

.method public static showToast(Ljava/lang/String;IZZIII)V
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    aput-object v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object v2

    .line 19
    aput-object v2, v0, v1

    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object v2

    .line 26
    aput-object v2, v0, v1

    .line 28
    const/4 v1, 0x4

    .line 29
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v2

    .line 33
    aput-object v2, v0, v1

    .line 35
    const/4 v1, 0x5

    .line 36
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v2

    .line 40
    aput-object v2, v0, v1

    .line 42
    const/4 v1, 0x6

    .line 43
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v2

    .line 47
    aput-object v2, v0, v1

    .line 49
    const-string v1, "GAdaAndroid"

    .line 51
    const-string v2, "showToast: content={?}, duration={?}, useSystem={?}, isNight={?}, gravity={?}, xoffset={?}, yoffset={?}"

    .line 53
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static/range {p0 .. p6}, Lmh0;->a(Ljava/lang/CharSequence;IZZIII)V

    .line 59
    return-void
.end method

.method private static splitCameraPermissionName()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "android.permission"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ".CAMERA"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/autonavi/amapauto/jni/GAdaAndroid;->PERMISSIONS:[Ljava/lang/String;

    .line 22
    const/4 v2, 0x4

    .line 23
    aput-object v0, v1, v2

    .line 25
    return-void
.end method

.method private static switchWifiStatusToHmi(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public static updateFullScreenBySave(Landroid/app/Activity;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "GAdaAndroid"

    .line 6
    const-string v3, "updateFullScreenBySave"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    const-string v3, "auto_config"

    .line 21
    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 24
    move-result-object v1

    .line 25
    const-string v3, "KEY_IS_FIRST_STARTUP"

    .line 27
    const/4 v4, 0x1

    .line 28
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 31
    move-result v5

    .line 32
    new-array v4, v4, [Ljava/lang/Object;

    .line 34
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object v6

    .line 38
    aput-object v6, v4, v0

    .line 40
    const-string v6, "loadScreenFlag isFirstartUp={?}"

    .line 42
    invoke-static {v2, v6, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    if-eqz v5, :cond_0

    .line 47
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    if-eqz p0, :cond_2

    .line 60
    invoke-static {}, Lse;->c()Lse;

    .line 63
    move-result-object v1

    .line 64
    const/16 v3, 0x2749

    .line 66
    invoke-virtual {v1, v3}, Lse;->getBooleanValue(I)Z

    .line 69
    move-result v1

    .line 70
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->isInMultiWindowMode(Landroid/app/Activity;)Z

    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_1

    .line 76
    if-eqz v1, :cond_1

    .line 78
    const-string v1, "activity isInMultiWindowMode = true"

    .line 80
    new-array v3, v0, [Ljava/lang/Object;

    .line 82
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-static {p0, v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->setWindowScreenFlag(Landroid/app/Activity;Z)V

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->jniLoadScreenFlag()Z

    .line 92
    move-result v0

    .line 93
    invoke-static {p0, v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->setWindowScreenFlag(Landroid/app/Activity;Z)V

    .line 96
    :cond_2
    :goto_0
    return-void
.end method

.method public static writeSystemFile(Ljava/lang/String;[B)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    new-instance v1, Ljava/lang/String;

    .line 9
    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 15
    const-string v1, "GAdaAndroid"

    .line 17
    const-string v3, "writeSystemFile fileName:{?} data:{?}"

    .line 19
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    new-instance v0, Lpf0;

    .line 24
    invoke-direct {v0}, Lpf0;-><init>()V

    .line 27
    invoke-virtual {v0, p1}, Lpf0;->b([B)V

    .line 30
    invoke-virtual {v0, p0}, Lpf0;->c(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lse;->c()Lse;

    .line 36
    move-result-object p0

    .line 37
    new-instance p1, Leq$a;

    .line 39
    invoke-direct {p1, v0}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 42
    const v0, 0xea71

    .line 45
    invoke-virtual {p0, v0, p1}, Lse;->setOptionalValue(ILeq$a;)V

    .line 48
    return v2
.end method
