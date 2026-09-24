.class public Lrb;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput-object p1, p0, Lrb;->d:Ljava/lang/String;

    .line 6
    iput p2, p0, Lrb;->e:I

    .line 8
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/AvoidJamModel;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/AvoidJamModel;-><init>()V

    .line 6
    iget-object v1, p0, Lrb;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/AvoidJamModel;->setMessage(Ljava/lang/String;)V

    .line 11
    iget v1, p0, Lrb;->e:I

    .line 13
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/AvoidJamModel;->u(I)V

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
    const/16 v2, 0x2f49

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "EXTRA_AVOID_TRAFFIC_JAM_MESSAGE"

    .line 15
    iget-object v2, p0, Lrb;->d:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    return-object v0
.end method
