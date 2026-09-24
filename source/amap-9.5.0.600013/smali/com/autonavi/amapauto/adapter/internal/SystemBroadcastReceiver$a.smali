.class public Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver$a;->a:Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    const/16 v0, 0x99

    .line 3
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    if-ne v0, p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    .line 10
    const-string v0, "SystemBroadcastReceiver"

    .line 12
    const-string v1, "SystemBroadcastReceiver handleMessage isValidUsbAction=true "

    .line 14
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-static {p1}, Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver;->a(Z)Z

    .line 21
    :cond_0
    return-void
.end method
