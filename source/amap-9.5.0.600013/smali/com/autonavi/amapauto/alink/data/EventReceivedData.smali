.class public Lcom/autonavi/amapauto/alink/data/EventReceivedData;
.super Lcom/autonavi/amapauto/alink/data/BaseJsonData;
.source "SourceFile"


# static fields
.field public static final EVENT_ID_ALINK_SERVER:I = 0x0

.field public static final EVENT_ID_PROBE:I = 0xb

.field public static final EVENT_ID_VIDEO:I = 0x1


# instance fields
.field public event:I

.field public names:Lcom/autonavi/amapauto/alink/data/ServiceNameData;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/alink/data/BaseJsonData;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getEvent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->event:I

    .line 3
    return v0
.end method

.method public getNames()Lcom/autonavi/amapauto/alink/data/ServiceNameData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->names:Lcom/autonavi/amapauto/alink/data/ServiceNameData;

    .line 3
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->status:I

    .line 3
    return v0
.end method

.method public setEvent(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->event:I

    .line 3
    return-void
.end method

.method public setNames(Lcom/autonavi/amapauto/alink/data/ServiceNameData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->names:Lcom/autonavi/amapauto/alink/data/ServiceNameData;

    .line 3
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->status:I

    .line 3
    return-void
.end method
