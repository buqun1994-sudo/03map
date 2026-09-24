.class public final Lcom/alibaba/android/ark/AIMSearchGroupParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public endTime:J

.field public isAsc:Z

.field public keyword:Ljava/lang/String;

.field public maxNum:I

.field public offset:I

.field public startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->offset:I

    const/16 v0, 0x14

    .line 10
    iput v0, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->maxNum:I

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->startTime:J

    const-wide v0, 0x7fffffffffffffffL

    .line 12
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->endTime:J

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->isAsc:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->keyword:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->offset:I

    .line 4
    iput p3, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->maxNum:I

    .line 5
    iput-wide p4, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->startTime:J

    .line 6
    iput-wide p6, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->endTime:J

    .line 7
    iput-boolean p8, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->isAsc:Z

    return-void
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->endTime:J

    .line 3
    return-wide v0
.end method

.method public getIsAsc()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->isAsc:Z

    .line 3
    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->keyword:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMaxNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->maxNum:I

    .line 3
    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->offset:I

    .line 3
    return v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->startTime:J

    .line 3
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AIMSearchGroupParams{keyword="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->keyword:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "offset="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v2, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->offset:I

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "maxNum="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget v2, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->maxNum:I

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "startTime="

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->startTime:J

    .line 54
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "endTime="

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->endTime:J

    .line 67
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "isAsc="

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-boolean v1, p0, Lcom/alibaba/android/ark/AIMSearchGroupParams;->isAsc:Z

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
