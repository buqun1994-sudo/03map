.class public Lj10;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lj10;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 6

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lj10;->k:I

    const-string v1, "KEY_TYPE"

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x2ee4

    if-ne v5, v1, :cond_1

    const-string v1, "EXTRA_HOME_OR_COMPANY_WHAT"

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 7
    :cond_0
    iput v3, p0, Lj10;->k:I

    xor-int/2addr p1, v4

    .line 8
    invoke-static {v5, v0, p1}, Lwe0;->c(III)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x32cd

    if-ne v0, v1, :cond_5

    .line 9
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v1, "CARD_TYPE"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lj10;->l:I

    const-string v1, "IS_CANCEL"

    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v4, v1, :cond_3

    .line 12
    iput v3, p0, Lj10;->k:I

    goto :goto_0

    .line 13
    :cond_3
    iget v1, p0, Lj10;->l:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    const-string v0, "DEST"

    .line 14
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v0, "IS_START_NAVI"

    .line 15
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 16
    iput p1, p0, Lj10;->k:I

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    if-ne v1, p1, :cond_5

    .line 17
    iput v2, p0, Lj10;->k:I

    const-string p1, "EXTRA_SEARCHTYPE"

    .line 18
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lj10;->m:I

    const-string p1, "EXTRA_MAXCOUNT"

    .line 19
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lj10;->n:I

    .line 20
    invoke-virtual {p0, v4}, Lnc;->r(Z)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public c()Landroid/content/Intent;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;

    .line 7
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    new-array v2, v1, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getSearchMode()I

    .line 17
    move-result v3

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    aput-object v3, v2, v4

    .line 25
    const-string v3, "MessageComponentOperateAction"

    .line 27
    const-string v4, "pareseToIntent searchMode={?}"

    .line 29
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getSearchMode()I

    .line 35
    move-result v2

    .line 36
    const/16 v3, 0x2749

    .line 38
    if-eqz v2, :cond_2

    .line 40
    const/16 v4, 0x273b

    .line 42
    if-eq v2, v1, :cond_3

    .line 44
    const/4 v1, 0x2

    .line 45
    if-eq v2, v1, :cond_1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/16 v4, 0x2749

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/16 v4, 0x273a

    .line 53
    :cond_3
    :goto_0
    invoke-virtual {p0, v4}, Lnc;->t(I)V

    .line 56
    new-instance v1, Landroid/content/Intent;

    .line 58
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 61
    if-ne v4, v3, :cond_4

    .line 63
    const/4 v2, 0x4

    .line 64
    invoke-static {v2, v0, v1}, Lmc0;->f(ILcom/autonavi/amapauto/jni/protocol/data/SearchResultData;Landroid/content/Intent;)V

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    invoke-static {v0}, Lmc0;->o(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    const-string v3, "EXTRA_RESULT"

    .line 74
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-static {v0}, Lcc;->A(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;)I

    .line 80
    move-result v0

    .line 81
    const-string v2, "SEARCH_RESULT_CODE"

    .line 83
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    :goto_1
    return-object v1
.end method

.method public d()V
    .locals 7

    .line 1
    iget v0, p0, Lj10;->k:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    if-ne v2, v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 9
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;-><init>()V

    .line 12
    iput-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 14
    const/16 v1, 0x2711

    .line 16
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 18
    invoke-virtual {p0}, Lnc;->i()I

    .line 21
    move-result v1

    .line 22
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->requestALId:I

    .line 24
    invoke-static {}, Ll30;->g()Ll30;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Ll30;->n(Ljava/lang/Object;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x3

    .line 33
    new-array v3, v2, [Ljava/lang/Object;

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v0

    .line 39
    aput-object v0, v3, v1

    .line 41
    iget v0, p0, Lj10;->m:I

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v0

    .line 47
    const/4 v4, 0x1

    .line 48
    aput-object v0, v3, v4

    .line 50
    iget v0, p0, Lj10;->n:I

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v0

    .line 56
    const/4 v5, 0x2

    .line 57
    aput-object v0, v3, v5

    .line 59
    const-string v0, "MessageComponentOperateAction"

    .line 61
    const-string v6, "type={?}, mSearchMode={?}, mMaxCount={?}"

    .line 63
    invoke-static {v0, v6, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget v0, p0, Lj10;->l:I

    .line 68
    if-ne v0, v2, :cond_2

    .line 70
    invoke-virtual {p0}, Lnc;->i()I

    .line 73
    move-result v0

    .line 74
    iget v2, p0, Lj10;->k:I

    .line 76
    if-ne v2, v5, :cond_1

    .line 78
    const/4 v1, 0x1

    .line 79
    :cond_1
    iget v2, p0, Lj10;->m:I

    .line 81
    iget v3, p0, Lj10;->n:I

    .line 83
    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeOilLowRemindOpera(IIII)V

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0}, Lnc;->i()I

    .line 90
    move-result v0

    .line 91
    iget v1, p0, Lj10;->k:I

    .line 93
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeOperaHomeCompanyTip(II)V

    .line 96
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 2

    .line 1
    iget v0, p0, Lj10;->k:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method
