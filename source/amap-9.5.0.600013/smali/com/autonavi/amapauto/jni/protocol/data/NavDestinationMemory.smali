.class public Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private countryCode:Ljava/lang/String;

.field iconParameter:Lcom/autonavi/amapauto/jni/protocol/data/IconParameter;

.field private id:Ljava/lang/String;

.field private locationProvider:Ljava/lang/String;

.field private locationType:Ljava/lang/String;

.field textualDescriptionType:Lcom/autonavi/amapauto/jni/protocol/data/TextualDescriptionType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static jniNavDestinationMemory(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v1, "NavDestinationMemory"

    .line 9
    const-string v2, "jniNavDestinationMemory:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lse;->c()Lse;

    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Leq$a;

    .line 20
    invoke-direct {v1, p0}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 23
    const p0, 0xea69

    .line 26
    invoke-virtual {v0, p0, v1}, Lse;->setOptionalValue(ILeq$a;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->countryCode:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getIconParameter()Lcom/autonavi/amapauto/jni/protocol/data/IconParameter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->iconParameter:Lcom/autonavi/amapauto/jni/protocol/data/IconParameter;

    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->id:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLocationProvider()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->locationProvider:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLocationType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->locationType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTextualDescriptionType()Lcom/autonavi/amapauto/jni/protocol/data/TextualDescriptionType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->textualDescriptionType:Lcom/autonavi/amapauto/jni/protocol/data/TextualDescriptionType;

    .line 3
    return-object v0
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->countryCode:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setIconParameter(Lcom/autonavi/amapauto/jni/protocol/data/IconParameter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->iconParameter:Lcom/autonavi/amapauto/jni/protocol/data/IconParameter;

    .line 3
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->id:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setLocationProvider(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->locationProvider:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setLocationType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->locationType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setTextualDescriptionType(Lcom/autonavi/amapauto/jni/protocol/data/TextualDescriptionType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->textualDescriptionType:Lcom/autonavi/amapauto/jni/protocol/data/TextualDescriptionType;

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
    const-string v1, "NavDestinationMemory{id=\'"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->id:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const/16 v1, 0x27

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, ", countryCode=\'"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->countryCode:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, ", iconParameter="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->iconParameter:Lcom/autonavi/amapauto/jni/protocol/data/IconParameter;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string v2, ", locationProvider=\'"

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->locationProvider:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    const-string v2, ", locationType=\'"

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->locationType:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", textualDescriptionType="

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/NavDestinationMemory;->textualDescriptionType:Lcom/autonavi/amapauto/jni/protocol/data/TextualDescriptionType;

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const/16 v1, 0x7d

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method
