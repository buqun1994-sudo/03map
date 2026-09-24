.class public Lg80;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg80$e;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/String;

.field public static l:Lg80;

.field public static m:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/content/Context;

.field public c:Z

.field public d:Lcs;

.field public e:Lcom/autonavi/mqtt/PushClient;

.field public f:Ldt;

.field public g:Lct;

.field public h:Ljava/util/concurrent/locks/ReentrantLock;

.field public i:Landroid/content/ServiceConnection;

.field public j:Lps;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "[MQTT] "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-class v1, Lg80;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lg80;->k:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    .line 27
    sput v0, Lg80;->m:I

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lg80;->a:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lg80;->c:Z

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lg80;->d:Lcs;

    .line 14
    new-instance v0, Lg80$b;

    .line 16
    invoke-direct {v0, p0}, Lg80$b;-><init>(Lg80;)V

    .line 19
    iput-object v0, p0, Lg80;->f:Ldt;

    .line 21
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 23
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 26
    iput-object v0, p0, Lg80;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    new-instance v0, Lg80$c;

    .line 30
    invoke-direct {v0, p0}, Lg80$c;-><init>(Lg80;)V

    .line 33
    iput-object v0, p0, Lg80;->i:Landroid/content/ServiceConnection;

    .line 35
    new-instance v0, Lg80$d;

    .line 37
    invoke-direct {v0, p0}, Lg80$d;-><init>(Lg80;)V

    .line 40
    iput-object v0, p0, Lg80;->j:Lps;

    .line 42
    return-void
.end method

.method public static synthetic a(Lg80;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lg80;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lg80;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lg80;->b:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static synthetic c()I
    .locals 1

    .line 1
    sget v0, Lg80;->m:I

    .line 3
    return v0
.end method

.method public static synthetic d()I
    .locals 2

    .line 1
    sget v0, Lg80;->m:I

    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 5
    sput v1, Lg80;->m:I

    .line 7
    return v0
.end method

.method public static synthetic e(Lg80;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg80;->c:Z

    .line 3
    return p1
.end method

.method public static synthetic f(Lg80;)Lg80$e;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lg80;)Lcom/autonavi/mqtt/PushClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lg80;->e:Lcom/autonavi/mqtt/PushClient;

    .line 3
    return-object p0
.end method

.method public static i()Lg80;
    .locals 1

    .line 1
    sget-object v0, Lg80;->l:Lg80;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lg80;

    .line 7
    invoke-direct {v0}, Lg80;-><init>()V

    .line 10
    sput-object v0, Lg80;->l:Lg80;

    .line 12
    :cond_0
    sget-object v0, Lg80;->l:Lg80;

    .line 14
    return-object v0
.end method


# virtual methods
.method public h(Landroid/content/Context;)V
    .locals 6

    .line 1
    sget-object v0, Lg80;->k:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "_bindService start"

    .line 8
    invoke-static {v0, v3, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    if-nez p1, :cond_0

    .line 13
    const-string p1, "error context == null"

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {v0, p1, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v3, "mbinded="

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-boolean v3, p0, Lg80;->c:Z

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    new-array v3, v1, [Ljava/lang/Object;

    .line 42
    const-string v4, "MQTT_SDK"

    .line 44
    invoke-static {v4, v2, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string v3, "mPushService="

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v3, p0, Lg80;->g:Lct;

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    new-array v3, v1, [Ljava/lang/Object;

    .line 68
    invoke-static {v4, v2, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iput-object p1, p0, Lg80;->b:Landroid/content/Context;

    .line 73
    const-string p1, "mPushClient=null"

    .line 75
    new-array v2, v1, [Ljava/lang/Object;

    .line 77
    invoke-static {v4, p1, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Lcom/autonavi/mqtt/PushClient;->d()Lcom/autonavi/mqtt/PushClient;

    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lg80;->e:Lcom/autonavi/mqtt/PushClient;

    .line 86
    iget-object v2, p0, Lg80;->f:Ldt;

    .line 88
    invoke-virtual {p1, v2}, Lcom/autonavi/mqtt/PushClient;->h(Ldt;)V

    .line 91
    new-instance p1, Landroid/content/Intent;

    .line 93
    iget-object v2, p0, Lg80;->b:Landroid/content/Context;

    .line 95
    const-class v3, Lcom/autonavi/mqtt/service/PushService;

    .line 97
    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    iget-object v2, p0, Lg80;->b:Landroid/content/Context;

    .line 102
    iget-object v3, p0, Lg80;->i:Landroid/content/ServiceConnection;

    .line 104
    const/4 v5, 0x1

    .line 105
    invoke-virtual {v2, p1, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 108
    iget-object p1, p0, Lg80;->g:Lct;

    .line 110
    if-eqz p1, :cond_1

    .line 112
    const-string p1, "new Thread(new Runnable()"

    .line 114
    new-array v2, v1, [Ljava/lang/Object;

    .line 116
    invoke-static {v4, p1, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    new-instance p1, Ljava/lang/Thread;

    .line 121
    new-instance v2, Lg80$a;

    .line 123
    invoke-direct {v2, p0}, Lg80$a;-><init>(Lg80;)V

    .line 126
    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 132
    :cond_1
    const-string p1, "_bindService end"

    .line 134
    new-array v1, v1, [Ljava/lang/Object;

    .line 136
    invoke-static {v0, p1, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public j(Lcs;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "setMqttALObserver pid:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v2, v1, [Ljava/lang/Object;

    .line 25
    const-string v3, "MQTT_SDK"

    .line 27
    invoke-static {v3, v0, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iput-object p1, p0, Lg80;->d:Lcs;

    .line 32
    if-nez p1, :cond_0

    .line 34
    const-string p1, "set mqttALObserver = null"

    .line 36
    new-array v0, v1, [Ljava/lang/Object;

    .line 38
    invoke-static {v3, p1, v0}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg80;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/autonavi/mqtt/PushClient;->d()Lcom/autonavi/mqtt/PushClient;

    .line 6
    return-void
.end method

.method public l()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "MQTT_SDK"

    .line 6
    const-string v3, "unbindServcie begin"

    .line 8
    invoke-static {v2, v3, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iput-boolean v0, p0, Lg80;->c:Z

    .line 13
    new-instance v1, Landroid/content/Intent;

    .line 15
    iget-object v3, p0, Lg80;->b:Landroid/content/Context;

    .line 17
    const-class v4, Lcom/autonavi/mqtt/service/PushService;

    .line 19
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    iget-object v1, p0, Lg80;->b:Landroid/content/Context;

    .line 24
    iget-object v3, p0, Lg80;->i:Landroid/content/ServiceConnection;

    .line 26
    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 29
    const-string v1, "unbindServcie end"

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    invoke-static {v2, v1, v0}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return-void
.end method
