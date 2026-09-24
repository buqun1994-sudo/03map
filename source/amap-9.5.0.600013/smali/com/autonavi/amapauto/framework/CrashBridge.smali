.class public Lcom/autonavi/amapauto/framework/CrashBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/autonavi/amapauto/framework/CrashBridge;->a:Z

    .line 4
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/autonavi/amapauto/framework/CrashBridge;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/autonavi/amapauto/framework/CrashBridge;->nativeGetCrash()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 12
    return-object v0
.end method

.method public static native nativeGetCrash()Ljava/lang/String;
.end method
