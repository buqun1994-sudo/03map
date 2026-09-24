.class public Lx50;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:J

.field public e:Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;-><init>()V

    iput-object v0, p0, Lx50;->e:Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;-><init>()V

    .line 5
    iput-object p1, p0, Lx50;->e:Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;->getKeyPictureTime()J

    move-result-wide v0

    iput-wide v0, p0, Lx50;->d:J

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;->getKeyCode()I

    move-result p1

    iput p1, p0, Lec;->c:I

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lx50;->e:Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;

    .line 3
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x2f44

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "KEY_PICTURE_TIME"

    .line 15
    iget-wide v2, p0, Lx50;->d:J

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 20
    const-string v1, "KEY_CODE"

    .line 22
    iget v2, p0, Lec;->c:I

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    return-object v0
.end method

.method public g(I)V
    .locals 1

    .line 1
    iput p1, p0, Lec;->c:I

    .line 3
    iget-object v0, p0, Lx50;->e:Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;

    .line 5
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;->setKeyCode(I)V

    .line 8
    return-void
.end method

.method public h(J)V
    .locals 1

    .line 1
    iput-wide p1, p0, Lx50;->d:J

    .line 3
    iget-object v0, p0, Lx50;->e:Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;->setKeyPictureTime(J)V

    .line 8
    return-void
.end method
