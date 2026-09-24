.class public Lcom/autonavi/auto/remote/fill/UsbFillActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/auto/remote/fill/UsbFillActivity;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/autonavi/auto/remote/fill/UsbFillActivity;


# direct methods
.method public constructor <init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$a;->b:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 3
    iput-boolean p2, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$a;->a:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$a;->a:Z

    .line 3
    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboConfig;->c()Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 8
    move-result-object p1

    .line 9
    const-string v0, "isShowSysAuthorizationPromptBox"

    .line 11
    const-string v1, "1"

    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/autonavi/amapauto/framework/TurboConfig;->o(Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$a;->b:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 18
    invoke-static {p1}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->f(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)Ld7;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-static {p1}, Lp7;->k(Z)V

    .line 29
    iget-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$a;->b:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 31
    invoke-static {p1}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->g(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)V

    .line 34
    return-void
.end method
