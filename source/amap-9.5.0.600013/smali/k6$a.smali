.class public Lk6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk6;


# direct methods
.method public constructor <init>(Lk6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk6$a;->a:Lk6;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lk6$a;->a:Lk6;

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p2, p1, v0}, Lk6;->a(Lk6;Landroid/app/Activity;I)V

    .line 7
    iget-object p2, p0, Lk6$a;->a:Lk6;

    .line 9
    invoke-static {p2}, Lk6;->b(Lk6;)Ljava/util/List;

    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Lk6$b;

    .line 15
    invoke-direct {v0, p1}, Lk6$b;-><init>(Landroid/app/Activity;)V

    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk6$a;->a:Lk6;

    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-static {v0, p1, v1}, Lk6;->a(Lk6;Landroid/app/Activity;I)V

    .line 7
    iget-object v0, p0, Lk6$a;->a:Lk6;

    .line 9
    invoke-static {v0}, Lk6;->b(Lk6;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 19
    :goto_0
    if-ltz v0, :cond_1

    .line 21
    iget-object v1, p0, Lk6$a;->a:Lk6;

    .line 23
    invoke-static {v1}, Lk6;->b(Lk6;)Ljava/util/List;

    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lk6$b;

    .line 33
    invoke-virtual {v1, p1}, Lk6$b;->d(Landroid/app/Activity;)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 39
    iget-object p1, p0, Lk6$a;->a:Lk6;

    .line 41
    invoke-static {p1}, Lk6;->b(Lk6;)Ljava/util/List;

    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :goto_1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk6$a;->a:Lk6;

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-static {v0, p1, v1}, Lk6;->a(Lk6;Landroid/app/Activity;I)V

    .line 7
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk6$a;->a:Lk6;

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, p1, v1}, Lk6;->a(Lk6;Landroid/app/Activity;I)V

    .line 7
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk6$a;->a:Lk6;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, p1, v1}, Lk6;->a(Lk6;Landroid/app/Activity;I)V

    .line 7
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk6$a;->a:Lk6;

    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-static {v0, p1, v1}, Lk6;->a(Lk6;Landroid/app/Activity;I)V

    .line 7
    return-void
.end method
