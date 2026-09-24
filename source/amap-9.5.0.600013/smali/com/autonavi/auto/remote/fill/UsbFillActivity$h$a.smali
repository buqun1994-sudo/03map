.class public Lcom/autonavi/auto/remote/fill/UsbFillActivity$h$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/auto/remote/fill/UsbFillActivity$h;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/auto/remote/fill/UsbFillActivity$h;


# direct methods
.method public constructor <init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity$h;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$h$a;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity$h;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$h$a;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity$h;

    .line 3
    iget-object p1, p1, Lcom/autonavi/auto/remote/fill/UsbFillActivity$h;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 8
    const-string p1, "UsbFillActivity"

    .line 10
    const-string v0, "System.exit, showAppExceptionDialog setPositiveButton"

    .line 12
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const/16 p1, 0x75

    .line 17
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 20
    return-void
.end method
