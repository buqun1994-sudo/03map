.class public Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IssueClusionNative"

.field private static sIssueClusionInterface:Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative$a;


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

.method public static issueClusionUserEventNotify(I)V
    .locals 3

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
    const-string v1, "IssueClusionNative"

    .line 13
    const-string v2, "issueClusionUserEventNotify event={?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative;->sIssueClusionInterface:Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative$a;

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p0}, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative$a;->b(I)V

    .line 25
    :cond_0
    return-void
.end method

.method public static jniReqIssueClusionPopupInfo()Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionPopupInfo;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "IssueClusionNative"

    .line 6
    const-string v3, "jniReqIssueClusionPopupInfo"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v1, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative;->sIssueClusionInterface:Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative$a;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const-string v1, "jniReqIssueClusionPopupInfo sIssueClusionInterface.onReqIssueClusionPopupInfo"

    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    sget-object v0, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative;->sIssueClusionInterface:Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative$a;

    .line 24
    invoke-interface {v0}, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative$a;->a()Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionPopupInfo;

    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    return-object v0
.end method

.method public static setIIssueClusionPopupInfoInterface(Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative$a;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative;->sIssueClusionInterface:Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative$a;

    .line 3
    return-void
.end method
