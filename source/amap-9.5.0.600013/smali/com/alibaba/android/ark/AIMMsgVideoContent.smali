.class public final Lcom/alibaba/android/ark/AIMMsgVideoContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x24f2e74a09b4a5f4L


# instance fields
.field public coverFileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

.field public coverHeight:I

.field public coverLocalPath:Ljava/lang/String;

.field public coverMediaId:Ljava/lang/String;

.field public coverMimeType:Ljava/lang/String;

.field public coverUploadPath:Ljava/lang/String;

.field public coverUrl:Ljava/lang/String;

.field public coverWidth:I

.field public duration:J

.field public fileName:Ljava/lang/String;

.field public fileSize:J

.field public fileType:Ljava/lang/String;

.field public height:I

.field public localPath:Ljava/lang/String;

.field public mediaId:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public uploadPath:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgImageFileType;->IMAGE_FILE_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverFileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    const-wide/16 v0, -0x1

    .line 30
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->fileSize:J

    .line 31
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->duration:J

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->height:I

    .line 33
    iput v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->width:I

    .line 34
    iput v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverWidth:I

    .line 35
    iput v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverHeight:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgImageFileType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIIII)V
    .locals 4

    move-object v0, p0

    move-object v1, p10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v2, Lcom/alibaba/android/ark/AIMMsgImageFileType;->IMAGE_FILE_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    iput-object v2, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverFileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->fileSize:J

    .line 4
    iput-wide v2, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->duration:J

    const/4 v2, -0x1

    .line 5
    iput v2, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->height:I

    .line 6
    iput v2, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->width:I

    .line 7
    iput v2, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverWidth:I

    .line 8
    iput v2, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverHeight:I

    move-object v2, p1

    .line 9
    iput-object v2, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->localPath:Ljava/lang/String;

    move-object v2, p2

    .line 10
    iput-object v2, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->uploadPath:Ljava/lang/String;

    move-object v2, p3

    .line 11
    iput-object v2, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->mimeType:Ljava/lang/String;

    move-object v2, p4

    .line 12
    iput-object v2, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->url:Ljava/lang/String;

    move-object v2, p5

    .line 13
    iput-object v2, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->mediaId:Ljava/lang/String;

    move-object v2, p6

    .line 14
    iput-object v2, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverLocalPath:Ljava/lang/String;

    move-object v2, p7

    .line 15
    iput-object v2, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverUploadPath:Ljava/lang/String;

    move-object v2, p8

    .line 16
    iput-object v2, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverUrl:Ljava/lang/String;

    move-object v2, p9

    .line 17
    iput-object v2, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverMediaId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverFileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    :cond_0
    move-object v1, p11

    .line 19
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverMimeType:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 20
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->fileName:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 21
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->fileType:Ljava/lang/String;

    move-wide/from16 v1, p14

    .line 22
    iput-wide v1, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->fileSize:J

    move-wide/from16 v1, p16

    .line 23
    iput-wide v1, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->duration:J

    move/from16 v1, p18

    .line 24
    iput v1, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->height:I

    move/from16 v1, p19

    .line 25
    iput v1, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->width:I

    move/from16 v1, p20

    .line 26
    iput v1, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverWidth:I

    move/from16 v1, p21

    .line 27
    iput v1, v0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverHeight:I

    return-void
.end method


# virtual methods
.method public getCoverFileType()Lcom/alibaba/android/ark/AIMMsgImageFileType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverFileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 3
    return-object v0
.end method

.method public getCoverHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverHeight:I

    .line 3
    return v0
.end method

.method public getCoverLocalPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverLocalPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCoverMediaId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverMediaId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCoverMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverMimeType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCoverUploadPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverUploadPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverUrl:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCoverWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverWidth:I

    .line 3
    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->duration:J

    .line 3
    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->fileName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->fileSize:J

    .line 3
    return-wide v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->fileType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->height:I

    .line 3
    return v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->localPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->mediaId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->mimeType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getUploadPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->uploadPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->url:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->width:I

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AIMMsgVideoContent{localPath="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->localPath:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "uploadPath="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->uploadPath:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "mimeType="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->mimeType:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "url="

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->url:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "mediaId="

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->mediaId:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v2, "coverLocalPath="

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverLocalPath:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v2, "coverUploadPath="

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverUploadPath:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, "coverUrl="

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverUrl:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v2, "coverMediaId="

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverMediaId:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v2, "coverFileType="

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverFileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, "coverMimeType="

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverMimeType:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v2, "fileName="

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->fileName:Ljava/lang/String;

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v2, "fileType="

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->fileType:Ljava/lang/String;

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v2, "fileSize="

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->fileSize:J

    .line 184
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v2, "duration="

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->duration:J

    .line 197
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v2, "height="

    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget v2, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->height:I

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v2, "width="

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget v2, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->width:I

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v2, "coverWidth="

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget v2, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverWidth:I

    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, "coverHeight="

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget v1, p0, Lcom/alibaba/android/ark/AIMMsgVideoContent;->coverHeight:I

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, "}"

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v0

    .line 261
    return-object v0
.end method
