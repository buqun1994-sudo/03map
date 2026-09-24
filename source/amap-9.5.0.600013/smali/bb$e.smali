.class public Lbb$e;
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
    .locals 1

    .line 1
    const/16 v0, 0xd

    .line 3
    if-eq p1, v0, :cond_1

    .line 5
    const/16 v0, 0xe

    .line 7
    if-eq p1, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lbb;->a()Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, v0}, Lbb$e;->g(Landroid/content/Context;Z)V

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-static {}, Lbb;->a()Landroid/content/Context;

    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, p1, v0}, Lbb$e;->g(Landroid/content/Context;Z)V

    .line 27
    :goto_0
    return-void
.end method

.method public final g(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 6
    const-string v1, "android.NaviOne.voiceprotocol"

    .line 8
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    const-string v1, "VOICEPROTOCOL"

    .line 13
    if-eqz p2, :cond_1

    .line 15
    new-instance p2, Landroid/content/Intent;

    .line 17
    const-string v2, "com.mxnavi.broadcast.startplaysound"

    .line 19
    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 25
    const-string p2, "play"

    .line 27
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance p2, Landroid/content/Intent;

    .line 33
    const-string v2, "com.mxnavi.broadcast.stopplaysound"

    .line 35
    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    const-string p2, "stop"

    .line 43
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    :goto_0
    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    :cond_2
    return-void
.end method
