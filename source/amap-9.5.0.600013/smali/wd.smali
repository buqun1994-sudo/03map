.class public Lwd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lwm$c;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lwm$c;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lwd;->a:Lwm$c;

    .line 6
    iput-object p2, p0, Lwd;->b:Landroid/os/Handler;

    .line 8
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lwd;->a:Lwm$c;

    .line 3
    iget-object v1, p0, Lwd;->b:Landroid/os/Handler;

    .line 5
    new-instance v2, Lwd$b;

    .line 7
    invoke-direct {v2, p0, v0, p1}, Lwd$b;-><init>(Lwd;Lwm$c;I)V

    .line 10
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method public b(Ltm$e;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ltm$e;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p1, p1, Ltm$e;->a:Landroid/graphics/Typeface;

    .line 9
    invoke-virtual {p0, p1}, Lwd;->c(Landroid/graphics/Typeface;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p1, p1, Ltm$e;->b:I

    .line 15
    invoke-virtual {p0, p1}, Lwd;->a(I)V

    .line 18
    :goto_0
    return-void
.end method

.method public final c(Landroid/graphics/Typeface;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lwd;->a:Lwm$c;

    .line 3
    iget-object v1, p0, Lwd;->b:Landroid/os/Handler;

    .line 5
    new-instance v2, Lwd$a;

    .line 7
    invoke-direct {v2, p0, v0, p1}, Lwd$a;-><init>(Lwd;Lwm$c;Landroid/graphics/Typeface;)V

    .line 10
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method
