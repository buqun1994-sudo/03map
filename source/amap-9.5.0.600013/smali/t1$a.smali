.class public Lt1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/util/List;

.field public b:Z

.field public final synthetic c:Lt1;


# direct methods
.method public constructor <init>(Lt1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt1$a;->c:Lt1;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lt1$a;->b:Z

    .line 9
    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurveyResult;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "AdapterSurveyManager"

    .line 4
    if-nez p1, :cond_0

    .line 6
    const-string p1, "onNotifyDevAdapterSurveyResult null"

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void

    .line 14
    :cond_0
    iget v2, p1, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurveyResult;->resultType:I

    .line 16
    const/4 v3, 0x3

    .line 17
    if-nez v2, :cond_1

    .line 19
    invoke-static {v3}, Ll1;->e(I)V

    .line 22
    goto/16 :goto_1

    .line 24
    :cond_1
    iget-object v2, p1, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurveyResult;->listAnswers:Ljava/util/List;

    .line 26
    if-nez v2, :cond_2

    .line 28
    const-string p1, "notifyDevAdapterSurveyResult, listAnswers null"

    .line 30
    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v2

    .line 40
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_4

    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterAnswer;

    .line 52
    iget v5, v4, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterAnswer;->optionsIndex:I

    .line 54
    const/4 v6, -0x1

    .line 55
    if-eq v5, v6, :cond_3

    .line 57
    iget v5, v4, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterAnswer;->id:I

    .line 59
    invoke-static {v5}, Lt1;->c(I)I

    .line 62
    move-result v5

    .line 63
    iget v6, v4, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterAnswer;->id:I

    .line 65
    invoke-static {v6}, Lt1;->d(I)I

    .line 68
    move-result v6

    .line 69
    const/4 v7, 0x4

    .line 70
    new-array v7, v7, [Ljava/lang/Object;

    .line 72
    iget v8, v4, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterAnswer;->id:I

    .line 74
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v8

    .line 78
    aput-object v8, v7, v0

    .line 80
    const/4 v8, 0x1

    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v9

    .line 85
    aput-object v9, v7, v8

    .line 87
    const/4 v8, 0x2

    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v9

    .line 92
    aput-object v9, v7, v8

    .line 94
    iget v8, v4, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterAnswer;->optionsIndex:I

    .line 96
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v8

    .line 100
    aput-object v8, v7, v3

    .line 102
    const-string v8, "onNotifyDevAdapterSurveyResult id:{?}, module:{?}, keyType{?}, choice:{?}"

    .line 104
    invoke-static {v1, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget v4, v4, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterAnswer;->optionsIndex:I

    .line 109
    iget-object v7, p1, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurveyResult;->contact:Ljava/lang/String;

    .line 111
    const-string v8, ""

    .line 113
    invoke-static {v5, v6, v4, v7, v8}, Ll1;->f(IIILjava/lang/String;Ljava/lang/String;)V

    .line 116
    goto :goto_0

    .line 117
    :cond_4
    iget-object v0, p0, Lt1$a;->c:Lt1;

    .line 119
    invoke-static {v0}, Lt1;->b(Lt1;)Lt1$c;

    .line 122
    move-result-object v0

    .line 123
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurveyResult;->listAnswers:Ljava/util/List;

    .line 125
    invoke-virtual {v0, p1}, Lt1$c;->h(Ljava/util/List;)V

    .line 128
    iget-object p1, p0, Lt1$a;->c:Lt1;

    .line 130
    invoke-static {p1}, Lt1;->b(Lt1;)Lt1$c;

    .line 133
    move-result-object p1

    .line 134
    iget-object v0, p0, Lt1$a;->c:Lt1;

    .line 136
    invoke-static {v0}, Lt1;->e(Lt1;)Lp1;

    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p1, v0}, Lt1$c;->g(Lp1;)V

    .line 143
    :goto_1
    new-instance p1, Lt1$a$c;

    .line 145
    invoke-direct {p1, p0}, Lt1$a$c;-><init>(Lt1$a;)V

    .line 148
    invoke-static {p1}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "AdapterSurveyManager"

    .line 13
    const-string v2, "onNotifyDevAdapterPopupOperationResult, result={?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {p1}, Ll1;->e(I)V

    .line 21
    if-eqz p1, :cond_0

    .line 23
    new-instance p1, Lt1$a$b;

    .line 25
    invoke-direct {p1, p0}, Lt1$a$b;-><init>(Lt1$a;)V

    .line 28
    invoke-static {p1}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 31
    :cond_0
    return-void
.end method

.method public c()Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurvey;
    .locals 9

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurvey;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurvey;-><init>()V

    .line 6
    iget-object v1, p0, Lt1$a;->c:Lt1;

    .line 8
    invoke-static {v1}, Lt1;->a(Lt1;)Lt1$e;

    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lt1$e;->a(Lt1$e;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurvey;->title:Ljava/lang/String;

    .line 18
    const/4 v2, 0x1

    .line 19
    new-array v3, v2, [Ljava/lang/Object;

    .line 21
    const/4 v4, 0x0

    .line 22
    aput-object v1, v3, v4

    .line 24
    const-string v1, "AdapterSurveyManager"

    .line 26
    const-string v5, "onReqDevAdapterSurvey, title={?}"

    .line 28
    invoke-static {v1, v5, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v3, p0, Lt1$a;->a:Ljava/util/List;

    .line 33
    if-eqz v3, :cond_0

    .line 35
    iput-object v3, v0, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurvey;->listQuestion:Ljava/util/List;

    .line 37
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v3

    .line 41
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_0

    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;

    .line 53
    const/4 v6, 0x5

    .line 54
    new-array v6, v6, [Ljava/lang/Object;

    .line 56
    iget v7, v5, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;->id:I

    .line 58
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v7

    .line 62
    aput-object v7, v6, v4

    .line 64
    iget v7, v5, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;->id:I

    .line 66
    invoke-static {v7}, Lt1;->c(I)I

    .line 69
    move-result v7

    .line 70
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v7

    .line 74
    aput-object v7, v6, v2

    .line 76
    iget v7, v5, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;->id:I

    .line 78
    invoke-static {v7}, Lt1;->d(I)I

    .line 81
    move-result v7

    .line 82
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v7

    .line 86
    const/4 v8, 0x2

    .line 87
    aput-object v7, v6, v8

    .line 89
    const/4 v7, 0x3

    .line 90
    iget-object v8, v5, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;->title:Ljava/lang/String;

    .line 92
    aput-object v8, v6, v7

    .line 94
    const/4 v7, 0x4

    .line 95
    iget-object v5, v5, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;->listOptions:Ljava/util/List;

    .line 97
    aput-object v5, v6, v7

    .line 99
    const-string v5, "onReqDevAdapterSurvey id:{?}, module:{?}, keyType:{?}, title:{?}, options:{?}"

    .line 101
    invoke-static {v1, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    return-object v0
.end method

.method public d()Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterPopupInfo;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AdapterSurveyManager"

    .line 6
    const-string v3, "onReqDevAdapterPopupInfo"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-boolean v1, p0, Lt1$a;->b:Z

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative;->setDeviceAdapterSurveyInterface(Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$c;)V

    .line 19
    new-instance v1, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterPopupInfo;

    .line 21
    invoke-direct {v1}, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterPopupInfo;-><init>()V

    .line 24
    iput-boolean v0, v1, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterPopupInfo;->isNeedPopup:Z

    .line 26
    const-string v3, "Life cycle request only once"

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return-object v1

    .line 34
    :cond_0
    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lt1$a;->b:Z

    .line 37
    iget-object v3, p0, Lt1$a;->c:Lt1;

    .line 39
    invoke-static {v3}, Lt1;->e(Lt1;)Lp1;

    .line 42
    move-result-object v3

    .line 43
    const-string v4, "surveyRequestTimes"

    .line 45
    invoke-virtual {v3, v4, v0}, Lp1;->c(Ljava/lang/String;I)I

    .line 48
    move-result v3

    .line 49
    iget-object v5, p0, Lt1$a;->c:Lt1;

    .line 51
    invoke-static {v5}, Lt1;->e(Lt1;)Lp1;

    .line 54
    move-result-object v5

    .line 55
    add-int/2addr v3, v1

    .line 56
    invoke-virtual {v5, v4, v3}, Lp1;->i(Ljava/lang/String;I)V

    .line 59
    new-instance v3, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterPopupInfo;

    .line 61
    invoke-direct {v3}, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterPopupInfo;-><init>()V

    .line 64
    iget-object v4, p0, Lt1$a;->c:Lt1;

    .line 66
    invoke-static {v4}, Lt1;->f(Lt1;)Z

    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_3

    .line 72
    iget-object v4, p0, Lt1$a;->c:Lt1;

    .line 74
    invoke-static {v4}, Lt1;->g(Lt1;)Ljava/util/List;

    .line 77
    move-result-object v4

    .line 78
    iput-object v4, p0, Lt1$a;->a:Ljava/util/List;

    .line 80
    new-array v5, v1, [Ljava/lang/Object;

    .line 82
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 85
    move-result v4

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v4

    .line 90
    aput-object v4, v5, v0

    .line 92
    const-string v4, "onReqDevAdapterPopupInfo, question size={?}"

    .line 94
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v4, p0, Lt1$a;->a:Ljava/util/List;

    .line 99
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_1

    .line 105
    iput-boolean v0, v3, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterPopupInfo;->isNeedPopup:Z

    .line 107
    goto/16 :goto_1

    .line 109
    :cond_1
    iput-boolean v1, v3, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterPopupInfo;->isNeedPopup:Z

    .line 111
    iget-object v4, p0, Lt1$a;->c:Lt1;

    .line 113
    invoke-static {v4}, Lt1;->a(Lt1;)Lt1$e;

    .line 116
    move-result-object v4

    .line 117
    invoke-static {v4}, Lt1$e;->a(Lt1$e;)Ljava/lang/String;

    .line 120
    move-result-object v4

    .line 121
    iput-object v4, v3, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterPopupInfo;->title:Ljava/lang/String;

    .line 123
    iget-object v4, p0, Lt1$a;->c:Lt1;

    .line 125
    invoke-static {v4}, Lt1;->a(Lt1;)Lt1$e;

    .line 128
    move-result-object v4

    .line 129
    iget-object v5, p0, Lt1$a;->a:Ljava/util/List;

    .line 131
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 134
    move-result v5

    .line 135
    invoke-virtual {v4, v5}, Lt1$e;->e(I)Ljava/lang/String;

    .line 138
    move-result-object v4

    .line 139
    iput-object v4, v3, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterPopupInfo;->content:Ljava/lang/String;

    .line 141
    const/4 v5, 0x2

    .line 142
    new-array v6, v5, [Ljava/lang/Object;

    .line 144
    iget-object v7, v3, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterPopupInfo;->title:Ljava/lang/String;

    .line 146
    aput-object v7, v6, v0

    .line 148
    aput-object v4, v6, v1

    .line 150
    const-string v4, "onReqDevAdapterPopupInfo, title={?}, content={?}"

    .line 152
    invoke-static {v2, v4, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v4, p0, Lt1$a;->a:Ljava/util/List;

    .line 157
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 160
    move-result-object v4

    .line 161
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    move-result v6

    .line 165
    if-eqz v6, :cond_2

    .line 167
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    move-result-object v6

    .line 171
    check-cast v6, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;

    .line 173
    const/4 v7, 0x5

    .line 174
    new-array v7, v7, [Ljava/lang/Object;

    .line 176
    iget v8, v6, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;->id:I

    .line 178
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    move-result-object v8

    .line 182
    aput-object v8, v7, v0

    .line 184
    iget v8, v6, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;->id:I

    .line 186
    invoke-static {v8}, Lt1;->c(I)I

    .line 189
    move-result v8

    .line 190
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    move-result-object v8

    .line 194
    aput-object v8, v7, v1

    .line 196
    iget v8, v6, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;->id:I

    .line 198
    invoke-static {v8}, Lt1;->d(I)I

    .line 201
    move-result v8

    .line 202
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    move-result-object v8

    .line 206
    aput-object v8, v7, v5

    .line 208
    const/4 v8, 0x3

    .line 209
    iget-object v9, v6, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;->title:Ljava/lang/String;

    .line 211
    aput-object v9, v7, v8

    .line 213
    const/4 v8, 0x4

    .line 214
    iget-object v6, v6, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterQuestion;->listOptions:Ljava/util/List;

    .line 216
    aput-object v6, v7, v8

    .line 218
    const-string v6, "onReqDevAdapterPopupInfo, question, id={?}, moduleType={?}, keyType={?}, title={?}, options={?}"

    .line 220
    invoke-static {v2, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    goto :goto_0

    .line 224
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 227
    move-result-wide v6

    .line 228
    iget-object v4, p0, Lt1$a;->c:Lt1;

    .line 230
    invoke-static {v4}, Lt1;->e(Lt1;)Lp1;

    .line 233
    move-result-object v4

    .line 234
    const-string v8, "surveyedDate"

    .line 236
    invoke-virtual {v4, v8, v6, v7}, Lp1;->j(Ljava/lang/String;J)V

    .line 239
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 241
    const-string v8, "yyyyMMdd HH:mm:ss"

    .line 243
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 246
    move-result-object v9

    .line 247
    invoke-direct {v4, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 250
    new-array v5, v5, [Ljava/lang/Object;

    .line 252
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 255
    move-result-object v8

    .line 256
    aput-object v8, v5, v0

    .line 258
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 261
    move-result-object v6

    .line 262
    invoke-virtual {v4, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 265
    move-result-object v4

    .line 266
    aput-object v4, v5, v1

    .line 268
    const-string v4, "onNotifyDevAdapterPopupOperationResult, save time:{?}, date:{?}"

    .line 270
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object v4, p0, Lt1$a;->c:Lt1;

    .line 275
    invoke-static {v4}, Lt1;->b(Lt1;)Lt1$c;

    .line 278
    move-result-object v4

    .line 279
    iget-object v5, p0, Lt1$a;->c:Lt1;

    .line 281
    iget-object v6, p0, Lt1$a;->a:Ljava/util/List;

    .line 283
    invoke-virtual {v5, v6}, Lt1;->l(Ljava/util/List;)Ljava/util/List;

    .line 286
    move-result-object v5

    .line 287
    invoke-virtual {v4, v5}, Lt1$c;->d(Ljava/util/List;)V

    .line 290
    iget-object v4, p0, Lt1$a;->c:Lt1;

    .line 292
    invoke-static {v4}, Lt1;->b(Lt1;)Lt1$c;

    .line 295
    move-result-object v4

    .line 296
    iget-object v5, p0, Lt1$a;->c:Lt1;

    .line 298
    invoke-static {v5}, Lt1;->e(Lt1;)Lp1;

    .line 301
    move-result-object v5

    .line 302
    invoke-virtual {v4, v5}, Lt1$c;->g(Lp1;)V

    .line 305
    goto :goto_1

    .line 306
    :cond_3
    iput-boolean v0, v3, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterPopupInfo;->isNeedPopup:Z

    .line 308
    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 310
    iget-boolean v4, v3, Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterPopupInfo;->isNeedPopup:Z

    .line 312
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 315
    move-result-object v4

    .line 316
    aput-object v4, v1, v0

    .line 318
    const-string v0, "onReqDevAdapterPopupInfo, isNeedPopup={?}"

    .line 320
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    new-instance v0, Lt1$a$a;

    .line 325
    invoke-direct {v0, p0}, Lt1$a$a;-><init>(Lt1$a;)V

    .line 328
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 331
    return-object v3
.end method
