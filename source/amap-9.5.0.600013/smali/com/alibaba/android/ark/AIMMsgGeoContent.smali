.class public final Lcom/alibaba/android/ark/AIMMsgGeoContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2cd6fc540fca71bfL


# instance fields
.field public latitude:D

.field public locationName:Ljava/lang/String;

.field public longitude:D

.field public mimeType:Ljava/lang/String;

.field public picFileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

.field public picHeight:I

.field public picLocalPath:Ljava/lang/String;

.field public picMediaId:Ljava/lang/String;

.field public picUploadPath:Ljava/lang/String;

.field public picUrl:Ljava/lang/String;

.field public picWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgImageFileType;->IMAGE_FILE_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picFileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picWidth:I

    .line 21
    iput v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picHeight:I

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->latitude:D

    .line 23
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->longitude:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgImageFileType;IIDDLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgImageFileType;->IMAGE_FILE_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picFileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picWidth:I

    .line 4
    iput v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picHeight:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->latitude:D

    .line 6
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->longitude:D

    .line 7
    iput-object p1, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picLocalPath:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picUploadPath:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->mimeType:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picUrl:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picMediaId:Ljava/lang/String;

    if-eqz p6, :cond_0

    .line 12
    iput-object p6, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picFileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 13
    :cond_0
    iput p7, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picWidth:I

    .line 14
    iput p8, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picHeight:I

    .line 15
    iput-wide p9, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->latitude:D

    .line 16
    iput-wide p11, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->longitude:D

    .line 17
    iput-object p13, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->locationName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->latitude:D

    .line 3
    return-wide v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->locationName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->longitude:D

    .line 3
    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->mimeType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPicFileType()Lcom/alibaba/android/ark/AIMMsgImageFileType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picFileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 3
    return-object v0
.end method

.method public getPicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picHeight:I

    .line 3
    return v0
.end method

.method public getPicLocalPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picLocalPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPicMediaId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picMediaId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPicUploadPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picUploadPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picUrl:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picWidth:I

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
    const-string v1, "AIMMsgGeoContent{picLocalPath="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picLocalPath:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "picUploadPath="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picUploadPath:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "mimeType="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->mimeType:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "picUrl="

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picUrl:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "picMediaId="

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picMediaId:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v2, "picFileType="

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picFileType:Lcom/alibaba/android/ark/AIMMsgImageFileType;

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v2, "picWidth="

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v2, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picWidth:I

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, "picHeight="

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v2, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->picHeight:I

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v2, "latitude="

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->latitude:D

    .line 119
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v2, "longitude="

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->longitude:D

    .line 132
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, "locationName="

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMMsgGeoContent;->locationName:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, "}"

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 157
    return-object v0
.end method
