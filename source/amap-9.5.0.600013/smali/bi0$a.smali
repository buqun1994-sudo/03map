.class public Lbi0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbi0;


# direct methods
.method public constructor <init>(Lbi0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbi0$a;->a:Lbi0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    const-string p1, "----->onServiceConnected"

    .line 3
    const-string v0, "TtsServiceAgent"

    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lbi0$a;->a:Lbi0;

    .line 10
    invoke-static {p2}, Lci0$a;->t1(Landroid/os/IBinder;)Lci0;

    .line 13
    move-result-object p2

    .line 14
    invoke-static {p1, p2}, Lbi0;->a(Lbi0;Lci0;)V

    .line 17
    iget-object p1, p0, Lbi0$a;->a:Lbi0;

    .line 19
    invoke-static {p1}, Lbi0;->d(Lbi0;)Lst;

    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_0

    .line 25
    iget-object p1, p0, Lbi0$a;->a:Lbi0;

    .line 27
    new-instance p2, Lc2;

    .line 29
    iget-object v1, p0, Lbi0$a;->a:Lbi0;

    .line 31
    invoke-static {v1}, Lbi0;->e(Lbi0;)Ltt;

    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lbi0$a;->a:Lbi0;

    .line 37
    invoke-static {v2}, Lbi0;->f(Lbi0;)Landroid/content/Context;

    .line 40
    move-result-object v2

    .line 41
    invoke-direct {p2, v1, v2}, Lc2;-><init>(Ltt;Landroid/content/Context;)V

    .line 44
    invoke-static {p1, p2}, Lbi0;->b(Lbi0;Lst;)V

    .line 47
    :cond_0
    :try_start_0
    iget-object p1, p0, Lbi0$a;->a:Lbi0;

    .line 49
    invoke-static {p1}, Lbi0;->g(Lbi0;)Lci0;

    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_1

    .line 55
    iget-object p1, p0, Lbi0$a;->a:Lbi0;

    .line 57
    invoke-static {p1}, Lbi0;->g(Lbi0;)Lci0;

    .line 60
    move-result-object p1

    .line 61
    iget-object p2, p0, Lbi0$a;->a:Lbi0;

    .line 63
    invoke-static {p2}, Lbi0;->d(Lbi0;)Lst;

    .line 66
    move-result-object p2

    .line 67
    iget-object v1, p0, Lbi0$a;->a:Lbi0;

    .line 69
    invoke-static {v1}, Lbi0;->h(Lbi0;)I

    .line 72
    move-result v1

    .line 73
    invoke-interface {p1, p2, v1}, Lci0;->W(Lst;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "e = "

    .line 82
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    goto :goto_0

    .line 100
    :catch_1
    move-exception p1

    .line 101
    const-string p2, "registerClient error"

    .line 103
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "TtsServiceAgent"

    .line 3
    const-string v0, "----->onServiceDisconnected"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 p1, 0x0

    .line 9
    sput-boolean p1, Lbi0;->k:Z

    .line 11
    sput-boolean p1, Lbi0;->h:Z

    .line 13
    iget-object p1, p0, Lbi0$a;->a:Lbi0;

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, v0}, Lbi0;->a(Lbi0;Lci0;)V

    .line 19
    iget-object p1, p0, Lbi0$a;->a:Lbi0;

    .line 21
    invoke-static {p1, v0}, Lbi0;->b(Lbi0;Lst;)V

    .line 24
    iget-object p1, p0, Lbi0$a;->a:Lbi0;

    .line 26
    invoke-static {p1}, Lbi0;->c(Lbi0;)V

    .line 29
    return-void
.end method
