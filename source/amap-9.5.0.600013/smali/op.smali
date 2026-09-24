.class public Lop;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

.field public e:Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput-object p1, p0, Lop;->d:Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    iput-object p1, p0, Lop;->e:Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lec;->d()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lop;->e:Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;

    .line 12
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;-><init>()V

    .line 15
    iget-object v1, p0, Lop;->d:Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

    .line 17
    if-eqz v1, :cond_2

    .line 19
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->type:I

    .line 21
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->setType(I)V

    .line 24
    iget-object v1, p0, Lop;->d:Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

    .line 26
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->isPrediction:Z

    .line 28
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->C(Z)V

    .line 31
    iget-object v1, p0, Lop;->d:Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

    .line 33
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->eta:F

    .line 35
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->z(F)V

    .line 38
    iget-object v1, p0, Lop;->d:Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

    .line 40
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->size:I

    .line 42
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->D(I)V

    .line 45
    iget-object v1, p0, Lop;->d:Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

    .line 47
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->totaldistance:I

    .line 49
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->G(I)V

    .line 52
    iget-object v1, p0, Lop;->d:Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

    .line 54
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->mainroadinfo:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->B(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lop;->d:Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

    .line 61
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->routeTMCSegmentData:[Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;

    .line 63
    if-eqz v1, :cond_2

    .line 65
    array-length v2, v1

    .line 66
    if-lez v2, :cond_2

    .line 68
    array-length v1, v1

    .line 69
    new-array v2, v1, [Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;

    .line 71
    const/4 v3, 0x0

    .line 72
    :goto_0
    if-ge v3, v1, :cond_1

    .line 74
    iget-object v4, p0, Lop;->d:Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

    .line 76
    iget-object v4, v4, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->routeTMCSegmentData:[Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;

    .line 78
    aget-object v4, v4, v3

    .line 80
    new-instance v5, Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;

    .line 82
    invoke-direct {v5}, Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;-><init>()V

    .line 85
    iget v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->status:I

    .line 87
    invoke-virtual {v5, v6}, Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;->y(I)V

    .line 90
    invoke-virtual {v5, v3}, Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;->w(I)V

    .line 93
    iget v4, v4, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->percent:F

    .line 95
    invoke-virtual {v5, v4}, Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;->x(F)V

    .line 98
    aput-object v5, v2, v3

    .line 100
    add-int/lit8 v3, v3, 0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->F([Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;)V

    .line 106
    :cond_2
    const/16 v1, 0x7537

    .line 108
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    .line 111
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lec;->d()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "EXTRA_MESSAGE_IS_TOP"

    .line 7
    const-string v2, "EXTRA_HOME_OR_COMPANY_ETA"

    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "EXTRA_HOME_OR_COMPANY_WHAT"

    .line 12
    const/16 v5, 0x2ee4

    .line 14
    const-string v6, "KEY_TYPE"

    .line 16
    const/4 v7, 0x1

    .line 17
    if-eqz v0, :cond_2

    .line 19
    new-instance v0, Landroid/content/Intent;

    .line 21
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 24
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    iget-object v5, p0, Lop;->e:Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;

    .line 29
    if-eqz v5, :cond_1

    .line 31
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->getType()I

    .line 34
    move-result v5

    .line 35
    if-ne v5, v7, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v3, 0x1

    .line 39
    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    iget-object v3, p0, Lop;->e:Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;

    .line 44
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->v()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v2, p0, Lop;->e:Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;

    .line 53
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->s()Z

    .line 56
    move-result v2

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    :cond_1
    return-object v0

    .line 61
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 63
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    iget-object v5, p0, Lop;->d:Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

    .line 71
    iget v5, v5, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->type:I

    .line 73
    if-ne v5, v7, :cond_3

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    const/4 v3, 0x1

    .line 77
    :goto_1
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    iget-object v3, p0, Lop;->d:Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

    .line 82
    iget-object v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->strEta:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v2, p0, Lop;->d:Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

    .line 89
    iget-boolean v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->isTop:Z

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    return-object v0
.end method
