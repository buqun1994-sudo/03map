.class public Le50;
.super Lnc;
.source "SourceFile"


# static fields
.field public static m:I = 0x0

.field public static n:I = 0x1


# instance fields
.field public k:I

.field public l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    .line 3
    iput p1, p0, Le50;->l:I

    .line 4
    iput p2, p0, Le50;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqNoticeOperateModel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqNoticeOperateModel;->getType()I

    move-result v0

    iput v0, p0, Le50;->l:I

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqNoticeOperateModel;->getOption()I

    move-result p1

    iput p1, p0, Le50;->k:I

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    invoke-static {}, Lib;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqNoticeOperateModel;

    .line 9
    iget v1, p0, Le50;->k:I

    .line 11
    iget v2, p0, Le50;->l:I

    .line 13
    invoke-direct {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ReqNoticeOperateModel;-><init>(II)V

    .line 16
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 23
    move-result v0

    .line 24
    iget v1, p0, Le50;->l:I

    .line 26
    iget v2, p0, Le50;->k:I

    .line 28
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativePageControl(III)V

    .line 31
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 2

    .line 1
    iget v0, p0, Le50;->l:I

    .line 3
    sget v1, Le50;->n:I

    .line 5
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method
