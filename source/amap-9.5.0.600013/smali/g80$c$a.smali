.class public Lg80$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg80$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg80$c;


# direct methods
.method public constructor <init>(Lg80$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg80$c$a;->a:Lg80$c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 1
    sget-object v0, Lg80;->k:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "MQTT_SDK PushManager:: binderDied 1"

    .line 8
    invoke-static {v0, v3, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v2, p0, Lg80$c$a;->a:Lg80$c;

    .line 13
    iget-object v2, v2, Lg80$c;->b:Lg80;

    .line 15
    invoke-static {v2}, Lg80;->a(Lg80;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 22
    const-string v2, "MQTT_SDK PushManager:: binderDied 2"

    .line 24
    new-array v3, v1, [Ljava/lang/Object;

    .line 26
    invoke-static {v0, v2, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v2, p0, Lg80$c$a;->a:Lg80$c;

    .line 31
    iget-object v2, v2, Lg80$c;->b:Lg80;

    .line 33
    iget-object v2, v2, Lg80;->g:Lct;

    .line 35
    if-eqz v2, :cond_0

    .line 37
    const-string v2, "MQTT_SDK PushManager:: unlinkToDeath"

    .line 39
    new-array v3, v1, [Ljava/lang/Object;

    .line 41
    invoke-static {v0, v2, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lg80$c$a;->a:Lg80$c;

    .line 46
    iget-object v0, v0, Lg80$c;->b:Lg80;

    .line 48
    iget-object v0, v0, Lg80;->g:Lct;

    .line 50
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 53
    move-result-object v0

    .line 54
    iget-object v2, p0, Lg80$c$a;->a:Lg80$c;

    .line 56
    invoke-static {v2}, Lg80$c;->a(Lg80$c;)Landroid/os/IBinder$DeathRecipient;

    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 63
    iget-object v0, p0, Lg80$c$a;->a:Lg80$c;

    .line 65
    iget-object v0, v0, Lg80$c;->b:Lg80;

    .line 67
    const/4 v2, 0x0

    .line 68
    iput-object v2, v0, Lg80;->g:Lct;

    .line 70
    :cond_0
    iget-object v0, p0, Lg80$c$a;->a:Lg80$c;

    .line 72
    iget-object v0, v0, Lg80$c;->b:Lg80;

    .line 74
    invoke-static {v0}, Lg80;->b(Lg80;)Landroid/content/Context;

    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    .line 80
    invoke-static {}, Lg80;->c()I

    .line 83
    move-result v0

    .line 84
    const/4 v2, 0x2

    .line 85
    if-ge v0, v2, :cond_1

    .line 87
    iget-object v0, p0, Lg80$c$a;->a:Lg80$c;

    .line 89
    iget-object v0, v0, Lg80$c;->b:Lg80;

    .line 91
    invoke-static {v0, v1}, Lg80;->e(Lg80;Z)Z

    .line 94
    iget-object v0, p0, Lg80$c$a;->a:Lg80$c;

    .line 96
    iget-object v0, v0, Lg80$c;->b:Lg80;

    .line 98
    invoke-static {v0}, Lg80;->b(Lg80;)Landroid/content/Context;

    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lg80;->h(Landroid/content/Context;)V

    .line 105
    :cond_1
    invoke-static {}, Lg80;->d()I

    .line 108
    iget-object v0, p0, Lg80$c$a;->a:Lg80$c;

    .line 110
    iget-object v0, v0, Lg80$c;->b:Lg80;

    .line 112
    invoke-static {v0}, Lg80;->a(Lg80;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 119
    return-void
.end method
