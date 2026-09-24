.class public Lla;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lla$d;,
        Lla$c;,
        Lla$b;
    }
.end annotation


# instance fields
.field public a:Landroid/net/LocalServerSocket;

.field public b:Ljava/lang/Thread;

.field public c:Lla$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lla;->a:Landroid/net/LocalServerSocket;

    .line 4
    new-instance v0, Lla$a;

    invoke-direct {v0, p0}, Lla$a;-><init>(Lla;)V

    iput-object v0, p0, Lla;->b:Ljava/lang/Thread;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public synthetic constructor <init>(Lla$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lla;-><init>()V

    return-void
.end method

.method public static synthetic a(Lla;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lla;->b(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static c()Lla;
    .locals 1

    .line 1
    invoke-static {}, Lla$d;->a()Lla;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x3

    .line 6
    if-eq p1, v0, :cond_2

    .line 8
    const/4 v0, 0x4

    .line 9
    if-eq p1, v0, :cond_1

    .line 11
    const/4 v0, 0x5

    .line 12
    if-eq p1, v0, :cond_3

    .line 14
    const/4 v0, 0x7

    .line 15
    if-eq p1, v0, :cond_3

    .line 17
    const/16 v0, 0x8

    .line 19
    if-eq p1, v0, :cond_3

    .line 21
    const/16 v0, 0x7d0

    .line 23
    if-eq p1, v0, :cond_0

    .line 25
    iget-object v0, p0, Lla;->c:Lla$c;

    .line 27
    if-eqz v0, :cond_3

    .line 29
    invoke-interface {v0, p1}, Lla$c;->a(I)V

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {}, Li7;->a()Li7;

    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Lla$b;

    .line 39
    invoke-direct {v0}, Lla$b;-><init>()V

    .line 42
    invoke-virtual {p1, v0}, Li7;->c(Ljava/lang/Runnable;)V

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Lt00;->a()Lt00;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lt00;->b()V

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-static {}, Lc7;->c()Lc7;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lc7;->e()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public d(Lla$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lla;->c:Lla$c;

    .line 3
    return-void
.end method
