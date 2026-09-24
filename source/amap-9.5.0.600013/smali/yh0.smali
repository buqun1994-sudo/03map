.class public Lyh0;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:I

.field public e:Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    iput p1, p0, Lyh0;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput-object p1, p0, Lyh0;->e:Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lyh0;->e:Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;

    .line 3
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 8

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x2f4c

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0}, Lec;->d()Z

    .line 16
    move-result v1

    .line 17
    const-string v2, "IS_REPORT_VIEW_CLOSE"

    .line 19
    const-string v3, "IS_MANUAL_TRAFFIC_REPORT_GUIDE"

    .line 21
    const-string v4, "IS_REPORT_VIEW_SHOW"

    .line 23
    const-string v5, "REPORT_RESULT_CODE"

    .line 25
    const/4 v6, 0x1

    .line 26
    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lyh0;->e:Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;

    .line 30
    if-eqz v1, :cond_6

    .line 32
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;->getReportResultCode()I

    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lyh0;->e:Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;

    .line 41
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;->getIsReportViewShow()Z

    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    iget-object v1, p0, Lyh0;->e:Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;

    .line 50
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;->getIsManualTrafficReportGuide()Z

    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lyh0;->e:Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;

    .line 59
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;->getIsReportViewClose()Z

    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget v1, p0, Lyh0;->d:I

    .line 69
    const/4 v7, 0x2

    .line 70
    if-eqz v1, :cond_5

    .line 72
    if-eq v1, v6, :cond_4

    .line 74
    if-eq v1, v7, :cond_3

    .line 76
    const/4 v4, 0x3

    .line 77
    if-eq v1, v4, :cond_2

    .line 79
    const/4 v3, 0x4

    .line 80
    if-eq v1, v3, :cond_1

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    goto :goto_0

    .line 99
    :cond_5
    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    :cond_6
    :goto_0
    const-class v1, Lyh0;

    .line 104
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    new-array v2, v6, [Ljava/lang/Object;

    .line 110
    iget v3, p0, Lyh0;->d:I

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object v3

    .line 116
    const/4 v4, 0x0

    .line 117
    aput-object v3, v2, v4

    .line 119
    const-string v3, "type = {?}"

    .line 121
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return-object v0
.end method
