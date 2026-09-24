.class public Lig0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "POPUP_ID"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lig0;->k:I

    const-string v0, "EXTRA_TEST_PARAM"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lig0;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lig0;->k:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v2, p0, Lig0;->l:Ljava/lang/String;

    .line 16
    aput-object v2, v0, v1

    .line 18
    const-string v1, "TestCardShowAction"

    .line 20
    const-string v2, "doAction popId:{?}, param:{?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget v0, p0, Lig0;->k:I

    .line 27
    iget-object v1, p0, Lig0;->l:Ljava/lang/String;

    .line 29
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeTestCardShow(ILjava/lang/String;)V

    .line 32
    return-void
.end method
