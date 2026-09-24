.class public abstract Lm3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "[ALSimulate] AnnotationUtils"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_2

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    check-cast v4, [Ljava/lang/String;

    .line 22
    if-eqz v4, :cond_1

    .line 24
    array-length v5, v4

    .line 25
    const/4 v6, 0x2

    .line 26
    if-ne v5, v6, :cond_1

    .line 28
    const-string v5, "baseType"

    .line 30
    aget-object v6, v4, v2

    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 38
    aget-object v3, v4, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string v4, "baseType assertRuleUnit == null ||  assertRuleUnit.length != 2"

    .line 43
    new-array v5, v2, [Ljava/lang/Object;

    .line 45
    invoke-static {v0, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    new-array v4, v1, [Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    aput-object p0, v4, v2

    .line 58
    const-string p0, "baseType ex = {?}"

    .line 60
    invoke-static {v0, p0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_2
    new-array p0, v1, [Ljava/lang/Object;

    .line 65
    aput-object v3, p0, v2

    .line 67
    const-string v1, "baseType baseType = {?}"

    .line 69
    invoke-static {v0, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-object v3
.end method

.method public static final b([D)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    if-eqz p0, :cond_2

    .line 8
    array-length v1, p0

    .line 9
    if-lez v1, :cond_2

    .line 11
    const-string v1, "["

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    array-length v2, p0

    .line 18
    if-ge v1, v2, :cond_1

    .line 20
    aget-wide v2, p0, v1

    .line 22
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 25
    array-length v2, p0

    .line 26
    add-int/lit8 v2, v2, -0x1

    .line 28
    if-eq v1, v2, :cond_0

    .line 30
    const-string v2, ","

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string p0, "]"

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public static final c(Ljava/util/ArrayList;)[D
    .locals 9

    .line 1
    const-string v0, "[ALSimulate] AnnotationUtils"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_2

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    check-cast v4, [Ljava/lang/String;

    .line 22
    if-eqz v4, :cond_1

    .line 24
    array-length v5, v4

    .line 25
    const/4 v6, 0x2

    .line 26
    if-ne v5, v6, :cond_1

    .line 28
    const-string v5, "doubleValues"

    .line 30
    aget-object v6, v4, v1

    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 38
    aget-object v4, v4, v2

    .line 40
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_0

    .line 46
    const-string v5, "{"

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_0

    .line 54
    const-string v5, "}"

    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_0

    .line 62
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 65
    move-result v5

    .line 66
    sub-int/2addr v5, v2

    .line 67
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    const-string v5, ","

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 76
    move-result-object v4

    .line 77
    if-eqz v4, :cond_0

    .line 79
    array-length v5, v4

    .line 80
    new-array v3, v5, [D

    .line 82
    const/4 v6, 0x0

    .line 83
    :goto_1
    if-ge v6, v5, :cond_0

    .line 85
    aget-object v7, v4, v6

    .line 87
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 90
    move-result-wide v7

    .line 91
    aput-wide v7, v3, v6

    .line 93
    add-int/lit8 v6, v6, 0x1

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    const-string v4, "doubleValues assertRuleUnit == null ||  assertRuleUnit.length != 2"

    .line 98
    new-array v5, v1, [Ljava/lang/Object;

    .line 100
    invoke-static {v0, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-exception p0

    .line 105
    new-array v4, v2, [Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    aput-object p0, v4, v1

    .line 113
    const-string p0, "doubleValues ex = {?}"

    .line 115
    invoke-static {v0, p0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_2
    new-array p0, v2, [Ljava/lang/Object;

    .line 120
    if-eqz v3, :cond_3

    .line 122
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 125
    move-result-object v2

    .line 126
    goto :goto_2

    .line 127
    :cond_3
    const-string v2, "null"

    .line 129
    :goto_2
    aput-object v2, p0, v1

    .line 131
    const-string v1, "doubleValues doubleValues = {?}"

    .line 133
    invoke-static {v0, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    return-object v3
.end method

.method public static final d(Ljava/lang/String;Ljava/util/ArrayList;)D
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const-string v3, "[ALSimulate] AnnotationUtils"

    .line 9
    const-string v4, "getDoubleStandardKeyValue standardKey = {?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    const-wide/16 v4, 0x0

    .line 16
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, [Ljava/lang/String;

    .line 32
    if-eqz v1, :cond_1

    .line 34
    array-length v6, v1

    .line 35
    const/4 v7, 0x2

    .line 36
    if-ne v6, v7, :cond_1

    .line 38
    if-eqz p0, :cond_0

    .line 40
    aget-object v6, v1, v2

    .line 42
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_0

    .line 48
    aget-object v1, v1, v0

    .line 50
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 53
    move-result-wide v4

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string v1, "getDoubleStandardKeyValue simulateIntentData == null ||  simulateIntentData.length != 2"

    .line 57
    new-array v6, v2, [Ljava/lang/Object;

    .line 59
    invoke-static {v3, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    new-array p1, v0, [Ljava/lang/Object;

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    aput-object p0, p1, v2

    .line 72
    const-string p0, "getDoubleStandardKeyValue ex = {?}"

    .line 74
    invoke-static {v3, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_2
    new-array p0, v0, [Ljava/lang/Object;

    .line 79
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 82
    move-result-object p1

    .line 83
    aput-object p1, p0, v2

    .line 85
    const-string p1, "getDoubleStandardKeyValue doubleStandardKeyValue = {?}"

    .line 87
    invoke-static {v3, p1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    return-wide v4
.end method

.method public static final e(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const-string v3, "[ALSimulate] AnnotationUtils"

    .line 9
    const-string v4, "getIntStandardKeyValue standardKey = {?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    const/4 v1, 0x0

    .line 19
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_2

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, [Ljava/lang/String;

    .line 31
    if-eqz v4, :cond_1

    .line 33
    array-length v5, v4

    .line 34
    const/4 v6, 0x2

    .line 35
    if-ne v5, v6, :cond_1

    .line 37
    if-eqz p0, :cond_0

    .line 39
    aget-object v5, v4, v2

    .line 41
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_0

    .line 47
    aget-object v4, v4, v0

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 52
    move-result v1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string v4, "getIntStandardKeyValue simulateIntentData == null ||  simulateIntentData.length != 2"

    .line 56
    new-array v5, v2, [Ljava/lang/Object;

    .line 58
    invoke-static {v3, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :catch_1
    move-exception p0

    .line 65
    const/4 v1, 0x0

    .line 66
    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    aput-object p0, p1, v2

    .line 74
    const-string p0, "getIntStandardKeyValue ex = {?}"

    .line 76
    invoke-static {v3, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_2
    new-array p0, v0, [Ljava/lang/Object;

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object p1

    .line 85
    aput-object p1, p0, v2

    .line 87
    const-string p1, "getIntStandardKeyValue intStandardKeyValue = {?}"

    .line 89
    invoke-static {v3, p1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    return v1
.end method

.method public static final f(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const-string v3, "[ALSimulate] AnnotationUtils"

    .line 9
    const-string v4, "getStringStandardKeyValue standardKey = {?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_2

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, [Ljava/lang/String;

    .line 31
    if-eqz v4, :cond_1

    .line 33
    array-length v5, v4

    .line 34
    const/4 v6, 0x2

    .line 35
    if-ne v5, v6, :cond_1

    .line 37
    if-eqz p0, :cond_0

    .line 39
    aget-object v5, v4, v2

    .line 41
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_0

    .line 47
    aget-object v1, v4, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string v4, "getStringStandardKeyValue simulateIntentData == null ||  simulateIntentData.length != 2"

    .line 52
    new-array v5, v2, [Ljava/lang/Object;

    .line 54
    invoke-static {v3, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    new-array p1, v0, [Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    aput-object p0, p1, v2

    .line 67
    const-string p0, "getStringStandardKeyValue ex = {?}"

    .line 69
    invoke-static {v3, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_2
    new-array p0, v0, [Ljava/lang/Object;

    .line 74
    aput-object v1, p0, v2

    .line 76
    const-string p1, "getStringStandardKeyValue stringStandardKeyValue = {?}"

    .line 78
    invoke-static {v3, p1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return-object v1
.end method

.method public static final g(D)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0, v1}, Lm3;->n(DD)Z

    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 9
    return p0
.end method

.method public static final h(D)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0, v1}, Lm3;->n(DD)Z

    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 9
    return p0
.end method

.method public static final i(I)Z
    .locals 1

    .line 1
    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final j(I)Z
    .locals 1

    .line 1
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final k(Ljava/util/ArrayList;Ljava/lang/String;Z)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "[ALSimulate] AnnotationUtils"

    .line 13
    const-string v4, "hasStandardKey ignoreCase = {?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    const/4 v1, 0x0

    .line 23
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_3

    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 33
    check-cast v4, [Ljava/lang/String;

    .line 35
    if-eqz v4, :cond_2

    .line 37
    array-length v5, v4

    .line 38
    const/4 v6, 0x2

    .line 39
    if-ne v5, v6, :cond_2

    .line 41
    if-eqz p1, :cond_0

    .line 43
    if-eqz p2, :cond_1

    .line 45
    aget-object v4, v4, v3

    .line 47
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    aget-object v4, v4, v3

    .line 56
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_0

    .line 62
    :goto_1
    const/4 v1, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const-string v4, "hasStandardKey assertRuleUnit == null ||  assertRuleUnit.length != 2"

    .line 66
    new-array v5, v3, [Ljava/lang/Object;

    .line 68
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :catch_1
    move-exception p0

    .line 75
    const/4 v1, 0x0

    .line 76
    :goto_2
    new-array p1, v0, [Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    aput-object p0, p1, v3

    .line 84
    const-string p0, "hasStandardKey ex = {?}"

    .line 86
    invoke-static {v2, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_3
    new-array p0, v0, [Ljava/lang/Object;

    .line 91
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    move-result-object p1

    .line 95
    aput-object p1, p0, v3

    .line 97
    const-string p1, "hasStandardKey hasStandardKey = {?}"

    .line 99
    invoke-static {v2, p1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    return v1
.end method

.method public static final l([I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    if-eqz p0, :cond_2

    .line 8
    array-length v1, p0

    .line 9
    if-lez v1, :cond_2

    .line 11
    const-string v1, "["

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    array-length v2, p0

    .line 18
    if-ge v1, v2, :cond_1

    .line 20
    aget v2, p0, v1

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 25
    array-length v2, p0

    .line 26
    add-int/lit8 v2, v2, -0x1

    .line 28
    if-eq v1, v2, :cond_0

    .line 30
    const-string v2, ","

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string p0, "]"

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public static final m(Ljava/util/ArrayList;)[I
    .locals 8

    .line 1
    const-string v0, "[ALSimulate] AnnotationUtils"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_2

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    check-cast v4, [Ljava/lang/String;

    .line 22
    if-eqz v4, :cond_1

    .line 24
    array-length v5, v4

    .line 25
    const/4 v6, 0x2

    .line 26
    if-ne v5, v6, :cond_1

    .line 28
    const-string v5, "intValues"

    .line 30
    aget-object v6, v4, v1

    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 38
    aget-object v4, v4, v2

    .line 40
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_0

    .line 46
    const-string v5, "{"

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_0

    .line 54
    const-string v5, "}"

    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_0

    .line 62
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 65
    move-result v5

    .line 66
    sub-int/2addr v5, v2

    .line 67
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    const-string v5, ","

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 76
    move-result-object v4

    .line 77
    if-eqz v4, :cond_0

    .line 79
    array-length v5, v4

    .line 80
    new-array v3, v5, [I

    .line 82
    const/4 v6, 0x0

    .line 83
    :goto_1
    if-ge v6, v5, :cond_0

    .line 85
    aget-object v7, v4, v6

    .line 87
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 90
    move-result v7

    .line 91
    aput v7, v3, v6

    .line 93
    add-int/lit8 v6, v6, 0x1

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    const-string v4, "intValues assertRuleUnit == null ||  assertRuleUnit.length != 2"

    .line 98
    new-array v5, v1, [Ljava/lang/Object;

    .line 100
    invoke-static {v0, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-exception p0

    .line 105
    new-array v4, v2, [Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    aput-object p0, v4, v1

    .line 113
    const-string p0, "intValues ex = {?}"

    .line 115
    invoke-static {v0, p0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_2
    new-array p0, v2, [Ljava/lang/Object;

    .line 120
    if-eqz v3, :cond_3

    .line 122
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 125
    move-result-object v2

    .line 126
    goto :goto_2

    .line 127
    :cond_3
    const-string v2, "null"

    .line 129
    :goto_2
    aput-object v2, p0, v1

    .line 131
    const-string v1, "intValues intValues = {?}"

    .line 133
    invoke-static {v0, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    return-object v3
.end method

.method public static final n(DD)Z
    .locals 1

    .line 1
    sub-double/2addr p0, p2

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    .line 5
    move-result-wide p0

    .line 6
    const-wide p2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 11
    cmpg-double v0, p0, p2

    .line 13
    if-gez v0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static final o(Ljava/util/ArrayList;)Z
    .locals 7

    .line 1
    const-string v0, "[ALSimulate] AnnotationUtils"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    const/4 v3, 0x0

    .line 10
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_2

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    check-cast v4, [Ljava/lang/String;

    .line 22
    if-eqz v4, :cond_1

    .line 24
    array-length v5, v4

    .line 25
    const/4 v6, 0x2

    .line 26
    if-ne v5, v6, :cond_1

    .line 28
    const-string v5, "isLonLat"

    .line 30
    aget-object v6, v4, v2

    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 38
    aget-object v4, v4, v1

    .line 40
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 43
    move-result v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string v4, "isLonLat assertRuleUnit == null ||  assertRuleUnit.length != 2"

    .line 47
    new-array v5, v2, [Ljava/lang/Object;

    .line 49
    invoke-static {v0, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :catch_1
    move-exception p0

    .line 56
    const/4 v3, 0x0

    .line 57
    :goto_1
    new-array v4, v1, [Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    aput-object p0, v4, v2

    .line 65
    const-string p0, "isLonLat ex = {?}"

    .line 67
    invoke-static {v0, p0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_2
    new-array p0, v1, [Ljava/lang/Object;

    .line 72
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    move-result-object v1

    .line 76
    aput-object v1, p0, v2

    .line 78
    const-string v1, "isLonLat isLonLat = {?}"

    .line 80
    invoke-static {v0, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return v3
.end method

.method public static final p(Ljava/util/ArrayList;)Z
    .locals 7

    .line 1
    const-string v0, "[ALSimulate] AnnotationUtils"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    const/4 v3, 0x0

    .line 10
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_2

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    check-cast v4, [Ljava/lang/String;

    .line 22
    if-eqz v4, :cond_1

    .line 24
    array-length v5, v4

    .line 25
    const/4 v6, 0x2

    .line 26
    if-ne v5, v6, :cond_1

    .line 28
    const-string v5, "isMustFill"

    .line 30
    aget-object v6, v4, v2

    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 38
    aget-object v4, v4, v1

    .line 40
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 43
    move-result v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string v4, "isMustFill assertRuleUnit == null ||  assertRuleUnit.length != 2"

    .line 47
    new-array v5, v2, [Ljava/lang/Object;

    .line 49
    invoke-static {v0, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :catch_1
    move-exception p0

    .line 56
    const/4 v3, 0x0

    .line 57
    :goto_1
    new-array v4, v1, [Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    aput-object p0, v4, v2

    .line 65
    const-string p0, "isMustFill ex = {?}"

    .line 67
    invoke-static {v0, p0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_2
    new-array p0, v1, [Ljava/lang/Object;

    .line 72
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    move-result-object v1

    .line 76
    aput-object v1, p0, v2

    .line 78
    const-string v1, "isMustFill isMustFill = {?}"

    .line 80
    invoke-static {v0, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return v3
.end method

.method public static final q(Ljava/util/ArrayList;)D
    .locals 8

    .line 1
    const-string v0, "[ALSimulate] AnnotationUtils"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-wide/16 v3, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v5

    .line 15
    if-eqz v5, :cond_2

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v5

    .line 21
    check-cast v5, [Ljava/lang/String;

    .line 23
    if-eqz v5, :cond_1

    .line 25
    array-length v6, v5

    .line 26
    const/4 v7, 0x2

    .line 27
    if-ne v6, v7, :cond_1

    .line 29
    const-string v6, "maxDoubleValue"

    .line 31
    aget-object v7, v5, v2

    .line 33
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_0

    .line 39
    aget-object v5, v5, v1

    .line 41
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 44
    move-result-wide v3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string v5, "maxDoubleValue assertRuleUnit == null ||  assertRuleUnit.length != 2"

    .line 48
    new-array v6, v2, [Ljava/lang/Object;

    .line 50
    invoke-static {v0, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    new-array v5, v1, [Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    aput-object p0, v5, v2

    .line 63
    const-string p0, "maxDoubleValue ex = {?}"

    .line 65
    invoke-static {v0, p0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_2
    new-array p0, v1, [Ljava/lang/Object;

    .line 70
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 73
    move-result-object v1

    .line 74
    aput-object v1, p0, v2

    .line 76
    const-string v1, "maxDoubleValue maxDoubleValue = {?}"

    .line 78
    invoke-static {v0, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return-wide v3
.end method

.method public static final r(Ljava/util/ArrayList;)I
    .locals 7

    .line 1
    const-string v0, "[ALSimulate] AnnotationUtils"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const v3, 0x7fffffff

    .line 8
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_2

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    check-cast v4, [Ljava/lang/String;

    .line 24
    if-eqz v4, :cond_1

    .line 26
    array-length v5, v4

    .line 27
    const/4 v6, 0x2

    .line 28
    if-ne v5, v6, :cond_1

    .line 30
    const-string v5, "maxValue"

    .line 32
    aget-object v6, v4, v2

    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_0

    .line 40
    aget-object v4, v4, v1

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    move-result v3

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v4, "maxValue assertRuleUnit == null ||  assertRuleUnit.length != 2"

    .line 49
    new-array v5, v2, [Ljava/lang/Object;

    .line 51
    invoke-static {v0, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    new-array v4, v1, [Ljava/lang/Object;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    aput-object p0, v4, v2

    .line 64
    const-string p0, "maxValue ex = {?}"

    .line 66
    invoke-static {v0, p0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_2
    new-array p0, v1, [Ljava/lang/Object;

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v1

    .line 75
    aput-object v1, p0, v2

    .line 77
    const-string v1, "maxValue maxValue = {?}"

    .line 79
    invoke-static {v0, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return v3
.end method

.method public static final s(Ljava/util/ArrayList;)D
    .locals 8

    .line 1
    const-string v0, "[ALSimulate] AnnotationUtils"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-wide/16 v3, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v5

    .line 15
    if-eqz v5, :cond_2

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v5

    .line 21
    check-cast v5, [Ljava/lang/String;

    .line 23
    if-eqz v5, :cond_1

    .line 25
    array-length v6, v5

    .line 26
    const/4 v7, 0x2

    .line 27
    if-ne v6, v7, :cond_1

    .line 29
    const-string v6, "minDoubleValue"

    .line 31
    aget-object v7, v5, v2

    .line 33
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_0

    .line 39
    aget-object v5, v5, v1

    .line 41
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 44
    move-result-wide v3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string v5, "minDoubleValue assertRuleUnit == null ||  assertRuleUnit.length != 2"

    .line 48
    new-array v6, v2, [Ljava/lang/Object;

    .line 50
    invoke-static {v0, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    new-array v5, v1, [Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    aput-object p0, v5, v2

    .line 63
    const-string p0, "minDoubleValue ex = {?}"

    .line 65
    invoke-static {v0, p0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_2
    new-array p0, v1, [Ljava/lang/Object;

    .line 70
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 73
    move-result-object v1

    .line 74
    aput-object v1, p0, v2

    .line 76
    const-string v1, "minDoubleValue minDoubleValue = {?}"

    .line 78
    invoke-static {v0, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return-wide v3
.end method

.method public static final t(Ljava/util/ArrayList;)I
    .locals 7

    .line 1
    const-string v0, "[ALSimulate] AnnotationUtils"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/high16 v3, -0x80000000

    .line 7
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_2

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 21
    check-cast v4, [Ljava/lang/String;

    .line 23
    if-eqz v4, :cond_1

    .line 25
    array-length v5, v4

    .line 26
    const/4 v6, 0x2

    .line 27
    if-ne v5, v6, :cond_1

    .line 29
    const-string v5, "minValue"

    .line 31
    aget-object v6, v4, v2

    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_0

    .line 39
    aget-object v4, v4, v1

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    move-result v3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string v4, "minValue assertRuleUnit == null ||  assertRuleUnit.length != 2"

    .line 48
    new-array v5, v2, [Ljava/lang/Object;

    .line 50
    invoke-static {v0, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    new-array v4, v1, [Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    aput-object p0, v4, v2

    .line 63
    const-string p0, "minValue ex = {?}"

    .line 65
    invoke-static {v0, p0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_2
    new-array p0, v1, [Ljava/lang/Object;

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v1

    .line 74
    aput-object v1, p0, v2

    .line 76
    const-string v1, "minValue minValue = {?}"

    .line 78
    invoke-static {v0, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return v3
.end method
