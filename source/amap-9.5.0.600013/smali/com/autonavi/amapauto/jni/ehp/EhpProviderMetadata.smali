.class public Lcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private legalSpeedLimitsVersion:Ljava/lang/String;

.field private mapVersion:Ljava/lang/String;

.field private providerSwVersion:Ljava/lang/String;

.field private trafficMasterListVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;->providerSwVersion:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;->trafficMasterListVersion:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;->legalSpeedLimitsVersion:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;->mapVersion:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getLegalSpeedLimitsVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;->legalSpeedLimitsVersion:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMapVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;->mapVersion:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getProviderSwVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;->providerSwVersion:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTrafficMasterListVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;->trafficMasterListVersion:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setLegalSpeedLimitsVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;->legalSpeedLimitsVersion:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setMapVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;->mapVersion:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setProviderSwVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;->providerSwVersion:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setTrafficMasterListVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;->trafficMasterListVersion:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "EhpProviderMetadata{providerSwVersion=\'"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;->providerSwVersion:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const/16 v1, 0x27

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, ", trafficMasterListVersion=\'"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;->trafficMasterListVersion:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, ", legalSpeedLimitsVersion=\'"

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;->legalSpeedLimitsVersion:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, ", mapVersion=\'"

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/ehp/EhpProviderMetadata;->mapVersion:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    const/16 v1, 0x7d

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method
