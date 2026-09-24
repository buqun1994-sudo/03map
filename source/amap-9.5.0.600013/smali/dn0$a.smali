.class public Ldn0$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldn0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldn0;


# direct methods
.method public constructor <init>(Ldn0;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldn0$a;->a:Ldn0;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p1, v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Ldn0$a;->a:Ldn0;

    .line 15
    invoke-static {p1}, Ldn0;->b(Ldn0;)Landroid/os/Handler;

    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Ldn0$a;->a:Ldn0;

    .line 26
    invoke-static {p1}, Ldn0;->a(Ldn0;)V

    .line 29
    iget-object p1, p0, Ldn0$a;->a:Ldn0;

    .line 31
    invoke-static {p1}, Ldn0;->b(Ldn0;)Landroid/os/Handler;

    .line 34
    move-result-object p1

    .line 35
    const-wide/16 v1, 0x3e8

    .line 37
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 40
    :goto_0
    return-void
.end method
