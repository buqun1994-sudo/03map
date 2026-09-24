.class public Lwv;
.super Lsv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsv;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public createRealChannelImpl()Leq;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "JiangHuaiS811Impl"

    .line 6
    const-string v2, "createRealChannelImpl JiangHuaiS811Impl"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return-object p0
.end method

.method public onActivityLifecycleChanged(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lsv;->onActivityLifecycleChanged(Landroid/app/Activity;I)V

    .line 4
    const/4 v0, 0x3

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p2, v0, :cond_0

    .line 8
    if-ne p2, v1, :cond_1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    .line 21
    move-result p2

    .line 22
    or-int/lit8 p2, p2, 0x2

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 35
    new-array p1, v1, [Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    aput-object p2, p1, v0

    .line 44
    const-string p2, "JiangHuaiS811Impl"

    .line 46
    const-string v0, "setSystemUiVisibility 0x{?}"

    .line 48
    invoke-static {p2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_1
    return-void
.end method
