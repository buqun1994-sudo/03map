.class public Lik0$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lik0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lik0;


# direct methods
.method public constructor <init>(Lik0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lik0$a;->a:Lik0;

    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0xc350

    .line 8
    invoke-virtual {v0, v1}, Lse;->getFloatValue(I)F

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v2, v1, [Ljava/lang/Object;

    .line 15
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v3, v2, v4

    .line 22
    const-string v3, "VelocityPulse"

    .line 24
    const-string v5, "TimerTask speed={?}"

    .line 26
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    const/high16 v2, -0x40800000    # -1.0f

    .line 31
    cmpl-float v2, v0, v2

    .line 33
    if-eqz v2, :cond_0

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 38
    move-result-wide v9

    .line 39
    const/4 v2, 0x3

    .line 40
    new-array v2, v2, [Ljava/lang/Object;

    .line 42
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 45
    move-result-object v5

    .line 46
    aput-object v5, v2, v4

    .line 48
    const/16 v4, 0x3e8

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v4

    .line 54
    aput-object v4, v2, v1

    .line 56
    const/4 v1, 0x2

    .line 57
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    move-result-object v4

    .line 61
    aput-object v4, v2, v1

    .line 63
    const-string v1, "speed:{?}, interval:{?}, tickTime={?}"

    .line 65
    invoke-static {v3, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-static {}, Lzx;->h()Lzx;

    .line 71
    move-result-object v5

    .line 72
    float-to-double v6, v0

    .line 73
    const/16 v8, 0x3e8

    .line 75
    invoke-virtual/range {v5 .. v10}, Lzx;->w(DIJ)V

    .line 78
    :cond_0
    return-void
.end method
