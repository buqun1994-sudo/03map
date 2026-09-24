.class public Ljc0;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 3

    .line 6
    invoke-direct {p0}, Lec;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ljc0;->e:I

    .line 8
    iput v0, p0, Ljc0;->f:I

    .line 9
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;-><init>()V

    iput-object v1, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    .line 10
    iput p1, p0, Ljc0;->d:I

    .line 11
    iput p3, p0, Ljc0;->e:I

    .line 12
    iput p4, p0, Ljc0;->f:I

    .line 13
    iput p5, p0, Ljc0;->g:I

    .line 14
    iput p6, p0, Ljc0;->h:I

    .line 15
    iput p2, p0, Ljc0;->i:I

    .line 16
    invoke-virtual {v1, p1}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->setPoinum(I)V

    .line 17
    iget-object p1, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    const/4 v1, 0x1

    if-ne p5, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->setIsFirstPage(Z)V

    .line 18
    iget-object p1, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    sub-int v2, p6, p5

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->setIsLastPage(Z)V

    .line 19
    iget-object p1, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    invoke-virtual {p1, p2}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->setChoice(I)V

    .line 20
    iget-object p1, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    if-ne p4, v1, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, p2}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->setPlanRoute(Z)V

    .line 21
    iget-object p1, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    const/4 p2, 0x2

    if-ne p4, p2, :cond_3

    const/4 p4, 0x1

    goto :goto_3

    :cond_3
    const/4 p4, 0x0

    :goto_3
    invoke-virtual {p1, p4}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->setBack(Z)V

    const/4 p1, 0x3

    if-ne p3, p1, :cond_4

    .line 22
    iget-object p1, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    invoke-virtual {p1, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->setIsListTop(Z)V

    .line 23
    iget-object p1, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    invoke-virtual {p1, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->setIsListBottom(Z)V

    goto :goto_5

    .line 24
    :cond_4
    iget-object p1, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    if-ne p3, v1, :cond_5

    const/4 p4, 0x1

    goto :goto_4

    :cond_5
    const/4 p4, 0x0

    :goto_4
    invoke-virtual {p1, p4}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->setIsListTop(Z)V

    .line 25
    iget-object p1, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    if-ne p3, p2, :cond_6

    const/4 v0, 0x1

    :cond_6
    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->setIsListBottom(Z)V

    .line 26
    :goto_5
    iget-object p1, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    invoke-virtual {p1, p5}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->setCurPage(I)V

    .line 27
    iget-object p1, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    invoke-virtual {p1, p6}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->setTotalPage(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ljc0;->e:I

    .line 3
    iput v0, p0, Ljc0;->f:I

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;-><init>()V

    .line 5
    iput-object p1, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    iget-object v0, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    .line 3
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lec;->d()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "EXTRA_CHOICE"

    .line 7
    const-string v2, "EXTRA_POINUM"

    .line 9
    const/16 v3, 0x2fa9

    .line 11
    const-string v4, "KEY_TYPE"

    .line 13
    const-string v5, "EXTRA_IS_LAST_PAGE"

    .line 15
    const-string v6, "EXTRA_IS_FIRST_PAGE"

    .line 17
    const-string v7, "EXTRA_PLAN_ROUTE"

    .line 19
    const-string v8, "EXTRA_BACK"

    .line 21
    const-string v9, "EXTRA_IS_LIST_BOTTOM"

    .line 23
    const-string v10, "EXTRA_IS_LIST_TOP"

    .line 25
    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    .line 29
    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 32
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 35
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 38
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    iget-object v3, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    .line 43
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->getPoinum()I

    .line 46
    move-result v3

    .line 47
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    iget-object v2, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    .line 52
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->getBack()Z

    .line 55
    move-result v2

    .line 56
    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    iget-object v2, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    .line 61
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->getIsListTop()Z

    .line 64
    move-result v2

    .line 65
    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    iget-object v2, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    .line 70
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->getIsListBottom()Z

    .line 73
    move-result v2

    .line 74
    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    iget-object v2, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    .line 79
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->getPlanRoute()Z

    .line 82
    move-result v2

    .line 83
    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    iget-object v2, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    .line 88
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->getIsFirstPage()Z

    .line 91
    move-result v2

    .line 92
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    .line 97
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->getIsLastPage()Z

    .line 100
    move-result v2

    .line 101
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    iget-object v2, p0, Ljc0;->j:Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    .line 106
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;->getChoice()I

    .line 109
    move-result v2

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    return-object v0

    .line 114
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 116
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    iget v3, p0, Ljc0;->d:I

    .line 124
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    iget v2, p0, Ljc0;->f:I

    .line 129
    const/4 v3, 0x2

    .line 130
    const/4 v4, 0x1

    .line 131
    if-ne v2, v3, :cond_2

    .line 133
    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    goto :goto_4

    .line 137
    :cond_2
    const/4 v2, 0x0

    .line 138
    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    iget v8, p0, Ljc0;->e:I

    .line 143
    if-eq v8, v4, :cond_5

    .line 145
    if-eq v8, v3, :cond_4

    .line 147
    const/4 v3, 0x3

    .line 148
    if-eq v8, v3, :cond_3

    .line 150
    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {v0, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    invoke-virtual {v0, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    goto :goto_0

    .line 164
    :cond_4
    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    invoke-virtual {v0, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    goto :goto_0

    .line 171
    :cond_5
    invoke-virtual {v0, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    :goto_0
    iget v3, p0, Ljc0;->f:I

    .line 179
    if-ne v3, v4, :cond_6

    .line 181
    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    goto :goto_1

    .line 185
    :cond_6
    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    :goto_1
    iget v3, p0, Ljc0;->g:I

    .line 190
    if-ne v3, v4, :cond_7

    .line 192
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    goto :goto_2

    .line 196
    :cond_7
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    :goto_2
    iget v3, p0, Ljc0;->h:I

    .line 201
    iget v6, p0, Ljc0;->g:I

    .line 203
    sub-int/2addr v3, v6

    .line 204
    if-nez v3, :cond_8

    .line 206
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    goto :goto_3

    .line 210
    :cond_8
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    :goto_3
    iget v2, p0, Ljc0;->i:I

    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    :goto_4
    return-object v0
.end method
