.class public Lzk;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput-object p1, p0, Lzk;->d:Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;

    .line 6
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lzk;->d:Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ContinueNaviModel;

    .line 9
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/ContinueNaviModel;-><init>()V

    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ContinueNaviModel;->x(I)V

    .line 16
    iget-object v1, p0, Lzk;->d:Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;

    .line 18
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->content:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ContinueNaviModel;->A(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lzk;->d:Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;

    .line 25
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->isShow:Z

    .line 27
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ContinueNaviModel;->y(Z)V

    .line 30
    iget-object v1, p0, Lzk;->d:Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;

    .line 32
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->isTop:Z

    .line 34
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ContinueNaviModel;->z(Z)V

    .line 37
    iget-object v1, p0, Lzk;->d:Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;

    .line 39
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->content:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ContinueNaviModel;->w(Ljava/lang/String;)V

    .line 44
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    iget-object v0, p0, Lzk;->d:Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 9
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12
    const-string v1, "KEY_TYPE"

    .line 14
    const/16 v2, 0x2741

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    iget-object v1, p0, Lzk;->d:Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;

    .line 21
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->content:Ljava/lang/String;

    .line 23
    const-string v2, "EXTRA_ENDURANCE_DATA"

    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    iget-object v1, p0, Lzk;->d:Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;

    .line 30
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->isTop:Z

    .line 32
    const-string v2, "EXTRA_MESSAGE_IS_TOP"

    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    return-object v0
.end method
