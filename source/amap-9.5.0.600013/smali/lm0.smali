.class public Llm0;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Ljava/lang/String;

.field public e:Lcom/autonavi/amapauto/protocol/model/service/RspScreenshotPathModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspScreenshotPathModel;

    .line 6
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspScreenshotPathModel;-><init>()V

    .line 9
    iput-object v0, p0, Llm0;->e:Lcom/autonavi/amapauto/protocol/model/service/RspScreenshotPathModel;

    .line 11
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    iget-object v0, p0, Llm0;->e:Lcom/autonavi/amapauto/protocol/model/service/RspScreenshotPathModel;

    .line 3
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x274c

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "EXTRA_SCREENSHOT_PATH"

    .line 15
    invoke-virtual {p0}, Llm0;->g()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Llm0;->d:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Llm0;->e:Lcom/autonavi/amapauto/protocol/model/service/RspScreenshotPathModel;

    .line 3
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/service/RspScreenshotPathModel;->setScreenshotPath(Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Llm0;->d:Ljava/lang/String;

    .line 8
    return-void
.end method
