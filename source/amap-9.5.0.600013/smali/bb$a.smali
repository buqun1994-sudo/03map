.class public Lbb$a;
.super Lbb$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lbb$g;-><init>(Lbb$a;)V

    .line 5
    return-void
.end method


# virtual methods
.method public f(I)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "gaode_navigation_activated"

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    const-string v0, "com.autonavi.navigation.NAVIGATION_STOPPED"

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 11
    packed-switch p1, :pswitch_data_1

    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    invoke-static {}, Lbb;->a()Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0}, Lbb$a;->g(Landroid/content/Context;Z)V

    .line 23
    goto :goto_0

    .line 24
    :pswitch_1
    invoke-static {}, Lbb;->a()Landroid/content/Context;

    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, p1, v0}, Lbb$a;->g(Landroid/content/Context;Z)V

    .line 32
    goto :goto_0

    .line 33
    :pswitch_2
    invoke-static {}, Lbb;->a()Landroid/content/Context;

    .line 36
    move-result-object p1

    .line 37
    new-instance v1, Landroid/content/Intent;

    .line 39
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 45
    goto :goto_0

    .line 46
    :pswitch_3
    invoke-static {}, Lbb;->a()Landroid/content/Context;

    .line 49
    move-result-object p1

    .line 50
    new-instance v0, Landroid/content/Intent;

    .line 52
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 58
    goto :goto_0

    .line 59
    :pswitch_4
    invoke-static {}, Lbb;->a()Landroid/content/Context;

    .line 62
    move-result-object p1

    .line 63
    new-instance v1, Landroid/content/Intent;

    .line 65
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    goto :goto_0

    .line 72
    :pswitch_5
    invoke-static {}, Lbb;->a()Landroid/content/Context;

    .line 75
    move-result-object p1

    .line 76
    new-instance v0, Landroid/content/Intent;

    .line 78
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Lbb;->a()Landroid/content/Context;

    .line 88
    move-result-object p1

    .line 89
    new-instance v0, Landroid/content/Intent;

    .line 91
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    :goto_0
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    if-eqz p2, :cond_0

    .line 8
    const-string p2, "com.autonavi.xm.action.VOICE_PLAY_STARTED"

    .line 10
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p2, "com.autonavi.xm.action.VOICE_PLAY_STOPPED"

    .line 16
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    :goto_0
    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 24
    :cond_1
    return-void
.end method
