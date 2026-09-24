.class public Lcom/autonavi/amapauto/alink/data/ServerConfigerData;
.super Lcom/autonavi/amapauto/alink/data/BaseJsonData;
.source "SourceFile"


# instance fields
.field public audioBitDepth_media:I

.field public audioBitDepth_navigation:I

.field public audioBitDepth_speech:I

.field public audioIPL_media:I

.field public audioIPL_navigation:I

.field public audioIPL_speech:I

.field public audioNumChannels_navigation:I

.field public audioNumChannels_speech:I

.field public audioSampleRate_navigation:I

.field public audioSampleRate_speech:I

.field public codecHeight:I

.field public codecWidth:I

.field public dpi:I

.field public frameRate:I

.field public integratorId:Ljava/lang/String;

.field public manufacturer:Ljava/lang/String;

.field public mediaSampleRate:I

.field public meidaChannel:I

.field public model:Ljava/lang/String;

.field public osType:Ljava/lang/String;

.field public productInfo:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/alink/data/BaseJsonData;-><init>()V

    .line 4
    const-string v0, "amapauto"

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->manufacturer:Ljava/lang/String;

    .line 8
    const-string v0, "amapauto_ALink"

    .line 10
    iput-object v0, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->integratorId:Ljava/lang/String;

    .line 12
    const-string v0, "android"

    .line 14
    iput-object v0, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->osType:Ljava/lang/String;

    .line 16
    const/16 v0, 0x1e

    .line 18
    iput v0, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->frameRate:I

    .line 20
    const/16 v0, 0x78

    .line 22
    iput v0, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->dpi:I

    .line 24
    const/4 v0, 0x2

    .line 25
    iput v0, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->meidaChannel:I

    .line 27
    const v0, 0xbb80

    .line 30
    iput v0, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->mediaSampleRate:I

    .line 32
    const/16 v0, 0x10

    .line 34
    iput v0, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioBitDepth_media:I

    .line 36
    const/16 v1, 0x12c0

    .line 38
    iput v1, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioIPL_media:I

    .line 40
    const/4 v1, 0x1

    .line 41
    iput v1, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioNumChannels_navigation:I

    .line 43
    const/16 v2, 0x3e80

    .line 45
    iput v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioSampleRate_navigation:I

    .line 47
    iput v0, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioBitDepth_navigation:I

    .line 49
    const/16 v3, 0x640

    .line 51
    iput v3, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioIPL_navigation:I

    .line 53
    iput v1, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioNumChannels_speech:I

    .line 55
    iput v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioSampleRate_speech:I

    .line 57
    iput v0, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioBitDepth_speech:I

    .line 59
    iput v3, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioIPL_speech:I

    .line 61
    return-void
.end method
