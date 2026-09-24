.class public Lp70$b;
.super Lws$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp70;


# direct methods
.method public constructor <init>(Lp70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp70$b;->a:Lp70;

    .line 3
    invoke-direct {p0}, Lws$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public T(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "[ALSimulate] ProtocolAidlControl"

    .line 6
    const-string v3, "getSystemData protocolModel"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lp70$b;->a:Lp70;

    .line 13
    invoke-static {v1}, Lp70;->d(Lp70;)Lbt;

    .line 16
    iget-object v1, p0, Lp70$b;->a:Lp70;

    .line 18
    invoke-static {v1}, Lp70;->d(Lp70;)Lbt;

    .line 21
    const-string v1, "getSystemData protocolModel listener is null"

    .line 23
    new-array v3, v0, [Ljava/lang/Object;

    .line 25
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    if-nez p1, :cond_0

    .line 30
    const-string p1, "getSystemData protocolModel is null"

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    return-object p1
.end method

.method public l0(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lp70$b;->a:Lp70;

    .line 3
    invoke-static {p1}, Lp70;->d(Lp70;)Lbt;

    .line 6
    return-void
.end method
