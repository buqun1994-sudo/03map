.class public Lpp;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;
.implements Lld;


# instance fields
.field public k:I

.field public l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

.field public m:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/16 v0, -0x64

    .line 2
    iput v0, p0, Lpp;->k:I

    .line 3
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;-><init>()V

    iput-object v0, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Lnc;-><init>()V

    const/16 v0, -0x64

    .line 27
    iput v0, p0, Lpp;->k:I

    .line 28
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;-><init>()V

    iput-object v0, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    const-string v1, "DEST"

    const/4 v2, 0x0

    .line 29
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->type:I

    .line 30
    iget-object v0, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    const-string v1, "IS_START_NAVI"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->directNavi:I

    .line 31
    iget-object p1, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    iget v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->type:I

    iget p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->directNavi:I

    const/16 v1, 0x2738

    invoke-static {v1, v0, p1}, Lwe0;->c(III)V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Lnc;-><init>()V

    const/16 v0, -0x64

    .line 16
    iput v0, p0, Lpp;->k:I

    .line 17
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;-><init>()V

    iput-object v0, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    const-string v0, "dest"

    .line 18
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    const/4 v1, 0x1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->directNavi:I

    .line 20
    sget-object v0, Lcc0;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iget-object p1, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    const/4 v0, 0x0

    iput v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->type:I

    const/16 p1, 0x1390

    .line 22
    invoke-virtual {p0, p1}, Lnc;->u(I)V

    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lcc0;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    iput v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->type:I

    const/16 p1, 0x1391

    .line 25
    invoke-virtual {p0, p1}, Lnc;->u(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const/16 v0, -0x64

    .line 5
    iput v0, p0, Lpp;->k:I

    .line 6
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;-><init>()V

    iput-object v0, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->getDestType()I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->type:I

    .line 8
    iget-object v0, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->getDirectNavi()I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->directNavi:I

    .line 9
    iget-object v0, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->getStrategy()I

    move-result v1

    invoke-virtual {p0, v1}, Lpp;->y(I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->strategy:I

    .line 10
    iget-object v0, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->getDev()I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->dev:I

    .line 11
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->getMidProtocolPois()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpp;->m:Ljava/util/List;

    .line 12
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->getNewStrategy()I

    move-result p1

    iput p1, p0, Lpp;->k:I

    .line 13
    invoke-virtual {p0}, Lpp;->z()V

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 6
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->type:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    iget-object v1, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 17
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->directNavi:I

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    const/4 v3, 0x1

    .line 24
    aput-object v1, v0, v3

    .line 26
    const-string v1, "HomeOrCompanyNaviAction"

    .line 28
    const-string v4, "[HomeOrCompanyNaviAction]type:{?};directNavi:{?}"

    .line 30
    invoke-static {v1, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-boolean v0, p0, Lnc;->c:Z

    .line 35
    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;

    .line 39
    iget-object v4, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 41
    iget v5, v4, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->type:I

    .line 43
    iget v4, v4, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->directNavi:I

    .line 45
    invoke-direct {v0, v5, v4}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;-><init>(II)V

    .line 48
    iget-object v4, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 50
    iget v4, v4, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->strategy:I

    .line 52
    invoke-virtual {v0, v4}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->setStrategy(I)V

    .line 55
    iget-object v4, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 57
    iget v4, v4, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->dev:I

    .line 59
    invoke-virtual {v0, v4}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->setDev(I)V

    .line 62
    iget v4, p0, Lpp;->k:I

    .line 64
    invoke-virtual {v0, v4}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->setNewStrategy(I)V

    .line 67
    iget-object v4, p0, Lpp;->m:Ljava/util/List;

    .line 69
    if-eqz v4, :cond_0

    .line 71
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 74
    move-result v4

    .line 75
    if-lez v4, :cond_0

    .line 77
    new-array v3, v3, [Ljava/lang/Object;

    .line 79
    iget-object v4, p0, Lpp;->m:Ljava/util/List;

    .line 81
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 84
    move-result v4

    .line 85
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v4

    .line 89
    aput-object v4, v3, v2

    .line 91
    const-string v2, "[HomeOrCompanyNaviAction]midProtocolPois.size={?}"

    .line 93
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lpp;->m:Ljava/util/List;

    .line 98
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->setMidProtocolPois(Ljava/util/List;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lpp;->x()Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;

    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->getCount()I

    .line 110
    move-result v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->setCount(I)V

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 117
    iget v3, p0, Lnc;->d:I

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v3

    .line 123
    aput-object v3, v0, v2

    .line 125
    const-string v2, "[HomeOrCompanyNaviAction]resultCode={?}"

    .line 127
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 132
    iget v1, p0, Lnc;->d:I

    .line 134
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 137
    :cond_2
    :goto_0
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "HomeOrCompanyNaviAction"

    .line 6
    const-string v3, "pareseToIntent"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const v1, 0xeaaa

    .line 14
    invoke-virtual {p0, v1}, Lnc;->t(I)V

    .line 17
    new-instance v1, Landroid/content/Intent;

    .line 19
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 22
    iget-boolean v3, p0, Lnc;->c:Z

    .line 24
    const/4 v4, 0x1

    .line 25
    const-string v5, "EXTRA_RESPONSE_CODE"

    .line 27
    if-eqz v3, :cond_0

    .line 29
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget v3, p0, Lnc;->d:I

    .line 35
    const/16 v6, 0x2715

    .line 37
    if-eq v3, v6, :cond_5

    .line 39
    const/16 v6, 0x2716

    .line 41
    if-eq v3, v6, :cond_4

    .line 43
    const/16 v6, 0x271d

    .line 45
    if-eq v3, v6, :cond_3

    .line 47
    const/16 v6, 0x271e

    .line 49
    if-eq v3, v6, :cond_2

    .line 51
    const/16 v6, 0x2746

    .line 53
    if-eq v3, v6, :cond_1

    .line 55
    const/4 v3, 0x6

    .line 56
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v3, 0x5

    .line 61
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v3, 0x4

    .line 66
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const/4 v3, 0x3

    .line 71
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/4 v3, 0x2

    .line 76
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    goto :goto_0

    .line 80
    :cond_5
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    :goto_0
    new-array v3, v4, [Ljava/lang/Object;

    .line 85
    iget v4, p0, Lnc;->d:I

    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v4

    .line 91
    aput-object v4, v3, v0

    .line 93
    const-string v0, "[HomeOrCompanyNaviAction]resultCode={?}"

    .line 95
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    return-object v1
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-static {}, Lib;->i()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;

    .line 9
    iget-object v1, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 11
    iget v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->type:I

    .line 13
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->directNavi:I

    .line 15
    invoke-direct {v0, v2, v1}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;-><init>(II)V

    .line 18
    iget-object v1, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 20
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->strategy:I

    .line 22
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->setStrategy(I)V

    .line 25
    iget-object v1, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 27
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->dev:I

    .line 29
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->setDev(I)V

    .line 32
    iget v1, p0, Lpp;->k:I

    .line 34
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->setNewStrategy(I)V

    .line 37
    iget-object v1, p0, Lpp;->m:Ljava/util/List;

    .line 39
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->setMidProtocolPois(Ljava/util/List;)V

    .line 44
    :cond_0
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 50
    invoke-virtual {p0}, Lnc;->i()I

    .line 53
    move-result v1

    .line 54
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->requestId:I

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    const-string v1, "[HomeOrCompanyNaviAction]"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 68
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->toString()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    const/4 v1, 0x0

    .line 80
    new-array v1, v1, [Ljava/lang/Object;

    .line 82
    const-string v2, "HomeOrCompanyNaviAction"

    .line 84
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 89
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeHomeOrCompanyNavi(Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;)V

    .line 92
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x2

    .line 6
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->directNavi:I

    .line 8
    if-ne v1, v0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 14
    move-result-object v0

    .line 15
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;

    .line 17
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    move-object v1, v0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    const-string v4, "HomeOrCompanyNaviAction"

    .line 35
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 38
    :goto_0
    return-object v1
.end method

.method public final y(I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/protocol/constant/StandardProtocolKey;->STYLE_TYPE_ARRAY:[I

    .line 3
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    return p1
.end method

.method public final z()V
    .locals 7

    .line 1
    iget-object v0, p0, Lpp;->m:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_9

    .line 12
    :goto_0
    iget-object v0, p0, Lpp;->m:Ljava/util/List;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    move-result v0

    .line 18
    if-ge v1, v0, :cond_a

    .line 20
    iget-object v0, p0, Lpp;->m:Ljava/util/List;

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 28
    const-wide/16 v2, 0x0

    .line 30
    if-eqz v1, :cond_6

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eq v1, v4, :cond_3

    .line 35
    const/4 v4, 0x2

    .line 36
    if-eq v1, v4, :cond_0

    .line 38
    goto/16 :goto_1

    .line 40
    :cond_0
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLongitude()D

    .line 43
    move-result-wide v4

    .line 44
    cmpl-double v6, v4, v2

    .line 46
    if-nez v6, :cond_1

    .line 48
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLongitude()D

    .line 51
    move-result-wide v4

    .line 52
    :cond_1
    iget-object v6, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 54
    iput-wide v4, v6, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->tmidlon:D

    .line 56
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLatitude()D

    .line 59
    move-result-wide v4

    .line 60
    cmpl-double v6, v4, v2

    .line 62
    if-nez v6, :cond_2

    .line 64
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLatitude()D

    .line 67
    move-result-wide v4

    .line 68
    :cond_2
    iget-object v2, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 70
    iput-wide v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->tmidlat:D

    .line 72
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getPoiName()Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 76
    iput-object v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->tmidname:Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 80
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getPoiId()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    iput-object v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->tMidPoiId:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 88
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->u()I

    .line 91
    move-result v3

    .line 92
    iput v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->tmidtype:I

    .line 94
    iget-object v2, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 96
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->v()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    iput-object v0, v2, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->tmidTypecode:Ljava/lang/String;

    .line 102
    goto/16 :goto_1

    .line 104
    :cond_3
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLongitude()D

    .line 107
    move-result-wide v4

    .line 108
    cmpl-double v6, v4, v2

    .line 110
    if-nez v6, :cond_4

    .line 112
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLongitude()D

    .line 115
    move-result-wide v4

    .line 116
    :cond_4
    iget-object v6, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 118
    iput-wide v4, v6, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->smidlon:D

    .line 120
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLatitude()D

    .line 123
    move-result-wide v4

    .line 124
    cmpl-double v6, v4, v2

    .line 126
    if-nez v6, :cond_5

    .line 128
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLatitude()D

    .line 131
    move-result-wide v4

    .line 132
    :cond_5
    iget-object v2, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 134
    iput-wide v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->smidlat:D

    .line 136
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getPoiName()Ljava/lang/String;

    .line 139
    move-result-object v3

    .line 140
    iput-object v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->smidname:Ljava/lang/String;

    .line 142
    iget-object v2, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 144
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getPoiId()Ljava/lang/String;

    .line 147
    move-result-object v3

    .line 148
    iput-object v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->sMidPoiId:Ljava/lang/String;

    .line 150
    iget-object v2, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 152
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->u()I

    .line 155
    move-result v3

    .line 156
    iput v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->smidtype:I

    .line 158
    iget-object v2, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 160
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->v()Ljava/lang/String;

    .line 163
    move-result-object v0

    .line 164
    iput-object v0, v2, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->smidTypecode:Ljava/lang/String;

    .line 166
    goto :goto_1

    .line 167
    :cond_6
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLongitude()D

    .line 170
    move-result-wide v4

    .line 171
    cmpl-double v6, v4, v2

    .line 173
    if-nez v6, :cond_7

    .line 175
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLongitude()D

    .line 178
    move-result-wide v4

    .line 179
    :cond_7
    iget-object v6, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 181
    iput-wide v4, v6, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fmidlon:D

    .line 183
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLatitude()D

    .line 186
    move-result-wide v4

    .line 187
    cmpl-double v6, v4, v2

    .line 189
    if-nez v6, :cond_8

    .line 191
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLatitude()D

    .line 194
    move-result-wide v4

    .line 195
    :cond_8
    iget-object v2, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 197
    iput-wide v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fmidlat:D

    .line 199
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getPoiName()Ljava/lang/String;

    .line 202
    move-result-object v3

    .line 203
    iput-object v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fmidname:Ljava/lang/String;

    .line 205
    iget-object v2, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 207
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getPoiId()Ljava/lang/String;

    .line 210
    move-result-object v3

    .line 211
    iput-object v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fMidPoiId:Ljava/lang/String;

    .line 213
    iget-object v2, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 215
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->u()I

    .line 218
    move-result v3

    .line 219
    iput v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fmidtype:I

    .line 221
    iget-object v2, p0, Lpp;->l:Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;

    .line 223
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->v()Ljava/lang/String;

    .line 226
    move-result-object v0

    .line 227
    iput-object v0, v2, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fmidTypecode:Ljava/lang/String;

    .line 229
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 231
    goto/16 :goto_0

    .line 233
    :cond_9
    const-string v0, "[initData]:via ProtocolPoi null!!!"

    .line 235
    new-array v1, v1, [Ljava/lang/Object;

    .line 237
    const-string v2, "HomeOrCompanyNaviAction"

    .line 239
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :cond_a
    return-void
.end method
