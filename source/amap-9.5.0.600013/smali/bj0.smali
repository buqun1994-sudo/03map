.class public abstract Lbj0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbj0$f;
    }
.end annotation


# static fields
.field public static final a:[Llf$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Llf$c;

    .line 4
    new-instance v1, Lbj0$a;

    .line 6
    invoke-direct {v1}, Lbj0$a;-><init>()V

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v1, v0, v2

    .line 12
    new-instance v1, Lbj0$b;

    .line 14
    invoke-direct {v1}, Lbj0$b;-><init>()V

    .line 17
    const/4 v2, 0x1

    .line 18
    aput-object v1, v0, v2

    .line 20
    new-instance v1, Lbj0$c;

    .line 22
    invoke-direct {v1}, Lbj0$c;-><init>()V

    .line 25
    const/4 v2, 0x2

    .line 26
    aput-object v1, v0, v2

    .line 28
    new-instance v1, Lbj0$d;

    .line 30
    invoke-direct {v1}, Lbj0$d;-><init>()V

    .line 33
    const/4 v2, 0x3

    .line 34
    aput-object v1, v0, v2

    .line 36
    new-instance v1, Lbj0$e;

    .line 38
    invoke-direct {v1}, Lbj0$e;-><init>()V

    .line 41
    const/4 v2, 0x4

    .line 42
    aput-object v1, v0, v2

    .line 44
    sput-object v0, Lbj0;->a:[Llf$c;

    .line 46
    return-void
.end method

.method public static synthetic a(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lbj0;->b(ZLjava/lang/String;)V

    .line 4
    return-void
.end method

.method public static b(ZLjava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

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
    const/4 v1, 0x1

    .line 12
    aput-object p1, v0, v1

    .line 14
    const-string v3, "UsbDeviceChangedFuncRepository"

    .line 16
    const-string v4, "nativeStorageActionChange, isMounted:{?}, path:{?}"

    .line 18
    invoke-static {v3, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    if-eqz p0, :cond_0

    .line 23
    :try_start_0
    invoke-static {v1, p1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeStorageActionChange(ILjava/lang/String;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, -0x1

    .line 28
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeStorageActionChange(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string p1, "nativeStorageActionChange exception:"

    .line 35
    new-array v0, v2, [Ljava/lang/Object;

    .line 37
    invoke-static {v3, p1, p0, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 40
    :goto_0
    return-void
.end method
