.class public abstract Lcom/autonavi/core/network/inter/util/ReflectUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LENGTH:Ljava/lang/String; = "length"

.field private static final constructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final enumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum<",
            "*>;>;[",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final fieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static initLock:Ljava/lang/Object;

.field private static final readerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final writerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->newMap()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/Map;

    .line 7
    sput-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->readerMap:Ljava/util/Map;

    .line 9
    invoke-static {}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->newMap()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/Map;

    .line 15
    sput-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->writerMap:Ljava/util/Map;

    .line 17
    invoke-static {}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->newMap()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map;

    .line 23
    sput-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->typeMap:Ljava/util/Map;

    .line 25
    invoke-static {}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->newMap()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Map;

    .line 31
    sput-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->fieldMap:Ljava/util/Map;

    .line 33
    invoke-static {}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->newMap()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/Map;

    .line 39
    sput-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->constructorMap:Ljava/util/Map;

    .line 41
    invoke-static {}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->newMap()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/Map;

    .line 47
    sput-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->enumMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/lang/Object;

    .line 51
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 54
    sput-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->initLock:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static baseClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/Class;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Ljava/lang/Class;

    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 14
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->baseClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    .line 25
    if-eqz v0, :cond_2

    .line 27
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 29
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 32
    move-result-object p0

    .line 33
    const/4 v0, 0x0

    .line 34
    aget-object p0, p0, v0

    .line 36
    invoke-static {p0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->baseClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_2
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method

.method public static getEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 5

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Ljava/lang/String;

    .line 7
    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_2

    .line 17
    sget-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->enumMap:Ljava/util/Map;

    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, [Ljava/lang/Enum;

    .line 25
    if-nez v2, :cond_1

    .line 27
    :try_start_0
    const-string v2, "values"

    .line 29
    const/4 v3, 0x0

    .line 30
    new-array v4, v3, [Ljava/lang/Class;

    .line 32
    invoke-virtual {p1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    move-result-object v2

    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    .line 38
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, [Ljava/lang/Enum;

    .line 44
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    check-cast p0, Ljava/lang/Number;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 52
    move-result p0

    .line 53
    aget-object p0, v2, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return-object p0

    .line 56
    :catch_0
    :cond_2
    return-object v1
.end method

.method public static getFieldMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->fieldMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/Map;

    .line 9
    if-nez v1, :cond_0

    .line 11
    invoke-static {p0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->initProperties(Ljava/lang/Class;)V

    .line 14
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    move-object v1, p0

    .line 19
    check-cast v1, Ljava/util/Map;

    .line 21
    :cond_0
    return-object v1
.end method

.method public static getGetterMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->readerMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/Map;

    .line 9
    if-nez v1, :cond_0

    .line 11
    invoke-static {p0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->initProperties(Ljava/lang/Class;)V

    .line 14
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    move-object v1, p0

    .line 19
    check-cast v1, Ljava/util/Map;

    .line 21
    :cond_0
    return-object v1
.end method

.method public static getKeyType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 8
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Class;

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, p0

    .line 16
    check-cast v0, Ljava/lang/Class;

    .line 18
    :goto_0
    const-class v1, Ljava/util/Map;

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {p0, v1, v0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_1

    .line 33
    invoke-static {p0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->baseClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 40
    return-object p0
.end method

.method public static getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/autonavi/core/network/inter/util/GenericFinder$Default;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getPropertyClass(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->getPropertyType(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->baseClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getPropertySet(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->getTypeMap(Ljava/lang/Class;)Ljava/util/Map;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getPropertyType(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->baseClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 7
    const-class v1, Ljava/util/Collection;

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-static {p0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->getValueType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-class v1, Ljava/util/Map;

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 28
    invoke-static {p0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->getValueType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_3

    .line 39
    const-string p0, "length"

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_2

    .line 47
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 49
    return-object p0

    .line 50
    :cond_2
    const-class p0, Ljava/lang/Number;

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_4

    .line 58
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_3
    invoke-static {v0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->getTypeMap(Ljava/lang/Class;)Ljava/util/Map;

    .line 66
    move-result-object v0

    .line 67
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    check-cast p1, [Ljava/lang/reflect/Type;

    .line 77
    if-eqz p1, :cond_4

    .line 79
    const/4 v0, 0x1

    .line 80
    aget-object v0, p1, v0

    .line 82
    check-cast v0, Ljava/lang/Class;

    .line 84
    const/4 v1, 0x0

    .line 85
    aget-object p1, p1, v1

    .line 87
    invoke-static {p0, v0, p1}, Lcom/autonavi/core/network/inter/util/GenericFinder$Default;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_4
    const/4 p0, 0x0

    .line 93
    return-object p0
.end method

.method public static getSetterMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->writerMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/Map;

    .line 9
    if-nez v1, :cond_0

    .line 11
    invoke-static {p0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->initProperties(Ljava/lang/Class;)V

    .line 14
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    move-object v1, p0

    .line 19
    check-cast v1, Ljava/util/Map;

    .line 21
    :cond_0
    return-object v1
.end method

.method private static getTypeMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->typeMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/Map;

    .line 9
    if-nez v1, :cond_0

    .line 11
    invoke-static {p0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->initProperties(Ljava/lang/Class;)V

    .line 14
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    move-object v1, p0

    .line 19
    check-cast v1, Ljava/util/Map;

    .line 21
    :cond_0
    return-object v1
.end method

.method public static getValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    instance-of v1, p0, Ljava/util/Map;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    check-cast p0, Ljava/util/Map;

    .line 11
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    .line 18
    if-eqz v1, :cond_9

    .line 20
    invoke-static {v0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->getGetterMap(Ljava/lang/Class;)Ljava/util/Map;

    .line 23
    move-result-object v1

    .line 24
    move-object v2, p1

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 27
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/reflect/Method;

    .line 33
    if-nez v1, :cond_8

    .line 35
    instance-of v1, p0, Ljava/lang/Class;

    .line 37
    if-eqz v1, :cond_1

    .line 39
    move-object v1, p0

    .line 40
    check-cast v1, Ljava/lang/Class;

    .line 42
    invoke-static {v1}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->getFieldMap(Ljava/lang/Class;)Ljava/util/Map;

    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/lang/reflect/Field;

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->getFieldMap(Ljava/lang/Class;)Ljava/util/Map;

    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/reflect/Field;

    .line 63
    :goto_0
    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :cond_2
    const-string v1, "length"

    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_5

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_3

    .line 84
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 87
    move-result p0

    .line 88
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_3
    instance-of v1, p0, Ljava/util/Collection;

    .line 95
    if-eqz v1, :cond_4

    .line 97
    check-cast p0, Ljava/util/Collection;

    .line 99
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 102
    move-result p0

    .line 103
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :cond_4
    instance-of v1, p0, Ljava/lang/String;

    .line 110
    if-eqz v1, :cond_5

    .line 112
    check-cast p0, Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 117
    move-result p0

    .line 118
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :cond_5
    instance-of v1, p0, Ljava/util/Map;

    .line 125
    if-eqz v1, :cond_6

    .line 127
    check-cast p0, Ljava/util/Map;

    .line 129
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-result-object p0

    .line 133
    return-object p0

    .line 134
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_7

    .line 140
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 143
    move-result p0

    .line 144
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :cond_7
    invoke-static {p1}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->toIndex(Ljava/lang/Object;)I

    .line 152
    move-result p1

    .line 153
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :cond_8
    const/4 p1, 0x0

    .line 159
    new-array p1, p1, [Ljava/lang/Object;

    .line 161
    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    move-result-object p0

    .line 165
    return-object p0

    .line 166
    :cond_9
    instance-of v0, p0, Ljava/util/List;

    .line 168
    if-eqz v0, :cond_a

    .line 170
    check-cast p0, Ljava/util/List;

    .line 172
    invoke-static {p1}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->toIndex(Ljava/lang/Object;)I

    .line 175
    move-result p1

    .line 176
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 179
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    return-object p0

    .line 181
    :catch_0
    move-exception p0

    .line 182
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    :cond_a
    const/4 p0, 0x0

    .line 186
    return-object p0
.end method

.method public static getValueType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 8
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Class;

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, p0

    .line 16
    check-cast v0, Ljava/lang/Class;

    .line 18
    :goto_0
    const-class v1, Ljava/util/Collection;

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {p0, v1, v0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    .line 30
    move-result-object p0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const-class v1, Ljava/util/Map;

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-static {p0, v1, v0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    .line 44
    move-result-object p0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/4 p0, 0x0

    .line 47
    :goto_1
    if-eqz p0, :cond_3

    .line 49
    invoke-static {p0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->baseClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_3
    const-class p0, Ljava/lang/Object;

    .line 56
    return-object p0
.end method

.method private static initMethod(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_2

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 26
    move-result v1

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 45
    invoke-interface {p0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {p2}, Lcom/autonavi/core/network/inter/util/GenericFinder$Default;->getGenericReturnType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Type;

    .line 51
    move-result-object p0

    .line 52
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 54
    if-ne p0, v2, :cond_0

    .line 56
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 59
    move-result-object p0

    .line 60
    aget-object p0, p0, v0

    .line 62
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    check-cast v2, [Ljava/lang/reflect/Type;

    .line 68
    if-eqz v2, :cond_1

    .line 70
    aget-object v2, v2, v0

    .line 72
    :cond_1
    const/4 v2, 0x2

    .line 73
    new-array v2, v2, [Ljava/lang/reflect/Type;

    .line 75
    aput-object p0, v2, v0

    .line 77
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 80
    move-result-object p0

    .line 81
    aput-object p0, v2, v1

    .line 83
    invoke-interface {p1, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_2
    return-void
.end method

.method private static initProperties(Ljava/lang/Class;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 3
    sget-object v2, Lcom/autonavi/core/network/inter/util/ReflectUtil;->initLock:Ljava/lang/Object;

    .line 5
    monitor-enter v2

    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    :try_start_0
    new-array v4, v0, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {v4}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 17
    move-result v5

    .line 18
    if-nez v5, :cond_0

    .line 20
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 23
    :cond_0
    sget-object v5, Lcom/autonavi/core/network/inter/util/ReflectUtil;->constructorMap:Ljava/util/Map;

    .line 25
    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto/16 :goto_9

    .line 32
    :catch_0
    :goto_0
    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    .line 34
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 37
    new-instance v5, Ljava/util/HashMap;

    .line 39
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 42
    new-instance v6, Ljava/util/HashMap;

    .line 44
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 47
    new-instance v7, Ljava/util/HashMap;

    .line 49
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    const-class v8, Ljava/lang/Object;

    .line 54
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v8

    .line 58
    if-nez v8, :cond_1

    .line 60
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 63
    move-result-object v8

    .line 64
    if-eqz v8, :cond_1

    .line 66
    invoke-static {v8}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->getGetterMap(Ljava/lang/Class;)Ljava/util/Map;

    .line 69
    move-result-object v9

    .line 70
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 73
    invoke-static {v8}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->getSetterMap(Ljava/lang/Class;)Ljava/util/Map;

    .line 76
    move-result-object v9

    .line 77
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 80
    invoke-static {v8}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->getTypeMap(Ljava/lang/Class;)Ljava/util/Map;

    .line 83
    move-result-object v9

    .line 84
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 87
    invoke-static {v8}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->getFieldMap(Ljava/lang/Class;)Ljava/util/Map;

    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 94
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 97
    move-result-object v8

    .line 98
    array-length v9, v8

    .line 99
    const/4 v10, 0x0

    .line 100
    :goto_1
    if-ge v10, v9, :cond_5

    .line 102
    aget-object v12, v8, v10

    .line 104
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 107
    move-result v13

    .line 108
    and-int/2addr v13, v3

    .line 109
    if-lez v13, :cond_4

    .line 111
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 114
    move-result-object v13

    .line 115
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 118
    move-result-object v14

    .line 119
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 122
    move-result-object v15

    .line 123
    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 125
    const/4 v0, 0x3

    .line 126
    if-ne v13, v11, :cond_2

    .line 128
    array-length v11, v14

    .line 129
    if-ne v11, v3, :cond_4

    .line 131
    const-string v11, "set"

    .line 133
    invoke-virtual {v15, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 136
    move-result v11

    .line 137
    if-eqz v11, :cond_4

    .line 139
    const/4 v11, 0x0

    .line 140
    aget-object v13, v14, v11

    .line 142
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    invoke-static {v5, v6, v12, v0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->initMethod(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Method;Ljava/lang/String;)V

    .line 149
    goto :goto_2

    .line 150
    :cond_2
    array-length v11, v14

    .line 151
    if-nez v11, :cond_4

    .line 153
    const-string v11, "get"

    .line 155
    invoke-virtual {v15, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 158
    move-result v11

    .line 159
    if-eqz v11, :cond_3

    .line 161
    const-string v11, "getClass"

    .line 163
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result v11

    .line 167
    if-nez v11, :cond_3

    .line 169
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 173
    invoke-static {v4, v6, v12, v0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->initMethod(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Method;Ljava/lang/String;)V

    .line 176
    goto :goto_2

    .line 177
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 179
    if-ne v13, v0, :cond_4

    .line 181
    const-string v0, "is"

    .line 183
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_4

    .line 189
    const/4 v0, 0x2

    .line 190
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 194
    invoke-static {v4, v6, v12, v0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->initMethod(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Method;Ljava/lang/String;)V

    .line 197
    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 199
    const/4 v0, 0x0

    .line 200
    goto :goto_1

    .line 201
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    .line 204
    move-result v0

    .line 205
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 208
    move-result-object v8

    .line 209
    array-length v9, v8

    .line 210
    const/4 v11, 0x0

    .line 211
    :goto_3
    if-ge v11, v9, :cond_8

    .line 213
    aget-object v10, v8, v11

    .line 215
    invoke-virtual {v10, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 218
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 221
    move-result-object v12

    .line 222
    if-nez v0, :cond_7

    .line 224
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 227
    move-result v13

    .line 228
    and-int/2addr v13, v3

    .line 229
    if-lez v13, :cond_6

    .line 231
    goto :goto_4

    .line 232
    :cond_6
    const/4 v13, 0x2

    .line 233
    const/16 v16, 0x0

    .line 235
    goto :goto_5

    .line 236
    :cond_7
    :goto_4
    const/4 v13, 0x2

    .line 237
    new-array v14, v13, [Ljava/lang/reflect/Type;

    .line 239
    invoke-static {v10}, Lcom/autonavi/core/network/inter/util/GenericFinder$Default;->getGenericType(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Type;

    .line 242
    move-result-object v15

    .line 243
    const/16 v16, 0x0

    .line 245
    aput-object v15, v14, v16

    .line 247
    aput-object v1, v14, v3

    .line 249
    invoke-virtual {v6, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :goto_5
    invoke-virtual {v7, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 255
    add-int/lit8 v11, v11, 0x1

    .line 257
    goto :goto_3

    .line 258
    :cond_8
    :try_start_3
    sget-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->readerMap:Ljava/util/Map;

    .line 260
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 263
    move-result-object v3

    .line 264
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->writerMap:Ljava/util/Map;

    .line 269
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 272
    move-result-object v3

    .line 273
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->typeMap:Ljava/util/Map;

    .line 278
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 281
    move-result-object v3

    .line 282
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->fieldMap:Ljava/util/Map;

    .line 287
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 290
    move-result-object v3

    .line 291
    :goto_6
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    goto :goto_7

    .line 295
    :catchall_1
    move-exception v0

    .line 296
    goto :goto_8

    .line 297
    :catch_1
    move-exception v0

    .line 298
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 301
    :try_start_5
    sget-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->readerMap:Ljava/util/Map;

    .line 303
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 306
    move-result-object v3

    .line 307
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->writerMap:Ljava/util/Map;

    .line 312
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 315
    move-result-object v3

    .line 316
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->typeMap:Ljava/util/Map;

    .line 321
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 324
    move-result-object v3

    .line 325
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/autonavi/core/network/inter/util/ReflectUtil;->fieldMap:Ljava/util/Map;

    .line 330
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 333
    move-result-object v3

    .line 334
    goto :goto_6

    .line 335
    :goto_7
    monitor-exit v2

    .line 336
    return-void

    .line 337
    :goto_8
    sget-object v3, Lcom/autonavi/core/network/inter/util/ReflectUtil;->readerMap:Ljava/util/Map;

    .line 339
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 342
    move-result-object v4

    .line 343
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v3, Lcom/autonavi/core/network/inter/util/ReflectUtil;->writerMap:Ljava/util/Map;

    .line 348
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 351
    move-result-object v4

    .line 352
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v3, Lcom/autonavi/core/network/inter/util/ReflectUtil;->typeMap:Ljava/util/Map;

    .line 357
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 360
    move-result-object v4

    .line 361
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v3, Lcom/autonavi/core/network/inter/util/ReflectUtil;->fieldMap:Ljava/util/Map;

    .line 366
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 369
    move-result-object v4

    .line 370
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    throw v0

    .line 374
    :goto_9
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 375
    throw v0
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/autonavi/core/network/inter/util/ReflectUtil;->constructorMap:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_0

    .line 13
    invoke-static {p0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->initProperties(Ljava/lang/Class;)V

    .line 16
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 22
    if-eqz v1, :cond_0

    .line 24
    new-array p0, v3, [Ljava/lang/Object;

    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 30
    return-object p0

    .line 31
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 34
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 35
    return-object p0

    .line 36
    :catch_0
    :try_start_2
    new-array v1, v3, [Ljava/lang/Class;

    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 52
    sget-object v2, Lcom/autonavi/core/network/inter/util/ReflectUtil;->constructorMap:Ljava/util/Map;

    .line 54
    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-array v2, v3, [Ljava/lang/Object;

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 63
    return-object p0

    .line 64
    :catch_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 67
    :cond_1
    return-object v0

    .line 68
    :catch_2
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    return-object v0
.end method

.method private static newMap()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    return-object v0
.end method

.method public static setGenericFinder(Lcom/autonavi/core/network/inter/util/GenericFinder;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/core/network/inter/util/GenericFinder$Default;->finder:Lcom/autonavi/core/network/inter/util/GenericFinder;

    .line 3
    return-void
.end method

.method public static setValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_5

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-static {p1}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->toIndex(Ljava/lang/Object;)I

    .line 16
    move-result v1

    .line 17
    invoke-static {p0, v1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    instance-of v1, p0, Ljava/util/List;

    .line 23
    if-eqz v1, :cond_1

    .line 25
    move-object v1, p0

    .line 26
    check-cast v1, Ljava/util/List;

    .line 28
    invoke-static {p1}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->toIndex(Ljava/lang/Object;)I

    .line 31
    move-result v2

    .line 32
    invoke-interface {v1, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_1
    :goto_0
    instance-of v1, p0, Ljava/util/Map;

    .line 37
    if-eqz v1, :cond_2

    .line 39
    move-object v1, p0

    .line 40
    check-cast v1, Ljava/util/Map;

    .line 42
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-static {v0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->getSetterMap(Ljava/lang/Class;)Ljava/util/Map;

    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/reflect/Method;

    .line 59
    if-eqz v1, :cond_4

    .line 61
    const/4 p1, 0x0

    .line 62
    if-eqz p2, :cond_3

    .line 64
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 67
    move-result-object v0

    .line 68
    aget-object v0, v0, p1

    .line 70
    invoke-static {p2, v0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->toWrapper(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    move-result-object p2

    .line 74
    :cond_3
    const/4 v0, 0x1

    .line 75
    new-array v0, v0, [Ljava/lang/Object;

    .line 77
    aput-object p2, v0, p1

    .line 79
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    sget-object v1, Lcom/autonavi/core/network/inter/util/ReflectUtil;->fieldMap:Ljava/util/Map;

    .line 85
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ljava/util/Map;

    .line 91
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Ljava/lang/reflect/Field;

    .line 97
    if-eqz p2, :cond_5

    .line 99
    if-eqz p1, :cond_5

    .line 101
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 104
    move-result-object v0

    .line 105
    invoke-static {p2, v0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->toWrapper(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_1

    .line 113
    :catch_0
    move-exception p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    :cond_5
    :goto_1
    return-void
.end method

.method public static setValues(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 21
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    invoke-static {p0, v1, v2}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->setValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method private static toIndex(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Ljava/lang/Number;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    move-result p0

    .line 20
    :goto_0
    return p0
.end method

.method public static toValue(Ljava/lang/Number;Ljava/lang/Class;)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Long;

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 8
    move-result-wide p0

    .line 9
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-class v0, Ljava/lang/Integer;

    .line 16
    if-ne p1, v0, :cond_1

    .line 18
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    const-class v0, Ljava/lang/Short;

    .line 29
    if-ne p1, v0, :cond_2

    .line 31
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    .line 34
    move-result p0

    .line 35
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_2
    const-class v0, Ljava/lang/Byte;

    .line 42
    if-ne p1, v0, :cond_3

    .line 44
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    .line 47
    move-result p0

    .line 48
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_3
    const-class v0, Ljava/lang/Double;

    .line 55
    if-ne p1, v0, :cond_4

    .line 57
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 60
    move-result-wide p0

    .line 61
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_4
    const-class v0, Ljava/lang/Float;

    .line 68
    if-ne p1, v0, :cond_5

    .line 70
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 73
    move-result p0

    .line 74
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_5
    invoke-static {p1}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->toWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    .line 82
    move-result-object v0

    .line 83
    if-ne v0, p1, :cond_6

    .line 85
    const/4 p0, 0x0

    .line 86
    return-object p0

    .line 87
    :cond_6
    invoke-static {p0, v0}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->toValue(Ljava/lang/Number;Ljava/lang/Class;)Ljava/lang/Number;

    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method public static final toWrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    .line 7
    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 8
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    .line 9
    const-class p0, Ljava/lang/Short;

    return-object p0

    .line 10
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    .line 11
    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 12
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    .line 13
    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 14
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    .line 15
    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 16
    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    .line 17
    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 18
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    .line 19
    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 20
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    .line 21
    const-class p0, Ljava/lang/Boolean;

    :cond_7
    return-object p0
.end method

.method private static toWrapper(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->toWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 3
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Ljava/lang/Number;

    invoke-static {p0, p1}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->toValue(Ljava/lang/Number;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object p0

    :cond_0
    return-object p0
.end method
