.class public Lb20$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb20;


# direct methods
.method public constructor <init>(Lb20;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb20$b;->a:Lb20;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "mServiceConnection onServiceConnected componentName:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string v0, "MultiScreen:MultiScreenMotionHandler"

    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p1, p0, Lb20$b;->a:Lb20;

    .line 25
    invoke-static {p2}, Lhs$a;->t1(Landroid/os/IBinder;)Lhs;

    .line 28
    move-result-object p2

    .line 29
    invoke-static {p1, p2}, Lb20;->c(Lb20;Lhs;)Lhs;

    .line 32
    iget-object p1, p0, Lb20$b;->a:Lb20;

    .line 34
    const/4 p2, 0x1

    .line 35
    iput-boolean p2, p1, Lb20;->a:Z

    .line 37
    :try_start_0
    invoke-static {p1}, Lb20;->b(Lb20;)Lhs;

    .line 40
    move-result-object p1

    .line 41
    iget-object p2, p0, Lb20$b;->a:Lb20;

    .line 43
    invoke-static {p2}, Lb20;->d(Lb20;)Lgs;

    .line 46
    move-result-object p2

    .line 47
    invoke-interface {p1, p2}, Lhs;->d1(Lgs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb20$b;->a:Lb20;

    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lb20;->a:Z

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v1, "mServiceConnection onServiceDisconnected componentName:"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    const-string v0, "MultiScreen:MultiScreenMotionHandler"

    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method
