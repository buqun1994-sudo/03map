.class public Lcom/autonavi/core/network/inter/util/GenericFinder$Default;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/core/network/inter/util/GenericFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# static fields
.field static finder:Lcom/autonavi/core/network/inter/util/GenericFinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changedParameterizedType(Ljava/lang/reflect/ParameterizedType;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/core/network/inter/util/GenericFinder$Default$1;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/autonavi/core/network/inter/util/GenericFinder$Default$1;-><init>(Ljava/lang/reflect/ParameterizedType;[Ljava/lang/reflect/Type;)V

    .line 6
    return-object v0
.end method

.method public static getGenericInterfaces(Ljava/lang/Class;)[Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/autonavi/core/network/inter/util/GenericFinder$Default;->finder:Lcom/autonavi/core/network/inter/util/GenericFinder;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0, p0}, Lcom/autonavi/core/network/inter/util/GenericFinder;->getGenericInterfaces(Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    .line 13
    move-result-object p0

    .line 14
    :goto_0
    return-object p0
.end method

.method public static getGenericReturnType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/core/network/inter/util/GenericFinder$Default;->finder:Lcom/autonavi/core/network/inter/util/GenericFinder;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0, p0}, Lcom/autonavi/core/network/inter/util/GenericFinder;->getGenericReturnType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Type;

    .line 13
    move-result-object p0

    .line 14
    :goto_0
    return-object p0
.end method

.method public static getGenericSuperclass(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/autonavi/core/network/inter/util/GenericFinder$Default;->finder:Lcom/autonavi/core/network/inter/util/GenericFinder;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0, p0}, Lcom/autonavi/core/network/inter/util/GenericFinder;->getGenericSuperclass(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 13
    move-result-object p0

    .line 14
    :goto_0
    return-object p0
.end method

.method public static getGenericType(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/core/network/inter/util/GenericFinder$Default;->finder:Lcom/autonavi/core/network/inter/util/GenericFinder;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0, p0}, Lcom/autonavi/core/network/inter/util/GenericFinder;->getGenericType(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Type;

    .line 13
    move-result-object p0

    .line 14
    :goto_0
    return-object p0
.end method

.method public static getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;
    .locals 7
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
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 3
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 4
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_0
    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ne p1, v1, :cond_2

    if-eqz v0, :cond_1

    .line 7
    aget-object p0, v0, p2

    return-object p0

    .line 8
    :cond_1
    const-class p0, Ljava/lang/Object;

    return-object p0

    .line 9
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v4, 0x0

    .line 10
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 11
    aget-object v5, v3, v4

    .line 12
    instance-of v6, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_3

    .line 13
    move-object v6, v5

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 14
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 15
    invoke-static {v5, p1, p2}, Lcom/autonavi/core/network/inter/util/GenericFinder$Default;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0, v2, v0}, Lcom/autonavi/core/network/inter/util/GenericFinder$Default;->getTureType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 18
    invoke-static {v1}, Lcom/autonavi/core/network/inter/util/GenericFinder$Default;->getGenericSuperclass(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/autonavi/core/network/inter/util/GenericFinder$Default;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 19
    invoke-static {p0, v2, v0}, Lcom/autonavi/core/network/inter/util/GenericFinder$Default;->getTureType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 20
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FindGenericType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", declaredClass: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", index: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 21
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 22
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 24
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 25
    aget-object v3, v2, v1

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    invoke-static {p0, p1, v1}, Lcom/autonavi/core/network/inter/util/GenericFinder$Default;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    .line 27
    :cond_2
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_5

    .line 28
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 29
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    .line 30
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 31
    aget-object v4, v2, v1

    .line 32
    invoke-static {p0, p1, v4}, Lcom/autonavi/core/network/inter/util/GenericFinder$Default;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    if-eq v4, v5, :cond_3

    .line 33
    aput-object v5, v2, v1

    const/4 v3, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    .line 34
    invoke-static {v0, v2}, Lcom/autonavi/core/network/inter/util/GenericFinder$Default;->changedParameterizedType(Ljava/lang/reflect/ParameterizedType;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_5
    return-object p2
.end method

.method private static getTureType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 8
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    if-eqz p2, :cond_1

    .line 14
    :goto_0
    array-length v2, p1

    .line 15
    if-ge v1, v2, :cond_1

    .line 17
    aget-object v2, p1, v1

    .line 19
    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 29
    aget-object p0, p2, v1

    .line 31
    return-object p0

    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object p0

    .line 36
    :cond_2
    instance-of p1, p0, Ljava/lang/reflect/GenericArrayType;

    .line 38
    if-eqz p1, :cond_3

    .line 40
    move-object p1, p0

    .line 41
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 43
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 46
    move-result-object p1

    .line 47
    instance-of p2, p1, Ljava/lang/Class;

    .line 49
    if-eqz p2, :cond_3

    .line 51
    check-cast p1, Ljava/lang/Class;

    .line 53
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    move-result-object p0

    .line 61
    :cond_3
    return-object p0
.end method
