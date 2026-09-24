.class public abstract Lfv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "fv"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a([Ljava/lang/Object;)I
    .locals 2

    .line 1
    sget-object v0, Lfv;->a:Ljava/lang/String;

    .line 3
    const-string v1, "arrayLength()"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    array-length p0, p0

    .line 13
    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2

    .line 1
    sget-object v0, Lfv;->a:Ljava/lang/String;

    .line 3
    const-string v1, "fieldByNameRecursive()"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    move-object v0, p0

    .line 9
    :goto_0
    const-class v1, Ljava/lang/Object;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 17
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 20
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/NoSuchFieldException;

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Class;)I
    .locals 4

    .line 1
    sget-object v0, Lfv;->a:Ljava/lang/String;

    .line 3
    const-string v1, "instanceOf()"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p0, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 18
    return v1

    .line 19
    :cond_0
    return v0

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_b

    .line 26
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 28
    if-ne p1, v2, :cond_2

    .line 30
    return v1

    .line 31
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lfv;->k(Ljava/lang/Class;)Ljava/lang/Class;

    .line 38
    move-result-object p0

    .line 39
    if-nez p0, :cond_3

    .line 41
    return v1

    .line 42
    :cond_3
    if-ne p0, p1, :cond_4

    .line 44
    return v0

    .line 45
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 47
    const/4 v2, 0x2

    .line 48
    if-ne p1, v0, :cond_5

    .line 50
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 52
    if-ne p0, v3, :cond_5

    .line 54
    return v2

    .line 55
    :cond_5
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 57
    if-ne p1, v3, :cond_7

    .line 59
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 61
    if-eq p0, v3, :cond_6

    .line 63
    if-eq p0, v0, :cond_6

    .line 65
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 67
    if-ne p0, v0, :cond_7

    .line 69
    :cond_6
    return v2

    .line 70
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 72
    if-ne p1, v0, :cond_8

    .line 74
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 76
    if-ne p0, v0, :cond_8

    .line 78
    return v2

    .line 79
    :cond_8
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 81
    if-ne p1, v0, :cond_a

    .line 83
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 85
    if-eq p0, p1, :cond_9

    .line 87
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 89
    if-eq p0, p1, :cond_9

    .line 91
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 93
    if-ne p0, p1, :cond_a

    .line 95
    :cond_9
    return v2

    .line 96
    :cond_a
    return v1

    .line 97
    :cond_b
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 100
    move-result p0

    .line 101
    return p0
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lfv;->a:Ljava/lang/String;

    .line 3
    const-string v1, "invokeMethod()"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0, p1, p2}, Lfv;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance p2, Ljava/lang/NoSuchMethodException;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string v1, "class "

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string p0, " cannot find method "

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-direct {p2, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p2
.end method

.method public static varargs e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lfv;->a:Ljava/lang/String;

    .line 3
    const-string v1, "invokeStaticMethod()"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {p0, p1, p2}, Lfv;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance p2, Ljava/lang/NoSuchMethodException;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v1, "class "

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string p0, " cannot find method "

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    invoke-direct {p2, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p2
.end method

.method public static varargs f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 6

    .line 1
    sget-object v0, Lfv;->a:Ljava/lang/String;

    .line 3
    const-string v1, "matchMethod()"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {p0, p1}, Lfv;->h(Ljava/lang/Class;Ljava/lang/String;)[Ljava/lang/reflect/Method;

    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x0

    .line 13
    if-eqz p0, :cond_5

    .line 15
    array-length v0, p0

    .line 16
    if-nez v0, :cond_0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    array-length v0, p0

    .line 20
    const/4 v1, 0x0

    .line 21
    move-object v3, p1

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_2

    .line 25
    aget-object v4, p0, v1

    .line 27
    invoke-static {v4, p2}, Lfv;->g(Ljava/lang/reflect/Method;[Ljava/lang/Object;)I

    .line 30
    move-result v5

    .line 31
    if-le v5, v2, :cond_1

    .line 33
    move-object v3, v4

    .line 34
    move v2, v5

    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    if-nez v2, :cond_3

    .line 40
    return-object p1

    .line 41
    :cond_3
    const/4 p0, 0x1

    .line 42
    and-int/lit8 p1, v2, 0x1

    .line 44
    if-nez p1, :cond_4

    .line 46
    invoke-virtual {v3, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 49
    :cond_4
    return-object v3

    .line 50
    :cond_5
    :goto_1
    return-object p1
.end method

.method public static varargs g(Ljava/lang/reflect/Method;[Ljava/lang/Object;)I
    .locals 8

    .line 1
    sget-object v0, Lfv;->a:Ljava/lang/String;

    .line 3
    const-string v1, "matchMethodParameterTypes()"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lfv;->a([Ljava/lang/Object;)I

    .line 15
    move-result v1

    .line 16
    invoke-static {p1}, Lfv;->a([Ljava/lang/Object;)I

    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eq v1, v2, :cond_0

    .line 23
    return v3

    .line 24
    :cond_0
    if-lez v2, :cond_e

    .line 26
    new-array v1, v2, [I

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    if-ge v4, v2, :cond_3

    .line 32
    aget-object v6, p1, v4

    .line 34
    aget-object v7, v0, v4

    .line 36
    invoke-static {v6, v7}, Lfv;->c(Ljava/lang/Object;Ljava/lang/Class;)I

    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_1

    .line 42
    return v3

    .line 43
    :cond_1
    const/4 v7, 0x1

    .line 44
    if-ne v6, v7, :cond_2

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .line 49
    aput v4, v1, v5

    .line 51
    move v5, v6

    .line 52
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    if-lez v5, :cond_e

    .line 57
    :goto_2
    if-ge v3, v2, :cond_e

    .line 59
    aget v4, v1, v3

    .line 61
    aget-object v5, p1, v4

    .line 63
    instance-of v6, v5, Ljava/lang/Number;

    .line 65
    if-eqz v6, :cond_9

    .line 67
    check-cast v5, Ljava/lang/Number;

    .line 69
    aget-object v6, v0, v4

    .line 71
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 73
    if-ne v6, v7, :cond_4

    .line 75
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 78
    move-result v5

    .line 79
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v5

    .line 83
    aput-object v5, p1, v4

    .line 85
    goto/16 :goto_3

    .line 87
    :cond_4
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 89
    if-ne v6, v7, :cond_5

    .line 91
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 94
    move-result-wide v5

    .line 95
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    move-result-object v5

    .line 99
    aput-object v5, p1, v4

    .line 101
    goto/16 :goto_3

    .line 103
    :cond_5
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 105
    if-ne v6, v7, :cond_6

    .line 107
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    .line 110
    move-result-wide v5

    .line 111
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 114
    move-result-object v5

    .line 115
    aput-object v5, p1, v4

    .line 117
    goto :goto_3

    .line 118
    :cond_6
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 120
    if-ne v6, v7, :cond_7

    .line 122
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 125
    move-result v5

    .line 126
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 129
    move-result-object v5

    .line 130
    aput-object v5, p1, v4

    .line 132
    goto :goto_3

    .line 133
    :cond_7
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 135
    if-ne v6, v7, :cond_8

    .line 137
    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    .line 140
    move-result v5

    .line 141
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 144
    move-result-object v5

    .line 145
    aput-object v5, p1, v4

    .line 147
    goto :goto_3

    .line 148
    :cond_8
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 150
    if-ne v6, v7, :cond_d

    .line 152
    invoke-virtual {v5}, Ljava/lang/Number;->shortValue()S

    .line 155
    move-result v5

    .line 156
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 159
    move-result-object v5

    .line 160
    aput-object v5, p1, v4

    .line 162
    goto :goto_3

    .line 163
    :cond_9
    instance-of v6, v5, Ljava/lang/Character;

    .line 165
    if-eqz v6, :cond_d

    .line 167
    check-cast v5, Ljava/lang/Character;

    .line 169
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    .line 172
    move-result v5

    .line 173
    aget-object v6, v0, v4

    .line 175
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 177
    if-ne v6, v7, :cond_a

    .line 179
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    move-result-object v5

    .line 183
    aput-object v5, p1, v4

    .line 185
    goto :goto_3

    .line 186
    :cond_a
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 188
    if-ne v6, v7, :cond_b

    .line 190
    int-to-long v5, v5

    .line 191
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 194
    move-result-object v5

    .line 195
    aput-object v5, p1, v4

    .line 197
    goto :goto_3

    .line 198
    :cond_b
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 200
    if-ne v6, v7, :cond_c

    .line 202
    int-to-byte v5, v5

    .line 203
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 206
    move-result-object v5

    .line 207
    aput-object v5, p1, v4

    .line 209
    goto :goto_3

    .line 210
    :cond_c
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 212
    if-ne v6, v7, :cond_d

    .line 214
    int-to-short v5, v5

    .line 215
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 218
    move-result-object v5

    .line 219
    aput-object v5, p1, v4

    .line 221
    :cond_d
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 223
    goto/16 :goto_2

    .line 225
    :cond_e
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 228
    move-result p0

    .line 229
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 232
    move-result p0

    .line 233
    if-eqz p0, :cond_f

    .line 235
    const/4 p0, 0x3

    .line 236
    goto :goto_4

    .line 237
    :cond_f
    const/4 p0, 0x2

    .line 238
    :goto_4
    return p0
.end method

.method public static h(Ljava/lang/Class;Ljava/lang/String;)[Ljava/lang/reflect/Method;
    .locals 7

    .line 1
    sget-object v0, Lfv;->a:Ljava/lang/String;

    .line 3
    const-string v1, "methodsForName()"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p0, :cond_4

    .line 15
    array-length v1, p0

    .line 16
    if-nez v1, :cond_0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    array-length v2, p0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_0
    if-ge v4, v2, :cond_2

    .line 29
    aget-object v5, p0, v4

    .line 31
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_1

    .line 41
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_3

    .line 53
    return-object v0

    .line 54
    :cond_3
    new-array p0, v3, [Ljava/lang/reflect/Method;

    .line 56
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 59
    move-result-object p0

    .line 60
    check-cast p0, [Ljava/lang/reflect/Method;

    .line 62
    return-object p0

    .line 63
    :cond_4
    :goto_1
    return-object v0
.end method

.method public static varargs i(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lfv;->a:Ljava/lang/String;

    .line 3
    const-string v1, "newInstanceOrThrow()"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_7

    .line 14
    array-length v1, v0

    .line 15
    if-eqz v1, :cond_7

    .line 17
    array-length p0, p1

    .line 18
    new-array p0, p0, [Ljava/lang/Class;

    .line 20
    array-length p0, v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    const/4 v3, 0x1

    .line 24
    if-ge v2, p0, :cond_5

    .line 26
    aget-object v4, v0, v2

    .line 28
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 31
    move-result-object v5

    .line 32
    array-length v6, v5

    .line 33
    array-length v7, p1

    .line 34
    if-eq v6, v7, :cond_0

    .line 36
    goto :goto_3

    .line 37
    :cond_0
    array-length v6, p1

    .line 38
    if-nez v6, :cond_1

    .line 40
    goto :goto_4

    .line 41
    :cond_1
    const/4 v6, 0x0

    .line 42
    :goto_1
    array-length v7, p1

    .line 43
    if-ge v6, v7, :cond_3

    .line 45
    aget-object v7, p1, v1

    .line 47
    aget-object v8, v5, v6

    .line 49
    invoke-static {v7, v8}, Lfv;->c(Ljava/lang/Object;Ljava/lang/Class;)I

    .line 52
    move-result v7

    .line 53
    if-nez v7, :cond_2

    .line 55
    const/4 v5, 0x0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const/4 v5, 0x1

    .line 61
    :goto_2
    if-eqz v5, :cond_4

    .line 63
    goto :goto_4

    .line 64
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_5
    const/4 v4, 0x0

    .line 68
    :goto_4
    if-eqz v4, :cond_6

    .line 70
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 73
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 80
    const-string p1, "no Constructor match it!!"

    .line 82
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p0

    .line 86
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    const-string v1, "Can\'t get even one available constructor for "

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    throw p1
.end method

.method public static j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lfv;->a:Ljava/lang/String;

    .line 3
    const-string v1, "setValueOfField()"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0, p1}, Lfv;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 35
    move-result v0

    .line 36
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 42
    :cond_0
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 46
    :cond_1
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    return-void

    .line 50
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 52
    const-string p1, "param fieldName is empty"

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0
.end method

.method public static k(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2

    .line 1
    sget-object v0, Lfv;->a:Ljava/lang/String;

    .line 3
    const-string v1, "wrappedClass()"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    const-string v1, "TYPE"

    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    return-object v0
.end method
