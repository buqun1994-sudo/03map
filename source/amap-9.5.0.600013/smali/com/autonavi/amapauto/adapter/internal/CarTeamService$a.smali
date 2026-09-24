.class public Lcom/autonavi/amapauto/adapter/internal/CarTeamService$a;
.super Lwq$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/adapter/internal/CarTeamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/adapter/internal/CarTeamService;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/adapter/internal/CarTeamService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/adapter/internal/CarTeamService$a;->a:Lcom/autonavi/amapauto/adapter/internal/CarTeamService;

    .line 3
    invoke-direct {p0}, Lwq$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public S(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lzm;->f:Ljava/lang/String;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v3, v1, [Ljava/lang/Object;

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object v4

    .line 19
    aput-object v4, v3, v2

    .line 21
    const-string v4, "CarTeamService"

    .line 23
    const-string v5, "[notifyCarTeamMsg]isCarTeamEnabled:{?}"

    .line 25
    invoke-static {v4, v5, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    if-nez v0, :cond_0

    .line 30
    return-void

    .line 31
    :cond_0
    invoke-static {p1}, Ly70;->f(Ljava/lang/String;)[Lke;

    .line 34
    move-result-object p1

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    .line 37
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 40
    if-eqz p1, :cond_2

    .line 42
    array-length v3, p1

    .line 43
    new-array v1, v1, [Ljava/lang/Object;

    .line 45
    array-length v5, p1

    .line 46
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v5

    .line 50
    aput-object v5, v1, v2

    .line 52
    const-string v5, "[notifyCarTeamMsg] carTeamBeens.length = {?}"

    .line 54
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const/16 v1, 0x14

    .line 59
    if-le v3, v1, :cond_1

    .line 61
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p1, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 68
    move-result-object v0

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    if-lez v3, :cond_2

    .line 72
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 75
    move-result-object v0

    .line 76
    :cond_2
    :goto_0
    invoke-static {v0}, Ly70;->g(Ljava/util/List;)Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeNotifyCarTeamChanged(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/autonavi/amapauto/adapter/internal/CarTeamService$a;->a:Lcom/autonavi/amapauto/adapter/internal/CarTeamService;

    .line 85
    invoke-static {p1}, Lcom/autonavi/amapauto/adapter/internal/CarTeamService;->a(Lcom/autonavi/amapauto/adapter/internal/CarTeamService;)Landroid/os/Handler;

    .line 88
    move-result-object p1

    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lcom/autonavi/amapauto/adapter/internal/CarTeamService$a;->a:Lcom/autonavi/amapauto/adapter/internal/CarTeamService;

    .line 95
    invoke-static {p1}, Lcom/autonavi/amapauto/adapter/internal/CarTeamService;->a(Lcom/autonavi/amapauto/adapter/internal/CarTeamService;)Landroid/os/Handler;

    .line 98
    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/CarTeamService$a;->a:Lcom/autonavi/amapauto/adapter/internal/CarTeamService;

    .line 101
    invoke-static {v0}, Lcom/autonavi/amapauto/adapter/internal/CarTeamService;->b(Lcom/autonavi/amapauto/adapter/internal/CarTeamService;)Ljava/lang/Runnable;

    .line 104
    move-result-object v0

    .line 105
    const-wide/16 v1, 0x7530

    .line 107
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    return-void
.end method

.method public Z0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "CarTeamService"

    .line 6
    const-string v2, " clearCarTeam "

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeNotifyCarTeamChanged(Ljava/lang/String;)V

    .line 15
    return-void
.end method
