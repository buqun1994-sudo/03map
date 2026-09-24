.class public Lha;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lha$b;
    }
.end annotation


# static fields
.field public static d:I


# instance fields
.field public a:Z

.field public b:J

.field public c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AutoMainAnr"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5
    new-instance v1, Lha$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lha$a;-><init>(Lha;Landroid/os/Looper;)V

    iput-object v1, p0, Lha;->c:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lha$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lha;-><init>()V

    return-void
.end method

.method public static synthetic a(Lha;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lha;->a:Z

    .line 3
    return p0
.end method

.method public static synthetic b(Lha;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lha;->b:J

    .line 3
    return-wide v0
.end method

.method public static synthetic c(Lha;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lha;->b:J

    .line 3
    return-wide p1
.end method

.method public static synthetic d()I
    .locals 1

    .line 1
    sget v0, Lha;->d:I

    .line 3
    return v0
.end method

.method public static synthetic e(I)I
    .locals 0

    .line 1
    sput p0, Lha;->d:I

    .line 3
    return p0
.end method

.method public static synthetic f()I
    .locals 2

    .line 1
    sget v0, Lha;->d:I

    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 5
    sput v1, Lha;->d:I

    .line 7
    return v0
.end method

.method public static g()Lha;
    .locals 1

    .line 1
    invoke-static {}, Lha$b;->a()Lha;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public h(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lha;->a:Z

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lha;->a:Z

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lha;->c:Landroid/os/Handler;

    .line 13
    if-eqz p1, :cond_2

    .line 15
    const-wide/16 v1, 0x2710

    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p0, Lha;->c:Landroid/os/Handler;

    .line 23
    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 28
    :cond_2
    :goto_0
    return-void
.end method
