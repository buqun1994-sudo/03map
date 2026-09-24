.class public Lfa0;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput p1, p0, Lfa0;->d:I

    .line 6
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RequestCarHWStatusModel;

    .line 3
    iget v1, p0, Lfa0;->d:I

    .line 5
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RequestCarHWStatusModel;-><init>(I)V

    .line 8
    return-object v0
.end method
