.class public Lcom/autonavi/autofloat/simulate/TimeTextView$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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
    iput-object p1, p0, Lcom/autonavi/autofloat/simulate/TimeTextView$b;->a:Lcom/autonavi/autofloat/simulate/TimeTextView;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/autonavi/autofloat/simulate/TimeTextView$b;->a:Lcom/autonavi/autofloat/simulate/TimeTextView;

    .line 3
    invoke-static {p1}, Lcom/autonavi/autofloat/simulate/TimeTextView;->c(Lcom/autonavi/autofloat/simulate/TimeTextView;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 21
    const-string p1, "time-zone"

    .line 23
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/autonavi/autofloat/simulate/TimeTextView$b;->a:Lcom/autonavi/autofloat/simulate/TimeTextView;

    .line 29
    invoke-static {p2, p1}, Lcom/autonavi/autofloat/simulate/TimeTextView;->d(Lcom/autonavi/autofloat/simulate/TimeTextView;Ljava/lang/String;)V

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/autonavi/autofloat/simulate/TimeTextView$b;->a:Lcom/autonavi/autofloat/simulate/TimeTextView;

    .line 34
    invoke-static {p1}, Lcom/autonavi/autofloat/simulate/TimeTextView;->a(Lcom/autonavi/autofloat/simulate/TimeTextView;)V

    .line 37
    return-void
.end method
