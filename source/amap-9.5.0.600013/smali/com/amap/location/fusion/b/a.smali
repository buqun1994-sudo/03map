.class public Lcom/amap/location/fusion/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "com.amap.bundle.network.request.param.NetworkParam"

    .line 3
    const-string v1, "getSession"

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {v0, v1}, Lcom/amap/location/support/util/ReflectUtils;->invokeVoidParameterStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    nop

    .line 12
    move-object v0, v2

    .line 13
    :goto_0
    if-nez v0, :cond_0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    :goto_1
    return-object v2
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "com.amap.bundle.network.request.param.NetworkParam"

    .line 3
    const-string v1, "getSpm"

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {v0, v1}, Lcom/amap/location/support/util/ReflectUtils;->invokeVoidParameterStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    nop

    .line 12
    move-object v0, v2

    .line 13
    :goto_0
    if-nez v0, :cond_0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    :goto_1
    return-object v2
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "com.autonavi.server.aos.serverkey"

    .line 3
    const-string v1, "getAosChannel"

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Lcom/amap/location/support/util/ReflectUtils;->invokeVoidParameterStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_0

    .line 13
    const-string v0, "amap7a"

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    :goto_1
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "com.amap.bundle.network.request.param.NetworkParam"

    .line 3
    const-string v1, "getDip"

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Lcom/amap/location/support/util/ReflectUtils;->invokeVoidParameterStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_0

    .line 13
    const-string v0, ""

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    :goto_1
    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "com.amap.bundle.network.request.param.NetworkParam"

    .line 3
    const-string v1, "getDiv"

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Lcom/amap/location/support/util/ReflectUtils;->invokeVoidParameterStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_0

    .line 13
    const-string v0, ""

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    :goto_1
    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "com.amap.bundle.network.request.param.NetworkParam"

    .line 3
    const-string v1, "getDibv"

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Lcom/amap/location/support/util/ReflectUtils;->invokeVoidParameterStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_0

    .line 13
    const-string v0, ""

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    :goto_1
    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "com.amap.bundle.network.request.param.NetworkParam"

    .line 3
    const-string v1, "getDic"

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Lcom/amap/location/support/util/ReflectUtils;->invokeVoidParameterStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_0

    .line 13
    const-string v0, ""

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    :goto_1
    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "com.amap.bundle.network.request.param.NetworkParam"

    .line 3
    const-string v1, "getMac"

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Lcom/amap/location/support/util/ReflectUtils;->invokeVoidParameterStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_0

    .line 13
    const-string v0, ""

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    :goto_1
    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "com.amap.bundle.network.request.param.NetworkParam"

    .line 3
    const-string v1, "getIsn"

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Lcom/amap/location/support/util/ReflectUtils;->invokeVoidParameterStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_0

    .line 13
    const-string v0, ""

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    :goto_1
    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "com.amap.bundle.network.request.param.NetworkParam"

    .line 3
    const-string v1, "getCifa"

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Lcom/amap/location/support/util/ReflectUtils;->invokeVoidParameterStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_0

    .line 13
    const-string v0, ""

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    :goto_1
    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "com.amap.bundle.network.request.param.NetworkParam"

    .line 3
    const-string v1, "getTaobaoID"

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Lcom/amap/location/support/util/ReflectUtils;->invokeVoidParameterStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_0

    .line 13
    const-string v0, ""

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    :goto_1
    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "com.amap.bundle.network.request.param.NetworkParam"

    .line 3
    const-string v1, "getAdiu"

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Lcom/amap/location/support/util/ReflectUtils;->invokeVoidParameterStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_0

    .line 13
    const-string v0, ""

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    :goto_1
    return-object v0
.end method
