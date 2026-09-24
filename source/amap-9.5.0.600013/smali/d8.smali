.class public Ld8;
.super Lfi;
.source "SourceFile"


# instance fields
.field public d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfi;-><init>()V

    .line 4
    new-instance v0, Ld8$a;

    .line 6
    invoke-direct {v0, p0}, Ld8$a;-><init>(Ld8;)V

    .line 9
    iput-object v0, p0, Ld8;->d:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method


# virtual methods
.method public cleanup()Z
    .locals 2

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Ld8;->d:Landroid/content/BroadcastReceiver;

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    invoke-super {p0}, Lbc;->cleanup()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public startup()Z
    .locals 4

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Ld8;->d:Landroid/content/BroadcastReceiver;

    .line 11
    new-instance v2, Landroid/content/IntentFilter;

    .line 13
    const-string v3, "com.stcloud.drive.EVT_ACC_STATUS"

    .line 15
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 21
    invoke-super {p0}, Lbc;->startup()Z

    .line 24
    move-result v0

    .line 25
    return v0
.end method
