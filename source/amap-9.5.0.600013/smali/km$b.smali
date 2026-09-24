.class public Lkm$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkm;->h(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lkm;


# direct methods
.method public constructor <init>(Lkm;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkm$b;->b:Lkm;

    .line 3
    iput-boolean p2, p0, Lkm$b;->a:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lkm$b;->a:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lkm$b;->b:Lkm;

    .line 7
    invoke-static {v0}, Lkm;->l(Lkm;)Lkm$e;

    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lkm$e;->e:Lcom/autonavi/skin/view/SkinImageView;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lkm$b;->b:Lkm;

    .line 21
    sget-object v1, Lkm$f;->b:Lkm$f;

    .line 23
    invoke-virtual {v0, v1}, Lkm;->x(Lkm$f;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lkm$b;->b:Lkm;

    .line 29
    sget-object v1, Lkm$f;->f:Lkm$f;

    .line 31
    invoke-virtual {v0, v1}, Lkm;->x(Lkm$f;)V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method
