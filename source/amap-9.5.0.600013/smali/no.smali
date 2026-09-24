.class public Lno;
.super Lgc;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:[B

.field public h:I

.field public i:I

.field public j:Ljava/lang/Integer;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:D

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgc;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lno;->m:I

    .line 7
    iput v0, p0, Lno;->n:I

    .line 9
    iput v0, p0, Lno;->o:I

    .line 11
    iput v0, p0, Lno;->p:I

    .line 13
    iput v0, p0, Lno;->q:I

    .line 15
    iput v0, p0, Lno;->r:I

    .line 17
    iput v0, p0, Lno;->s:I

    .line 19
    iput v0, p0, Lno;->t:I

    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lno;->x:Z

    .line 24
    iput-boolean v0, p0, Lno;->y:Z

    .line 26
    iput-boolean v0, p0, Lno;->z:Z

    .line 28
    iput-boolean v0, p0, Lno;->A:Z

    .line 30
    iput-boolean v0, p0, Lno;->B:Z

    .line 32
    return-void
.end method

.method public static t(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)Lno;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lno;

    .line 7
    invoke-direct {v0}, Lno;-><init>()V

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
    invoke-virtual {v0, v1}, Lno;->F(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextRoadName()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lno;->N(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurSpeed()I

    .line 34
    move-result v1

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lno;->G(Ljava/lang/Integer;)V

    .line 42
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getLimitedSpeed()I

    .line 45
    move-result v1

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lno;->K(Ljava/lang/Integer;)V

    .line 53
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getIcon()I

    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lno;->U(Ljava/lang/Integer;)V

    .line 64
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getOnlineIcon()[B

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lno;->O([B)V

    .line 71
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getOnlineIconWidth()I

    .line 74
    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Lno;->Q(I)V

    .line 78
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getOnlineIconHeight()I

    .line 81
    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Lno;->P(I)V

    .line 85
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRoundAboutNum()I

    .line 88
    move-result v1

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lno;->R(Ljava/lang/Integer;)V

    .line 96
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSegRemainDis()I

    .line 99
    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Lno;->S(I)V

    .line 103
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSegRemainDisAuto()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lno;->T(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraDist()I

    .line 113
    move-result v1

    .line 114
    invoke-virtual {v0, v1}, Lno;->u(I)V

    .line 117
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraType()I

    .line 120
    move-result v1

    .line 121
    invoke-virtual {v0, v1}, Lno;->E(I)V

    .line 124
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraSpeed()I

    .line 127
    move-result v1

    .line 128
    invoke-virtual {v0, v1}, Lno;->D(I)V

    .line 131
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraIndex()I

    .line 134
    move-result v1

    .line 135
    invoke-virtual {v0, v1}, Lno;->A(I)V

    .line 138
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraExtraDist()I

    .line 141
    move-result v1

    .line 142
    invoke-virtual {v0, v1}, Lno;->v(I)V

    .line 145
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraExtraType()I

    .line 148
    move-result v1

    .line 149
    invoke-virtual {v0, v1}, Lno;->z(I)V

    .line 152
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraExtraSpeed()I

    .line 155
    move-result v1

    .line 156
    invoke-virtual {v0, v1}, Lno;->y(I)V

    .line 159
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraExtraIndex()I

    .line 162
    move-result v1

    .line 163
    invoke-virtual {v0, v1}, Lno;->w(I)V

    .line 166
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraSpacing()D

    .line 169
    move-result-wide v1

    .line 170
    invoke-virtual {v0, v1, v2}, Lno;->C(D)V

    .line 173
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getExitNameInfo()Ljava/lang/String;

    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Lno;->I(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getExitDirectionInfo()Ljava/lang/String;

    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lno;->H(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isCameraPenalty()Z

    .line 190
    move-result v1

    .line 191
    invoke-virtual {v0, v1}, Lno;->B(Z)V

    .line 194
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isNewExtraCamera()Z

    .line 197
    move-result v1

    .line 198
    invoke-virtual {v0, v1}, Lno;->M(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isNewCamera()Z

    .line 204
    move-result v1

    .line 205
    invoke-virtual {v0, v1}, Lno;->L(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isCameraExtraPenalty()Z

    .line 211
    move-result v1

    .line 212
    invoke-virtual {v0, v1}, Lno;->x(Z)V

    .line 215
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isImminent()Z

    .line 218
    move-result p0

    .line 219
    invoke-virtual {v0, p0}, Lno;->J(Z)V

    .line 222
    return-object v0
.end method


# virtual methods
.method public A(I)V
    .locals 0

    .line 1
    iput p1, p0, Lno;->p:I

    .line 3
    return-void
.end method

.method public B(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lno;->x:Z

    .line 3
    return-void
.end method

.method public C(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lno;->w:D

    .line 3
    return-void
.end method

.method public D(I)V
    .locals 0

    .line 1
    iput p1, p0, Lno;->o:I

    .line 3
    return-void
.end method

.method public E(I)V
    .locals 0

    .line 1
    iput p1, p0, Lno;->n:I

    .line 3
    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno;->b:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public G(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno;->d:Ljava/lang/Integer;

    .line 3
    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno;->v:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno;->u:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public J(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lno;->B:Z

    .line 3
    return-void
.end method

.method public K(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno;->e:Ljava/lang/Integer;

    .line 3
    return-void
.end method

.method public L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lno;->z:Z

    .line 3
    return-void
.end method

.method public M(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lno;->y:Z

    .line 3
    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno;->c:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public O([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno;->g:[B

    .line 3
    return-void
.end method

.method public P(I)V
    .locals 0

    .line 1
    iput p1, p0, Lno;->i:I

    .line 3
    return-void
.end method

.method public Q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lno;->h:I

    .line 3
    return-void
.end method

.method public R(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno;->j:Ljava/lang/Integer;

    .line 3
    return-void
.end method

.method public S(I)V
    .locals 0

    .line 1
    iput p1, p0, Lno;->k:I

    .line 3
    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno;->l:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public U(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno;->f:Ljava/lang/Integer;

    .line 3
    return-void
.end method

.method public b()I
    .locals 13

    .line 1
    invoke-static {}, Lib;->m()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lno;->c()I

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    iget v0, p0, Lno;->p:I

    .line 14
    const/4 v1, -0x1

    .line 15
    if-ltz v0, :cond_1

    .line 17
    iget v0, p0, Lno;->n:I

    .line 19
    invoke-virtual {p0, v0}, Lno;->r(I)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 25
    iget v0, p0, Lno;->t:I

    .line 27
    if-ltz v0, :cond_1

    .line 29
    iget v0, p0, Lno;->r:I

    .line 31
    invoke-virtual {p0, v0}, Lno;->r(I)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 37
    iget v0, p0, Lno;->t:I

    .line 39
    iput v0, p0, Lno;->p:I

    .line 41
    iget v0, p0, Lno;->r:I

    .line 43
    iput v0, p0, Lno;->n:I

    .line 45
    iget v0, p0, Lno;->q:I

    .line 47
    iput v0, p0, Lno;->m:I

    .line 49
    iget v0, p0, Lno;->s:I

    .line 51
    iput v0, p0, Lno;->o:I

    .line 53
    iput v1, p0, Lno;->t:I

    .line 55
    iput v1, p0, Lno;->r:I

    .line 57
    iput v1, p0, Lno;->q:I

    .line 59
    iput v1, p0, Lno;->s:I

    .line 61
    :cond_1
    invoke-static {}, Lib;->m()Z

    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_8

    .line 67
    iget-boolean v0, p0, Lno;->x:Z

    .line 69
    if-nez v0, :cond_2

    .line 71
    iget-boolean v0, p0, Lno;->z:Z

    .line 73
    if-eqz v0, :cond_3

    .line 75
    :cond_2
    iget v0, p0, Lno;->p:I

    .line 77
    if-ltz v0, :cond_3

    .line 79
    iget v0, p0, Lno;->n:I

    .line 81
    invoke-virtual {p0, v0}, Lno;->r(I)Z

    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_5

    .line 87
    :cond_3
    iget-boolean v0, p0, Lno;->A:Z

    .line 89
    if-nez v0, :cond_4

    .line 91
    iget-boolean v0, p0, Lno;->y:Z

    .line 93
    if-eqz v0, :cond_8

    .line 95
    :cond_4
    iget v0, p0, Lno;->t:I

    .line 97
    if-ltz v0, :cond_8

    .line 99
    iget v0, p0, Lno;->r:I

    .line 101
    invoke-virtual {p0, v0}, Lno;->r(I)Z

    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_8

    .line 107
    :cond_5
    iget-boolean v0, p0, Lno;->x:Z

    .line 109
    if-nez v0, :cond_7

    .line 111
    iget-boolean v0, p0, Lno;->z:Z

    .line 113
    if-nez v0, :cond_7

    .line 115
    iget-boolean v0, p0, Lno;->A:Z

    .line 117
    if-nez v0, :cond_6

    .line 119
    iget-boolean v2, p0, Lno;->y:Z

    .line 121
    if-eqz v2, :cond_7

    .line 123
    :cond_6
    invoke-virtual {p0, v0}, Lno;->B(Z)V

    .line 126
    iget-boolean v0, p0, Lno;->y:Z

    .line 128
    invoke-virtual {p0, v0}, Lno;->L(Z)V

    .line 131
    iget v0, p0, Lno;->t:I

    .line 133
    iput v0, p0, Lno;->p:I

    .line 135
    iget v0, p0, Lno;->r:I

    .line 137
    iput v0, p0, Lno;->n:I

    .line 139
    iget v0, p0, Lno;->q:I

    .line 141
    iput v0, p0, Lno;->m:I

    .line 143
    iget v0, p0, Lno;->s:I

    .line 145
    iput v0, p0, Lno;->o:I

    .line 147
    iput v1, p0, Lno;->t:I

    .line 149
    iput v1, p0, Lno;->r:I

    .line 151
    iput v1, p0, Lno;->q:I

    .line 153
    iput v1, p0, Lno;->s:I

    .line 155
    :cond_7
    const/16 v0, 0xf

    .line 157
    return v0

    .line 158
    :cond_8
    iget v0, p0, Lno;->p:I

    .line 160
    const/4 v2, 0x1

    .line 161
    const/4 v3, 0x0

    .line 162
    if-ltz v0, :cond_9

    .line 164
    iget v0, p0, Lno;->n:I

    .line 166
    invoke-virtual {p0, v0}, Lno;->r(I)Z

    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_9

    .line 172
    const/4 v0, 0x1

    .line 173
    goto :goto_0

    .line 174
    :cond_9
    const/4 v0, 0x0

    .line 175
    :goto_0
    iget v4, p0, Lno;->p:I

    .line 177
    const/16 v5, 0x9

    .line 179
    if-ltz v4, :cond_b

    .line 181
    if-eq v4, v5, :cond_b

    .line 183
    iget v4, p0, Lno;->n:I

    .line 185
    invoke-virtual {p0, v4}, Lno;->r(I)Z

    .line 188
    move-result v4

    .line 189
    if-eqz v4, :cond_b

    .line 191
    iget v4, p0, Lno;->t:I

    .line 193
    if-eq v4, v1, :cond_a

    .line 195
    if-eq v4, v5, :cond_a

    .line 197
    iget v1, p0, Lno;->r:I

    .line 199
    invoke-virtual {p0, v1}, Lno;->r(I)Z

    .line 202
    move-result v1

    .line 203
    if-nez v1, :cond_b

    .line 205
    :cond_a
    const/4 v1, 0x1

    .line 206
    goto :goto_1

    .line 207
    :cond_b
    const/4 v1, 0x0

    .line 208
    :goto_1
    iget v4, p0, Lno;->p:I

    .line 210
    if-eq v4, v5, :cond_c

    .line 212
    iget v4, p0, Lno;->n:I

    .line 214
    invoke-virtual {p0, v4}, Lno;->r(I)Z

    .line 217
    move-result v4

    .line 218
    if-eqz v4, :cond_c

    .line 220
    iget v4, p0, Lno;->p:I

    .line 222
    if-ltz v4, :cond_c

    .line 224
    iget v4, p0, Lno;->t:I

    .line 226
    if-eq v4, v5, :cond_c

    .line 228
    if-ltz v4, :cond_c

    .line 230
    iget v4, p0, Lno;->r:I

    .line 232
    invoke-virtual {p0, v4}, Lno;->r(I)Z

    .line 235
    move-result v4

    .line 236
    if-eqz v4, :cond_c

    .line 238
    const/4 v4, 0x1

    .line 239
    goto :goto_2

    .line 240
    :cond_c
    const/4 v4, 0x0

    .line 241
    :goto_2
    if-eqz v1, :cond_d

    .line 243
    :goto_3
    const/4 v1, 0x1

    .line 244
    goto :goto_4

    .line 245
    :cond_d
    if-eqz v4, :cond_e

    .line 247
    iget v1, p0, Lno;->m:I

    .line 249
    if-ltz v1, :cond_e

    .line 251
    iget v1, p0, Lno;->q:I

    .line 253
    if-ltz v1, :cond_e

    .line 255
    iget-wide v6, p0, Lno;->w:D

    .line 257
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 259
    cmpl-double v1, v6, v8

    .line 261
    if-ltz v1, :cond_e

    .line 263
    goto :goto_3

    .line 264
    :cond_e
    const/4 v1, 0x0

    .line 265
    :goto_4
    const/4 v6, 0x4

    .line 266
    if-eqz v0, :cond_f

    .line 268
    const/4 v7, 0x4

    .line 269
    goto :goto_5

    .line 270
    :cond_f
    const/4 v7, 0x0

    .line 271
    :goto_5
    const/4 v8, 0x2

    .line 272
    if-eqz v4, :cond_10

    .line 274
    const/4 v9, 0x2

    .line 275
    goto :goto_6

    .line 276
    :cond_10
    const/4 v9, 0x0

    .line 277
    :goto_6
    add-int/2addr v7, v9

    .line 278
    add-int/2addr v7, v1

    .line 279
    const/4 v9, 0x3

    .line 280
    new-array v10, v9, [Ljava/lang/Object;

    .line 282
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    move-result-object v11

    .line 286
    aput-object v11, v10, v3

    .line 288
    iget v11, p0, Lno;->m:I

    .line 290
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    move-result-object v11

    .line 294
    aput-object v11, v10, v2

    .line 296
    iget v11, p0, Lno;->q:I

    .line 298
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    move-result-object v11

    .line 302
    aput-object v11, v10, v8

    .line 304
    const-string v11, "GuideInfoDTO"

    .line 306
    const-string v12, "{?}-{?}-{?}==============================================="

    .line 308
    invoke-static {v11, v12, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    const/4 v10, 0x5

    .line 312
    new-array v10, v10, [Ljava/lang/Object;

    .line 314
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 317
    move-result-object v12

    .line 318
    aput-object v12, v10, v3

    .line 320
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 323
    move-result-object v0

    .line 324
    aput-object v0, v10, v2

    .line 326
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 329
    move-result-object v0

    .line 330
    aput-object v0, v10, v8

    .line 332
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 335
    move-result-object v0

    .line 336
    aput-object v0, v10, v9

    .line 338
    iget v0, p0, Lno;->p:I

    .line 340
    if-eq v0, v5, :cond_12

    .line 342
    iget v0, p0, Lno;->t:I

    .line 344
    if-ne v0, v5, :cond_11

    .line 346
    goto :goto_7

    .line 347
    :cond_11
    const/4 v2, 0x0

    .line 348
    :cond_12
    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 351
    move-result-object v0

    .line 352
    aput-object v0, v10, v6

    .line 354
    const-string v0, "eleEyeViewType type:{?} haveElecEyeFlag:{?} bDoubleElecEye:{?} bDistFlag:{?} limited:{?} "

    .line 356
    invoke-static {v11, v0, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    return v7
.end method

.method public c()I
    .locals 13

    .line 1
    iget v0, p0, Lno;->p:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-gez v0, :cond_1

    .line 7
    iget v3, p0, Lno;->t:I

    .line 9
    if-lez v3, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 15
    :goto_1
    const/16 v4, 0x9

    .line 17
    if-ltz v0, :cond_3

    .line 19
    if-eq v0, v4, :cond_3

    .line 21
    iget v5, p0, Lno;->t:I

    .line 23
    const/4 v6, -0x1

    .line 24
    if-eq v5, v6, :cond_2

    .line 26
    if-ne v5, v4, :cond_3

    .line 28
    :cond_2
    const/4 v5, 0x1

    .line 29
    goto :goto_2

    .line 30
    :cond_3
    const/4 v5, 0x0

    .line 31
    :goto_2
    if-eq v0, v4, :cond_4

    .line 33
    if-ltz v0, :cond_4

    .line 35
    iget v0, p0, Lno;->t:I

    .line 37
    if-eq v0, v4, :cond_4

    .line 39
    if-ltz v0, :cond_4

    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_3

    .line 43
    :cond_4
    const/4 v0, 0x0

    .line 44
    :goto_3
    if-eqz v5, :cond_5

    .line 46
    :goto_4
    const/4 v5, 0x1

    .line 47
    goto :goto_5

    .line 48
    :cond_5
    if-eqz v0, :cond_6

    .line 50
    iget v5, p0, Lno;->m:I

    .line 52
    if-ltz v5, :cond_6

    .line 54
    iget v5, p0, Lno;->q:I

    .line 56
    if-ltz v5, :cond_6

    .line 58
    iget-wide v5, p0, Lno;->w:D

    .line 60
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 62
    cmpl-double v9, v5, v7

    .line 64
    if-ltz v9, :cond_6

    .line 66
    goto :goto_4

    .line 67
    :cond_6
    const/4 v5, 0x0

    .line 68
    :goto_5
    const/4 v6, 0x4

    .line 69
    if-eqz v3, :cond_7

    .line 71
    const/4 v7, 0x4

    .line 72
    goto :goto_6

    .line 73
    :cond_7
    const/4 v7, 0x0

    .line 74
    :goto_6
    const/4 v8, 0x2

    .line 75
    if-eqz v0, :cond_8

    .line 77
    const/4 v9, 0x2

    .line 78
    goto :goto_7

    .line 79
    :cond_8
    const/4 v9, 0x0

    .line 80
    :goto_7
    add-int/2addr v7, v9

    .line 81
    add-int/2addr v7, v5

    .line 82
    const/4 v9, 0x3

    .line 83
    new-array v10, v9, [Ljava/lang/Object;

    .line 85
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v11

    .line 89
    aput-object v11, v10, v2

    .line 91
    iget v11, p0, Lno;->m:I

    .line 93
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v11

    .line 97
    aput-object v11, v10, v1

    .line 99
    iget v11, p0, Lno;->q:I

    .line 101
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v11

    .line 105
    aput-object v11, v10, v8

    .line 107
    const-string v11, "GuideInfoDTO"

    .line 109
    const-string v12, "{?}-{?}-{?}==============================================="

    .line 111
    invoke-static {v11, v12, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    const/4 v10, 0x5

    .line 115
    new-array v10, v10, [Ljava/lang/Object;

    .line 117
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v12

    .line 121
    aput-object v12, v10, v2

    .line 123
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 126
    move-result-object v3

    .line 127
    aput-object v3, v10, v1

    .line 129
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 132
    move-result-object v0

    .line 133
    aput-object v0, v10, v8

    .line 135
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 138
    move-result-object v0

    .line 139
    aput-object v0, v10, v9

    .line 141
    iget v0, p0, Lno;->p:I

    .line 143
    if-eq v0, v4, :cond_a

    .line 145
    iget v0, p0, Lno;->t:I

    .line 147
    if-ne v0, v4, :cond_9

    .line 149
    goto :goto_8

    .line 150
    :cond_9
    const/4 v1, 0x0

    .line 151
    :cond_a
    :goto_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 154
    move-result-object v0

    .line 155
    aput-object v0, v10, v6

    .line 157
    const-string v0, "eleEyeViewType type:{?} haveElecEyeFlag:{?} bDoubleElecEye:{?} bDistFlag:{?} limited:{?} "

    .line 159
    invoke-static {v11, v0, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    return v7
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lno;->m:I

    .line 3
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lno;->s:I

    .line 3
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lno;->r:I

    .line 3
    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lno;->p:I

    .line 3
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lno;->o:I

    .line 3
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lno;->n:I

    .line 3
    return v0
.end method

.method public j()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lno;->e:Ljava/lang/Integer;

    .line 3
    return-object v0
.end method

.method public k()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lno;->g:[B

    .line 3
    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lno;->i:I

    .line 3
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lno;->h:I

    .line 3
    return v0
.end method

.method public n()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lno;->j:Ljava/lang/Integer;

    .line 3
    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lno;->l:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public p()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lno;->f:Ljava/lang/Integer;

    .line 3
    return-object v0
.end method

.method public q()Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "hasLimitedSpeed "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Lno;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v2, v1, [Ljava/lang/Object;

    .line 25
    const-string v3, "GuideInfoDTO"

    .line 27
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lno;->e:Ljava/lang/Integer;

    .line 32
    if-nez v0, :cond_0

    .line 34
    return v1

    .line 35
    :cond_0
    iget v2, p0, Lno;->p:I

    .line 37
    const/16 v3, 0x9

    .line 39
    const/16 v4, 0xff

    .line 41
    const/4 v5, -0x1

    .line 42
    if-ne v2, v5, :cond_1

    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result v0

    .line 48
    if-lez v0, :cond_1

    .line 50
    iget-object v0, p0, Lno;->e:Ljava/lang/Integer;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 55
    move-result v0

    .line 56
    if-ge v0, v4, :cond_1

    .line 58
    iput v3, p0, Lno;->p:I

    .line 60
    iput v5, p0, Lno;->m:I

    .line 62
    iget-object v0, p0, Lno;->e:Ljava/lang/Integer;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lno;->o:I

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget v0, p0, Lno;->t:I

    .line 73
    if-ne v0, v5, :cond_2

    .line 75
    iget v0, p0, Lno;->o:I

    .line 77
    if-gtz v0, :cond_2

    .line 79
    iget-object v0, p0, Lno;->e:Ljava/lang/Integer;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 84
    move-result v0

    .line 85
    if-lez v0, :cond_2

    .line 87
    iget-object v0, p0, Lno;->e:Ljava/lang/Integer;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 92
    move-result v0

    .line 93
    if-ge v0, v4, :cond_2

    .line 95
    iput v3, p0, Lno;->t:I

    .line 97
    iput v5, p0, Lno;->q:I

    .line 99
    iget-object v0, p0, Lno;->e:Ljava/lang/Integer;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 104
    move-result v0

    .line 105
    iput v0, p0, Lno;->s:I

    .line 107
    :cond_2
    :goto_0
    iget v0, p0, Lno;->o:I

    .line 109
    if-gtz v0, :cond_3

    .line 111
    iget v0, p0, Lno;->s:I

    .line 113
    if-lez v0, :cond_4

    .line 115
    :cond_3
    const/4 v1, 0x1

    .line 116
    :cond_4
    return v1
.end method

.method public final r(I)Z
    .locals 1

    .line 1
    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lno;->z:Z

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "GuideInfoDTO{currentRoadName=\'"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lno;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const/16 v1, 0x27

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, ", nextRoadName=\'"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lno;->c:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, ", currentSpeed="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lno;->d:Ljava/lang/Integer;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string v2, ", limitedSpeed="

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v2, p0, Lno;->e:Ljava/lang/Integer;

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string v2, ", turnIcon="

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v2, p0, Lno;->f:Ljava/lang/Integer;

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, ", onlineIcon="

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v2, p0, Lno;->g:[B

    .line 71
    if-nez v2, :cond_0

    .line 73
    const-string v2, "null"

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    array-length v2, v2

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v2

    .line 81
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    const-string v2, ", onlineIconWidth="

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v2, p0, Lno;->h:I

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v2, ", onlineIconHeight="

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v2, p0, Lno;->i:I

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v2, ", roundAboutNum="

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v2, p0, Lno;->j:Ljava/lang/Integer;

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    const-string v2, ", segRemainDistance="

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget v2, p0, Lno;->k:I

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v2, ", segRemainDistanceAuto=\'"

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v2, p0, Lno;->l:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    const-string v2, ", cameraDist="

    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget v2, p0, Lno;->m:I

    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    const-string v2, ", cameraType="

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget v2, p0, Lno;->n:I

    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    const-string v2, ", cameraSpeed="

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget v2, p0, Lno;->o:I

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    const-string v2, ", cameraIndex="

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget v2, p0, Lno;->p:I

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    const-string v2, ", cameraExtraDist="

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget v2, p0, Lno;->q:I

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    const-string v2, ", cameraExtraType="

    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget v2, p0, Lno;->r:I

    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    const-string v2, ", cameraExtraSpeed="

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget v2, p0, Lno;->s:I

    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string v2, ", cameraExtraIndex="

    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget v2, p0, Lno;->t:I

    .line 214
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    const-string v2, ", exitNameInfo=\'"

    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v2, p0, Lno;->u:Ljava/lang/String;

    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    const-string v2, ", exitDirectionInfo=\'"

    .line 232
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v2, p0, Lno;->v:Ljava/lang/String;

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, ", cameraSpacing="

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-wide v1, p0, Lno;->w:D

    .line 250
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 253
    const-string v1, ", isCameraPenalty="

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-boolean v1, p0, Lno;->x:Z

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, ", isNewCamera="

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-boolean v1, p0, Lno;->z:Z

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, ", isNewExtCamera="

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-boolean v1, p0, Lno;->y:Z

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, ", isCameraExtraPenalty="

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-boolean v1, p0, Lno;->A:Z

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, ", isImminent="

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-boolean v1, p0, Lno;->B:Z

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, "} "

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-super {p0}, Lgc;->toString()Ljava/lang/String;

    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    move-result-object v0

    .line 319
    return-object v0
.end method

.method public u(I)V
    .locals 0

    .line 1
    iput p1, p0, Lno;->m:I

    .line 3
    return-void
.end method

.method public v(I)V
    .locals 0

    .line 1
    iput p1, p0, Lno;->q:I

    .line 3
    return-void
.end method

.method public w(I)V
    .locals 0

    .line 1
    iput p1, p0, Lno;->t:I

    .line 3
    return-void
.end method

.method public x(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lno;->A:Z

    .line 3
    return-void
.end method

.method public y(I)V
    .locals 0

    .line 1
    iput p1, p0, Lno;->s:I

    .line 3
    return-void
.end method

.method public z(I)V
    .locals 0

    .line 1
    iput p1, p0, Lno;->r:I

    .line 3
    return-void
.end method
