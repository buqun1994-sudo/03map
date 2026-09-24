.class public Lcom/autonavi/auto/remote/fill/UsbFillActivity$f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/auto/remote/fill/UsbFillActivity$f;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/auto/remote/fill/UsbFillActivity$f;


# direct methods
.method public constructor <init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$f$d;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity$f;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$f$d;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity$f;

    .line 3
    iget-object p1, p1, Lcom/autonavi/auto/remote/fill/UsbFillActivity$f;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 8
    const-string p1, "UsbFillActivity"

    .line 10
    const-string p2, "System.exit, doCrashModeFix fix success setNegativeButton"

    .line 12
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const/16 p1, 0x73

    .line 17
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 20
    return-void
.end method
