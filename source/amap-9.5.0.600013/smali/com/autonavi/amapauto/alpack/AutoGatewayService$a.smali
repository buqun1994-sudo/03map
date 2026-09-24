.class public Lcom/autonavi/amapauto/alpack/AutoGatewayService$a;
.super Lcom/autonavi/amapauto/alpack/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/alpack/AutoGatewayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/alpack/AutoGatewayService;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService$a;->a:Lcom/autonavi/amapauto/alpack/AutoGatewayService;

    .line 3
    invoke-direct {p0}, Lcom/autonavi/amapauto/alpack/b$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a0(Ljava/lang/String;)[B
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService$a;->a:Lcom/autonavi/amapauto/alpack/AutoGatewayService;

    .line 6
    invoke-static {p1}, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->a(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const-string v1, "getParcelable action is null"

    .line 12
    new-array v2, v0, [Ljava/lang/Object;

    .line 14
    invoke-static {p1, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    new-array p1, v0, [B

    .line 19
    return-object p1

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService$a;->a:Lcom/autonavi/amapauto/alpack/AutoGatewayService;

    .line 22
    invoke-static {v1}, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->a(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v3, "getParcelable action "

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-static {p1, v0}, Lcom/autonavi/amapauto/alpack/d;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Parcelable;

    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Li50;->e(Landroid/os/Parcelable;)[B

    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method public b1(Ljava/lang/String;[B)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService$a;->a:Lcom/autonavi/amapauto/alpack/AutoGatewayService;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->a(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v2, "notifyBroadcastParcel bytes "

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    new-array v3, v2, [Ljava/lang/Object;

    .line 27
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    if-eqz p2, :cond_2

    .line 32
    array-length v0, p2

    .line 33
    if-nez v0, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p2}, Li50;->f([B)Landroid/os/Parcel;

    .line 39
    move-result-object p2

    .line 40
    if-nez p2, :cond_1

    .line 42
    iget-object p1, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService$a;->a:Lcom/autonavi/amapauto/alpack/AutoGatewayService;

    .line 44
    invoke-static {p1}, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->a(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    const-string p2, "notifyBroadcastParcel data is null "

    .line 50
    new-array v0, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void

    .line 56
    :cond_1
    invoke-static {p1, p2}, Lcom/autonavi/amapauto/alpack/d;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    return-void

    .line 60
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService$a;->a:Lcom/autonavi/amapauto/alpack/AutoGatewayService;

    .line 62
    invoke-static {p1}, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->a(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    const-string p2, "notifyBroadcastParcel bytes is null or length is empty"

    .line 68
    new-array v0, v2, [Ljava/lang/Object;

    .line 70
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public c0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService$a;->a:Lcom/autonavi/amapauto/alpack/AutoGatewayService;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->a(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v2, "notifyBroadcastBundle action "

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, " bundle "

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x0

    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {p1, p2}, Lcom/autonavi/amapauto/alpack/d;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    return-void
.end method
