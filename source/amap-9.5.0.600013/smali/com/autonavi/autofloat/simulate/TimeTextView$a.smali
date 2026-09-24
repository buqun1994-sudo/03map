.class public Lcom/autonavi/autofloat/simulate/TimeTextView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/autofloat/simulate/TimeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/autofloat/simulate/TimeTextView;


# direct methods
.method public constructor <init>(Lcom/autonavi/autofloat/simulate/TimeTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/autofloat/simulate/TimeTextView$a;->a:Lcom/autonavi/autofloat/simulate/TimeTextView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/autonavi/autofloat/simulate/TimeTextView$a;->a:Lcom/autonavi/autofloat/simulate/TimeTextView;

    .line 3
    invoke-static {v0}, Lcom/autonavi/autofloat/simulate/TimeTextView;->a(Lcom/autonavi/autofloat/simulate/TimeTextView;)V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x3e8

    .line 12
    rem-long v4, v0, v2

    .line 14
    sub-long/2addr v2, v4

    .line 15
    add-long/2addr v0, v2

    .line 16
    iget-object v2, p0, Lcom/autonavi/autofloat/simulate/TimeTextView$a;->a:Lcom/autonavi/autofloat/simulate/TimeTextView;

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 24
    iget-object v3, p0, Lcom/autonavi/autofloat/simulate/TimeTextView$a;->a:Lcom/autonavi/autofloat/simulate/TimeTextView;

    .line 26
    invoke-static {v3}, Lcom/autonavi/autofloat/simulate/TimeTextView;->b(Lcom/autonavi/autofloat/simulate/TimeTextView;)Ljava/lang/Runnable;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 33
    :cond_0
    return-void
.end method
