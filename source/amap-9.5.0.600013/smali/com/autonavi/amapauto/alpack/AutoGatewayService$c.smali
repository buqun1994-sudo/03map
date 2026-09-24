.class public Lcom/autonavi/amapauto/alpack/AutoGatewayService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amapauto/alpack/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/alpack/AutoGatewayService;->f()V
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
    iput-object p1, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService$c;->a:Lcom/autonavi/amapauto/alpack/AutoGatewayService;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService$c;->a:Lcom/autonavi/amapauto/alpack/AutoGatewayService;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->a(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v2, "sendBundle to host action "

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
    iget-object v0, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService$c;->a:Lcom/autonavi/amapauto/alpack/AutoGatewayService;

    .line 40
    invoke-static {v0}, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->b(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)Lcom/autonavi/amapauto/alpack/c;

    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0, p1, p2}, Lcom/autonavi/amapauto/alpack/c;->C(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    :goto_0
    return-void
.end method
