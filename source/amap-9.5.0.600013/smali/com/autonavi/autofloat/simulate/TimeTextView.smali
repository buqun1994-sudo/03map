.class public Lcom/autonavi/autofloat/simulate/TimeTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Calendar;

.field public b:Z

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/CharSequence;

.field public final e:Ljava/lang/Runnable;

.field public final f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/autofloat/simulate/TimeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "yyyy-MM-dd HH:mm:ss"

    .line 3
    iput-object p1, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->d:Ljava/lang/CharSequence;

    .line 4
    new-instance p1, Lcom/autonavi/autofloat/simulate/TimeTextView$a;

    invoke-direct {p1, p0}, Lcom/autonavi/autofloat/simulate/TimeTextView$a;-><init>(Lcom/autonavi/autofloat/simulate/TimeTextView;)V

    iput-object p1, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->e:Ljava/lang/Runnable;

    .line 5
    new-instance p1, Lcom/autonavi/autofloat/simulate/TimeTextView$b;

    invoke-direct {p1, p0}, Lcom/autonavi/autofloat/simulate/TimeTextView$b;-><init>(Lcom/autonavi/autofloat/simulate/TimeTextView;)V

    iput-object p1, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic a(Lcom/autonavi/autofloat/simulate/TimeTextView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/autofloat/simulate/TimeTextView;->f()V

    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/autonavi/autofloat/simulate/TimeTextView;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->e:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/autonavi/autofloat/simulate/TimeTextView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->c:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/autonavi/autofloat/simulate/TimeTextView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/autofloat/simulate/TimeTextView;->e(Ljava/lang/String;)V

    .line 4
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->a:Ljava/util/Calendar;

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->a:Ljava/util/Calendar;

    .line 20
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->a:Ljava/util/Calendar;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10
    iget-object v0, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->d:Ljava/lang/CharSequence;

    .line 12
    iget-object v1, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->a:Ljava/util/Calendar;

    .line 14
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    const-string v1, "android.intent.action.TIME_TICK"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    const-string v1, "android.intent.action.TIME_SET"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->f:Landroid/content/BroadcastReceiver;

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 35
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->f:Landroid/content/BroadcastReceiver;

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 4
    iget-boolean v0, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->b:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->b:Z

    .line 11
    invoke-virtual {p0}, Lcom/autonavi/autofloat/simulate/TimeTextView;->g()V

    .line 14
    iget-object v0, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, v0}, Lcom/autonavi/autofloat/simulate/TimeTextView;->e(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->e:Ljava/lang/Runnable;

    .line 21
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 24
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 4
    iget-boolean v0, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->b:Z

    .line 6
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/autonavi/autofloat/simulate/TimeTextView;->h()V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v1, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->e:Ljava/lang/Runnable;

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/autonavi/autofloat/simulate/TimeTextView;->b:Z

    .line 25
    :cond_1
    return-void
.end method
