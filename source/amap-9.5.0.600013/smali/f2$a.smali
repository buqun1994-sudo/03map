.class public Lf2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf2;


# direct methods
.method public constructor <init>(Lf2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf2$a;->a:Lf2;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf2$a;->a:Lf2;

    .line 3
    invoke-static {p2}, Lia$a;->t1(Landroid/os/IBinder;)Lia;

    .line 6
    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Lf2;->d(Lf2;Lia;)Lia;

    .line 10
    const-string p1, "AidlConsole"

    .line 12
    const-string p2, "onServiceConnected"

    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p1, p0, Lf2$a;->a:Lf2;

    .line 19
    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p1, Lf2;->c:Z

    .line 22
    invoke-virtual {p1}, Lf2;->k()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 28
    iget-object p2, p0, Lf2$a;->a:Lf2;

    .line 30
    invoke-static {p2, p1}, Lf2;->e(Lf2;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    :cond_0
    iget-object p1, p0, Lf2$a;->a:Lf2;

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    move-result-wide v0

    .line 39
    invoke-static {p1, v0, v1}, Lf2;->f(Lf2;J)J

    .line 42
    iget-object p1, p0, Lf2$a;->a:Lf2;

    .line 44
    iget-boolean p2, p1, Lf2;->c:Z

    .line 46
    invoke-static {p1, p2}, Lf2;->g(Lf2;Z)V

    .line 49
    iget-object p1, p0, Lf2$a;->a:Lf2;

    .line 51
    invoke-static {p1}, Lf2;->h(Lf2;)V

    .line 54
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "AidlConsole"

    .line 3
    const-string v0, "onServiceDisconnected"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lf2$a;->a:Lf2;

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p1, Lf2;->c:Z

    .line 13
    invoke-static {p1, v0}, Lf2;->g(Lf2;Z)V

    .line 16
    return-void
.end method
