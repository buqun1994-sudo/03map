.class public Lgh;
.super Lgc;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lgc;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lgh;->d:I

    .line 7
    iput v0, p0, Lgh;->e:I

    .line 9
    iput v0, p0, Lgh;->f:I

    .line 11
    iput v0, p0, Lgh;->g:I

    .line 13
    iput v0, p0, Lgh;->h:I

    .line 15
    iput v0, p0, Lgh;->i:I

    .line 17
    iput v0, p0, Lgh;->j:I

    .line 19
    iput v0, p0, Lgh;->k:I

    .line 21
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 23
    iput-wide v0, p0, Lgh;->l:D

    .line 25
    return-void
.end method

.method public static m(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)Lgh;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lgh;

    .line 7
    invoke-direct {v0}, Lgh;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isExistMapData()Z

    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lgc;->a(Z)V

    .line 17
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurRoadName()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lgh;->w(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurSpeed()I

    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lgh;->x(Ljava/lang/Integer;)V

    .line 35
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraDist()I

    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Lgh;->n(I)V

    .line 42
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraType()I

    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Lgh;->v(I)V

    .line 49
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraSpeed()I

    .line 52
    move-result v1

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lgh;->u(Ljava/lang/Integer;)V

    .line 60
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraIndex()I

    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Lgh;->s(I)V

    .line 67
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraExtraDist()I

    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Lgh;->o(I)V

    .line 74
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraExtraType()I

    .line 77
    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Lgh;->r(I)V

    .line 81
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraExtraSpeed()I

    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Lgh;->q(I)V

    .line 88
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraExtraIndex()I

    .line 91
    move-result v1

    .line 92
    invoke-virtual {v0, v1}, Lgh;->p(I)V

    .line 95
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraSpacing()D

    .line 98
    move-result-wide v1

    .line 99
    invoke-virtual {v0, v1, v2}, Lgh;->t(D)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 11

    .line 1
    invoke-static {}, Lib;->m()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lgh;->c()I

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    iget v0, p0, Lgh;->g:I

    .line 14
    const/4 v1, -0x1

    .line 15
    if-ltz v0, :cond_1

    .line 17
    iget v0, p0, Lgh;->e:I

    .line 19
    invoke-virtual {p0, v0}, Lgh;->l(I)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 25
    iget v0, p0, Lgh;->k:I

    .line 27
    if-ltz v0, :cond_1

    .line 29
    iget v0, p0, Lgh;->i:I

    .line 31
    invoke-virtual {p0, v0}, Lgh;->l(I)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 37
    iget v0, p0, Lgh;->k:I

    .line 39
    iput v0, p0, Lgh;->g:I

    .line 41
    iget v0, p0, Lgh;->i:I

    .line 43
    iput v0, p0, Lgh;->e:I

    .line 45
    iget v0, p0, Lgh;->h:I

    .line 47
    iput v0, p0, Lgh;->d:I

    .line 49
    iget v0, p0, Lgh;->j:I

    .line 51
    iput v0, p0, Lgh;->f:I

    .line 53
    iput v1, p0, Lgh;->k:I

    .line 55
    iput v1, p0, Lgh;->i:I

    .line 57
    iput v1, p0, Lgh;->h:I

    .line 59
    iput v1, p0, Lgh;->j:I

    .line 61
    :cond_1
    iget v0, p0, Lgh;->g:I

    .line 63
    const/4 v2, 0x1

    .line 64
    const/4 v3, 0x0

    .line 65
    if-ltz v0, :cond_2

    .line 67
    iget v0, p0, Lgh;->e:I

    .line 69
    invoke-virtual {p0, v0}, Lgh;->l(I)Z

    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 75
    const/4 v0, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 v0, 0x0

    .line 78
    :goto_0
    iget v4, p0, Lgh;->g:I

    .line 80
    if-ltz v4, :cond_4

    .line 82
    iget v4, p0, Lgh;->e:I

    .line 84
    invoke-virtual {p0, v4}, Lgh;->l(I)Z

    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_4

    .line 90
    iget v4, p0, Lgh;->k:I

    .line 92
    if-eq v4, v1, :cond_3

    .line 94
    iget v1, p0, Lgh;->i:I

    .line 96
    invoke-virtual {p0, v1}, Lgh;->l(I)Z

    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_4

    .line 102
    :cond_3
    const/4 v1, 0x1

    .line 103
    goto :goto_1

    .line 104
    :cond_4
    const/4 v1, 0x0

    .line 105
    :goto_1
    iget v4, p0, Lgh;->g:I

    .line 107
    if-ltz v4, :cond_5

    .line 109
    iget v4, p0, Lgh;->e:I

    .line 111
    invoke-virtual {p0, v4}, Lgh;->l(I)Z

    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_5

    .line 117
    iget v4, p0, Lgh;->k:I

    .line 119
    if-ltz v4, :cond_5

    .line 121
    iget v4, p0, Lgh;->i:I

    .line 123
    invoke-virtual {p0, v4}, Lgh;->l(I)Z

    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_5

    .line 129
    const/4 v4, 0x1

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    const/4 v4, 0x0

    .line 132
    :goto_2
    if-eqz v1, :cond_6

    .line 134
    :goto_3
    const/4 v1, 0x1

    .line 135
    goto :goto_4

    .line 136
    :cond_6
    if-eqz v4, :cond_7

    .line 138
    iget v1, p0, Lgh;->d:I

    .line 140
    if-ltz v1, :cond_7

    .line 142
    iget v1, p0, Lgh;->h:I

    .line 144
    if-ltz v1, :cond_7

    .line 146
    iget-wide v5, p0, Lgh;->l:D

    .line 148
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 150
    cmpl-double v1, v5, v7

    .line 152
    if-ltz v1, :cond_7

    .line 154
    goto :goto_3

    .line 155
    :cond_7
    const/4 v1, 0x0

    .line 156
    :goto_4
    if-eqz v0, :cond_8

    .line 158
    const/4 v5, 0x4

    .line 159
    goto :goto_5

    .line 160
    :cond_8
    const/4 v5, 0x0

    .line 161
    :goto_5
    const/4 v6, 0x2

    .line 162
    if-eqz v4, :cond_9

    .line 164
    const/4 v7, 0x2

    .line 165
    goto :goto_6

    .line 166
    :cond_9
    const/4 v7, 0x0

    .line 167
    :goto_6
    add-int/2addr v5, v7

    .line 168
    add-int/2addr v5, v1

    .line 169
    const/4 v7, 0x3

    .line 170
    new-array v8, v7, [Ljava/lang/Object;

    .line 172
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    move-result-object v9

    .line 176
    aput-object v9, v8, v3

    .line 178
    iget v9, p0, Lgh;->d:I

    .line 180
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    move-result-object v9

    .line 184
    aput-object v9, v8, v2

    .line 186
    iget v9, p0, Lgh;->h:I

    .line 188
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    move-result-object v9

    .line 192
    aput-object v9, v8, v6

    .line 194
    const-string v9, "CruiseInfoDTO"

    .line 196
    const-string v10, "{?}-{?}-{?}==============================================="

    .line 198
    invoke-static {v9, v10, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    new-array v7, v7, [Ljava/lang/Object;

    .line 203
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 206
    move-result-object v0

    .line 207
    aput-object v0, v7, v3

    .line 209
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 212
    move-result-object v0

    .line 213
    aput-object v0, v7, v2

    .line 215
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 218
    move-result-object v0

    .line 219
    aput-object v0, v7, v6

    .line 221
    const-string v0, " eleEyeViewType GuideInfo haveElecEyeFlag:{?} bDoubleElecEye:{?} bDistFlag:{?}"

    .line 223
    invoke-static {v9, v0, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    return v5
.end method

.method public c()I
    .locals 11

    .line 1
    iget v0, p0, Lgh;->g:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ltz v0, :cond_0

    .line 7
    const/4 v3, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ltz v0, :cond_1

    .line 12
    iget v4, p0, Lgh;->k:I

    .line 14
    const/4 v5, -0x1

    .line 15
    if-ne v4, v5, :cond_1

    .line 17
    const/4 v4, 0x1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 v4, 0x0

    .line 20
    :goto_1
    if-ltz v0, :cond_2

    .line 22
    iget v0, p0, Lgh;->k:I

    .line 24
    if-ltz v0, :cond_2

    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 29
    :goto_2
    if-eqz v4, :cond_3

    .line 31
    :goto_3
    const/4 v4, 0x1

    .line 32
    goto :goto_4

    .line 33
    :cond_3
    if-eqz v0, :cond_4

    .line 35
    iget v4, p0, Lgh;->d:I

    .line 37
    if-ltz v4, :cond_4

    .line 39
    iget v4, p0, Lgh;->h:I

    .line 41
    if-ltz v4, :cond_4

    .line 43
    iget-wide v4, p0, Lgh;->l:D

    .line 45
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 47
    cmpl-double v8, v4, v6

    .line 49
    if-ltz v8, :cond_4

    .line 51
    goto :goto_3

    .line 52
    :cond_4
    const/4 v4, 0x0

    .line 53
    :goto_4
    if-eqz v3, :cond_5

    .line 55
    const/4 v5, 0x4

    .line 56
    goto :goto_5

    .line 57
    :cond_5
    const/4 v5, 0x0

    .line 58
    :goto_5
    const/4 v6, 0x2

    .line 59
    if-eqz v0, :cond_6

    .line 61
    const/4 v7, 0x2

    .line 62
    goto :goto_6

    .line 63
    :cond_6
    const/4 v7, 0x0

    .line 64
    :goto_6
    add-int/2addr v5, v7

    .line 65
    add-int/2addr v5, v4

    .line 66
    const/4 v7, 0x3

    .line 67
    new-array v8, v7, [Ljava/lang/Object;

    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v9

    .line 73
    aput-object v9, v8, v2

    .line 75
    iget v9, p0, Lgh;->d:I

    .line 77
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v9

    .line 81
    aput-object v9, v8, v1

    .line 83
    iget v9, p0, Lgh;->h:I

    .line 85
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v9

    .line 89
    aput-object v9, v8, v6

    .line 91
    const-string v9, "CruiseInfoDTO"

    .line 93
    const-string v10, "{?}-{?}-{?}==============================================="

    .line 95
    invoke-static {v9, v10, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    new-array v7, v7, [Ljava/lang/Object;

    .line 100
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    move-result-object v3

    .line 104
    aput-object v3, v7, v2

    .line 106
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 109
    move-result-object v0

    .line 110
    aput-object v0, v7, v1

    .line 112
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 115
    move-result-object v0

    .line 116
    aput-object v0, v7, v6

    .line 118
    const-string v0, " eleEyeViewType GuideInfo haveElecEyeFlag:{?} bDoubleElecEye:{?} bDistFlag:{?}"

    .line 120
    invoke-static {v9, v0, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    return v5
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lgh;->d:I

    .line 3
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lgh;->j:I

    .line 3
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lgh;->i:I

    .line 3
    return v0
.end method

.method public g()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget v0, p0, Lgh;->f:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lgh;->e:I

    .line 3
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lgh;->c:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public j()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lgh;->b:Ljava/lang/Integer;

    .line 3
    return-object v0
.end method

.method public k()Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "hasLimitedSpeed:{?}  GuideInfo "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Lgh;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    new-array v2, v1, [Ljava/lang/Object;

    .line 25
    iget v3, p0, Lgh;->f:I

    .line 27
    const/4 v4, 0x0

    .line 28
    if-gtz v3, :cond_1

    .line 30
    iget v3, p0, Lgh;->j:I

    .line 32
    if-lez v3, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v3, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 38
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    move-result-object v3

    .line 42
    aput-object v3, v2, v4

    .line 44
    const-string v3, "CruiseInfoDTO"

    .line 46
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget v0, p0, Lgh;->f:I

    .line 51
    if-gtz v0, :cond_3

    .line 53
    iget v0, p0, Lgh;->j:I

    .line 55
    if-lez v0, :cond_2

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/4 v1, 0x0

    .line 59
    :cond_3
    :goto_2
    return v1
.end method

.method public final l(I)Z
    .locals 2

    .line 1
    const/16 v0, 0x258

    .line 3
    invoke-static {v0}, Lib;->u(I)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 10
    return v1

    .line 11
    :cond_0
    const/16 v0, 0xe

    .line 13
    if-eq p1, v0, :cond_1

    .line 15
    const/16 v0, 0x16

    .line 17
    if-eq p1, v0, :cond_1

    .line 19
    const/16 v0, 0x17

    .line 21
    if-eq p1, v0, :cond_1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1
.end method

.method public n(I)V
    .locals 0

    .line 1
    iput p1, p0, Lgh;->d:I

    .line 3
    return-void
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lgh;->h:I

    .line 3
    return-void
.end method

.method public p(I)V
    .locals 0

    .line 1
    iput p1, p0, Lgh;->k:I

    .line 3
    return-void
.end method

.method public q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lgh;->j:I

    .line 3
    return-void
.end method

.method public r(I)V
    .locals 0

    .line 1
    iput p1, p0, Lgh;->i:I

    .line 3
    return-void
.end method

.method public s(I)V
    .locals 0

    .line 1
    iput p1, p0, Lgh;->g:I

    .line 3
    return-void
.end method

.method public t(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lgh;->l:D

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "CruiseInfoDTO{currentSpeed="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lgh;->b:Ljava/lang/Integer;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", currentRoadName=\'"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lgh;->c:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const/16 v1, 0x27

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", cameraDist="

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lgh;->d:I

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", cameraType="

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lgh;->e:I

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", cameraSpeed="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lgh;->f:I

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", cameraIndex="

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lgh;->g:I

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", cameraExtraDist="

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Lgh;->h:I

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", cameraExtraType="

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Lgh;->i:I

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", cameraExtraSpeed="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v1, p0, Lgh;->j:I

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", cameraExtraIndex="

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lgh;->k:I

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", cameraSpacing="

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-wide v1, p0, Lgh;->l:D

    .line 118
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "} "

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-super {p0}, Lgc;->toString()Ljava/lang/String;

    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 137
    return-object v0
.end method

.method public u(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lgh;->f:I

    .line 7
    return-void
.end method

.method public v(I)V
    .locals 0

    .line 1
    iput p1, p0, Lgh;->e:I

    .line 3
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgh;->c:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public x(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgh;->b:Ljava/lang/Integer;

    .line 3
    return-void
.end method
