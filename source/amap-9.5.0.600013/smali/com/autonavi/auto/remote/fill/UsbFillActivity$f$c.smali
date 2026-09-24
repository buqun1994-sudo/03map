.class public Lcom/autonavi/auto/remote/fill/UsbFillActivity$f$c;
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
    iput-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$f$c;->a:Lcom/autonavi/auto/remote/fill/UsbFillActivity$f;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const-string p1, "UsbFillActivity"

    .line 3
    const-string p2, "System.exit, doCrashModeFix fix failed setPositiveButton"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lk6;->g()Lk6;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2, p2}, Lk6;->e(ZZ)V

    .line 16
    return-void
.end method
