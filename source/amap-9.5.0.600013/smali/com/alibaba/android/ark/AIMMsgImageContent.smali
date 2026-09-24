.class public final Lcom/alibaba/android/ark/AIMMsgImageContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2fd60dbac68079f6L


# instance fields
.field public blurredData:[B

.field public extension:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fileName:Ljava/lang/String;

.field public fileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

.field public height:I

.field public localPath:Ljava/lang/String;

.field public mediaId:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public orientation:Lcom/alibaba/android/ark/AIMMsgOrientation;

.field public originalUrl:Ljava/lang/String;

.field public size:I

.field public thumbnailUrl:Ljava/lang/String;

.field public type:Lcom/alibaba/android/ark/AIMMsgImageCompressType;

.field public uploadPath:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->height:I

    .line 25
    iput v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->width:I

    .line 26
    iput v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->size:I

    .line 27
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgImageCompressType;->IMAGE_COMPRESS_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgImageCompressType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->type:Lcom/alibaba/android/ark/AIMMsgImageCompressType;

    .line 28
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgImageFileType;->IMAGE_FILE_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->fileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 29
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgOrientation;->ORIENTATION_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgOrientation;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->orientation:Lcom/alibaba/android/ark/AIMMsgOrientation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;IIILcom/alibaba/android/ark/AIMMsgImageCompressType;Lcom/alibaba/android/ark/AIMMsgImageFileType;Lcom/alibaba/android/ark/AIMMsgOrientation;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Lcom/alibaba/android/ark/AIMMsgImageCompressType;",
            "Lcom/alibaba/android/ark/AIMMsgImageFileType;",
            "Lcom/alibaba/android/ark/AIMMsgOrientation;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p12

    move-object/from16 v2, p13

    move-object/from16 v3, p14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, -0x1

    .line 2
    iput v4, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->height:I

    .line 3
    iput v4, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->width:I

    .line 4
    iput v4, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->size:I

    .line 5
    sget-object v4, Lcom/alibaba/android/ark/AIMMsgImageCompressType;->IMAGE_COMPRESS_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgImageCompressType;

    iput-object v4, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->type:Lcom/alibaba/android/ark/AIMMsgImageCompressType;

    .line 6
    sget-object v4, Lcom/alibaba/android/ark/AIMMsgImageFileType;->IMAGE_FILE_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    iput-object v4, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->fileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 7
    sget-object v4, Lcom/alibaba/android/ark/AIMMsgOrientation;->ORIENTATION_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgOrientation;

    iput-object v4, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->orientation:Lcom/alibaba/android/ark/AIMMsgOrientation;

    move-object v4, p1

    .line 8
    iput-object v4, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->localPath:Ljava/lang/String;

    move-object v4, p2

    .line 9
    iput-object v4, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->uploadPath:Ljava/lang/String;

    move-object v4, p3

    .line 10
    iput-object v4, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->mimeType:Ljava/lang/String;

    move-object v4, p4

    .line 11
    iput-object v4, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->originalUrl:Ljava/lang/String;

    move-object v4, p5

    .line 12
    iput-object v4, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->thumbnailUrl:Ljava/lang/String;

    move-object v4, p6

    .line 13
    iput-object v4, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->blurredData:[B

    move-object v4, p7

    .line 14
    iput-object v4, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->mediaId:Ljava/lang/String;

    move-object v4, p8

    .line 15
    iput-object v4, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->fileName:Ljava/lang/String;

    move v4, p9

    .line 16
    iput v4, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->height:I

    move v4, p10

    .line 17
    iput v4, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->width:I

    move/from16 v4, p11

    .line 18
    iput v4, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->size:I

    if-eqz v1, :cond_0

    .line 19
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->type:Lcom/alibaba/android/ark/AIMMsgImageCompressType;

    :cond_0
    if-eqz v2, :cond_1

    .line 20
    iput-object v2, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->fileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    :cond_1
    if-eqz v3, :cond_2

    .line 21
    iput-object v3, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->orientation:Lcom/alibaba/android/ark/AIMMsgOrientation;

    :cond_2
    move-object/from16 v1, p15

    .line 22
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMMsgImageContent;->extension:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getBlurredData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->blurredData:[B

    .line 3
    return-object v0
.end method

.method public getExtension()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->extension:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->fileName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileType()Lcom/alibaba/android/ark/AIMMsgImageFileType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->fileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 3
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->height:I

    .line 3
    return v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->localPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->mediaId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->mimeType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getOrientation()Lcom/alibaba/android/ark/AIMMsgOrientation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->orientation:Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 3
    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->originalUrl:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->size:I

    .line 3
    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->thumbnailUrl:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getType()Lcom/alibaba/android/ark/AIMMsgImageCompressType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->type:Lcom/alibaba/android/ark/AIMMsgImageCompressType;

    .line 3
    return-object v0
.end method

.method public getUploadPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->uploadPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->width:I

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AIMMsgImageContent{localPath="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->localPath:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->uploadPath:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "mimeType="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->mimeType:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "originalUrl="

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->originalUrl:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "thumbnailUrl="

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->thumbnailUrl:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v2, "blurredData="

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->blurredData:[B

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v2, "mediaId="

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->mediaId:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, "fileName="

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->fileName:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v2, "height="

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v2, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->height:I

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v2, "width="

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v2, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->width:I

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, "size="

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget v2, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->size:I

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v2, "type="

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->type:Lcom/alibaba/android/ark/AIMMsgImageCompressType;

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v2, "fileType="

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->fileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v2, "orientation="

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->orientation:Lcom/alibaba/android/ark/AIMMsgOrientation;

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, "extension="

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMMsgImageContent;->extension:Ljava/util/HashMap;

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, "}"

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v0

    .line 209
    return-object v0
.end method
