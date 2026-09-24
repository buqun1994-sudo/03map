.class public Lfloatapp/auto3d/Auto3D;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final AUTONAVI_STANDARD_BROADCAST_RECV:Ljava/lang/String; = "com.autonavi.amapauto.receiver_test"

.field private static final AUTONAVI_STANDARD_BROADCAST_SEND:Ljava/lang/String; = "AUTONAVI_STANDARD_BROADCAST_SEND"

.field private static final EXTRA_OPERA:Ljava/lang/String; = "EXTRA_OPERA"

.field private static final EXTRA_STATE:Ljava/lang/String; = "EXTRA_STATE"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "EXTRA_TYPE"

.field private static final KEY_TYPE:Ljava/lang/String; = "KEY_TYPE"

.field private static final OPERA_2:I = 0x2

.field private static final STATE_24:I = 0x18

.field private static final STATE_25:I = 0x19

.field private static final STATE_8:I = 0x8

.field private static final STATE_9:I = 0x9

.field private static final TAG:Ljava/lang/String; = "Auto3D"

.field private static final TYPE_10019:I = 0x2723

.field private static final TYPE_10027:I = 0x272b

.field private static final TYPE_2:I = 0x2

.field private static volatile hasSentBroadcast:Z


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lfloatapp/auto3d/Auto3D;->hasSentBroadcast:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lfloatapp/auto3d/Auto3D;

    invoke-direct {v1}, Lfloatapp/auto3d/Auto3D;-><init>()V

    iput-object p0, v1, Lfloatapp/auto3d/Auto3D;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "KEY_TYPE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "EXTRA_STATE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x2723

    if-ne v0, v3, :cond_0

    const/16 v3, 0x9

    if-eq v1, v3, :cond_2

    const/16 v3, 0x19

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    sput-boolean v3, Lfloatapp/auto3d/Auto3D;->hasSentBroadcast:Z

    return-void

    :goto_1
    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    sget-boolean v3, Lfloatapp/auto3d/Auto3D;->hasSentBroadcast:Z

    if-nez v3, :cond_4

    const/4 v3, 0x1

    sput-boolean v3, Lfloatapp/auto3d/Auto3D;->hasSentBroadcast:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lfloatapp/auto3d/Auto3D;->context:Landroid/content/Context;

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autonavi.amapauto.receiver_test"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "KEY_TYPE"

    const/16 v4, 0x272b

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "EXTRA_TYPE"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "EXTRA_OPERA"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lfloatapp/auto3d/Auto3D$1;

    invoke-direct {v6, p0, p1, v2}, Lfloatapp/auto3d/Auto3D$1;-><init>(Lfloatapp/auto3d/Auto3D;Landroid/content/Context;Landroid/content/Intent;)V

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x18

    if-ne v1, v3, :cond_0

    sget-boolean v3, Lfloatapp/auto3d/Auto3D;->hasSentBroadcast:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    sput-boolean v3, Lfloatapp/auto3d/Auto3D;->hasSentBroadcast:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lfloatapp/auto3d/Auto3D;->context:Landroid/content/Context;

    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autonavi.amapauto.receiver_test"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "KEY_TYPE"

    const/16 v4, 0x272b

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "EXTRA_TYPE"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "EXTRA_OPERA"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.autonavi.amapauto.receiver_test"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "KEY_TYPE"

    const/16 v5, 0x272b

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "EXTRA_TYPE"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "EXTRA_OPERA"

    const/16 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.autonavi.amapauto.receiver_test"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "KEY_TYPE"

    const/16 v6, 0x272b

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "EXTRA_TYPE"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "EXTRA_OPERA"

    const/16 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lfloatapp/auto3d/Auto3D$1;

    invoke-direct {v6, p0, p1, v2}, Lfloatapp/auto3d/Auto3D$1;-><init>(Lfloatapp/auto3d/Auto3D;Landroid/content/Context;Landroid/content/Intent;)V

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v6, Lfloatapp/auto3d/Auto3D$1;

    invoke-direct {v6, p0, p1, v3}, Lfloatapp/auto3d/Auto3D$1;-><init>(Lfloatapp/auto3d/Auto3D;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v6, Lfloatapp/auto3d/Auto3D$1;

    invoke-direct {v6, p0, p1, v4}, Lfloatapp/auto3d/Auto3D$1;-><init>(Lfloatapp/auto3d/Auto3D;Landroid/content/Context;Landroid/content/Intent;)V

    const-wide/16 v7, 0x5dc

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
