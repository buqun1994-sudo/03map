.class public Lcom/autonavi/amapauto/jni/protocol/data/TripReportData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aveSpeed:Ljava/lang/String;

.field public driveDistance:Ljava/lang/String;

.field public driveTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
