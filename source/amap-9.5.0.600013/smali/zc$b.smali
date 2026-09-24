.class public Lzc$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzc;


# direct methods
.method public constructor <init>(Lzc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzc$b;->a:Lzc;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, -0x1

    .line 14
    if-eqz p1, :cond_2

    .line 16
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 18
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 21
    move-result p1

    .line 22
    invoke-static {}, Lzc;->a()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v3, "ACTION_STATE_CHANGED onReceive bt state:"

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    new-array v1, v1, [Ljava/lang/Object;

    .line 45
    invoke-static {p2, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    const/16 p2, 0xa

    .line 50
    if-eq p1, p2, :cond_1

    .line 52
    const/16 p2, 0xd

    .line 54
    if-ne p1, p2, :cond_0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/16 p2, 0xc

    .line 59
    if-ne p1, p2, :cond_4

    .line 61
    iget-object p1, p0, Lzc$b;->a:Lzc;

    .line 63
    invoke-static {p1}, Lzc;->d(Lzc;)Loj;

    .line 66
    move-result-object p2

    .line 67
    invoke-static {p1, v0, p2}, Lzc;->f(Lzc;ILoj;)V

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    iget-object p1, p0, Lzc$b;->a:Lzc;

    .line 73
    const/4 p2, -0x5

    .line 74
    invoke-static {p1}, Lzc;->d(Lzc;)Loj;

    .line 77
    move-result-object v0

    .line 78
    invoke-static {p1, p2, v0}, Lzc;->f(Lzc;ILoj;)V

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const-string p1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_4

    .line 94
    const-string p1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 96
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 99
    move-result p1

    .line 100
    invoke-static {}, Lzc;->a()Ljava/lang/String;

    .line 103
    move-result-object p2

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    const-string v4, "ACTION_CONNECTION_STATE_CHANGED onReceive connect state:"

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v3

    .line 121
    new-array v1, v1, [Ljava/lang/Object;

    .line 123
    invoke-static {p2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    if-eqz p1, :cond_3

    .line 128
    const/4 p2, 0x3

    .line 129
    if-ne p1, p2, :cond_4

    .line 131
    :cond_3
    iget-object p1, p0, Lzc$b;->a:Lzc;

    .line 133
    invoke-virtual {p1}, Lzc;->p()Z

    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_4

    .line 139
    iget-object p1, p0, Lzc$b;->a:Lzc;

    .line 141
    invoke-static {p1}, Lzc;->i(Lzc;)Landroid/os/Handler;

    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1, v0, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 152
    :cond_4
    :goto_1
    return-void
.end method
