.class Lfloatapp/auto3d/Auto3D$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private isZoomOutPhase:Z

.field final synthetic this$0:Lfloatapp/auto3d/Auto3D;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$zoomInIntent:Landroid/content/Intent;

.field final synthetic val$zoomOutIntent:Landroid/content/Intent;

.field private zoomInCount:I

.field private zoomOutCount:I


# direct methods
.method constructor <init>(Lfloatapp/auto3d/Auto3D;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lfloatapp/auto3d/Auto3D$3;->this$0:Lfloatapp/auto3d/Auto3D;

    iput-object p2, p0, Lfloatapp/auto3d/Auto3D$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lfloatapp/auto3d/Auto3D$3;->val$zoomOutIntent:Landroid/content/Intent;

    iput-object p4, p0, Lfloatapp/auto3d/Auto3D$3;->val$zoomInIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lfloatapp/auto3d/Auto3D$3;->zoomOutCount:I

    iput v0, p0, Lfloatapp/auto3d/Auto3D$3;->zoomInCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfloatapp/auto3d/Auto3D$3;->isZoomOutPhase:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-wide/16 v4, 0x12c

    const/4 v3, 0x1

    iget-boolean v1, p0, Lfloatapp/auto3d/Auto3D$3;->isZoomOutPhase:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lfloatapp/auto3d/Auto3D$3;->zoomOutCount:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lfloatapp/auto3d/Auto3D$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lfloatapp/auto3d/Auto3D$3;->val$zoomOutIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget v1, p0, Lfloatapp/auto3d/Auto3D$3;->zoomOutCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfloatapp/auto3d/Auto3D$3;->zoomOutCount:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lfloatapp/auto3d/Auto3D$3;->isZoomOutPhase:Z

    :cond_1
    iget v1, p0, Lfloatapp/auto3d/Auto3D$3;->zoomInCount:I

    if-ge v1, v3, :cond_2

    iget-object v1, p0, Lfloatapp/auto3d/Auto3D$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lfloatapp/auto3d/Auto3D$3;->val$zoomInIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget v1, p0, Lfloatapp/auto3d/Auto3D$3;->zoomInCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfloatapp/auto3d/Auto3D$3;->zoomInCount:I

    iget v1, p0, Lfloatapp/auto3d/Auto3D$3;->zoomInCount:I

    if-ge v1, v3, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
