.class public Lyc$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyc;


# direct methods
.method public constructor <init>(Lyc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyc$a;->a:Lyc;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 27
    move-result p2

    .line 28
    const/16 v0, 0xc

    .line 30
    if-ne p2, v0, :cond_0

    .line 32
    iget-object p2, p0, Lyc$a;->a:Lyc;

    .line 34
    invoke-static {p2, p1}, Lyc;->a(Lyc;Landroid/content/Context;)V

    .line 37
    iget-object p2, p0, Lyc$a;->a:Lyc;

    .line 39
    invoke-virtual {p2, p1}, Lyc;->d(Landroid/content/Context;)V

    .line 42
    :cond_0
    return-void
.end method
