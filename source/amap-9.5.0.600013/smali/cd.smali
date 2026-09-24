.class public abstract Lcd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    const-string v0, "="

    .line 3
    invoke-static {p0, v0}, Lcd;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const/4 v3, 0x1

    .line 8
    aput-object p1, v1, v3

    .line 10
    const-string v4, "[ALSimulate] BroadcastAnnotationDataParserUtils"

    .line 12
    const-string v5, "parseAnnotationDataWithSplitSymbol annotationDataStrings = {?},splitSymbol = {?}"

    .line 14
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    if-eqz p0, :cond_3

    .line 24
    if-eqz p1, :cond_3

    .line 26
    const-string v5, ","

    .line 28
    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_4

    .line 34
    array-length v5, p0

    .line 35
    const/4 v6, 0x0

    .line 36
    :goto_0
    if-ge v6, v5, :cond_4

    .line 38
    aget-object v7, p0, v6

    .line 40
    invoke-virtual {v7, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 43
    move-result-object v7

    .line 44
    if-eqz v7, :cond_2

    .line 46
    array-length v8, v7

    .line 47
    if-ne v8, v0, :cond_2

    .line 49
    aget-object v8, v7, v2

    .line 51
    if-eqz v8, :cond_0

    .line 53
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 56
    move-result-object v8

    .line 57
    aput-object v8, v7, v2

    .line 59
    :cond_0
    aget-object v8, v7, v3

    .line 61
    if-eqz v8, :cond_1

    .line 63
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 66
    move-result-object v8

    .line 67
    aput-object v8, v7, v3

    .line 69
    :cond_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const-string v7, "parseAnnotationDataWithSplitSymbol subAnnotationDataStringArray==null || subAnnotationDataStringArray.length != 2"

    .line 75
    new-array v8, v2, [Ljava/lang/Object;

    .line 77
    invoke-static {v4, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const-string p0, "parseAnnotationDataWithSplitSymbol annotationDataStrings == null || splitSymbol == null"

    .line 85
    new-array p1, v2, [Ljava/lang/Object;

    .line 87
    invoke-static {v4, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_4
    return-object v1
.end method
