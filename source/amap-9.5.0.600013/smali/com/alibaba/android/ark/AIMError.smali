.class public final Lcom/alibaba/android/ark/AIMError;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x73ed9df20fe47d1bL


# instance fields
.field public code:I

.field public developerMessage:Ljava/lang/String;

.field public domain:Lcom/alibaba/android/ark/AIMErrDomain;

.field public extraInfo:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public scope:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/alibaba/android/ark/AIMErrDomain;->AIM_ERR_DOMAIN_CLIENT:Lcom/alibaba/android/ark/AIMErrDomain;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMError;->domain:Lcom/alibaba/android/ark/AIMErrDomain;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/alibaba/android/ark/AIMError;->code:I

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ark/AIMErrDomain;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/alibaba/android/ark/AIMErrDomain;->AIM_ERR_DOMAIN_CLIENT:Lcom/alibaba/android/ark/AIMErrDomain;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMError;->domain:Lcom/alibaba/android/ark/AIMErrDomain;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/alibaba/android/ark/AIMError;->code:I

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/alibaba/android/ark/AIMError;->domain:Lcom/alibaba/android/ark/AIMErrDomain;

    .line 5
    :cond_0
    iput p2, p0, Lcom/alibaba/android/ark/AIMError;->code:I

    .line 6
    iput-object p3, p0, Lcom/alibaba/android/ark/AIMError;->developerMessage:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/alibaba/android/ark/AIMError;->reason:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/alibaba/android/ark/AIMError;->extraInfo:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lcom/alibaba/android/ark/AIMError;->scope:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMError;->code:I

    .line 3
    return v0
.end method

.method public getDeveloperMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMError;->developerMessage:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getDomain()Lcom/alibaba/android/ark/AIMErrDomain;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMError;->domain:Lcom/alibaba/android/ark/AIMErrDomain;

    .line 3
    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMError;->extraInfo:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMError;->reason:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMError;->scope:Ljava/lang/String;

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
    const-string v1, "AIMError{domain="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMError;->domain:Lcom/alibaba/android/ark/AIMErrDomain;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "code="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v2, p0, Lcom/alibaba/android/ark/AIMError;->code:I

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "developerMessage="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMError;->developerMessage:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "reason="

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMError;->reason:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "extraInfo="

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMError;->extraInfo:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "scope="

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMError;->scope:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "}"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method
