.class public Lpk$a;
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
.method public final g(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v1

    .line 12
    aput-object v1, v0, p1

    .line 14
    const-string p1, "DysmorphismAdapterFuncRepository"

    .line 16
    const-string v1, "setFullScreenState activity:{?}, isFullScreen:{?}"

    .line 18
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    if-eqz p2, :cond_0

    .line 23
    const-string p1, "true"

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p1, "false"

    .line 28
    :goto_0
    const-string p2, "sys.force_full_screen"

    .line 30
    invoke-static {p2, p1}, Luf0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public m(Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lpk$a;->g(Landroid/app/Activity;Z)V

    .line 4
    return-void
.end method

.method public o()Z
    .locals 2

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->x()I

    .line 8
    move-result v0

    .line 9
    invoke-static {}, Lpk;->a()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lsi;->I()I

    .line 20
    move-result v1

    .line 21
    if-ne v0, v1, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    return-void
.end method
