.class public Lpk$c;
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
.method public g(Landroid/view/Window;)V
    .locals 1

    .line 1
    new-instance v0, Lpk$c$a;

    .line 3
    invoke-direct {v0, p0, p1}, Lpk$c$a;-><init>(Lpk$c;Landroid/view/Window;)V

    .line 6
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public m(Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lpk$c;->g(Landroid/view/Window;)V

    .line 10
    :cond_0
    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    return-void
.end method
