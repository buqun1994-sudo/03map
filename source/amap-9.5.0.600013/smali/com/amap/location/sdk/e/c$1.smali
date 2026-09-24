.class final Lcom/amap/location/sdk/e/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/log/ILog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/sdk/e/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/amap/location/sdk/e/c$a;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/location/sdk/e/c;->g()Lcom/amap/location/sdk/e/c$b;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/amap/location/sdk/e/c;->g()Lcom/amap/location/sdk/e/c$b;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->b(Lcom/amap/location/sdk/e/c$a;)I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Lcom/amap/location/sdk/e/c$a;->a(Lcom/amap/location/sdk/e/c$a;)V

    .line 26
    :goto_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const-string v2, "_"

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProcessName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x0

    .line 33
    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    invoke-static {p1, p2, v0}, Lf;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void

    .line 39
    :cond_0
    invoke-static {}, Lcom/amap/location/sdk/e/c;->f()Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    move-result-wide v0

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    sget-object v2, Lcom/amap/location/sdk/e/c;->b:Lcom/amap/location/sdk/e/a;

    .line 73
    if-eqz v2, :cond_1

    .line 75
    sget-object v2, Lcom/amap/location/sdk/e/c;->b:Lcom/amap/location/sdk/e/a;

    .line 77
    invoke-interface {v2, p1, v0, v1, p2}, Lcom/amap/location/sdk/e/a;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 80
    :cond_1
    sget-object v2, Lcom/amap/location/sdk/e/c;->c:Lcom/amap/location/sdk/e/a;

    .line 82
    if-eqz v2, :cond_2

    .line 84
    sget-object v2, Lcom/amap/location/sdk/e/c;->c:Lcom/amap/location/sdk/e/a;

    .line 86
    invoke-interface {v2, p1, v0, v1, p2}, Lcom/amap/location/sdk/e/a;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 89
    :cond_2
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProcessName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "_"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x0

    .line 33
    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {p1, p2, v1, v0}, Lf;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 39
    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/amap/location/sdk/e/c$a;

    .line 42
    const/4 v3, 0x4

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    move-result-wide v5

    .line 47
    move-object v2, v0

    .line 48
    move-object v4, p1

    .line 49
    move-object v7, p2

    .line 50
    invoke-direct/range {v2 .. v7}, Lcom/amap/location/sdk/e/c$a;-><init>(ILjava/lang/String;JLjava/lang/String;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/amap/location/sdk/e/c$1;->a(Lcom/amap/location/sdk/e/c$a;)V

    .line 56
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProcessName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "_"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x0

    .line 33
    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    invoke-static {p1, p2, v0}, Lf;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/amap/location/sdk/e/c$a;

    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    move-result-wide v4

    .line 46
    move-object v1, v0

    .line 47
    move-object v3, p1

    .line 48
    move-object v6, p2

    .line 49
    invoke-direct/range {v1 .. v6}, Lcom/amap/location/sdk/e/c$a;-><init>(ILjava/lang/String;JLjava/lang/String;)V

    .line 52
    invoke-direct {p0, v0}, Lcom/amap/location/sdk/e/c$1;->a(Lcom/amap/location/sdk/e/c$a;)V

    .line 55
    return-void
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProcessName()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v0, "_"

    .line 22
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    const/4 p3, 0x0

    .line 33
    new-array p3, p3, [Ljava/lang/Object;

    .line 35
    invoke-static {p1, p2, p3}, Lf;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void

    .line 39
    :cond_0
    new-instance v7, Lcom/amap/location/sdk/e/c$a;

    .line 41
    const/4 v1, 0x2

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    move-result-wide v3

    .line 46
    move-object v0, v7

    .line 47
    move-object v2, p1

    .line 48
    move-object v5, p2

    .line 49
    move-object v6, p3

    .line 50
    invoke-direct/range {v0 .. v6}, Lcom/amap/location/sdk/e/c$a;-><init>(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, v7}, Lcom/amap/location/sdk/e/c$1;->a(Lcom/amap/location/sdk/e/c$a;)V

    .line 56
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProcessName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "_"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x0

    .line 33
    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    invoke-static {p1, p2, v0}, Lf;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/amap/location/sdk/e/c$a;

    .line 41
    const/4 v2, 0x3

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    move-result-wide v4

    .line 46
    move-object v1, v0

    .line 47
    move-object v3, p1

    .line 48
    move-object v6, p2

    .line 49
    invoke-direct/range {v1 .. v6}, Lcom/amap/location/sdk/e/c$a;-><init>(ILjava/lang/String;JLjava/lang/String;)V

    .line 52
    invoke-direct {p0, v0}, Lcom/amap/location/sdk/e/c$1;->a(Lcom/amap/location/sdk/e/c$a;)V

    .line 55
    return-void
.end method
