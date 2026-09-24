.class public Lq1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1;->g(Landroid/content/Context;ZLq1$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lq1$b;

.field public final synthetic c:Lq1;


# direct methods
.method public constructor <init>(Lq1;Landroid/content/Context;Lq1$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq1$a;->c:Lq1;

    .line 3
    iput-object p2, p0, Lq1$a;->a:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lq1$a;->b:Lq1$b;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lq1;->a()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    const-string v3, "loadDatabase start"

    .line 10
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lq1$a;->c:Lq1;

    .line 15
    iget-object v2, p0, Lq1$a;->a:Landroid/content/Context;

    .line 17
    invoke-static {v0, v2}, Lq1;->b(Lq1;Landroid/content/Context;)V

    .line 20
    iget-object v0, p0, Lq1$a;->c:Lq1;

    .line 22
    iget-object v2, p0, Lq1$a;->a:Landroid/content/Context;

    .line 24
    iget-object v3, p0, Lq1$a;->b:Lq1$b;

    .line 26
    invoke-static {v0, v2, v3}, Lq1;->c(Lq1;Landroid/content/Context;Lq1$b;)V

    .line 29
    invoke-static {}, Lq1;->a()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const-string v2, "loadDatabase end"

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lq1$a;->c:Lq1;

    .line 42
    invoke-static {v0}, Lq1;->d(Lq1;)Loi;

    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lq1$a;->c:Lq1;

    .line 50
    invoke-static {v0}, Lq1;->d(Lq1;)Loi;

    .line 53
    move-result-object v0

    .line 54
    iget v0, v0, Loi;->c:I

    .line 56
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lq1$a$a;

    .line 60
    invoke-direct {v0, p0}, Lq1$a$a;-><init>(Lq1$a;)V

    .line 63
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 66
    :cond_0
    invoke-static {}, Lpi;->n()Lpi;

    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lpi;->r()Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Lv1;

    .line 78
    invoke-direct {v0}, Lv1;-><init>()V

    .line 81
    invoke-virtual {v0}, Lv1;->d()V

    .line 84
    :cond_1
    return-void
.end method
