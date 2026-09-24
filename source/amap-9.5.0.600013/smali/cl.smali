.class public Lcl;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field public n:Lhl$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcl;->k:I

    .line 3
    iput v0, p0, Lcl;->l:I

    .line 4
    iput v0, p0, Lcl;->m:I

    .line 5
    new-instance v0, Lcl$b;

    invoke-direct {v0, p0}, Lcl$b;-><init>(Lcl;)V

    iput-object v0, p0, Lcl;->n:Lhl$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcl;->k:I

    .line 8
    iput v0, p0, Lcl;->l:I

    .line 9
    iput v0, p0, Lcl;->m:I

    .line 10
    new-instance v1, Lcl$b;

    invoke-direct {v1, p0}, Lcl$b;-><init>(Lcl;)V

    iput-object v1, p0, Lcl;->n:Lhl$a;

    const-string v1, "EXTSCREEN_OPERATE_TYPE"

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcl;->k:I

    const-string v1, "EXTSCREEN_WINDOW_INFO"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcl;->l:I

    const-string v1, "EXTSCREEN_MODE_INFO"

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcl;->m:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenOperaModel;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcl;->k:I

    .line 17
    iput v0, p0, Lcl;->l:I

    .line 18
    iput v0, p0, Lcl;->m:I

    .line 19
    new-instance v0, Lcl$b;

    invoke-direct {v0, p0}, Lcl$b;-><init>(Lcl;)V

    iput-object v0, p0, Lcl;->n:Lhl$a;

    .line 20
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenOperaModel;->getOperateType()I

    move-result v0

    iput v0, p0, Lcl;->k:I

    .line 21
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenOperaModel;->getScreenWindow()I

    move-result v0

    iput v0, p0, Lcl;->l:I

    .line 22
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenOperaModel;->getScreenMode()I

    move-result p1

    iput p1, p0, Lcl;->m:I

    return-void
.end method

.method public static synthetic A(Lcl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcl;->m:I

    .line 3
    return p0
.end method

.method public static synthetic B(Lcl;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcl;->C()V

    .line 4
    return-void
.end method

.method public static synthetic x(Lcl;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcl;->D()V

    .line 4
    return-void
.end method

.method public static synthetic y(Lcl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcl;->k:I

    .line 3
    return p0
.end method

.method public static synthetic z(Lcl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcl;->l:I

    .line 3
    return p0
.end method


# virtual methods
.method public final C()V
    .locals 4

    .line 1
    invoke-static {}, Lib;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenOperaModel;

    .line 9
    iget v1, p0, Lcl;->k:I

    .line 11
    iget v2, p0, Lcl;->l:I

    .line 13
    iget v3, p0, Lcl;->m:I

    .line 15
    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenOperaModel;-><init>(III)V

    .line 18
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v0, p0, Lcl;->k:I

    .line 24
    iget v1, p0, Lcl;->l:I

    .line 26
    iget v2, p0, Lcl;->m:I

    .line 28
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->onOperateExscreenNotified(III)V

    .line 31
    :goto_0
    return-void
.end method

.method public final D()V
    .locals 8

    .line 1
    invoke-static {}, La20;->l()La20;

    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcl;->l:I

    .line 7
    invoke-virtual {v0, v1}, La20;->k(I)Lhl;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x3

    .line 12
    new-array v2, v1, [Ljava/lang/Object;

    .line 14
    iget v3, p0, Lcl;->k:I

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v3

    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v3, v2, v4

    .line 23
    iget v3, p0, Lcl;->l:I

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v3

    .line 29
    const/4 v5, 0x1

    .line 30
    aput-object v3, v2, v5

    .line 32
    iget v3, p0, Lcl;->m:I

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v3

    .line 38
    const/4 v6, 0x2

    .line 39
    aput-object v3, v2, v6

    .line 41
    const-string v3, "ExScreenOperaAction"

    .line 43
    const-string v7, "operateType={?}, screenWindow={?}, screenMode={?}"

    .line 45
    invoke-static {v3, v7, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    if-eqz v0, :cond_0

    .line 50
    iget v2, p0, Lcl;->k:I

    .line 52
    const/16 v7, 0x9

    .line 54
    if-eq v2, v7, :cond_0

    .line 56
    iget v1, p0, Lcl;->m:I

    .line 58
    iget-object v3, p0, Lcl;->n:Lhl$a;

    .line 60
    invoke-virtual {v0, v2, v1, v3}, Lhl;->l(IILhl$a;)Z

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 66
    iget v1, p0, Lcl;->k:I

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v1

    .line 72
    aput-object v1, v0, v4

    .line 74
    iget v1, p0, Lcl;->l:I

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v1

    .line 80
    aput-object v1, v0, v5

    .line 82
    iget v1, p0, Lcl;->m:I

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v1

    .line 88
    aput-object v1, v0, v6

    .line 90
    const-string v1, "null srceen or OPERATION_TYPE_QUERY . excute === operateType={?}, screenWindow={?}, screenMode={?}"

    .line 92
    invoke-static {v3, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0}, Lcl;->C()V

    .line 98
    :goto_0
    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget v2, p0, Lcl;->k:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    const-string v2, "ExScreenOperaAction"

    .line 15
    const-string v3, "doAction operateType = {?}"

    .line 17
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    const/4 v1, -0x1

    .line 21
    iget v2, p0, Lcl;->k:I

    .line 23
    if-ne v1, v2, :cond_0

    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->x()Lhl;

    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x2

    .line 31
    if-eqz v1, :cond_3

    .line 33
    invoke-virtual {v1}, Lhl;->f()Ld20;

    .line 36
    move-result-object v3

    .line 37
    sget-object v4, Ld20;->f:Ld20;

    .line 39
    if-ne v3, v4, :cond_3

    .line 41
    invoke-virtual {v1}, Lhl;->d()I

    .line 44
    move-result v3

    .line 45
    iget v4, p0, Lcl;->l:I

    .line 47
    if-ne v3, v4, :cond_3

    .line 49
    iget v3, p0, Lcl;->k:I

    .line 51
    if-nez v3, :cond_1

    .line 53
    invoke-virtual {v1}, Lhl;->s()V

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    if-eq v3, v0, :cond_2

    .line 59
    if-ne v3, v2, :cond_3

    .line 61
    :cond_2
    invoke-virtual {v1}, Lhl;->u()V

    .line 64
    :cond_3
    :goto_0
    invoke-static {}, La20;->l()La20;

    .line 67
    move-result-object v1

    .line 68
    iget v3, p0, Lcl;->l:I

    .line 70
    invoke-virtual {v1, v3}, La20;->k(I)Lhl;

    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_8

    .line 76
    invoke-virtual {v1}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_8

    .line 82
    invoke-virtual {v1}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 85
    move-result-object v3

    .line 86
    iget v3, v3, Lcom/autonavi/amapauto/jni/ViewInfo;->n:I

    .line 88
    if-nez v3, :cond_8

    .line 90
    iget v3, p0, Lcl;->k:I

    .line 92
    if-nez v3, :cond_5

    .line 94
    invoke-virtual {v1}, Lhl;->j()Z

    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_4

    .line 100
    invoke-virtual {p0}, Lcl;->D()V

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    iget v0, p0, Lcl;->m:I

    .line 106
    invoke-virtual {v1, v0}, Lhl;->t(I)V

    .line 109
    new-instance v0, Lcl$a;

    .line 111
    invoke-direct {v0, p0}, Lcl$a;-><init>(Lcl;)V

    .line 114
    invoke-virtual {v1, v0}, Lhl;->a(Ljava/lang/Runnable;)V

    .line 117
    goto :goto_2

    .line 118
    :cond_5
    if-eq v3, v0, :cond_7

    .line 120
    if-ne v3, v2, :cond_6

    .line 122
    goto :goto_1

    .line 123
    :cond_6
    invoke-virtual {p0}, Lcl;->D()V

    .line 126
    goto :goto_2

    .line 127
    :cond_7
    :goto_1
    invoke-virtual {v1}, Lhl;->u()V

    .line 130
    goto :goto_2

    .line 131
    :cond_8
    invoke-virtual {p0}, Lcl;->D()V

    .line 134
    :goto_2
    return-void
.end method
