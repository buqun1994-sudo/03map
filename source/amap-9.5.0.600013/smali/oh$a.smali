.class public Loh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Loh;


# direct methods
.method public constructor <init>(Loh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loh$a;->a:Loh;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    invoke-static {}, Loh;->a()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "Service Connected"

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p1, p0, Loh$a;->a:Loh;

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Loh;->d(Loh;Z)V

    .line 16
    iget-object p1, p0, Loh$a;->a:Loh;

    .line 18
    invoke-static {p1, v0}, Loh;->f(Loh;I)V

    .line 21
    iget-object p1, p0, Loh$a;->a:Loh;

    .line 23
    invoke-static {p2}, Lnh$a;->t1(Landroid/os/IBinder;)Lnh;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {p1, v1}, Loh;->c(Loh;Lnh;)V

    .line 30
    const/4 p1, 0x1

    .line 31
    if-nez p2, :cond_0

    .line 33
    invoke-static {}, Loh;->a()Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    const-string v1, "Service connected failed"

    .line 39
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p2, p0, Loh$a;->a:Loh;

    .line 44
    invoke-static {p2, v0}, Loh;->b(Loh;Z)V

    .line 47
    iget-object p2, p0, Loh$a;->a:Loh;

    .line 49
    invoke-static {p2, v0, p1}, Loh;->e(Loh;ZI)V

    .line 52
    return-void

    .line 53
    :cond_0
    iget-object p2, p0, Loh$a;->a:Loh;

    .line 55
    invoke-static {p2, p1}, Loh;->b(Loh;Z)V

    .line 58
    iget-object p2, p0, Loh$a;->a:Loh;

    .line 60
    invoke-static {p2, p1, v0}, Loh;->e(Loh;ZI)V

    .line 63
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-static {}, Loh;->a()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "Service onServiceDisconnected"

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p1, p0, Loh$a;->a:Loh;

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Loh;->b(Loh;Z)V

    .line 16
    iget-object p1, p0, Loh$a;->a:Loh;

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {p1, v1}, Loh;->c(Loh;Lnh;)V

    .line 22
    iget-object p1, p0, Loh$a;->a:Loh;

    .line 24
    invoke-static {p1, v0}, Loh;->d(Loh;Z)V

    .line 27
    iget-object p1, p0, Loh$a;->a:Loh;

    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-static {p1, v0, v1}, Loh;->e(Loh;ZI)V

    .line 33
    return-void
.end method
