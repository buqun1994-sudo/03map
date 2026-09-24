.class public Lbm0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public final k:Ljava/lang/String;

.field public l:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    const-string v0, "WidgetGoHomeCompanyAction"

    .line 6
    iput-object v0, p0, Lbm0;->k:Ljava/lang/String;

    .line 8
    const-string v0, "settingtype"

    .line 10
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p1, v0}, Lah;->k(Ljava/lang/String;I)I

    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lbm0;->l:I

    .line 21
    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget v2, p0, Lbm0;->l:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    const-string v2, "WidgetGoHomeCompanyAction"

    .line 15
    const-string v3, "doAction settingType={?}"

    .line 17
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget v1, p0, Lbm0;->l:I

    .line 22
    if-eq v1, v0, :cond_1

    .line 24
    const/4 v0, 0x2

    .line 25
    if-eq v1, v0, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetUI;->goCompany()V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetUI;->goHome()V

    .line 35
    :goto_0
    return-void
.end method
