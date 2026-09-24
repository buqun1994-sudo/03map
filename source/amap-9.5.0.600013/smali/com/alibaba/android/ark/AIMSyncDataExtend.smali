.class public final Lcom/alibaba/android/ark/AIMSyncDataExtend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x77932a52409db1e6L


# instance fields
.field public isFailover:Z

.field public minCreateTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMSyncDataExtend;->minCreateTime:J

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/alibaba/android/ark/AIMSyncDataExtend;->isFailover:Z

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/alibaba/android/ark/AIMSyncDataExtend;->minCreateTime:J

    .line 3
    iput-boolean p3, p0, Lcom/alibaba/android/ark/AIMSyncDataExtend;->isFailover:Z

    return-void
.end method


# virtual methods
.method public getIsFailover()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/ark/AIMSyncDataExtend;->isFailover:Z

    .line 3
    return v0
.end method

.method public getMinCreateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSyncDataExtend;->minCreateTime:J

    .line 3
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AIMSyncDataExtend{minCreateTime="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMSyncDataExtend;->minCreateTime:J

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "isFailover="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean v1, p0, Lcom/alibaba/android/ark/AIMSyncDataExtend;->isFailover:Z

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "}"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
