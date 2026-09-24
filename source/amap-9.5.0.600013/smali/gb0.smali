.class public Lgb0;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;

.field public e:Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput-object p1, p0, Lgb0;->d:Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    iput-object p1, p0, Lgb0;->e:Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lec;->d()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lgb0;->e:Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lgb0;->d:Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;

    .line 12
    invoke-static {v0}, La80;->d(Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;)Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;

    .line 15
    move-result-object v0

    .line 16
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
    const/16 v2, 0x2748

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0}, Lec;->d()Z

    .line 16
    move-result v1

    .line 17
    const-string v2, "EXTRA_ROAD_INFO"

    .line 19
    if-eqz v1, :cond_0

    .line 21
    iget-object v1, p0, Lgb0;->e:Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;

    .line 23
    invoke-static {v1}, La80;->e(Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Lgb0;->d:Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;

    .line 33
    invoke-static {v1}, La80;->c(Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    :goto_0
    return-object v0
.end method
