.class public final Lcom/alibaba/android/ark/AIMMsgContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x64f2508e8087cfa0L


# instance fields
.field public audioContent:Lcom/alibaba/android/ark/AIMMsgAudioContent;

.field public contentType:Lcom/alibaba/android/ark/AIMMsgContentType;

.field public customContent:Lcom/alibaba/android/ark/AIMMsgCustomContent;

.field public geoContent:Lcom/alibaba/android/ark/AIMMsgGeoContent;

.field public imageContent:Lcom/alibaba/android/ark/AIMMsgImageContent;

.field public linkContent:Lcom/alibaba/android/ark/AIMMsgLinkContent;

.field public structContent:Lcom/alibaba/android/ark/AIMMsgStructContent;

.field public textContent:Lcom/alibaba/android/ark/AIMMsgTextContent;

.field public videoContent:Lcom/alibaba/android/ark/AIMMsgVideoContent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgContentType;->CONTENT_TYPE_UNKNOW:Lcom/alibaba/android/ark/AIMMsgContentType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMsgContent;->contentType:Lcom/alibaba/android/ark/AIMMsgContentType;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ark/AIMMsgContentType;Lcom/alibaba/android/ark/AIMMsgTextContent;Lcom/alibaba/android/ark/AIMMsgImageContent;Lcom/alibaba/android/ark/AIMMsgAudioContent;Lcom/alibaba/android/ark/AIMMsgVideoContent;Lcom/alibaba/android/ark/AIMMsgGeoContent;Lcom/alibaba/android/ark/AIMMsgCustomContent;Lcom/alibaba/android/ark/AIMMsgStructContent;Lcom/alibaba/android/ark/AIMMsgLinkContent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgContentType;->CONTENT_TYPE_UNKNOW:Lcom/alibaba/android/ark/AIMMsgContentType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMsgContent;->contentType:Lcom/alibaba/android/ark/AIMMsgContentType;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/alibaba/android/ark/AIMMsgContent;->contentType:Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 4
    :cond_0
    iput-object p2, p0, Lcom/alibaba/android/ark/AIMMsgContent;->textContent:Lcom/alibaba/android/ark/AIMMsgTextContent;

    .line 5
    iput-object p3, p0, Lcom/alibaba/android/ark/AIMMsgContent;->imageContent:Lcom/alibaba/android/ark/AIMMsgImageContent;

    .line 6
    iput-object p4, p0, Lcom/alibaba/android/ark/AIMMsgContent;->audioContent:Lcom/alibaba/android/ark/AIMMsgAudioContent;

    .line 7
    iput-object p5, p0, Lcom/alibaba/android/ark/AIMMsgContent;->videoContent:Lcom/alibaba/android/ark/AIMMsgVideoContent;

    .line 8
    iput-object p6, p0, Lcom/alibaba/android/ark/AIMMsgContent;->geoContent:Lcom/alibaba/android/ark/AIMMsgGeoContent;

    .line 9
    iput-object p7, p0, Lcom/alibaba/android/ark/AIMMsgContent;->customContent:Lcom/alibaba/android/ark/AIMMsgCustomContent;

    .line 10
    iput-object p8, p0, Lcom/alibaba/android/ark/AIMMsgContent;->structContent:Lcom/alibaba/android/ark/AIMMsgStructContent;

    .line 11
    iput-object p9, p0, Lcom/alibaba/android/ark/AIMMsgContent;->linkContent:Lcom/alibaba/android/ark/AIMMsgLinkContent;

    return-void
.end method


# virtual methods
.method public getAudioContent()Lcom/alibaba/android/ark/AIMMsgAudioContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgContent;->audioContent:Lcom/alibaba/android/ark/AIMMsgAudioContent;

    .line 3
    return-object v0
.end method

.method public getContentType()Lcom/alibaba/android/ark/AIMMsgContentType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgContent;->contentType:Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 3
    return-object v0
.end method

.method public getCustomContent()Lcom/alibaba/android/ark/AIMMsgCustomContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgContent;->customContent:Lcom/alibaba/android/ark/AIMMsgCustomContent;

    .line 3
    return-object v0
.end method

.method public getGeoContent()Lcom/alibaba/android/ark/AIMMsgGeoContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgContent;->geoContent:Lcom/alibaba/android/ark/AIMMsgGeoContent;

    .line 3
    return-object v0
.end method

.method public getImageContent()Lcom/alibaba/android/ark/AIMMsgImageContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgContent;->imageContent:Lcom/alibaba/android/ark/AIMMsgImageContent;

    .line 3
    return-object v0
.end method

.method public getLinkContent()Lcom/alibaba/android/ark/AIMMsgLinkContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgContent;->linkContent:Lcom/alibaba/android/ark/AIMMsgLinkContent;

    .line 3
    return-object v0
.end method

.method public getStructContent()Lcom/alibaba/android/ark/AIMMsgStructContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgContent;->structContent:Lcom/alibaba/android/ark/AIMMsgStructContent;

    .line 3
    return-object v0
.end method

.method public getTextContent()Lcom/alibaba/android/ark/AIMMsgTextContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgContent;->textContent:Lcom/alibaba/android/ark/AIMMsgTextContent;

    .line 3
    return-object v0
.end method

.method public getVideoContent()Lcom/alibaba/android/ark/AIMMsgVideoContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgContent;->videoContent:Lcom/alibaba/android/ark/AIMMsgVideoContent;

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AIMMsgContent{contentType="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMMsgContent;->contentType:Lcom/alibaba/android/ark/AIMMsgContentType;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "textContent="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgContent;->textContent:Lcom/alibaba/android/ark/AIMMsgTextContent;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "imageContent="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgContent;->imageContent:Lcom/alibaba/android/ark/AIMMsgImageContent;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "audioContent="

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgContent;->audioContent:Lcom/alibaba/android/ark/AIMMsgAudioContent;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "videoContent="

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgContent;->videoContent:Lcom/alibaba/android/ark/AIMMsgVideoContent;

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v2, "geoContent="

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgContent;->geoContent:Lcom/alibaba/android/ark/AIMMsgGeoContent;

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v2, "customContent="

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgContent;->customContent:Lcom/alibaba/android/ark/AIMMsgCustomContent;

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, "structContent="

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgContent;->structContent:Lcom/alibaba/android/ark/AIMMsgStructContent;

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "linkContent="

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMMsgContent;->linkContent:Lcom/alibaba/android/ark/AIMMsgLinkContent;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "}"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 131
    return-object v0
.end method
