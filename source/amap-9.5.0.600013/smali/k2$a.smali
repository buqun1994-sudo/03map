.class public Lk2$a;
.super Lvs$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk2;


# direct methods
.method public constructor <init>(Lk2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk2$a;->a:Lk2;

    .line 3
    invoke-direct {p0}, Lvs$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public U0(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string p1, "[NewProtocol] AidlModelConnection"

    .line 9
    const-string v2, "setProtocolJSONData jsonString:{?}"

    .line 11
    invoke-static {p1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return v1
.end method

.method public X0(Lws;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[NewProtocol] AidlModelConnection"

    .line 6
    const-string v2, "setAutoGetter"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lk2$a;->a:Lk2;

    .line 13
    invoke-static {v0}, Lk2;->o(Lk2;)Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lk2$a;->a:Lk2;

    .line 21
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 26
    invoke-static {v0, v1}, Lk2;->p(Lk2;Ljava/util/List;)Ljava/util/List;

    .line 29
    :cond_0
    iget-object v0, p0, Lk2$a;->a:Lk2;

    .line 31
    invoke-static {v0}, Lk2;->o(Lk2;)Ljava/util/List;

    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lk2$a;->a:Lk2;

    .line 43
    invoke-static {v0}, Lk2;->o(Lk2;)Ljava/util/List;

    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    return-void
.end method

.method public Y(Ljava/lang/String;Lxs;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "[NewProtocol] AidlModelConnection"

    .line 9
    const-string v2, "unregisterCallback packageName:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lk2$a;->a:Lk2;

    .line 16
    invoke-static {v0, p1, p2}, Lk2;->m(Lk2;Ljava/lang/String;Lxs;)V

    .line 19
    return-void
.end method

.method public Y0(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;->s()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    const/4 v1, 0x2

    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;->s()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v2

    .line 25
    aput-object v2, v1, v0

    .line 27
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;->s()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->toJsonObject()Lorg/json/JSONObject;

    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x1

    .line 36
    aput-object v2, v1, v3

    .line 38
    const-string v2, "[NewProtocol] AidlModelConnection"

    .line 40
    const-string v3, "AidlModelConnection receiveClientRequest protocolID:{?}, protocolModel:{?}"

    .line 42
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_0
    iget-object v1, p0, Lk2$a;->a:Lk2;

    .line 47
    invoke-virtual {v1, p1}, Loc;->k(Ljava/lang/Object;)V

    .line 50
    return v0
.end method

.method public e0(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lk2$a;->a:Lk2;

    .line 3
    invoke-virtual {v0, p1}, Loc;->k(Ljava/lang/Object;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lvs$a;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4
    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    const/4 p2, 0x0

    .line 8
    new-array p2, p2, [Ljava/lang/Object;

    .line 10
    const-string p3, "[NewProtocol] AidlModelConnection"

    .line 12
    const-string p4, "onTransact :{?}"

    .line 14
    invoke-static {p3, p4, p1, p2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 17
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method public u0(Ljava/lang/String;Lxs;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "[NewProtocol] AidlModelConnection"

    .line 9
    const-string v2, "registerCallback packageName:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v1, "registerCallback packageName:"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "AidlModelConnection"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lk2$a;->a:Lk2;

    .line 38
    invoke-static {v0, p1, p2}, Lk2;->n(Lk2;Ljava/lang/String;Lxs;)V

    .line 41
    return-void
.end method

.method public x0(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string p1, "[NewProtocol] AidlModelConnection"

    .line 9
    const-string v2, "authentication apiKey:{?}"

    .line 11
    invoke-static {p1, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return v0
.end method
