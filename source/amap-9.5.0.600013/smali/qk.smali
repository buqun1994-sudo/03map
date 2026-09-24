.class public Lqk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqk$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "ImmersiveMode"

    .line 6
    iput-object v0, p0, Lqk;->a:Ljava/lang/String;

    .line 8
    const-string v0, "statusBarColor"

    .line 10
    iput-object v0, p0, Lqk;->b:Ljava/lang/String;

    .line 12
    const-string v0, "navigationBarColor"

    .line 14
    iput-object v0, p0, Lqk;->c:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static synthetic a(Lqk;Landroid/view/Window;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lqk;->g(Landroid/view/Window;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static d()Lqk;
    .locals 1

    .line 1
    invoke-static {}, Lqk$b;->a()Lqk;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final b(Landroid/view/Window;)V
    .locals 10

    .line 1
    invoke-static {}, Lib;->a()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1d6

    .line 7
    if-lt v0, v1, :cond_2

    .line 9
    invoke-static {}, Lzm;->d()Lzm;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "ImmersiveMode"

    .line 15
    const/4 v2, -0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Lzm;->e(Ljava/lang/String;I)I

    .line 19
    move-result v5

    .line 20
    invoke-static {}, Lzm;->d()Lzm;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "statusBarColor"

    .line 26
    const-string v3, ""

    .line 28
    invoke-virtual {v0, v1, v3}, Lzm;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v8

    .line 32
    invoke-static {}, Lzm;->d()Lzm;

    .line 35
    move-result-object v0

    .line 36
    const-string v1, "navigationBarColor"

    .line 38
    invoke-virtual {v0, v1, v3}, Lzm;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v9

    .line 42
    const/4 v0, 0x2

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    const/4 v1, 0x0

    .line 46
    aput-object v8, v0, v1

    .line 48
    const/4 v3, 0x1

    .line 49
    aput-object v9, v0, v3

    .line 51
    const-string v4, "DysmorphismImmerse"

    .line 53
    const-string v6, "enterImmersiveMode: statusBarColor={?}, avigationBarColor={?}"

    .line 55
    invoke-static {v4, v6, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    new-array v0, v3, [Ljava/lang/Object;

    .line 60
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v3

    .line 64
    aput-object v3, v0, v1

    .line 66
    const-string v1, "enterImmersiveMode: uiFlags = {?}"

    .line 68
    invoke-static {v4, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    if-ne v2, v5, :cond_0

    .line 73
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 85
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 89
    move-result-object v0

    .line 90
    if-eq v2, v5, :cond_1

    .line 92
    invoke-virtual {v0, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 95
    :cond_1
    invoke-virtual {p0, p1, v8, v9}, Lqk;->g(Landroid/view/Window;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v1, Lqk$a;

    .line 100
    move-object v3, v1

    .line 101
    move-object v4, p0

    .line 102
    move-object v6, v0

    .line 103
    move-object v7, p1

    .line 104
    invoke-direct/range {v3 .. v9}, Lqk$a;-><init>(Lqk;ILandroid/view/View;Landroid/view/Window;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 110
    :cond_2
    return-void
.end method

.method public final c(Ljava/lang/String;)I
    .locals 6

    .line 1
    const-string v0, "0x"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const-string v2, "DysmorphismImmerse"

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    new-array v4, v1, [Ljava/lang/Object;

    .line 20
    aput-object v0, v4, v3

    .line 22
    const-string v5, "getColor: colorValue = {?}"

    .line 24
    invoke-static {v2, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    const/16 v4, 0x10

    .line 29
    :try_start_0
    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 32
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    long-to-int p1, v0

    .line 34
    return p1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string v4, "getColor: {?}"

    .line 38
    new-array v5, v3, [Ljava/lang/Object;

    .line 40
    invoke-static {v2, v4, v0, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 45
    aput-object p1, v0, v3

    .line 47
    const-string p1, "getColor: color = {?}"

    .line 49
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    return v3
.end method

.method public e(Landroid/app/Activity;I)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 14
    const-string v1, "DysmorphismImmerse"

    .line 16
    const-string v3, "onActivityLifecycleChanged:{?}-->{?}"

    .line 18
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    if-nez p1, :cond_0

    .line 23
    return-void

    .line 24
    :cond_0
    if-eq p2, v2, :cond_1

    .line 26
    const/4 v0, 0x3

    .line 27
    if-ne p2, v0, :cond_2

    .line 29
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 35
    invoke-virtual {p0, p1}, Lqk;->b(Landroid/view/Window;)V

    .line 38
    :cond_2
    return-void
.end method

.method public f(Landroid/app/Activity;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v2

    .line 15
    aput-object v2, v0, v1

    .line 17
    const-string v1, "DysmorphismImmerse"

    .line 19
    const-string v2, "onWindowFocusChanged: hasFocus = {?}"

    .line 21
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    if-eqz p2, :cond_0

    .line 26
    invoke-virtual {p0, p1}, Lqk;->b(Landroid/view/Window;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final g(Landroid/view/Window;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p2, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    aput-object p3, v0, v1

    .line 10
    const-string v1, "DysmorphismImmerse"

    .line 12
    const-string v2, "setBarColor: statusBarColor={?}, avigationBarColor={?}"

    .line 14
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 29
    return-void

    .line 30
    :cond_0
    const/high16 v0, 0x4000000

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 35
    const/high16 v0, -0x80000000

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p0, p2}, Lqk;->c(Ljava/lang/String;)I

    .line 49
    move-result p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 53
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_2

    .line 59
    invoke-virtual {p0, p3}, Lqk;->c(Ljava/lang/String;)I

    .line 62
    move-result p2

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 66
    :cond_2
    return-void
.end method
