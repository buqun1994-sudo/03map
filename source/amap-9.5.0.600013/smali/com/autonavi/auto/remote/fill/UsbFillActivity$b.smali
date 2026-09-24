.class public Lcom/autonavi/auto/remote/fill/UsbFillActivity$b;
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
.field public final synthetic a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;


# direct methods
.method public constructor <init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$b;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$b;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 3
    invoke-static {p1}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->f(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)Ld7;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-static {p1}, Lp7;->k(Z)V

    .line 14
    iget-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$b;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 19
    return-void
.end method
