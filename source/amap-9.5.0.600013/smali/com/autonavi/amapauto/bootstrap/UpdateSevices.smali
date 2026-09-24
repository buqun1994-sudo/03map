.class public Lcom/autonavi/amapauto/bootstrap/UpdateSevices;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    const-string v0, "SelfUpdate"

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/bootstrap/UpdateSevices;->a:Ljava/lang/String;

    .line 8
    const-string v0, "UpdateServices"

    .line 10
    iput-object v0, p0, Lcom/autonavi/amapauto/bootstrap/UpdateSevices;->b:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    const-string v0, "notification"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/NotificationManager;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lq6;->a()V

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz p2, :cond_0

    .line 17
    const/4 p2, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p2, 0x0

    .line 20
    :goto_0
    invoke-static {p1, p1, p2}, Ly6;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1, v1}, Ls6;->a(Landroid/app/NotificationChannel;Z)V

    .line 27
    invoke-static {p1, v1}, Lt6;->a(Landroid/app/NotificationChannel;Z)V

    .line 30
    invoke-static {p1, v1}, Lu6;->a(Landroid/app/NotificationChannel;Z)V

    .line 33
    invoke-static {v0, p1}, Lw6;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 36
    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    const-string p1, "SelfUpdate"

    .line 3
    const-string v0, "onBind"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    const-string v0, "onCreate"

    .line 3
    const-string v1, "SelfUpdate"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v0, Lui0;

    .line 10
    invoke-direct {v0}, Lui0;-><init>()V

    .line 13
    invoke-virtual {v0, p0}, Lui0;->a(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 19
    const-string v0, "onCreate end"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    const-string p1, "onStartCommond"

    .line 3
    const-string p2, "SelfUpdate"

    .line 5
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    const/16 p3, 0x1a

    .line 12
    if-lt p1, p3, :cond_0

    .line 14
    const-string p1, "onStartCommand startForeground"

    .line 16
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/4 p1, 0x0

    .line 20
    const-string p2, "UpdateServices"

    .line 22
    invoke-virtual {p0, p2, p1}, Lcom/autonavi/amapauto/bootstrap/UpdateSevices;->a(Ljava/lang/String;Z)V

    .line 25
    invoke-static {p0, p2}, Lb40;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x1

    .line 34
    invoke-virtual {p0, p2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 37
    invoke-virtual {p0, p2}, Landroid/app/Service;->stopForeground(Z)V

    .line 40
    :cond_0
    const/4 p1, 0x2

    .line 41
    return p1
.end method
