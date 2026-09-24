.class public Lcom/autonavi/mqtt/PushServer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/mqtt/PushServer$PushCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/mqtt/PushServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/mqtt/PushServer;


# direct methods
.method public constructor <init>(Lcom/autonavi/mqtt/PushServer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/mqtt/PushServer$a;->a:Lcom/autonavi/mqtt/PushServer;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public connectionLost()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/mqtt/PushServer$a;->a:Lcom/autonavi/mqtt/PushServer;

    .line 3
    invoke-static {v0}, Lcom/autonavi/mqtt/PushServer;->a(Lcom/autonavi/mqtt/PushServer;)Let;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/autonavi/mqtt/PushServer$a;->a:Lcom/autonavi/mqtt/PushServer;

    .line 11
    invoke-static {v0}, Lcom/autonavi/mqtt/PushServer;->a(Lcom/autonavi/mqtt/PushServer;)Let;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Let;->connectionLost()V

    .line 18
    :cond_0
    return-void
.end method

.method public connectionSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/mqtt/PushServer$a;->a:Lcom/autonavi/mqtt/PushServer;

    .line 3
    invoke-static {v0}, Lcom/autonavi/mqtt/PushServer;->a(Lcom/autonavi/mqtt/PushServer;)Let;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/autonavi/mqtt/PushServer$a;->a:Lcom/autonavi/mqtt/PushServer;

    .line 11
    invoke-static {v0}, Lcom/autonavi/mqtt/PushServer;->a(Lcom/autonavi/mqtt/PushServer;)Let;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Let;->connectionSuccess()V

    .line 18
    :cond_0
    return-void
.end method

.method public messageArrived([B[B)I
    .locals 3

    .line 1
    const-string v0, "utf-8"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .line 6
    invoke-direct {v2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    new-instance p1, Ljava/lang/String;

    .line 11
    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    move-object v1, p1

    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception p1

    .line 19
    move-object v2, v1

    .line 20
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    :goto_1
    iget-object p1, p0, Lcom/autonavi/mqtt/PushServer$a;->a:Lcom/autonavi/mqtt/PushServer;

    .line 25
    invoke-static {p1}, Lcom/autonavi/mqtt/PushServer;->a(Lcom/autonavi/mqtt/PushServer;)Let;

    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/autonavi/mqtt/PushServer$a;->a:Lcom/autonavi/mqtt/PushServer;

    .line 33
    invoke-static {p1}, Lcom/autonavi/mqtt/PushServer;->a(Lcom/autonavi/mqtt/PushServer;)Let;

    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1, v2, v1}, Let;->z(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_0
    const/4 p1, -0x1

    .line 43
    return p1
.end method

.method public onCloseSocketFD(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/mqtt/PushServer$a;->a:Lcom/autonavi/mqtt/PushServer;

    .line 3
    invoke-static {v0}, Lcom/autonavi/mqtt/PushServer;->a(Lcom/autonavi/mqtt/PushServer;)Let;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/autonavi/mqtt/PushServer$a;->a:Lcom/autonavi/mqtt/PushServer;

    .line 11
    invoke-static {v0}, Lcom/autonavi/mqtt/PushServer;->a(Lcom/autonavi/mqtt/PushServer;)Let;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Let;->onCloseSocketFD(I)V

    .line 18
    :cond_0
    return-void
.end method

.method public onGetConnectSocketFD([BSI)I
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 3
    const-string v1, "utf-8"

    .line 5
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/autonavi/mqtt/PushServer$a;->a:Lcom/autonavi/mqtt/PushServer;

    .line 16
    invoke-static {p1}, Lcom/autonavi/mqtt/PushServer;->a(Lcom/autonavi/mqtt/PushServer;)Let;

    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lcom/autonavi/mqtt/PushServer$a;->a:Lcom/autonavi/mqtt/PushServer;

    .line 24
    invoke-static {p1}, Lcom/autonavi/mqtt/PushServer;->a(Lcom/autonavi/mqtt/PushServer;)Let;

    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1, v0, p2, p3}, Let;->a(Ljava/lang/String;SI)I

    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    return p1
.end method
