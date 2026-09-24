.class public Lq20;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# static fields
.field public static m:I


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
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/16 v0, -0x64

    .line 2
    iput v0, p0, Lq20;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Lnc;-><init>()V

    const/16 v0, -0x64

    .line 30
    iput v0, p0, Lq20;->l:I

    const-string v1, "NAVI_ROUTE_PREFER"

    const/4 v2, 0x0

    .line 31
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lq20;->k:I

    const-string v1, "EXTRA_NEWMODE"

    .line 32
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lq20;->l:I

    const/4 p1, -0x1

    .line 33
    iget v0, p0, Lq20;->k:I

    const/16 v1, 0x2715

    invoke-static {v1, p1, v0}, Lwe0;->c(III)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 7

    .line 8
    invoke-direct {p0}, Lnc;-><init>()V

    const/16 v0, -0x64

    .line 9
    iput v0, p0, Lq20;->l:I

    const-string v0, "type"

    .line 10
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    sget p1, Lq20;->m:I

    invoke-static {v0, p1}, Lah;->k(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lq20;->k:I

    return-void

    :cond_0
    const-string v0, "isAvoidJam"

    .line 13
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isVoidCharge"

    .line 14
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isAvoidHighway"

    .line 15
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "usingHighway"

    .line 16
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "isAvoidLimit"

    .line 17
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 19
    invoke-static {v0, v6}, Lah;->k(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 21
    invoke-static {v1, v6}, Lah;->k(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 22
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 23
    invoke-static {v2, v6}, Lah;->k(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 24
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 25
    invoke-static {v3, v6}, Lah;->k(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    const/4 v6, 0x1

    .line 26
    :cond_4
    sget v3, Lq20;->m:I

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const/16 v5, 0x1e

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    const/16 v5, 0x8

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    const/4 v5, 0x7

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    const/4 v5, 0x6

    goto :goto_3

    :cond_8
    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    const/4 v5, 0x5

    goto :goto_3

    :cond_9
    if-eqz v6, :cond_a

    if-eqz v0, :cond_a

    const/16 v5, 0x18

    goto :goto_3

    :cond_a
    if-eqz v6, :cond_b

    const/16 v5, 0x14

    goto :goto_3

    :cond_b
    if-eqz v2, :cond_c

    const/4 v5, 0x3

    goto :goto_3

    :cond_c
    if-eqz v1, :cond_d

    goto :goto_3

    :cond_d
    if-eqz v0, :cond_e

    const/4 v5, 0x4

    goto :goto_3

    :cond_e
    move v5, v3

    .line 28
    :goto_3
    iput v5, p0, Lq20;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    const/16 v0, -0x64

    .line 4
    iput v0, p0, Lq20;->l:I

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->getStrategy()I

    move-result v0

    iput v0, p0, Lq20;->k:I

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->getNewStrategy()I

    move-result p1

    iput p1, p0, Lq20;->l:I

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
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;

    .line 7
    iget v1, p0, Lq20;->k:I

    .line 9
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;-><init>(I)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 15
    iget v1, p0, Lnc;->d:I

    .line 17
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 20
    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnc;->m()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->getReadyStatus()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    const/16 v0, 0x2722

    .line 15
    invoke-virtual {p0, v0}, Lnc;->e(I)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lib;->i()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 25
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;

    .line 27
    iget v1, p0, Lq20;->k:I

    .line 29
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;-><init>(I)V

    .line 32
    iget v1, p0, Lq20;->l:I

    .line 34
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->setNewStrategy(I)V

    .line 37
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lnc;->i()I

    .line 44
    move-result v0

    .line 45
    iget v1, p0, Lq20;->k:I

    .line 47
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeNaviRoutePrefer(II)V

    .line 50
    :goto_0
    return-void
.end method
