.class public Lha$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lha;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lha;


# direct methods
.method public constructor <init>(Lha;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha$a;->a:Lha;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    if-eqz p1, :cond_0

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object p1, p0, Lha$a;->a:Lha;

    .line 8
    invoke-static {p1}, Lha;->a(Lha;)Z

    .line 11
    move-result p1

    .line 12
    const-wide/16 v0, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p0, Lha$a;->a:Lha;

    .line 19
    invoke-static {p1}, Lha;->b(Lha;)J

    .line 22
    move-result-wide v3

    .line 23
    cmp-long p1, v3, v0

    .line 25
    if-nez p1, :cond_1

    .line 27
    invoke-static {}, Lha;->f()I

    .line 30
    invoke-static {}, Lha;->d()I

    .line 33
    move-result p1

    .line 34
    const/4 v3, 0x3

    .line 35
    if-le p1, v3, :cond_2

    .line 37
    iget-object p1, p0, Lha$a;->a:Lha;

    .line 39
    invoke-static {p1, v0, v1}, Lha;->c(Lha;J)J

    .line 42
    invoke-static {v2}, Lha;->e(I)I

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lha$a;->a:Lha;

    .line 48
    invoke-static {p1, v0, v1}, Lha;->c(Lha;J)J

    .line 51
    invoke-static {v2}, Lha;->e(I)I

    .line 54
    :cond_2
    :goto_0
    const-wide/16 v0, 0x2710

    .line 56
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iget-object p1, p0, Lha$a;->a:Lha;

    .line 62
    invoke-static {p1, v0, v1}, Lha;->c(Lha;J)J

    .line 65
    invoke-static {v2}, Lha;->e(I)I

    .line 68
    :goto_1
    return-void
.end method
