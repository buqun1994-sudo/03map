.class public Lrc0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lrc0;->k:I

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lrc0;->k:I

    const-string v1, "EXTRA_PARK_DATA"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lrc0;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ParkOperaModel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lrc0;->k:I

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 10
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ParkOperaModel;->getOperaSelect()I

    move-result p1

    sub-int/2addr p1, v0

    iput p1, p0, Lrc0;->k:I

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnc;->c:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ParkOperaModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ParkOperaModel;-><init>()V

    .line 10
    iget v1, p0, Lrc0;->k:I

    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ParkOperaModel;->setOperaSelect(I)V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 20
    iget v1, p0, Lnc;->d:I

    .line 22
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 25
    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->getReadyStatus()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/16 v0, 0x2722

    .line 9
    invoke-virtual {p0, v0}, Lnc;->e(I)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lib;->i()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ParkOperaModel;

    .line 21
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ParkOperaModel;-><init>()V

    .line 24
    iget v1, p0, Lrc0;->k:I

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ParkOperaModel;->setOperaSelect(I)V

    .line 31
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lnc;->i()I

    .line 38
    move-result v0

    .line 39
    iget v1, p0, Lrc0;->k:I

    .line 41
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSelectParking(II)V

    .line 44
    :goto_0
    return-void
.end method
