.class public Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public final synthetic c:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;->c:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;->a:Z

    .line 9
    iput-boolean p1, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;->b:Z

    .line 11
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;->a:Z

    .line 3
    return v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;->b:Z

    .line 3
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;->b:Z

    .line 3
    if-nez v0, :cond_2

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;->a:Z

    .line 8
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->b()Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    const-string v2, "AutoSimilarWidgetService"

    .line 15
    const-string v3, " addSurface mSurface wait start"

    .line 17
    const/4 v4, 0x0

    .line 18
    new-array v5, v4, [Ljava/lang/Object;

    .line 20
    invoke-static {v2, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v2, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;->c:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;

    .line 25
    invoke-static {v2}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->k(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;)Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$h;

    .line 28
    move-result-object v2

    .line 29
    const-wide/16 v5, 0x2710

    .line 31
    invoke-static {v2, v5, v6}, Lbg0;->d(Ljava/lang/Runnable;J)V

    .line 34
    :goto_0
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->u()Lhl;

    .line 37
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-nez v2, :cond_0

    .line 40
    :try_start_1
    invoke-static {v0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->h(Z)Z

    .line 43
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->b()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v2

    .line 52
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;->c:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;

    .line 58
    invoke-static {v2}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->k(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;)Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$h;

    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2}, Lbg0;->e(Ljava/lang/Runnable;)V

    .line 65
    invoke-static {v4}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->h(Z)Z

    .line 68
    const-string v2, "AutoSimilarWidgetService"

    .line 70
    const-string v3, " addSurface mSurface wait end. widgetExtScree={?};mSurface={?}"

    .line 72
    const/4 v5, 0x2

    .line 73
    new-array v5, v5, [Ljava/lang/Object;

    .line 75
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->u()Lhl;

    .line 78
    move-result-object v6

    .line 79
    aput-object v6, v5, v4

    .line 81
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->c()Landroid/view/Surface;

    .line 84
    move-result-object v6

    .line 85
    aput-object v6, v5, v0

    .line 87
    invoke-static {v2, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->u()Lhl;

    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_1

    .line 96
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->f()Z

    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_1

    .line 102
    const-string v0, "AutoSimilarWidgetService"

    .line 104
    const-string v2, " addSurface widgetExtScreen startRender"

    .line 106
    new-array v3, v4, [Ljava/lang/Object;

    .line 108
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->a()V

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    const-string v0, "AutoSimilarWidgetService"

    .line 117
    const-string v2, "mSurface wait end.  widgetExtScreen == null || mSurface InValid."

    .line 119
    new-array v3, v4, [Ljava/lang/Object;

    .line 121
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :goto_1
    monitor-exit v1

    .line 125
    goto :goto_2

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    throw v0

    .line 129
    :cond_2
    :goto_2
    return-void
.end method
