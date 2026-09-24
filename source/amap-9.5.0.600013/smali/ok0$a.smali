.class public Lok0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lys;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lok0;->g(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lok0$a;->a:Ljava/lang/Runnable;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->r()I

    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->s()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    aput-object p1, v0, v1

    .line 22
    const-string p1, "VersionUtil"

    .line 24
    const-string v1, "requestVersion onFail code = {?}, msg = {?}"

    .line 26
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object p1, p0, Lok0$a;->a:Ljava/lang/Runnable;

    .line 31
    if-eqz p1, :cond_0

    .line 33
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 36
    :cond_0
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V
    .locals 1

    .line 1
    invoke-static {}, Lta;->b()Lta;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lta;->a()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lok0;->a(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Landroid/content/Context;)V

    .line 12
    iget-object p1, p0, Lok0$a;->a:Ljava/lang/Runnable;

    .line 14
    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 19
    :cond_0
    return-void
.end method
