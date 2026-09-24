.class public final Lcom/autonavi/common/tool/sign/Sign;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static signInfo:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/common/tool/b;->O()V

    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/autonavi/common/tool/sign/Sign;->signInfo:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native checkPackageSign(Ljava/lang/String;)Z
.end method

.method public static checkSign(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/common/tool/sign/Sign;->signInfo:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {p0}, Lcom/autonavi/common/tool/sign/Sign;->getPackageSign(Landroid/content/Context;)V

    .line 12
    :cond_0
    sget-object p0, Lcom/autonavi/common/tool/sign/Sign;->signInfo:Ljava/lang/String;

    .line 14
    invoke-static {p0}, Lcom/autonavi/common/tool/sign/Sign;->checkPackageSign(Ljava/lang/String;)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method private static getPackageSign(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    const/16 v1, 0x40

    .line 11
    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 14
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 17
    const/4 v0, 0x0

    .line 18
    aget-object p0, p0, v0

    .line 20
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lk10;->c([B)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    sput-object p0, Lcom/autonavi/common/tool/sign/Sign;->signInfo:Ljava/lang/String;

    .line 30
    return-void

    .line 31
    :catch_0
    const-string p0, "getPackageSign error"

    .line 33
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public native sign(Ljava/lang/String;)Ljava/lang/String;
.end method
