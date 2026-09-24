.class final Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PRIORITY_EACH_GROUP:I = 0x64

.field public static final PRIORITY_GROUP:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ANet-ThreadPool"


# instance fields
.field private mMaxParallelNumber:[I

.field private mNowParallelNumber:[I


# direct methods
.method public constructor <init>([I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-eqz p1, :cond_1

    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x5

    .line 8
    if-ne v0, v1, :cond_1

    .line 10
    iput-object p1, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->mMaxParallelNumber:[I

    .line 12
    new-array v0, v1, [I

    .line 14
    iput-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->mNowParallelNumber:[I

    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    array-length v2, p1

    .line 19
    if-ge v1, v2, :cond_0

    .line 21
    iget-object v2, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->mNowParallelNumber:[I

    .line 23
    aput v0, v2, v1

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    const-string v0, "parallelNumber length must be 5"

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1
.end method


# virtual methods
.method public addSelfByPriority(I)V
    .locals 2

    .line 1
    div-int/lit8 p1, p1, 0x64

    .line 3
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->mNowParallelNumber:[I

    .line 5
    aget v1, v0, p1

    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 9
    aput v1, v0, p1

    .line 11
    return-void
.end method

.method public getMaxParallelNumber()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->mMaxParallelNumber:[I

    .line 3
    return-object v0
.end method

.method public getMaxParallelNumberAllGroup()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->mMaxParallelNumber:[I

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 8
    aget v4, v0, v2

    .line 10
    add-int/2addr v3, v4

    .line 11
    add-int/lit8 v2, v2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return v3
.end method

.method public getParallelNumber()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->mNowParallelNumber:[I

    .line 3
    return-object v0
.end method

.method public isFull(Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;[I[ILjava/lang/String;)Z
    .locals 10

    .line 1
    iget v0, p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->priority:I

    .line 3
    const/16 v1, 0x1f4

    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 8
    const/16 v0, 0x1f3

    .line 10
    iput v0, p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->priority:I

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-gez v0, :cond_1

    .line 15
    iput v2, p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->priority:I

    .line 17
    :cond_1
    :goto_0
    iget v0, p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->priority:I

    .line 19
    div-int/lit8 v1, v0, 0x64

    .line 21
    rem-int/lit8 v3, v0, 0x64

    .line 23
    move v4, v1

    .line 24
    :goto_1
    const/4 v5, 0x1

    .line 25
    if-ltz v4, :cond_3

    .line 27
    aget v6, p3, v4

    .line 29
    aget v7, p2, v4

    .line 31
    if-ge v6, v7, :cond_2

    .line 33
    const/4 v6, 0x1

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_3
    const/4 v6, 0x0

    .line 39
    :goto_2
    const-string v7, ""

    .line 41
    if-eqz v6, :cond_4

    .line 43
    if-eq v4, v1, :cond_4

    .line 45
    mul-int/lit8 v4, v4, 0x64

    .line 47
    add-int/2addr v4, v3

    .line 48
    iput v4, p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->priority:I

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    const-string v3, ",fix prior:"

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget v3, p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->priority:I

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    move-object v1, v7

    .line 71
    :goto_3
    move-object v3, v7

    .line 72
    move-object v4, v3

    .line 73
    :goto_4
    array-length v8, p2

    .line 74
    if-ge v2, v8, :cond_5

    .line 76
    new-instance v8, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    aget v3, p2, v2

    .line 89
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v3, ","

    .line 94
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v8

    .line 101
    new-instance v9, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    aget v4, p3, v2

    .line 114
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v4

    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 126
    move-object v3, v8

    .line 127
    goto :goto_4

    .line 128
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 130
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string p3, "task:"

    .line 138
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object p1, p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->name:Ljava/lang/String;

    .line 143
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string p1, ",isPoolFull:"

    .line 148
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    xor-int/lit8 p1, v6, 0x1

    .line 153
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 156
    const-string p1, ",prior:"

    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string p1, ",max:"

    .line 169
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string p1, "now:"

    .line 177
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object p1

    .line 187
    const-string p2, "ANet-ThreadPool"

    .line 189
    invoke-static {p2, p1}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    xor-int/lit8 p1, v6, 0x1

    .line 194
    return p1
.end method

.method public subSelfByPriority(I)V
    .locals 2

    .line 1
    div-int/lit8 p1, p1, 0x64

    .line 3
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->mNowParallelNumber:[I

    .line 5
    aget v1, v0, p1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 9
    aput v1, v0, p1

    .line 11
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->mNowParallelNumber:[I

    .line 4
    iput-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->mMaxParallelNumber:[I

    .line 6
    return-void
.end method
