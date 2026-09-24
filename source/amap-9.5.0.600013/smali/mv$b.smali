.class public Lmv$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionNative$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmv;


# direct methods
.method public constructor <init>(Lmv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmv$b;->a:Lmv;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a()Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionPopupInfo;
    .locals 13

    .line 1
    iget-object v0, p0, Lmv$b;->a:Lmv;

    .line 3
    invoke-static {v0}, Lmv;->a(Lmv;)Lkv;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_9

    .line 10
    const-string v0, "onReqIssueClusionPopupInfo"

    .line 12
    const/4 v2, 0x0

    .line 13
    new-array v3, v2, [Ljava/lang/Object;

    .line 15
    const-string v4, "IssueClusionManager"

    .line 17
    invoke-static {v4, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    new-instance v0, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionPopupInfo;

    .line 22
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionPopupInfo;-><init>()V

    .line 25
    new-instance v3, Lcom/autonavi/amapauto/jni/issueclusion/IssuePopupInfoDetail;

    .line 27
    invoke-direct {v3}, Lcom/autonavi/amapauto/jni/issueclusion/IssuePopupInfoDetail;-><init>()V

    .line 30
    const/4 v5, 0x1

    .line 31
    iput-boolean v5, v0, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionPopupInfo;->isShowRedDot:Z

    .line 33
    iput-boolean v5, v0, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionPopupInfo;->isShowFeedbackBtn:Z

    .line 35
    iget-object v6, p0, Lmv$b;->a:Lmv;

    .line 37
    invoke-static {v6}, Lmv;->e(Lmv;)Lnv;

    .line 40
    move-result-object v6

    .line 41
    const-string v7, "isFeedbackValid"

    .line 43
    invoke-virtual {v6, v7, v2}, Lnv;->b(Ljava/lang/String;Z)Z

    .line 46
    move-result v6

    .line 47
    iget-object v7, p0, Lmv$b;->a:Lmv;

    .line 49
    invoke-static {v7}, Lmv;->e(Lmv;)Lnv;

    .line 52
    move-result-object v7

    .line 53
    const-string v8, "isFeedbackInvalid"

    .line 55
    invoke-virtual {v7, v8, v2}, Lnv;->b(Ljava/lang/String;Z)Z

    .line 58
    move-result v7

    .line 59
    const/4 v8, 0x2

    .line 60
    if-nez v6, :cond_8

    .line 62
    if-eqz v7, :cond_0

    .line 64
    goto/16 :goto_4

    .line 66
    :cond_0
    iget-object v1, p0, Lmv$b;->a:Lmv;

    .line 68
    invoke-static {v1}, Lmv;->e(Lmv;)Lnv;

    .line 71
    move-result-object v1

    .line 72
    const-string v6, "isViewedAnswer"

    .line 74
    invoke-virtual {v1, v6, v2}, Lnv;->b(Ljava/lang/String;Z)Z

    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_1

    .line 80
    iput-boolean v2, v0, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionPopupInfo;->isShowRedDot:Z

    .line 82
    :cond_1
    iget-object v1, p0, Lmv$b;->a:Lmv;

    .line 84
    invoke-static {v1}, Lmv;->f(Lmv;)Z

    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_2

    .line 90
    iget-object v7, p0, Lmv$b;->a:Lmv;

    .line 92
    invoke-static {v7}, Lmv;->g(Lmv;)Z

    .line 95
    move-result v7

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const/4 v7, 0x0

    .line 98
    :goto_0
    if-nez v1, :cond_4

    .line 100
    if-eqz v7, :cond_3

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    const/4 v9, 0x0

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    :goto_1
    const/4 v9, 0x1

    .line 106
    :goto_2
    iput-boolean v9, v0, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionPopupInfo;->isNeedPopup:Z

    .line 108
    iget-object v9, p0, Lmv$b;->a:Lmv;

    .line 110
    invoke-static {v9}, Lmv;->e(Lmv;)Lnv;

    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v9, v6, v2}, Lnv;->b(Ljava/lang/String;Z)Z

    .line 117
    move-result v6

    .line 118
    iput-boolean v6, v0, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionPopupInfo;->isViewedAnswer:Z

    .line 120
    iput v5, v3, Lcom/autonavi/amapauto/jni/issueclusion/IssuePopupInfoDetail;->popupType:I

    .line 122
    iget-object v6, p0, Lmv$b;->a:Lmv;

    .line 124
    invoke-static {v6}, Lmv;->a(Lmv;)Lkv;

    .line 127
    move-result-object v6

    .line 128
    iget-object v6, v6, Lkv;->e:Ljava/lang/String;

    .line 130
    iput-object v6, v3, Lcom/autonavi/amapauto/jni/issueclusion/IssuePopupInfoDetail;->title:Ljava/lang/String;

    .line 132
    iget-object v6, p0, Lmv$b;->a:Lmv;

    .line 134
    invoke-static {v6}, Lmv;->a(Lmv;)Lkv;

    .line 137
    move-result-object v6

    .line 138
    iget-object v6, v6, Lkv;->f:Ljava/lang/String;

    .line 140
    iput-object v6, v3, Lcom/autonavi/amapauto/jni/issueclusion/IssuePopupInfoDetail;->reason:Ljava/lang/String;

    .line 142
    iget-object v6, p0, Lmv$b;->a:Lmv;

    .line 144
    invoke-static {v6}, Lmv;->a(Lmv;)Lkv;

    .line 147
    move-result-object v6

    .line 148
    iget-object v6, v6, Lkv;->g:Ljava/lang/String;

    .line 150
    iput-object v6, v3, Lcom/autonavi/amapauto/jni/issueclusion/IssuePopupInfoDetail;->solution:Ljava/lang/String;

    .line 152
    new-array v6, v5, [Ljava/lang/Object;

    .line 154
    iget-object v9, p0, Lmv$b;->a:Lmv;

    .line 156
    invoke-static {v9}, Lmv;->a(Lmv;)Lkv;

    .line 159
    move-result-object v9

    .line 160
    iget-object v9, v9, Lkv;->g:Ljava/lang/String;

    .line 162
    aput-object v9, v6, v2

    .line 164
    const-string v9, "onReqIssueClusionPopupInfo,solution={?}"

    .line 166
    invoke-static {v4, v9, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object v6, p0, Lmv$b;->a:Lmv;

    .line 171
    invoke-static {v6}, Lmv;->a(Lmv;)Lkv;

    .line 174
    move-result-object v6

    .line 175
    iget-object v6, v6, Lkv;->g:Ljava/lang/String;

    .line 177
    const-string v9, "\\\\n"

    .line 179
    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 182
    move-result-object v6

    .line 183
    new-instance v9, Ljava/util/ArrayList;

    .line 185
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 188
    iput-object v9, v0, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionPopupInfo;->listSolution:Ljava/util/List;

    .line 190
    array-length v9, v6

    .line 191
    const/4 v10, 0x0

    .line 192
    :goto_3
    if-ge v10, v9, :cond_5

    .line 194
    aget-object v11, v6, v10

    .line 196
    iget-object v12, v0, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionPopupInfo;->listSolution:Ljava/util/List;

    .line 198
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v10, v10, 0x1

    .line 203
    goto :goto_3

    .line 204
    :cond_5
    new-array v6, v5, [Ljava/lang/Object;

    .line 206
    iget-object v9, v0, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionPopupInfo;->listSolution:Ljava/util/List;

    .line 208
    aput-object v9, v6, v2

    .line 210
    const-string v9, "onReqIssueClusionPopupInfo,issueClusionPopupInfo.listSolution={?}"

    .line 212
    invoke-static {v4, v9, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    if-eqz v1, :cond_6

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 220
    move-result-wide v9

    .line 221
    iget-object v6, p0, Lmv$b;->a:Lmv;

    .line 223
    invoke-static {v6}, Lmv;->e(Lmv;)Lnv;

    .line 226
    move-result-object v6

    .line 227
    const-string v11, "viewedAnswerDate"

    .line 229
    invoke-virtual {v6, v11, v9, v10}, Lnv;->j(Ljava/lang/String;J)V

    .line 232
    :cond_6
    if-eqz v7, :cond_7

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 237
    move-result-wide v9

    .line 238
    iget-object v6, p0, Lmv$b;->a:Lmv;

    .line 240
    invoke-static {v6}, Lmv;->e(Lmv;)Lnv;

    .line 243
    move-result-object v6

    .line 244
    const-string v11, "viewedQuestionnaireDate"

    .line 246
    invoke-virtual {v6, v11, v9, v10}, Lnv;->j(Ljava/lang/String;J)V

    .line 249
    :cond_7
    new-array v6, v8, [Ljava/lang/Object;

    .line 251
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 254
    move-result-object v1

    .line 255
    aput-object v1, v6, v2

    .line 257
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 260
    move-result-object v1

    .line 261
    aput-object v1, v6, v5

    .line 263
    const-string v1, "onReqIssueClusionPopupInfo needAnswerPopup={?},checkNeedQuestionnairePopup={?}"

    .line 265
    invoke-static {v4, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iput-object v3, v0, Lcom/autonavi/amapauto/jni/issueclusion/IssueClusionPopupInfo;->issuePopupInfoDetail:Lcom/autonavi/amapauto/jni/issueclusion/IssuePopupInfoDetail;

    .line 270
    iget-object v1, p0, Lmv$b;->a:Lmv;

    .line 272
    invoke-static {v1}, Lmv;->e(Lmv;)Lnv;

    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v1}, Lnv;->l()V

    .line 279
    return-object v0

    .line 280
    :cond_8
    :goto_4
    new-array v0, v8, [Ljava/lang/Object;

    .line 282
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 285
    move-result-object v3

    .line 286
    aput-object v3, v0, v2

    .line 288
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 291
    move-result-object v2

    .line 292
    aput-object v2, v0, v5

    .line 294
    const-string v2, "onReqIssueClusionPopupInfo isFeedbackValid={?},isFeedbackInvalid={?}"

    .line 296
    invoke-static {v4, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :cond_9
    return-object v1
.end method

.method public b(I)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "IssueClusionManager"

    .line 13
    const-string v4, "onIssueClusionUserEventNotify, event={?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    packed-switch p1, :pswitch_data_0

    .line 21
    goto :goto_0

    .line 22
    :pswitch_0
    iget-object v1, p0, Lmv$b;->a:Lmv;

    .line 24
    invoke-static {v1}, Lmv;->e(Lmv;)Lnv;

    .line 27
    move-result-object v1

    .line 28
    const-string v2, "isFeedbackInvalid"

    .line 30
    invoke-virtual {v1, v2, v0}, Lnv;->k(Ljava/lang/String;Z)V

    .line 33
    goto :goto_0

    .line 34
    :pswitch_1
    iget-object v1, p0, Lmv$b;->a:Lmv;

    .line 36
    invoke-static {v1}, Lmv;->e(Lmv;)Lnv;

    .line 39
    move-result-object v1

    .line 40
    const-string v2, "closedQuestionnaireTimes"

    .line 42
    invoke-virtual {v1, v2, v3}, Lnv;->d(Ljava/lang/String;I)I

    .line 45
    move-result v1

    .line 46
    iget-object v3, p0, Lmv$b;->a:Lmv;

    .line 48
    invoke-static {v3}, Lmv;->e(Lmv;)Lnv;

    .line 51
    move-result-object v3

    .line 52
    add-int/2addr v1, v0

    .line 53
    invoke-virtual {v3, v2, v1}, Lnv;->i(Ljava/lang/String;I)V

    .line 56
    goto :goto_0

    .line 57
    :pswitch_2
    iget-object v1, p0, Lmv$b;->a:Lmv;

    .line 59
    invoke-static {v1}, Lmv;->e(Lmv;)Lnv;

    .line 62
    move-result-object v1

    .line 63
    const-string v2, "isFeedbackValid"

    .line 65
    invoke-virtual {v1, v2, v0}, Lnv;->k(Ljava/lang/String;Z)V

    .line 68
    goto :goto_0

    .line 69
    :pswitch_3
    iget-object v1, p0, Lmv$b;->a:Lmv;

    .line 71
    invoke-static {v1}, Lmv;->e(Lmv;)Lnv;

    .line 74
    move-result-object v1

    .line 75
    const-string v2, "closedAnswerTimes"

    .line 77
    invoke-virtual {v1, v2, v3}, Lnv;->d(Ljava/lang/String;I)I

    .line 80
    move-result v1

    .line 81
    iget-object v3, p0, Lmv$b;->a:Lmv;

    .line 83
    invoke-static {v3}, Lmv;->e(Lmv;)Lnv;

    .line 86
    move-result-object v3

    .line 87
    add-int/2addr v1, v0

    .line 88
    invoke-virtual {v3, v2, v1}, Lnv;->i(Ljava/lang/String;I)V

    .line 91
    goto :goto_0

    .line 92
    :pswitch_4
    iget-object v1, p0, Lmv$b;->a:Lmv;

    .line 94
    invoke-static {v1}, Lmv;->e(Lmv;)Lnv;

    .line 97
    move-result-object v1

    .line 98
    const-string v2, "isViewedAnswer"

    .line 100
    invoke-virtual {v1, v2, v0}, Lnv;->k(Ljava/lang/String;Z)V

    .line 103
    :goto_0
    iget-object v0, p0, Lmv$b;->a:Lmv;

    .line 105
    invoke-static {v0}, Lmv;->e(Lmv;)Lnv;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lnv;->l()V

    .line 112
    const/4 v1, -0x1

    .line 113
    const/4 v3, -0x1

    .line 114
    const/4 v4, -0x1

    .line 115
    iget-object v0, p0, Lmv$b;->a:Lmv;

    .line 117
    invoke-static {v0}, Lmv;->c(Lmv;)Ljava/lang/String;

    .line 120
    move-result-object v5

    .line 121
    const-string v6, ""

    .line 123
    const-string v7, ""

    .line 125
    const-string v8, ""

    .line 127
    move v2, p1

    .line 128
    invoke-static/range {v1 .. v8}, Ljv;->a(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
