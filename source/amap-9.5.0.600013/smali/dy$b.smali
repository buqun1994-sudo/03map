.class public Ldy$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Ldy;


# direct methods
.method public constructor <init>(Ldy;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldy$b;->a:Ldy;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Ldy$b;->a:Ldy;

    .line 15
    invoke-static {p1}, Ldy;->d(Ldy;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Ldy$b;->a:Ldy;

    .line 21
    invoke-static {p1}, Ldy;->c(Ldy;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-object p1, p0, Ldy$b;->a:Ldy;

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {p1, v1}, Ldy;->a(Ldy;Z)Z

    .line 31
    iget-object p1, p0, Ldy$b;->a:Ldy;

    .line 33
    invoke-static {p1, v0}, Ldy;->b(Ldy;Z)Z

    .line 36
    :goto_0
    return-void
.end method
