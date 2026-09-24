.class public Lai0;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/jni/protocol/data/TripReportData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;-><init>()V

    iput-object v0, p0, Lai0;->g:Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;

    .line 3
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/TripReportData;->driveDistance:Ljava/lang/String;

    iput-object v0, p0, Lai0;->d:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/TripReportData;->driveTime:Ljava/lang/String;

    iput-object v0, p0, Lai0;->e:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/TripReportData;->aveSpeed:Ljava/lang/String;

    iput-object p1, p0, Lai0;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lec;-><init>()V

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;-><init>()V

    .line 8
    iput-object p1, p0, Lai0;->g:Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lec;->d()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lai0;->g:Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;

    .line 12
    iget-object v1, p0, Lai0;->d:Ljava/lang/String;

    .line 14
    iget-object v2, p0, Lai0;->e:Ljava/lang/String;

    .line 16
    iget-object v3, p0, Lai0;->f:Ljava/lang/String;

    .line 18
    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-object v0
.end method
