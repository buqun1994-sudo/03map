.class public Llf0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    iput-object p1, p0, Llf0;->k:Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;

    .line 6
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 9
    if-eqz v1, :cond_0

    .line 11
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolSuccessModel;

    .line 13
    iget-object v1, p0, Llf0;->k:Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;

    .line 15
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolSuccessModel;-><init>(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 21
    iget v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 23
    iget-object v0, p0, Llf0;->k:Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;

    .line 25
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 28
    move-result v4

    .line 29
    iget-object v0, p0, Llf0;->k:Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;

    .line 31
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 34
    move-result v5

    .line 35
    iget-object v0, p0, Llf0;->k:Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;

    .line 37
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 40
    move-result-object v6

    .line 41
    iget-object v0, p0, Llf0;->k:Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;

    .line 43
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 46
    move-result-wide v7

    .line 47
    move-object v2, v1

    .line 48
    invoke-direct/range {v2 .. v8}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(IIILjava/lang/String;J)V

    .line 51
    move-object v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->i()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Llf0;->k:Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;

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
    iget-object v1, p0, Llf0;->k:Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;

    .line 19
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;->getThemeType()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSwitchAutoTheme(ILjava/lang/String;)V

    .line 26
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
