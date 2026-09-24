.class public Lq2;
.super Lhl;
.source "SourceFile"


# instance fields
.field public i:Lfo0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lhl;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static synthetic v(Lq2;)Lfo0;
    .locals 0

    .line 1
    iget-object p0, p0, Lq2;->i:Lfo0;

    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public f()Ld20;
    .locals 1

    .line 1
    sget-object v0, Ld20;->f:Ld20;

    .line 3
    return-object v0
.end method

.method public i()V
    .locals 1

    .line 1
    new-instance v0, Lfo0;

    .line 3
    invoke-direct {v0}, Lfo0;-><init>()V

    .line 6
    iput-object v0, p0, Lq2;->i:Lfo0;

    .line 8
    new-instance v0, Lq2$a;

    .line 10
    invoke-direct {v0, p0}, Lq2$a;-><init>(Lq2;)V

    .line 13
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public n(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    new-instance v0, Lq2$b;

    .line 3
    invoke-direct {v0, p0}, Lq2$b;-><init>(Lq2;)V

    .line 6
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq2;->s()V

    .line 4
    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    new-instance v0, Lq2$c;

    .line 3
    invoke-direct {v0, p0}, Lq2$c;-><init>(Lq2;)V

    .line 6
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method
