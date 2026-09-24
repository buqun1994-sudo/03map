.class public Ldp$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldp;-><init>(Lnj;Lym0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldp;


# direct methods
.method public constructor <init>(Ldp;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldp$a;->a:Ldp;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 6
    const/4 p1, 0x2

    .line 7
    if-eq v0, p1, :cond_1

    .line 9
    const/4 p1, 0x3

    .line 10
    if-eq v0, p1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Ldp$a;->a:Ldp;

    .line 15
    invoke-static {p1}, Ldp;->h(Ldp;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Ldp$a;->a:Ldp;

    .line 21
    invoke-static {p1}, Ldp;->g(Ldp;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    instance-of v0, p1, Ldp$c;

    .line 29
    if-eqz v0, :cond_3

    .line 31
    check-cast p1, Ldp$c;

    .line 33
    iget-object v0, p0, Ldp$a;->a:Ldp;

    .line 35
    invoke-static {v0, p1}, Ldp;->f(Ldp;Ldp$c;)V

    .line 38
    :cond_3
    :goto_0
    return-void
.end method
