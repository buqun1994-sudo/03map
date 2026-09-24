.class public Ldl;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/16 v0, 0x9

    .line 2
    iput v0, p0, Ldl;->k:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ldl;->l:I

    .line 4
    iput v0, p0, Ldl;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    const/16 v0, 0x9

    .line 6
    iput v0, p0, Ldl;->k:I

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Ldl;->l:I

    .line 8
    iput v0, p0, Ldl;->m:I

    const-string v1, "EXTSCREEN_WINDOW_INFO"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ldl;->l:I

    const-string v1, "EXTSCREEN_MODE_INFO"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Ldl;->m:I

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    .line 1
    iget v0, p0, Ldl;->l:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v1, v0, :cond_1

    .line 6
    iget v2, p0, Ldl;->m:I

    .line 8
    if-ne v1, v2, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v1, p0, Ldl;->k:I

    .line 13
    invoke-static {v1, v0, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->onOperateExscreenNotified(III)V

    .line 16
    return-void

    .line 17
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Exception;

    .line 19
    const-string v1, "Received additional power usage from system, but some key parameter is missing."

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    const/4 v2, 0x0

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    const-string v3, "ExScreenQueryAction"

    .line 29
    invoke-static {v3, v1, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 32
    return-void
.end method
