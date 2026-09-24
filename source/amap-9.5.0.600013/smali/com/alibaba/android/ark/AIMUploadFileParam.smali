.class public final Lcom/alibaba/android/ark/AIMUploadFileParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x630bb891af791d48L


# instance fields
.field public authType:Lcom/alibaba/android/ark/AIMFileAuthType;

.field public bizType:Ljava/lang/String;

.field public expiredTime:I

.field public mimeType:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/alibaba/android/ark/AIMFileAuthType;->STRICT_AUTH:Lcom/alibaba/android/ark/AIMFileAuthType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->authType:Lcom/alibaba/android/ark/AIMFileAuthType;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->expiredTime:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMFileAuthType;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/alibaba/android/ark/AIMFileAuthType;->STRICT_AUTH:Lcom/alibaba/android/ark/AIMFileAuthType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->authType:Lcom/alibaba/android/ark/AIMFileAuthType;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->expiredTime:I

    .line 4
    iput-object p1, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->path:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->mimeType:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->bizType:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 7
    iput-object p4, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->authType:Lcom/alibaba/android/ark/AIMFileAuthType;

    .line 8
    :cond_0
    iput p5, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->expiredTime:I

    return-void
.end method


# virtual methods
.method public getAuthType()Lcom/alibaba/android/ark/AIMFileAuthType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->authType:Lcom/alibaba/android/ark/AIMFileAuthType;

    .line 3
    return-object v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->bizType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getExpiredTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->expiredTime:I

    .line 3
    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->mimeType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->path:Ljava/lang/String;

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
    const-string v1, "AIMUploadFileParam{path="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->path:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "mimeType="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->mimeType:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "bizType="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->bizType:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "authType="

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->authType:Lcom/alibaba/android/ark/AIMFileAuthType;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "expiredTime="

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v1, p0, Lcom/alibaba/android/ark/AIMUploadFileParam;->expiredTime:I

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "}"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    return-object v0
.end method
