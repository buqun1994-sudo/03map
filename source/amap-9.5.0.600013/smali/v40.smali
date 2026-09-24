.class public Lv40;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:I


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/OilLowRemindOperaModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 8
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/OilLowRemindOperaModel;->getOperaType()I

    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lv40;->k:I

    .line 14
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

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
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 11
    if-eqz v1, :cond_1

    .line 13
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 15
    iget v1, p0, Lnc;->d:I

    .line 17
    invoke-static {v0, v1}, La80;->i(Ljava/lang/String;I)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;

    .line 28
    const/4 v1, 0x3

    .line 29
    invoke-static {v0, v1}, La80;->h(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;I)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-static {}, Lib;->i()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/OilLowRemindOperaModel;

    .line 9
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/OilLowRemindOperaModel;-><init>()V

    .line 12
    iget v1, p0, Lv40;->k:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/OilLowRemindOperaModel;->setOperaType(I)V

    .line 17
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 24
    move-result v0

    .line 25
    iget v1, p0, Lv40;->k:I

    .line 27
    const/4 v2, -0x1

    .line 28
    invoke-static {v0, v1, v2, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeOilLowRemindOpera(IIII)V

    .line 31
    :goto_0
    return-void
.end method
