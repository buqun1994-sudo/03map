.class public Ljd0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;

.field public l:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Ljd0;->l:Ljava/util/List;

    .line 11
    iput-object p1, p0, Ljd0;->k:Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;

    .line 13
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;->getSysFontPath1()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 23
    iget-object p1, p0, Ljd0;->l:Ljava/util/List;

    .line 25
    iget-object v0, p0, Ljd0;->k:Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;

    .line 27
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;->getSysFontPath1()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    iget-object p1, p0, Ljd0;->k:Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;

    .line 36
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;->getSysFontPath2()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 46
    iget-object p1, p0, Ljd0;->l:Ljava/util/List;

    .line 48
    iget-object v0, p0, Ljd0;->k:Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;

    .line 50
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;->getSysFontPath2()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_1
    iget-object p1, p0, Ljd0;->k:Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;

    .line 59
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;->getSysFontPath3()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_2

    .line 69
    iget-object p1, p0, Ljd0;->l:Ljava/util/List;

    .line 71
    iget-object v0, p0, Ljd0;->k:Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;

    .line 73
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;->getSysFontPath3()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_2
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
    if-eqz v0, :cond_0

    .line 7
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolSuccessModel;

    .line 13
    iget-object v1, p0, Ljd0;->k:Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;

    .line 15
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolSuccessModel;-><init>(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 18
    return-object v0

    .line 19
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 21
    iget v1, p0, Lnc;->d:I

    .line 23
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 26
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->l()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Ljd0;->k:Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Ljd0;->l:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 21
    const/16 v0, 0x2711

    .line 23
    invoke-virtual {p0, v0}, Lnc;->e(I)V

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lnc;->i()I

    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Ljd0;->l:Ljava/util/List;

    .line 33
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSetSystemFont(ILjava/util/List;)V

    .line 36
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ljd0;->l:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method
