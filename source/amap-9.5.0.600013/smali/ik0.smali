.class public Lik0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Timer;

.field public b:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/Timer;

    .line 6
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 9
    iput-object v0, p0, Lik0;->a:Ljava/util/Timer;

    .line 11
    new-instance v0, Lik0$a;

    .line 13
    invoke-direct {v0, p0}, Lik0$a;-><init>(Lik0;)V

    .line 16
    iput-object v0, p0, Lik0;->b:Ljava/util/TimerTask;

    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lik0;->a:Ljava/util/Timer;

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 6
    return-void
.end method

.method public b()V
    .locals 10

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lzm;->g()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v0, v1, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v1, v3

    .line 25
    const-string v2, "VelocityPulse"

    .line 27
    const-string v3, "doStart isNeedDrivingSpeed={?}"

    .line 29
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    if-eqz v0, :cond_1

    .line 34
    iget-object v4, p0, Lik0;->a:Ljava/util/Timer;

    .line 36
    iget-object v5, p0, Lik0;->b:Ljava/util/TimerTask;

    .line 38
    const-wide/16 v6, 0x0

    .line 40
    const-wide/16 v8, 0x3e8

    .line 42
    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 45
    :cond_1
    return-void
.end method
