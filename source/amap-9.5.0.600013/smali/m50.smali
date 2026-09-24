.class public Lm50;
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
    iput v0, p0, Lm50;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lm50;->k:I

    const-string v1, "EXTRA_NAVI_VIA_PASS_CONTROL"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lm50;->k:I

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnc;->i()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lm50;->k:I

    .line 7
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativePassViaPoiControl(II)V

    .line 10
    return-void
.end method
