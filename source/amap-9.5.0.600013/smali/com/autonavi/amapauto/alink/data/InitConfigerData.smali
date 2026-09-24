.class public Lcom/autonavi/amapauto/alink/data/InitConfigerData;
.super Lcom/autonavi/amapauto/alink/data/BaseJsonData;
.source "SourceFile"


# instance fields
.field private audioMixMode:I

.field private certificatePath:Ljava/lang/String;

.field private huIconMode:I

.field private logLevel:I

.field private logPath:Ljava/lang/String;

.field private logScreenPrint:Z

.field private mediaChannelMode:I

.field private micSourceMode:I

.field private navigationChannelMode:I

.field private privateKeyPath:Ljava/lang/String;

.field private speechChannelMode:I

.field private verifyInfoPath:Ljava/lang/String;

.field private videoMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/alink/data/BaseJsonData;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->logLevel:I

    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->audioMixMode:I

    .line 10
    iput v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->huIconMode:I

    .line 12
    iput v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->videoMode:I

    .line 14
    iput v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->micSourceMode:I

    .line 16
    iput v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->mediaChannelMode:I

    .line 18
    iput v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->navigationChannelMode:I

    .line 20
    iput v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->speechChannelMode:I

    .line 22
    return-void
.end method


# virtual methods
.method public getAudioMixMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->audioMixMode:I

    .line 3
    return v0
.end method

.method public getCertificatePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->certificatePath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getHuIconMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->huIconMode:I

    .line 3
    return v0
.end method

.method public getLogLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->logLevel:I

    .line 3
    return v0
.end method

.method public getLogPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->logPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMediaChannelMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->mediaChannelMode:I

    .line 3
    return v0
.end method

.method public getMicSourceMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->micSourceMode:I

    .line 3
    return v0
.end method

.method public getNavigationChannelMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->navigationChannelMode:I

    .line 3
    return v0
.end method

.method public getPrivateKeyPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->privateKeyPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSpeechChannelMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->speechChannelMode:I

    .line 3
    return v0
.end method

.method public getVerifyInfoPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->verifyInfoPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getVideoMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->videoMode:I

    .line 3
    return v0
.end method

.method public isLogScreenPrint()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->logScreenPrint:Z

    .line 3
    return v0
.end method

.method public setAudioMixMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->audioMixMode:I

    .line 3
    return-void
.end method

.method public setCertificatePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->certificatePath:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setHuIconMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->huIconMode:I

    .line 3
    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->logLevel:I

    .line 3
    return-void
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->logPath:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setLogScreenPrint(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->logScreenPrint:Z

    .line 3
    return-void
.end method

.method public setMediaChannelMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->mediaChannelMode:I

    .line 3
    return-void
.end method

.method public setMicSourceMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->micSourceMode:I

    .line 3
    return-void
.end method

.method public setNavigationChannelMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->navigationChannelMode:I

    .line 3
    return-void
.end method

.method public setPrivateKeyPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->privateKeyPath:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSpeechChannelMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->speechChannelMode:I

    .line 3
    return-void
.end method

.method public setVerifyInfoPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->verifyInfoPath:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setVideoMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->videoMode:I

    .line 3
    return-void
.end method
