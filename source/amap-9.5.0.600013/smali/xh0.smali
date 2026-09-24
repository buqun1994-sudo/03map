.class public Lxh0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;-><init>()V

    iput-object v0, p0, Lxh0;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;-><init>()V

    iput-object v0, p0, Lxh0;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    const-string v0, "REPORT_OPERATE_TYPE"

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lxh0;->k:I

    const-string v0, "REPORT_TYPE"

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lxh0;->l:I

    const-string v0, "REPORT_EVENT_TYPE"

    const/4 v1, -0x1

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lxh0;->m:I

    const-string v0, "REPORT_VIEW_OPERATE"

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lxh0;->n:I

    .line 13
    iget-object p1, p0, Lxh0;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    iget v0, p0, Lxh0;->k:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;->setReportOperateType(I)V

    .line 14
    iget-object p1, p0, Lxh0;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    iget v0, p0, Lxh0;->l:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;->setReportType(I)V

    .line 15
    iget-object p1, p0, Lxh0;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    iget v0, p0, Lxh0;->m:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;->setReportEventType(I)V

    .line 16
    iget-object p1, p0, Lxh0;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    iget v0, p0, Lxh0;->n:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;->setReportViewOperate(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;-><init>()V

    iput-object v0, p0, Lxh0;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 6
    iput-object p1, p0, Lxh0;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "TrafficEventsReportAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 14
    move-result-object v0

    .line 15
    iget-boolean v1, p0, Lnc;->c:Z

    .line 17
    if-eqz v1, :cond_0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lxh0;->x()Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;

    .line 24
    move-result-object v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 28
    if-nez v0, :cond_1

    .line 30
    const/16 v0, 0x2730

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 35
    :goto_0
    invoke-direct {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 38
    move-object v0, v1

    .line 39
    :goto_1
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 10

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 9
    move-result-object v1

    .line 10
    const-class v2, Lxh0;

    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x0

    .line 14
    const-string v5, "REPORT_RESULT_CODE"

    .line 16
    if-nez v1, :cond_0

    .line 18
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "pareseToIntent data == null"

    .line 24
    new-array v4, v4, [Ljava/lang/Object;

    .line 26
    invoke-static {v1, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    return-object v0

    .line 33
    :cond_0
    iget-boolean v6, v1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 35
    const-string v7, "IS_REPORT_VIEW_CLOSE"

    .line 37
    const-string v8, "IS_MANUAL_TRAFFIC_REPORT_GUIDE"

    .line 39
    const-string v9, "IS_REPORT_VIEW_SHOW"

    .line 41
    if-eqz v6, :cond_2

    .line 43
    invoke-virtual {p0}, Lxh0;->x()Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;

    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;->getReportResultCode()I

    .line 52
    move-result v3

    .line 53
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;->getIsReportViewShow()Z

    .line 59
    move-result v3

    .line 60
    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;->getIsManualTrafficReportGuide()Z

    .line 66
    move-result v3

    .line 67
    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;->getIsReportViewClose()Z

    .line 73
    move-result v1

    .line 74
    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const-string v1, "rspTrafficEventsReportModel==null"

    .line 80
    new-array v3, v4, [Ljava/lang/Object;

    .line 82
    const-string v5, "TrafficReportAction"

    .line 84
    invoke-static {v5, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    check-cast v1, Lcom/autonavi/amapauto/jni/protocol/data/TrafficReportResultData;

    .line 90
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/TrafficReportResultData;->type:I

    .line 92
    if-eqz v1, :cond_7

    .line 94
    const/4 v6, 0x1

    .line 95
    if-eq v1, v6, :cond_6

    .line 97
    if-eq v1, v3, :cond_5

    .line 99
    const/4 v3, 0x3

    .line 100
    if-eq v1, v3, :cond_4

    .line 102
    const/4 v3, 0x4

    .line 103
    if-eq v1, v3, :cond_3

    .line 105
    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {v0, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    goto :goto_0

    .line 114
    :cond_5
    invoke-virtual {v0, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    goto :goto_0

    .line 118
    :cond_6
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    goto :goto_0

    .line 122
    :cond_7
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 128
    move-result-object v1

    .line 129
    if-eqz v1, :cond_8

    .line 131
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    const-string v3, "pareseToIntent result="

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 160
    new-array v3, v4, [Ljava/lang/Object;

    .line 162
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_8
    return-object v0
.end method

.method public d()V
    .locals 5

    .line 1
    invoke-static {}, Lib;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lxh0;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lxh0;->k:I

    .line 19
    iget v2, p0, Lxh0;->l:I

    .line 21
    iget v3, p0, Lxh0;->m:I

    .line 23
    iget v4, p0, Lxh0;->n:I

    .line 25
    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeTrafficReport(IIIII)V

    .line 28
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lxh0;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;->getReportOperateType()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq v0, v1, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    move-object v1, v0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    .line 38
    const-string v4, "TrafficEventsReportAction"

    .line 40
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method
