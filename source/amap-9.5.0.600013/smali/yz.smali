.class public Lyz;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lnc;-><init>()V

    const/16 v0, 0x10

    .line 52
    iput v0, p0, Lyz;->n:I

    const/4 v0, 0x2

    .line 53
    iput v0, p0, Lyz;->o:I

    const/4 v0, 0x4

    .line 54
    iput v0, p0, Lyz;->p:I

    const/16 v0, 0x8

    .line 55
    iput v0, p0, Lyz;->q:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lyz;->r:I

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Lnc;-><init>()V

    const/16 v0, 0x10

    .line 33
    iput v0, p0, Lyz;->n:I

    const/4 v0, 0x2

    .line 34
    iput v0, p0, Lyz;->o:I

    const/4 v0, 0x4

    .line 35
    iput v0, p0, Lyz;->p:I

    const/16 v0, 0x8

    .line 36
    iput v0, p0, Lyz;->q:I

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lyz;->r:I

    const-string v1, "EXTRA_TYPE"

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lyz;->k:I

    const-string v1, "EXTRA_OPERA"

    .line 39
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lyz;->l:I

    const/16 v0, 0x272b

    .line 40
    iget v1, p0, Lyz;->k:I

    invoke-static {v0, v1, p1}, Lwe0;->c(III)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, Lyz;->n:I

    const/4 v1, 0x2

    .line 3
    iput v1, p0, Lyz;->o:I

    const/4 v2, 0x4

    .line 4
    iput v2, p0, Lyz;->p:I

    const/16 v3, 0x8

    .line 5
    iput v3, p0, Lyz;->q:I

    const/4 v4, 0x0

    .line 6
    iput v4, p0, Lyz;->r:I

    const-string v5, "traffic"

    .line 7
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "zoom"

    .line 8
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "zoomValue"

    .line 9
    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v6, v9, v4

    const-string v10, "MapOperaAction"

    const-string v11, "zoomStr ={?}"

    .line 10
    invoke-static {v10, v11, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v9, "switchView"

    .line 11
    invoke-virtual {p1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "preview"

    .line 12
    invoke-virtual {p1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p0, v8}, Lnc;->q(Z)V

    if-eqz v5, :cond_0

    .line 14
    invoke-static {v5, v4}, Lah;->k(Ljava/lang/String;I)I

    move-result v5

    const/16 v10, 0x1399

    .line 15
    invoke-virtual {p0, v10}, Lnc;->u(I)V

    .line 16
    iget v10, p0, Lyz;->r:I

    or-int/2addr v0, v10

    iput v0, p0, Lyz;->r:I

    .line 17
    iput v5, p0, Lyz;->s:I

    :cond_0
    if-eqz v6, :cond_2

    .line 18
    invoke-static {v6, v4}, Lah;->k(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lyz;->t:I

    .line 19
    invoke-static {v7, v4}, Lah;->k(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lyz;->u:I

    if-lez v0, :cond_1

    const/16 v0, 0x13a0

    goto :goto_0

    :cond_1
    const/16 v0, 0x139f

    .line 20
    :goto_0
    invoke-virtual {p0, v0}, Lnc;->u(I)V

    .line 21
    iget v0, p0, Lyz;->r:I

    or-int/2addr v0, v1

    iput v0, p0, Lyz;->r:I

    :cond_2
    if-eqz v9, :cond_5

    .line 22
    invoke-static {v9, v4}, Lah;->k(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/16 v1, 0x139d

    .line 23
    invoke-virtual {p0, v1}, Lnc;->u(I)V

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_4

    const/16 v1, 0x139e

    .line 24
    invoke-virtual {p0, v1}, Lnc;->u(I)V

    goto :goto_1

    :cond_4
    const/16 v1, 0x139c

    .line 25
    invoke-virtual {p0, v1}, Lnc;->u(I)V

    .line 26
    :goto_1
    iget v1, p0, Lyz;->r:I

    or-int/2addr v1, v2

    iput v1, p0, Lyz;->r:I

    .line 27
    iput v0, p0, Lyz;->v:I

    :cond_5
    if-eqz p1, :cond_7

    .line 28
    invoke-static {p1, v4}, Lah;->k(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x1398

    .line 29
    invoke-virtual {p0, v0}, Lnc;->u(I)V

    .line 30
    iget v0, p0, Lyz;->r:I

    or-int/2addr v0, v3

    iput v0, p0, Lyz;->r:I

    if-ne p1, v8, :cond_6

    const/4 v4, 0x1

    .line 31
    :cond_6
    iput-boolean v4, p0, Lyz;->w:Z

    :cond_7
    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lnc;-><init>()V

    const/16 v0, 0x10

    .line 42
    iput v0, p0, Lyz;->n:I

    const/4 v0, 0x2

    .line 43
    iput v0, p0, Lyz;->o:I

    const/4 v0, 0x4

    .line 44
    iput v0, p0, Lyz;->p:I

    const/16 v0, 0x8

    .line 45
    iput v0, p0, Lyz;->q:I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lyz;->r:I

    .line 47
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->getActionType()I

    move-result v0

    iput v0, p0, Lyz;->k:I

    .line 48
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->getOperaType()I

    move-result v0

    iput v0, p0, Lyz;->l:I

    .line 49
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->getOperaValue()I

    move-result p1

    iput p1, p0, Lyz;->m:I

    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lnc;->c:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;

    .line 7
    iget v1, p0, Lyz;->k:I

    .line 9
    iget v2, p0, Lyz;->l:I

    .line 11
    iget v3, p0, Lyz;->m:I

    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;-><init>(III)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 19
    iget v1, p0, Lnc;->d:I

    .line 21
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 24
    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "MapOperaAction"

    .line 6
    const-string v3, "[onReceive] receiveClientRequest startAction doAction"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget v1, p0, Lyz;->r:I

    .line 13
    if-nez v1, :cond_0

    .line 15
    iget v0, p0, Lyz;->k:I

    .line 17
    iget v1, p0, Lyz;->l:I

    .line 19
    iget v2, p0, Lyz;->m:I

    .line 21
    invoke-virtual {p0, v0, v1, v2}, Lyz;->x(III)V

    .line 24
    goto/16 :goto_0

    .line 26
    :cond_0
    const/4 v3, 0x1

    .line 27
    new-array v4, v3, [Ljava/lang/Object;

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v1

    .line 33
    aput-object v1, v4, v0

    .line 35
    const-string v1, "combinationMode ={?}"

    .line 37
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget v1, p0, Lyz;->r:I

    .line 42
    const/16 v4, 0x10

    .line 44
    and-int/2addr v1, v4

    .line 45
    if-ne v1, v4, :cond_1

    .line 47
    new-array v1, v3, [Ljava/lang/Object;

    .line 49
    iget v4, p0, Lyz;->s:I

    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v4

    .line 55
    aput-object v4, v1, v0

    .line 57
    const-string v4, "trafficOpera ={?}"

    .line 59
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget v1, p0, Lyz;->s:I

    .line 64
    invoke-virtual {p0, v0, v1, v0}, Lyz;->x(III)V

    .line 67
    :cond_1
    iget v1, p0, Lyz;->r:I

    .line 69
    const/4 v4, 0x2

    .line 70
    and-int/2addr v1, v4

    .line 71
    if-ne v1, v4, :cond_2

    .line 73
    new-array v1, v3, [Ljava/lang/Object;

    .line 75
    iget v5, p0, Lyz;->t:I

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v5

    .line 81
    aput-object v5, v1, v0

    .line 83
    const-string v5, "zoomOpera ={?}"

    .line 85
    invoke-static {v2, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    new-array v1, v3, [Ljava/lang/Object;

    .line 90
    iget v5, p0, Lyz;->u:I

    .line 92
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v5

    .line 96
    aput-object v5, v1, v0

    .line 98
    const-string v5, "zoomValue ={?}"

    .line 100
    invoke-static {v2, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget v1, p0, Lyz;->t:I

    .line 105
    iget v5, p0, Lyz;->u:I

    .line 107
    invoke-virtual {p0, v3, v1, v5}, Lyz;->x(III)V

    .line 110
    :cond_2
    iget v1, p0, Lyz;->r:I

    .line 112
    const/4 v5, 0x4

    .line 113
    and-int/2addr v1, v5

    .line 114
    const-string v6, "viewOpera ={?}"

    .line 116
    if-ne v1, v5, :cond_3

    .line 118
    new-array v1, v3, [Ljava/lang/Object;

    .line 120
    iget v5, p0, Lyz;->v:I

    .line 122
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    move-result-object v5

    .line 126
    aput-object v5, v1, v0

    .line 128
    invoke-static {v2, v6, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget v1, p0, Lyz;->v:I

    .line 133
    invoke-virtual {p0, v4, v1, v0}, Lyz;->x(III)V

    .line 136
    :cond_3
    iget v1, p0, Lyz;->r:I

    .line 138
    const/16 v4, 0x8

    .line 140
    and-int/2addr v1, v4

    .line 141
    if-ne v1, v4, :cond_4

    .line 143
    new-array v1, v3, [Ljava/lang/Object;

    .line 145
    iget v3, p0, Lyz;->v:I

    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object v3

    .line 151
    aput-object v3, v1, v0

    .line 153
    invoke-static {v2, v6, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p0}, Lnc;->i()I

    .line 159
    move-result v0

    .line 160
    iget-boolean v1, p0, Lyz;->w:Z

    .line 162
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeNaviPreview(IZ)V

    .line 165
    :cond_4
    :goto_0
    return-void
.end method

.method public final x(III)V
    .locals 1

    .line 1
    invoke-static {}, Lib;->h()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;

    .line 9
    invoke-direct {v0, p1, p2, p3}, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;-><init>(III)V

    .line 12
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 19
    move-result v0

    .line 20
    invoke-static {v0, p1, p2, p3}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->doOperaMap(IIII)V

    .line 23
    :goto_0
    return-void
.end method
