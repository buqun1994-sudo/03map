.class public Lpk$d;
.super Lpk$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpk;
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
    invoke-direct {p0, v0}, Lpk$m;-><init>(Lpk$d;)V

    .line 5
    return-void
.end method


# virtual methods
.method public final g(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.hebu.shownavibar"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    xor-int/lit8 p1, p1, 0x1

    .line 10
    const-string v1, "show"

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    invoke-static {}, Lrv;->H()Lrv;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lrv;->z()Landroid/content/Context;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 26
    return-void
.end method

.method public m(Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lpk$d;->g(Z)V

    .line 4
    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    invoke-static {}, Lsk;->c()Lsk;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lsk;->b()Lrk;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lrk;->f()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    return-void
.end method
