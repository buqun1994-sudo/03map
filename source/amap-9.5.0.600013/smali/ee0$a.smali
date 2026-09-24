.class public Lee0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lee0;->g(Landroid/view/View;ZZ)Lee0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z

.field public final synthetic d:Lee0;


# direct methods
.method public constructor <init>(Lee0;Ljava/util/List;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lee0$a;->d:Lee0;

    .line 3
    iput-object p2, p0, Lee0$a;->b:Ljava/util/List;

    .line 5
    iput-boolean p3, p0, Lee0$a;->c:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lee0$a;->a:Z

    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lee0$a;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lee0$a;->d:Lee0;

    .line 8
    invoke-static {v0}, Lee0;->b(Lee0;)Landroid/os/Handler;

    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lee0$a$a;

    .line 14
    invoke-direct {v1, p0}, Lee0$a$a;-><init>(Lee0$a;)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    return-void
.end method
