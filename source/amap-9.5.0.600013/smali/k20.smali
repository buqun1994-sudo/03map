.class public Lk20;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/NaviFacilityProtocolModel;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/NaviFacilityProtocolModel;-><init>()V

    .line 6
    iget-boolean v1, p0, Lk20;->d:Z

    .line 8
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/NaviFacilityProtocolModel;->t(Z)V

    .line 11
    iget v1, p0, Lk20;->e:I

    .line 13
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/NaviFacilityProtocolModel;->u(I)V

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
    const/16 v2, 0x32db

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "EXTRA_SAFEDRIVING_DISPLAY"

    .line 15
    iget-boolean v2, p0, Lk20;->d:Z

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    const-string v1, "EXTRA_SAFEDRIVING_TYPE"

    .line 22
    iget v2, p0, Lk20;->e:I

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    return-object v0
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk20;->d:Z

    .line 3
    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lk20;->e:I

    .line 3
    return-void
.end method
