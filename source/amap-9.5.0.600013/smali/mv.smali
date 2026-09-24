.class public Lmv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmv$c;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Properties;

.field public b:Ljava/lang/String;

.field public final c:Llv;

.field public d:Lkv;

.field public e:Lnv;

.field public f:Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lmv;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Lmv$b;

    invoke-direct {v0, p0}, Lmv$b;-><init>(Lmv;)V

    iput-object v0, p0, Lmv;->f:Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative$a;

    .line 5
    new-instance v0, Llv;

    invoke-direct {v0}, Llv;-><init>()V

    iput-object v0, p0, Lmv;->c:Llv;

    .line 6
    invoke-static {}, Lnv;->c()Lnv;

    move-result-object v0

    iput-object v0, p0, Lmv;->e:Lnv;

    .line 7
    invoke-virtual {p0}, Lmv;->m()V

    return-void
.end method

.method public synthetic constructor <init>(Lmv$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmv;-><init>()V

    return-void
.end method

.method public static synthetic a(Lmv;)Lkv;
    .locals 0

    .line 1
    iget-object p0, p0, Lmv;->d:Lkv;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lmv;Lkv;)Lkv;
    .locals 0

    .line 1
    iput-object p1, p0, Lmv;->d:Lkv;

    .line 3
    return-object p1
.end method

.method public static synthetic c(Lmv;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmv;->b:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic d(Lmv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lmv;->b:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic e(Lmv;)Lnv;
    .locals 0

    .line 1
    iget-object p0, p0, Lmv;->e:Lnv;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lmv;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmv;->h()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic g(Lmv;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmv;->i()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static k()Lmv;
    .locals 1

    .line 1
    invoke-static {}, Lmv$c;->a()Lmv;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final h()Z
    .locals 13

    .line 1
    iget-object v0, p0, Lmv;->e:Lnv;

    .line 3
    const-string v1, "isViewedAnswer"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lnv;->b(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    const-string v1, "IssueClusionManager"

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 15
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object v0

    .line 21
    aput-object v0, v3, v2

    .line 23
    const-string v0, "checkNeedAnswerPopup isViewedAnswer={?}"

    .line 25
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return v2

    .line 29
    :cond_0
    iget-object v0, p0, Lmv;->e:Lnv;

    .line 31
    const-string v4, "closedAnswerTimes"

    .line 33
    invoke-virtual {v0, v4, v2}, Lnv;->d(Ljava/lang/String;I)I

    .line 36
    move-result v0

    .line 37
    if-le v0, v3, :cond_1

    .line 39
    new-array v3, v3, [Ljava/lang/Object;

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v0

    .line 45
    aput-object v0, v3, v2

    .line 47
    const-string v0, "checkNeedAnswerPopup closedAnswerTimes > 1,closedAnswerTimes={?}"

    .line 49
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    const/4 v4, -0x1

    .line 53
    const/4 v5, -0x1

    .line 54
    const/4 v6, 0x1

    .line 55
    const/4 v7, -0x1

    .line 56
    iget-object v8, p0, Lmv;->b:Ljava/lang/String;

    .line 58
    const-string v9, ""

    .line 60
    const-string v10, ""

    .line 62
    const-string v11, ""

    .line 64
    invoke-static/range {v4 .. v11}, Ljv;->a(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return v2

    .line 68
    :cond_1
    iget-object v0, p0, Lmv;->e:Lnv;

    .line 70
    const-string v4, "viewedAnswerDate"

    .line 72
    invoke-virtual {v0, v4}, Lnv;->f(Ljava/lang/String;)Z

    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_2

    .line 78
    const-string v0, "checkNeedAnswerPopup not hasKey KEY_VIEWED_ANSWER_DATE"

    .line 80
    new-array v2, v2, [Ljava/lang/Object;

    .line 82
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return v3

    .line 86
    :cond_2
    iget-object v0, p0, Lmv;->e:Lnv;

    .line 88
    const-wide/16 v5, 0x0

    .line 90
    invoke-virtual {v0, v4, v5, v6}, Lnv;->e(Ljava/lang/String;J)J

    .line 93
    move-result-wide v5

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    move-result-wide v7

    .line 98
    sub-long v9, v7, v5

    .line 100
    const-wide/32 v11, 0x5265c00

    .line 103
    div-long/2addr v9, v11

    .line 104
    const/4 v0, -0x1

    .line 105
    invoke-virtual {p0, v4, v0}, Lmv;->j(Ljava/lang/String;I)I

    .line 108
    move-result v0

    .line 109
    if-lez v0, :cond_3

    .line 111
    new-array v4, v3, [Ljava/lang/Object;

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v9

    .line 117
    aput-object v9, v4, v2

    .line 119
    const-string v9, "checkNeedAnswerPopup backDoorViewedAnswerDate={?}"

    .line 121
    invoke-static {v1, v9, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    int-to-long v9, v0

    .line 125
    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 127
    const-string v4, "yyyyMMdd HH:mm:ss"

    .line 129
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 132
    move-result-object v11

    .line 133
    invoke-direct {v0, v4, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 136
    const/4 v4, 0x3

    .line 137
    new-array v4, v4, [Ljava/lang/Object;

    .line 139
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v0, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    move-result-object v5

    .line 147
    aput-object v5, v4, v2

    .line 149
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v0, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 157
    aput-object v0, v4, v3

    .line 159
    const/4 v0, 0x2

    .line 160
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    move-result-object v5

    .line 164
    aput-object v5, v4, v0

    .line 166
    const-string v0, "checkNeedAnswerPopup, preview time:{?}, current time:{?}, days:{?}"

    .line 168
    invoke-static {v1, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    const-wide/16 v4, 0x3

    .line 173
    cmp-long v0, v9, v4

    .line 175
    if-gez v0, :cond_4

    .line 177
    new-array v0, v3, [Ljava/lang/Object;

    .line 179
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 182
    move-result-object v3

    .line 183
    aput-object v3, v0, v2

    .line 185
    const-string v3, "checkNeedAnswerPopup days < DONT_REPEAT_POPUP_DAYS,days={?}"

    .line 187
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    return v2

    .line 191
    :cond_4
    return v3
.end method

.method public final i()Z
    .locals 13

    .line 1
    iget-object v0, p0, Lmv;->e:Lnv;

    .line 3
    const-string v1, "isViewedAnswer"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lnv;->b(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    const-string v1, "IssueClusionManager"

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez v0, :cond_0

    .line 15
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object v0

    .line 21
    aput-object v0, v3, v2

    .line 23
    const-string v0, "checkNeedQuestionnairePopup isViewedAnswer={?}"

    .line 25
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return v2

    .line 29
    :cond_0
    iget-object v0, p0, Lmv;->e:Lnv;

    .line 31
    const-string v4, "closedQuestionnaireTimes"

    .line 33
    invoke-virtual {v0, v4, v2}, Lnv;->d(Ljava/lang/String;I)I

    .line 36
    move-result v0

    .line 37
    if-le v0, v3, :cond_1

    .line 39
    new-array v3, v3, [Ljava/lang/Object;

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v0

    .line 45
    aput-object v0, v3, v2

    .line 47
    const-string v0, "checkNeedQuestionnairePopup closedQuestionnaireTimes > 1,closedQuestionnaireTimes={?}"

    .line 49
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    const/4 v4, -0x1

    .line 53
    const/4 v5, -0x1

    .line 54
    const/4 v6, 0x1

    .line 55
    const/4 v7, -0x1

    .line 56
    iget-object v8, p0, Lmv;->b:Ljava/lang/String;

    .line 58
    const-string v9, ""

    .line 60
    const-string v10, ""

    .line 62
    const-string v11, ""

    .line 64
    invoke-static/range {v4 .. v11}, Ljv;->a(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return v2

    .line 68
    :cond_1
    iget-object v0, p0, Lmv;->e:Lnv;

    .line 70
    const-string v4, "viewedQuestionnaireDate"

    .line 72
    invoke-virtual {v0, v4}, Lnv;->f(Ljava/lang/String;)Z

    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_2

    .line 78
    const-string v0, "checkNeedQuestionnairePopup not hasKey KEY_VIEWED_QUESTIONNAIRE_DATE"

    .line 80
    new-array v2, v2, [Ljava/lang/Object;

    .line 82
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return v3

    .line 86
    :cond_2
    iget-object v0, p0, Lmv;->e:Lnv;

    .line 88
    const-wide/16 v5, 0x0

    .line 90
    invoke-virtual {v0, v4, v5, v6}, Lnv;->e(Ljava/lang/String;J)J

    .line 93
    move-result-wide v5

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    move-result-wide v7

    .line 98
    sub-long v9, v7, v5

    .line 100
    const-wide/32 v11, 0x5265c00

    .line 103
    div-long/2addr v9, v11

    .line 104
    const/4 v0, -0x1

    .line 105
    invoke-virtual {p0, v4, v0}, Lmv;->j(Ljava/lang/String;I)I

    .line 108
    move-result v0

    .line 109
    if-lez v0, :cond_3

    .line 111
    new-array v4, v3, [Ljava/lang/Object;

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v9

    .line 117
    aput-object v9, v4, v2

    .line 119
    const-string v9, "checkNeedQuestionnairePopup backDoorViewedQuestionnaireDate={?}"

    .line 121
    invoke-static {v1, v9, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    int-to-long v9, v0

    .line 125
    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 127
    const-string v4, "yyyyMMdd HH:mm:ss"

    .line 129
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 132
    move-result-object v11

    .line 133
    invoke-direct {v0, v4, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 136
    const/4 v4, 0x3

    .line 137
    new-array v4, v4, [Ljava/lang/Object;

    .line 139
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v0, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    move-result-object v5

    .line 147
    aput-object v5, v4, v2

    .line 149
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v0, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 157
    aput-object v0, v4, v3

    .line 159
    const/4 v0, 0x2

    .line 160
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    move-result-object v5

    .line 164
    aput-object v5, v4, v0

    .line 166
    const-string v0, "checkNeedQuestionnairePopup, preview time:{?}, current time:{?}, days:{?}"

    .line 168
    invoke-static {v1, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    const-wide/16 v4, 0x3

    .line 173
    cmp-long v0, v9, v4

    .line 175
    if-gez v0, :cond_4

    .line 177
    new-array v0, v3, [Ljava/lang/Object;

    .line 179
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 182
    move-result-object v3

    .line 183
    aput-object v3, v0, v2

    .line 185
    const-string v3, "checkNeedQuestionnairePopup days < DONT_REPEAT_POPUP_DAYS,days={?}"

    .line 187
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    return v2

    .line 191
    :cond_4
    return v3
.end method

.method public j(Ljava/lang/String;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lmv;->a:Ljava/util/Properties;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p1

    .line 14
    :catch_0
    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    const/4 v1, 0x0

    .line 18
    aput-object p1, v0, v1

    .line 20
    const-string p1, "IssueClusionManager"

    .line 22
    const-string v1, "getDebugIntOption exception,key:{?}"

    .line 24
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :cond_0
    return p2
.end method

.method public l(Landroid/content/Context;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmv;->f:Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative$a;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative;->setIIssueClusionPopupInfoInterface(Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative$a;)V

    .line 6
    iget-object v0, p0, Lmv;->e:Lnv;

    .line 8
    invoke-virtual {v0}, Lnv;->g()V

    .line 11
    iget-object v0, p0, Lmv;->c:Llv;

    .line 13
    new-instance v1, Lmv$a;

    .line 15
    invoke-direct {v1, p0}, Lmv$a;-><init>(Lmv;)V

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, p1, v2, v1}, Llv;->a(Landroid/content/Context;ZLlv$a;)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public final m()V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-static {}, Lr50;->d()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "AutoDeviceAdapter/IssueDebugOption.txt"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v1, 0x2

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    aput-object v2, v1, v3

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 40
    move-result v2

    .line 41
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    move-result-object v2

    .line 45
    const/4 v4, 0x1

    .line 46
    aput-object v2, v1, v4

    .line 48
    const-string v2, "IssueClusionManager"

    .line 50
    const-string v4, "readDebugFile:{?}, exists:{?}"

    .line 52
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x0

    .line 62
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 64
    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    new-instance v0, Ljava/util/Properties;

    .line 69
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 72
    iput-object v0, p0, Lmv;->a:Ljava/util/Properties;

    .line 74
    invoke-virtual {v0, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    :goto_0
    invoke-static {v4}, Lns;->a(Ljava/io/Closeable;)V

    .line 80
    goto :goto_3

    .line 81
    :catch_0
    move-exception v0

    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_2

    .line 85
    :catch_1
    move-exception v0

    .line 86
    move-object v4, v1

    .line 87
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    const-string v5, "exception"

    .line 92
    new-array v3, v3, [Ljava/lang/Object;

    .line 94
    invoke-static {v2, v5, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 97
    iput-object v1, p0, Lmv;->a:Ljava/util/Properties;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    goto :goto_0

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    move-object v1, v4

    .line 102
    :goto_2
    invoke-static {v1}, Lns;->a(Ljava/io/Closeable;)V

    .line 105
    throw v0

    .line 106
    :cond_0
    :goto_3
    return-void
.end method
