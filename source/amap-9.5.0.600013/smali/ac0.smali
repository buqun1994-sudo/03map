.class public Lac0;
.super Loc;
.source "SourceFile"


# instance fields
.field public c:Lbc0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Loc;-><init>()V

    .line 4
    new-instance v0, Lbc0;

    .line 6
    invoke-direct {v0}, Lbc0;-><init>()V

    .line 9
    iput-object v0, p0, Lac0;->c:Lbc0;

    .line 11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Lec;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e(Lnc;)V
    .locals 0

    .line 1
    return-void
.end method

.method public f()Lrq;
    .locals 1

    .line 1
    iget-object v0, p0, Lac0;->c:Lbc0;

    .line 3
    return-object v0
.end method

.method public i(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Ljava/lang/reflect/Type;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public j()V
    .locals 0

    .line 1
    return-void
.end method
