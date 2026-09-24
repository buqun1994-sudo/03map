.class Lfloatapp/auto3d/Auto3D$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lfloatapp/auto3d/Auto3D;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lfloatapp/auto3d/Auto3D;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lfloatapp/auto3d/Auto3D$1;->this$0:Lfloatapp/auto3d/Auto3D;

    iput-object p2, p0, Lfloatapp/auto3d/Auto3D$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lfloatapp/auto3d/Auto3D$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lfloatapp/auto3d/Auto3D$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lfloatapp/auto3d/Auto3D$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
