.class public Lp70$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp70$c;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp70$c;


# direct methods
.method public constructor <init>(Lp70$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp70$c$a;->a:Lp70$c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lp70;->f(Z)Z

    .line 5
    iget-object v1, p0, Lp70$c$a;->a:Lp70$c;

    .line 7
    iget-object v1, v1, Lp70$c;->a:Lp70;

    .line 9
    invoke-static {v1}, Lp70;->g(Lp70;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const/4 v1, 0x2

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    iget-object v2, p0, Lp70$c$a;->a:Lp70$c;

    .line 20
    iget-object v2, v2, Lp70$c;->a:Lp70;

    .line 22
    invoke-static {v2}, Lp70;->g(Lp70;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 29
    move-result v2

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    aput-object v2, v1, v3

    .line 37
    iget-object v2, p0, Lp70$c$a;->a:Lp70$c;

    .line 39
    iget-object v2, v2, Lp70$c;->a:Lp70;

    .line 41
    invoke-static {v2}, Lp70;->g(Lp70;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 48
    move-result v2

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v2

    .line 53
    aput-object v2, v1, v0

    .line 55
    const-string v0, "[ALSimulate] ProtocolAidlControl"

    .line 57
    const-string v2, "start executing waiting protocol,protocolId={?}, callbackId={?}"

    .line 59
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lp70$c$a;->a:Lp70$c;

    .line 64
    iget-object v0, v0, Lp70$c;->a:Lp70;

    .line 66
    invoke-static {v0}, Lp70;->g(Lp70;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 69
    move-result-object v1

    .line 70
    iget-object v2, p0, Lp70$c$a;->a:Lp70$c;

    .line 72
    iget-object v2, v2, Lp70$c;->a:Lp70;

    .line 74
    invoke-static {v2}, Lp70;->i(Lp70;)Lys;

    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v1, v2}, Lp70;->x(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Lys;)I

    .line 81
    iget-object v0, p0, Lp70$c$a;->a:Lp70$c;

    .line 83
    iget-object v0, v0, Lp70$c;->a:Lp70;

    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-static {v0, v1}, Lp70;->h(Lp70;Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 89
    iget-object v0, p0, Lp70$c$a;->a:Lp70$c;

    .line 91
    iget-object v0, v0, Lp70$c;->a:Lp70;

    .line 93
    invoke-static {v0, v1}, Lp70;->j(Lp70;Lys;)Lys;

    .line 96
    :cond_0
    return-void
.end method
