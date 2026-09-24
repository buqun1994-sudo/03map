.class public Lkc$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkc$e;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkc$e;


# direct methods
.method public constructor <init>(Lkc$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkc$e$a;->a:Lkc$e;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    const-string v0, "hideCover begin"

    .line 3
    const-string v1, "map_bench"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lkc$e$a;->a:Lkc$e;

    .line 10
    iget-object v0, v0, Lkc$e;->a:Lkc;

    .line 12
    invoke-static {v0}, Lkc;->e(Lkc;)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lkc$e$a;->a:Lkc$e;

    .line 20
    iget-object v0, v0, Lkc$e;->a:Lkc;

    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lkc$e$a;->a:Lkc$e;

    .line 30
    iget-object v0, v0, Lkc$e;->a:Lkc;

    .line 32
    invoke-virtual {v0}, Lkc;->t()V

    .line 35
    :cond_0
    const-string v0, "hideCover end"

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method
