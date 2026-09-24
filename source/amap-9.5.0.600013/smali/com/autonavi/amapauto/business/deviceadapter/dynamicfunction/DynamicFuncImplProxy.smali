.class public Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/IVehicleDynamicFunc;
.implements Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/IVoiceDynamicFunc;
.implements Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/ICommonDynamicFunc;


# static fields
.field private static final FUNC_IMPL_CLASS:Ljava/lang/String; = "com.autonavi.amapauto.business.deviceadapter.dynamicfunction.funcimpl.DynamicFuncImpl"

.field private static final TAG:Ljava/lang/String; = "DynamicFuncImplProxy"


# instance fields
.field private final mDynamicFuncClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mDynamicFuncObj:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->mDynamicFuncClass:Ljava/lang/Class;

    .line 6
    iput-object p2, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->mDynamicFuncObj:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public static build(Landroid/content/Context;Ljava/lang/String;)Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, "DynamicFuncImplProxy"

    .line 9
    const-string v4, "build DynamicFuncImpl from {?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 17
    move-result-object v1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v1, :cond_0

    .line 21
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 24
    move-result-object p0

    .line 25
    const-string p1, "getFilesDir is null"

    .line 27
    const-string v1, ""

    .line 29
    invoke-virtual {p0, v0, p1, v1}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->collectionResult(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    return-object v4

    .line 33
    :cond_0
    new-instance v1, Ldalvik/system/DexClassLoader;

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 46
    move-result-object v6

    .line 47
    invoke-direct {v1, p1, v5, v4, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 50
    :try_start_0
    const-string p1, "com.autonavi.amapauto.business.deviceadapter.dynamicfunction.funcimpl.DynamicFuncImpl"

    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 55
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    .line 58
    const-class v5, Landroid/content/Context;

    .line 60
    aput-object v5, v1, v2

    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 65
    move-result-object v1

    .line 66
    new-array v5, v0, [Ljava/lang/Object;

    .line 68
    aput-object p0, v5, v2

    .line 70
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    new-instance v0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;

    .line 76
    invoke-direct {v0, p1, p0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 79
    return-object v0

    .line 80
    :catch_0
    move-exception p0

    .line 81
    const-string p1, "newInstance DynamicFuncImplProxy exception:"

    .line 83
    new-array v1, v2, [Ljava/lang/Object;

    .line 85
    invoke-static {v3, p1, p0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 88
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 91
    move-result-object p1

    .line 92
    const-string v1, "newInstance exception"

    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p1, v0, v1, p0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->collectionResult(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    return-object v4

    .line 102
    :catch_1
    move-exception p0

    .line 103
    const-string p1, "loadClass DynamicFuncImplProxy exception"

    .line 105
    new-array v1, v2, [Ljava/lang/Object;

    .line 107
    invoke-static {v3, p1, p0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 110
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 113
    move-result-object p1

    .line 114
    const-string v1, "loadClass exception"

    .line 116
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p1, v0, v1, p0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->collectionResult(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    return-object v4
.end method

.method private varargs getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->mDynamicFuncClass:Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

    .line 8
    :catch_0
    move-exception p2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v1, "getMethod "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string p1, " exception"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x0

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    const-string v1, "DynamicFuncImplProxy"

    .line 36
    invoke-static {v1, p1, p2, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x3

    .line 44
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, p1, v2}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->collectionResult(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    throw p2
.end method

.method private varargs invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    const-string v0, "invoke "

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->mDynamicFuncObj:Ljava/lang/Object;

    .line 9
    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 13
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v3, " success"

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    const-string v3, ""

    .line 43
    const/4 v4, 0x2

    .line 44
    invoke-virtual {v1, v4, v2, v3}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->collectionResult(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-object p2

    .line 48
    :catch_0
    move-exception p2

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string p1, " exception"

    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    const/4 v0, 0x0

    .line 74
    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    const-string v1, "DynamicFuncImplProxy"

    .line 78
    invoke-static {v1, p1, p2, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 84
    move-result-object v0

    .line 85
    const/4 v1, 0x3

    .line 86
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v0, v1, p1, v2}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->collectionResult(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    throw p2
.end method


# virtual methods
.method public abandonFocus()V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "abandonFocus"

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Class;

    .line 6
    invoke-direct {p0, v0, v2}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 9
    move-result-object v0

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    return-void
.end method

.method public cleanup()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "cleanup"

    .line 4
    new-array v2, v0, [Ljava/lang/Class;

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 9
    move-result-object v1

    .line 10
    new-array v2, v0, [Ljava/lang/Object;

    .line 12
    invoke-direct {p0, v1, v2}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Boolean;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :catch_0
    return v0
.end method

.method public getAudioStreamType()I
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getAudioStreamType"

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Class;

    .line 6
    invoke-direct {p0, v0, v2}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 9
    move-result-object v0

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return v0

    .line 23
    :catch_0
    const/4 v0, -0x1

    .line 24
    return v0
.end method

.method public getHeadLampsOn()I
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getHeadLampsOn"

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Class;

    .line 6
    invoke-direct {p0, v0, v2}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 9
    move-result-object v0

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return v0

    .line 23
    :catch_0
    const/4 v0, -0x1

    .line 24
    return v0
.end method

.method public getSystemMaxVolume()I
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getSystemMaxVolume"

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Class;

    .line 6
    invoke-direct {p0, v0, v2}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 9
    move-result-object v0

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return v0

    .line 23
    :catch_0
    const/4 v0, -0x1

    .line 24
    return v0
.end method

.method public getSystemVolume()I
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getSystemVolume"

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Class;

    .line 6
    invoke-direct {p0, v0, v2}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 9
    move-result-object v0

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return v0

    .line 23
    :catch_0
    const/4 v0, -0x1

    .line 24
    return v0
.end method

.method public getUsbUpdataPath()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "getUsbUpdataPath"

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Class;

    .line 6
    invoke-direct {p0, v0, v2}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 9
    move-result-object v0

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object v0

    .line 19
    :catch_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public requestFocus(II)I
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    const-string v1, "requestFocus"

    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [Ljava/lang/Class;

    .line 7
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 9
    const/4 v5, 0x0

    .line 10
    aput-object v4, v3, v5

    .line 12
    const/4 v6, 0x1

    .line 13
    aput-object v4, v3, v6

    .line 15
    invoke-direct {p0, v1, v3}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    move-result-object v1

    .line 19
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v2, v5

    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p1

    .line 31
    aput-object p1, v2, v6

    .line 33
    invoke-direct {p0, v1, v2}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/lang/Integer;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return p1

    .line 44
    :catch_0
    return v0
.end method

.method public setAutoProxy(Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/IAutoProxy;)V
    .locals 7

    .line 1
    const-string v0, "setAutoProxy exception"

    .line 3
    const-string v1, "DynamicFuncImplProxy"

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string v3, "setAutoProxy"

    .line 8
    const/4 v4, 0x1

    .line 9
    new-array v5, v4, [Ljava/lang/Class;

    .line 11
    const-class v6, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/IAutoProxy;

    .line 13
    aput-object v6, v5, v2

    .line 15
    invoke-direct {p0, v3, v5}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    move-result-object v3

    .line 19
    new-array v4, v4, [Ljava/lang/Object;

    .line 21
    aput-object p1, v4, v2

    .line 23
    invoke-direct {p0, v3, v4}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    invoke-static {v1, v0, p1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception p1

    .line 35
    new-array v2, v2, [Ljava/lang/Object;

    .line 37
    invoke-static {v1, v0, p1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 40
    :goto_0
    return-void
.end method

.method public setSystemVolume(II)V
    .locals 8

    .line 1
    const-string v0, "setSystemVolume exception"

    .line 3
    const-string v1, "DynamicFuncImplProxy"

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string v3, "setSystemVolume"

    .line 8
    const/4 v4, 0x2

    .line 9
    new-array v5, v4, [Ljava/lang/Class;

    .line 11
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 13
    aput-object v6, v5, v2

    .line 15
    const/4 v7, 0x1

    .line 16
    aput-object v6, v5, v7

    .line 18
    invoke-direct {p0, v3, v5}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    move-result-object v3

    .line 22
    new-array v4, v4, [Ljava/lang/Object;

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p1

    .line 28
    aput-object p1, v4, v2

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p1

    .line 34
    aput-object p1, v4, v7

    .line 36
    invoke-direct {p0, v3, v4}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    new-array p2, v2, [Ljava/lang/Object;

    .line 43
    invoke-static {v1, v0, p1, p2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 46
    goto :goto_0

    .line 47
    :catch_1
    move-exception p1

    .line 48
    new-array p2, v2, [Ljava/lang/Object;

    .line 50
    invoke-static {v1, v0, p1, p2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 53
    :goto_0
    return-void
.end method

.method public startup()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "startup"

    .line 4
    new-array v2, v0, [Ljava/lang/Class;

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 9
    move-result-object v1

    .line 10
    new-array v2, v0, [Ljava/lang/Object;

    .line 12
    invoke-direct {p0, v1, v2}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Boolean;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :catch_0
    return v0
.end method
