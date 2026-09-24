.class public Ltw;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:Lcom/autonavi/amapauto/protocol/model/client/ReqQueryLastMapStatusModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqQueryLastMapStatusModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    iput-object p1, p0, Ltw;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqQueryLastMapStatusModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->getLastAutoStatus()I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Ltw;->k:I

    .line 7
    return-void
.end method
