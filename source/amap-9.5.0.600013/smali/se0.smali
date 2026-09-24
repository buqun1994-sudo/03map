.class public Lse0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lse0;->k:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    iput p1, p0, Lse0;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lse0;->k:I

    const-string v0, "EXTRA_TYPE"

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lse0;->k:I

    .line 8
    invoke-static {}, Lib;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget p1, p0, Lse0;->k:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xd

    .line 10
    iput p1, p0, Lse0;->k:I

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xc

    .line 11
    iput p1, p0, Lse0;->k:I

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xb

    .line 12
    iput p1, p0, Lse0;->k:I

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xa

    .line 13
    iput p1, p0, Lse0;->k:I

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x9

    .line 14
    iput p1, p0, Lse0;->k:I

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x8

    .line 15
    iput p1, p0, Lse0;->k:I

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x7

    .line 16
    iput p1, p0, Lse0;->k:I

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;

    .line 9
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;-><init>()V

    .line 12
    iget v1, p0, Lse0;->k:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->setPageType(I)V

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
    iget v1, p0, Lse0;->k:I

    .line 27
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->startPage(II)V

    .line 30
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
