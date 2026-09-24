.class public Lcom/amap/location/sdk/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/amap/location/sdk/fusion/ILocationAosProvider;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/amap/location/sdk/j/a;->a:Lcom/amap/location/sdk/fusion/ILocationAosProvider;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Lcom/amap/location/sdk/fusion/ILocationAosProvider;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const-string v0, "com.autonavi.jni.server.aos.ServerkeyNative"

    const-string v1, "amapEncode"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    new-array p0, v2, [Ljava/lang/Class;

    .line 3
    const-class v2, Ljava/lang/String;

    aput-object v2, p0, v4

    const/4 v2, 0x0

    .line 4
    :try_start_1
    invoke-static {v0, v1, v3, p0}, Lcom/amap/location/support/util/ReflectUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    nop

    move-object p0, v2

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method public static a(Lcom/amap/location/sdk/fusion/ILocationAosProvider;)V
    .locals 0

    .line 11
    sput-object p0, Lcom/amap/location/sdk/j/a;->a:Lcom/amap/location/sdk/fusion/ILocationAosProvider;

    .line 12
    new-instance p0, Lcom/amap/location/sdk/j/a$1;

    invoke-direct {p0}, Lcom/amap/location/sdk/j/a$1;-><init>()V

    invoke-static {p0}, Lcom/amap/location/support/header/AosEncrypt;->setAosEncryptProvider(Lcom/amap/location/support/header/AosEncrypt$IAosEncryptProvider;)V

    return-void
.end method

.method public static a([B)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 6
    :cond_0
    sget-object v1, Lcom/amap/location/sdk/j/a;->a:Lcom/amap/location/sdk/fusion/ILocationAosProvider;

    if-eqz v1, :cond_1

    .line 7
    :try_start_0
    invoke-interface {v1, p0}, Lcom/amap/location/sdk/fusion/ILocationAosProvider;->a([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    const-string v1, "com.autonavi.jni.server.aos.ServerkeyNative"

    const-string v2, "amapEncodeBinary"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    new-array p0, v3, [Ljava/lang/Class;

    .line 8
    const-class v3, [B

    aput-object v3, p0, v5

    .line 9
    :try_start_1
    invoke-static {v1, v2, v4, p0}, Lcom/amap/location/support/util/ReflectUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    nop

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    move-object v0, p0

    check-cast v0, [B

    :goto_1
    return-object v0
.end method
