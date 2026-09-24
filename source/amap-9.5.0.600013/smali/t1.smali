.class public Lt1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt1$c;,
        Lt1$e;,
        Lt1$d;,
        Lt1$b;
    }
.end annotation


# instance fields
.field public final a:[I

.field public b:Lp1;

.field public c:Lt1$e;

.field public d:Lt1$c;

.field public e:Ljava/util/List;

.field public f:Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    iput-object v0, p0, Lt1;->a:[I

    .line 4
    new-instance v0, Lt1$a;

    invoke-direct {v0, p0}, Lt1$a;-><init>(Lt1;)V

    iput-object v0, p0, Lt1;->f:Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x3e8
    .end array-data
.end method

.method public synthetic constructor <init>(Lt1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt1;-><init>()V

    return-void
.end method

.method public static synthetic a(Lt1;)Lt1$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lt1;->c:Lt1$e;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lt1;)Lt1$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lt1;->d:Lt1$c;

    .line 3
    return-object p0
.end method

.method public static synthetic c(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lt1;->j(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic d(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lt1;->i(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic e(Lt1;)Lp1;
    .locals 0

    .line 1
    iget-object p0, p0, Lt1;->b:Lp1;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lt1;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lt1;->h()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic g(Lt1;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lt1;->n()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static i(I)I
    .locals 0

    .line 1
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static j(I)I
    .locals 0

    .line 1
    shr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static k(II)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x10

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method public static m()Lt1;
    .locals 1

    .line 1
    invoke-static {}, Lt1$d;->a()Lt1;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final h()Z
    .locals 13

    .line 1
    iget-object v0, p0, Lt1;->c:Lt1$e;

    .line 3
    invoke-static {v0}, Lt1$e;->c(Lt1$e;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lt1;->b:Lp1;

    .line 13
    const-string v2, "surveyRequestTimes"

    .line 15
    invoke-virtual {v0, v2, v1}, Lp1;->c(Ljava/lang/String;I)I

    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x1

    .line 20
    new-array v3, v2, [Ljava/lang/Object;

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v4

    .line 26
    aput-object v4, v3, v1

    .line 28
    const-string v4, "AdapterSurveyManager"

    .line 30
    const-string v5, "checkNeedPopup, surveyRequestTimes:{?}"

    .line 32
    invoke-static {v4, v5, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    if-gt v0, v2, :cond_1

    .line 37
    return v1

    .line 38
    :cond_1
    iget-object v0, p0, Lt1;->b:Lp1;

    .line 40
    const-string v3, "surveyedDate"

    .line 42
    const-wide/16 v5, 0x0

    .line 44
    invoke-virtual {v0, v3, v5, v6}, Lp1;->d(Ljava/lang/String;J)J

    .line 47
    move-result-wide v5

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    move-result-wide v7

    .line 52
    sub-long v9, v7, v5

    .line 54
    const-wide/32 v11, 0x5265c00

    .line 57
    div-long/2addr v9, v11

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 60
    const-string v3, "yyyyMMdd HH:mm:ss"

    .line 62
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 65
    move-result-object v11

    .line 66
    invoke-direct {v0, v3, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 69
    const/4 v3, 0x3

    .line 70
    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v0, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    move-result-object v5

    .line 80
    aput-object v5, v3, v1

    .line 82
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v0, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    aput-object v0, v3, v2

    .line 92
    const/4 v0, 0x2

    .line 93
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    move-result-object v5

    .line 97
    aput-object v5, v3, v0

    .line 99
    const-string v0, "checkNeedPopup, preview time:{?}, current time:{?}, days:{?}"

    .line 101
    invoke-static {v4, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    const-wide/16 v3, 0x3

    .line 106
    cmp-long v0, v9, v3

    .line 108
    if-gez v0, :cond_2

    .line 110
    return v1

    .line 111
    :cond_2
    return v2
.end method

.method public l(Ljava/util/List;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;

    .line 22
    iget-object v2, p0, Lt1;->e:Ljava/util/List;

    .line 24
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v2

    .line 28
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lt1$b;

    .line 40
    iget v4, v1, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;->id:I

    .line 42
    invoke-static {v4}, Lt1;->j(I)I

    .line 45
    move-result v4

    .line 46
    iget v5, v3, Lt1$b;->a:I

    .line 48
    if-ne v4, v5, :cond_1

    .line 50
    iget v4, v1, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;->id:I

    .line 52
    invoke-static {v4}, Lt1;->i(I)I

    .line 55
    move-result v4

    .line 56
    iget v5, v3, Lt1$b;->b:I

    .line 58
    if-ne v4, v5, :cond_1

    .line 60
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lt1;->e:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lt1$b;

    .line 24
    iget-object v3, p0, Lt1;->c:Lt1$e;

    .line 26
    invoke-static {v3, v2}, Lt1$e;->d(Lt1$e;Lt1$b;)Lt1$e$a;

    .line 29
    move-result-object v3

    .line 30
    const/4 v4, 0x1

    .line 31
    const/4 v5, 0x0

    .line 32
    const-string v6, "AdapterSurveyManager"

    .line 34
    const/4 v7, 0x2

    .line 35
    if-nez v3, :cond_0

    .line 37
    new-array v3, v7, [Ljava/lang/Object;

    .line 39
    iget v7, v2, Lt1$b;->a:I

    .line 41
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v7

    .line 45
    aput-object v7, v3, v5

    .line 47
    iget v2, v2, Lt1$b;->b:I

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v2

    .line 53
    aput-object v2, v3, v4

    .line 55
    const-string v2, "not fount QuestionTextInfo,moduleType:{?}, keyType{?}"

    .line 57
    invoke-static {v6, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v8, p0, Lt1;->d:Lt1$c;

    .line 63
    invoke-virtual {v8, v2}, Lt1$c;->a(Lt1$b;)I

    .line 66
    move-result v8

    .line 67
    if-lt v8, v7, :cond_1

    .line 69
    const/4 v3, 0x3

    .line 70
    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    iget v9, v2, Lt1$b;->a:I

    .line 74
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v9

    .line 78
    aput-object v9, v3, v5

    .line 80
    iget v2, v2, Lt1$b;->b:I

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v2

    .line 86
    aput-object v2, v3, v4

    .line 88
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v2

    .line 92
    aput-object v2, v3, v7

    .line 94
    const-string v2, "moduleType:{?}, keyType{?}, appear time is {?}"

    .line 96
    invoke-static {v6, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    new-instance v2, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;

    .line 102
    invoke-direct {v2}, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;-><init>()V

    .line 105
    iget-object v4, v3, Lt1$e$a;->e:Ljava/util/List;

    .line 107
    iput-object v4, v2, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;->listOptions:Ljava/util/List;

    .line 109
    iget-object v4, v3, Lt1$e$a;->d:Ljava/lang/String;

    .line 111
    iput-object v4, v2, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;->title:Ljava/lang/String;

    .line 113
    iget v4, v3, Lt1$e$a;->a:I

    .line 115
    iget v3, v3, Lt1$e$a;->b:I

    .line 117
    invoke-static {v4, v3}, Lt1;->k(II)I

    .line 120
    move-result v3

    .line 121
    iput v3, v2, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;->id:I

    .line 123
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    goto :goto_0

    .line 127
    :cond_2
    return-object v0
.end method

.method public o(Lp1;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AdapterSurveyManager"

    .line 6
    const-string v3, "init start"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lt1;->p()V

    .line 14
    iget-object v1, p0, Lt1;->e:Ljava/util/List;

    .line 16
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    const-string p1, "init end\uff0cmListCrnAdapter is empty"

    .line 24
    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v1, Lt1$e;

    .line 32
    invoke-direct {v1}, Lt1$e;-><init>()V

    .line 35
    iput-object v1, p0, Lt1;->c:Lt1$e;

    .line 37
    invoke-static {v1}, Lt1$e;->b(Lt1$e;)V

    .line 40
    iget-object v1, p0, Lt1;->c:Lt1$e;

    .line 42
    invoke-static {v1}, Lt1$e;->c(Lt1$e;)Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 48
    const-string p1, "init end\uff0cmSurveyConfig.isEnable is false"

    .line 50
    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void

    .line 56
    :cond_1
    iput-object p1, p0, Lt1;->b:Lp1;

    .line 58
    const-string v1, "fileVersion"

    .line 60
    const-wide/16 v3, 0x0

    .line 62
    invoke-virtual {p1, v1, v3, v4}, Lp1;->d(Ljava/lang/String;J)J

    .line 65
    move-result-wide v5

    .line 66
    iget-object p1, p0, Lt1;->b:Lp1;

    .line 68
    const-string v1, "surveyedDataVersion"

    .line 70
    invoke-virtual {p1, v1, v3, v4}, Lp1;->d(Ljava/lang/String;J)J

    .line 73
    move-result-wide v7

    .line 74
    cmp-long p1, v5, v3

    .line 76
    if-eqz p1, :cond_2

    .line 78
    cmp-long p1, v5, v7

    .line 80
    if-eqz p1, :cond_2

    .line 82
    iget-object p1, p0, Lt1;->b:Lp1;

    .line 84
    const-string v3, "surveyRequestTimes"

    .line 86
    invoke-virtual {p1, v3, v0}, Lp1;->i(Ljava/lang/String;I)V

    .line 89
    iget-object p1, p0, Lt1;->b:Lp1;

    .line 91
    invoke-virtual {p1, v1, v5, v6}, Lp1;->j(Ljava/lang/String;J)V

    .line 94
    const/4 p1, 0x1

    .line 95
    new-array p1, p1, [Ljava/lang/Object;

    .line 97
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    move-result-object v1

    .line 101
    aput-object v1, p1, v0

    .line 103
    const-string v1, "init, crnDataVersion={?}"

    .line 105
    invoke-static {v2, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_2
    new-instance p1, Lt1$c;

    .line 110
    invoke-direct {p1}, Lt1$c;-><init>()V

    .line 113
    iput-object p1, p0, Lt1;->d:Lt1$c;

    .line 115
    iget-object v1, p0, Lt1;->b:Lp1;

    .line 117
    invoke-virtual {p1, v1}, Lt1$c;->e(Lp1;)V

    .line 120
    iget-object p1, p0, Lt1;->d:Lt1$c;

    .line 122
    iget-object v1, p0, Lt1;->e:Ljava/util/List;

    .line 124
    invoke-virtual {p1, v1}, Lt1$c;->f(Ljava/util/List;)V

    .line 127
    iget-object p1, p0, Lt1;->f:Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;

    .line 129
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative;->setDeviceAdapterSurveyInterface(Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;)V

    .line 132
    const-string p1, "init end"

    .line 134
    new-array v0, v0, [Ljava/lang/Object;

    .line 136
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public final p()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iput-object v0, p0, Lt1;->e:Ljava/util/List;

    .line 8
    iget-object v0, p0, Lt1;->a:[I

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v1, :cond_6

    .line 15
    aget v4, v0, v3

    .line 17
    const/16 v5, 0x3e8

    .line 19
    if-ne v4, v5, :cond_1

    .line 21
    invoke-static {}, Lpi;->n()Lpi;

    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Lpi;->j()Lm1;

    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v5}, Ldc;->a()Landroid/util/SparseArray;

    .line 32
    move-result-object v5

    .line 33
    const/4 v6, 0x0

    .line 34
    :goto_1
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 37
    move-result v7

    .line 38
    if-ge v6, v7, :cond_5

    .line 40
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 43
    move-result-object v7

    .line 44
    check-cast v7, Ljava/lang/String;

    .line 46
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v8

    .line 50
    if-nez v8, :cond_0

    .line 52
    iget-object v8, p0, Lt1;->e:Ljava/util/List;

    .line 54
    new-instance v9, Lt1$b;

    .line 56
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 59
    move-result v10

    .line 60
    invoke-direct {v9, v4, v10, v7}, Lt1$b;-><init>(IILjava/lang/String;)V

    .line 63
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-static {}, Lpi;->n()Lpi;

    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v5, v4}, Lpi;->o(I)Lhc;

    .line 76
    move-result-object v5

    .line 77
    if-nez v5, :cond_2

    .line 79
    goto :goto_4

    .line 80
    :cond_2
    invoke-virtual {v5}, Lhc;->b()Landroid/util/SparseIntArray;

    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v5}, Lhc;->c()Landroid/util/SparseArray;

    .line 87
    move-result-object v5

    .line 88
    const/4 v7, 0x0

    .line 89
    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    .line 92
    move-result v8

    .line 93
    if-ge v7, v8, :cond_5

    .line 95
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 98
    move-result-object v8

    .line 99
    if-eqz v8, :cond_4

    .line 101
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 104
    move-result-object v8

    .line 105
    check-cast v8, Lfq;

    .line 107
    invoke-interface {v8}, Lfq;->a()Z

    .line 110
    move-result v8

    .line 111
    if-nez v8, :cond_3

    .line 113
    goto :goto_3

    .line 114
    :cond_3
    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 117
    move-result v8

    .line 118
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 121
    move-result-object v8

    .line 122
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    move-result v9

    .line 126
    if-nez v9, :cond_4

    .line 128
    iget-object v9, p0, Lt1;->e:Ljava/util/List;

    .line 130
    new-instance v10, Lt1$b;

    .line 132
    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 135
    move-result v11

    .line 136
    invoke-direct {v10, v4, v11, v8}, Lt1$b;-><init>(IILjava/lang/String;)V

    .line 139
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 144
    goto :goto_2

    .line 145
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 147
    goto/16 :goto_0

    .line 149
    :cond_6
    return-void
.end method
