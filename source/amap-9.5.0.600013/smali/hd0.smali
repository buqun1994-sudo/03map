.class public Lhd0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:I


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReportNaviModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lhd0;->k:I

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReportNaviModel;->getNaviBroadcastType()I

    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lhd0;->k:I

    .line 13
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    const-string v1, "SetReportNaviAction"

    .line 16
    const-string v2, "[parseToAidlModel] isSuccessed"

    .line 18
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReportNaviModel;

    .line 23
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReportNaviModel;-><init>()V

    .line 26
    iget v1, p0, Lhd0;->k:I

    .line 28
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ReportNaviModel;->setNaviBroadcastType(I)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 34
    iget v1, p0, Lnc;->d:I

    .line 36
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 39
    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lhd0;->k:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "SetReportNaviAction"

    .line 15
    const-string v2, "[doAction] naviBroadcastType:{?}"

    .line 17
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lib;->h()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReportNaviModel;

    .line 28
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReportNaviModel;-><init>()V

    .line 31
    iget v1, p0, Lhd0;->k:I

    .line 33
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ReportNaviModel;->setNaviBroadcastType(I)V

    .line 36
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 43
    move-result v0

    .line 44
    iget v1, p0, Lhd0;->k:I

    .line 46
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSetReportNaviType(II)V

    .line 49
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
