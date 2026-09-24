.class public Lcj0$f;
.super Lcj0$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcj0$k;-><init>(Lcj0$b;)V

    .line 5
    return-void
.end method


# virtual methods
.method public l()Ljava/util/List;
    .locals 9

    .line 1
    const-string v0, "UsbDiskPathFuncRepository"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    .line 8
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    move-result-object v4

    .line 12
    const-string v5, "get"

    .line 14
    new-array v6, v1, [Ljava/lang/Class;

    .line 16
    const-class v7, Ljava/lang/String;

    .line 18
    aput-object v7, v6, v2

    .line 20
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    move-result-object v4

    .line 24
    new-array v5, v1, [Ljava/lang/Object;

    .line 26
    const-string v6, "hazens.svup.path"

    .line 28
    aput-object v6, v5, v2

    .line 30
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    const-string v3, "getUsbPath, SystemProperties.get(hazens.svup.path), ret={?}"

    .line 38
    new-array v5, v1, [Ljava/lang/Object;

    .line 40
    aput-object v4, v5, v2

    .line 42
    invoke-static {v0, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception v3

    .line 47
    goto :goto_0

    .line 48
    :catch_1
    move-exception v4

    .line 49
    move-object v8, v4

    .line 50
    move-object v4, v3

    .line 51
    move-object v3, v8

    .line 52
    :goto_0
    const-string v5, "getUsbPath, SystemProperties.get(hazens.svup.path) Exception:"

    .line 54
    new-array v6, v2, [Ljava/lang/Object;

    .line 56
    invoke-static {v0, v5, v3, v6}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 59
    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 61
    aput-object v4, v1, v2

    .line 63
    const-string v2, "getUsbPath, ret={?}"

    .line 65
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method

.method public varargs p([Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
