.class public Lcom/amap/location/support/fence/FenceState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATE_FIRST_ENTER:I = 0x2

.field public static final STATE_FIRST_EXIT:I = 0x5

.field public static final STATE_IN:I = 0x3

.field public static final STATE_OUT:I = 0x0

.field public static final STATE_WAIT_ENTER:I = 0x1

.field public static final STATE_WAIT_EXIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "fencestate"


# instance fields
.field private final mCandidateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/location/support/fence/RectangleFence;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFence:Lcom/amap/location/support/fence/RectangleFence;

.field private mEnterFenceTimes:I

.field private mEnterNum:I

.field private final mEnterNumConst:I

.field private mExitFenceTimes:I

.field private mExitNum:I

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/amap/location/support/fence/FenceState;->mEnterFenceTimes:I

    .line 11
    iput v0, p0, Lcom/amap/location/support/fence/FenceState;->mExitFenceTimes:I

    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/location/support/fence/FenceState;->mCandidateList:Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/amap/location/support/fence/FenceState;->mName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 14
    iput p1, p0, Lcom/amap/location/support/fence/FenceState;->mEnterNum:I

    .line 15
    iput p1, p0, Lcom/amap/location/support/fence/FenceState;->mExitNum:I

    .line 16
    iput p1, p0, Lcom/amap/location/support/fence/FenceState;->mEnterNumConst:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/location/support/fence/FenceState;->mEnterFenceTimes:I

    .line 3
    iput v0, p0, Lcom/amap/location/support/fence/FenceState;->mExitFenceTimes:I

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/location/support/fence/FenceState;->mCandidateList:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/amap/location/support/fence/FenceState;->mName:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/amap/location/support/fence/FenceState;->mEnterNum:I

    .line 7
    iput p3, p0, Lcom/amap/location/support/fence/FenceState;->mExitNum:I

    .line 8
    iput p2, p0, Lcom/amap/location/support/fence/FenceState;->mEnterNumConst:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/location/support/fence/FenceState;->mEnterFenceTimes:I

    .line 4
    iput v0, p0, Lcom/amap/location/support/fence/FenceState;->mExitFenceTimes:I

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/amap/location/support/fence/FenceState;->mCurrentFence:Lcom/amap/location/support/fence/RectangleFence;

    .line 9
    iget v0, p0, Lcom/amap/location/support/fence/FenceState;->mEnterNumConst:I

    .line 11
    iput v0, p0, Lcom/amap/location/support/fence/FenceState;->mEnterNum:I

    .line 13
    return-void
.end method

.method public getCandidateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/location/support/fence/RectangleFence;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/fence/FenceState;->mCandidateList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getCurrentFence()Lcom/amap/location/support/fence/RectangleFence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/fence/FenceState;->mCurrentFence:Lcom/amap/location/support/fence/RectangleFence;

    .line 3
    return-object v0
.end method

.method public getCurrentState(DD)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/fence/FenceState;->mCurrentFence:Lcom/amap/location/support/fence/RectangleFence;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amap/location/support/fence/RectangleFence;->isIn(DD)Z

    .line 9
    move-result p1

    .line 10
    const p2, 0x1ae3a

    .line 13
    const/4 p3, 0x1

    .line 14
    if-eqz p1, :cond_3

    .line 16
    iput v1, p0, Lcom/amap/location/support/fence/FenceState;->mExitFenceTimes:I

    .line 18
    iget p1, p0, Lcom/amap/location/support/fence/FenceState;->mEnterFenceTimes:I

    .line 20
    const p4, 0x7fffffff

    .line 23
    if-ge p1, p4, :cond_0

    .line 25
    add-int/2addr p1, p3

    .line 26
    iput p1, p0, Lcom/amap/location/support/fence/FenceState;->mEnterFenceTimes:I

    .line 28
    :cond_0
    iget p1, p0, Lcom/amap/location/support/fence/FenceState;->mEnterFenceTimes:I

    .line 30
    iget p4, p0, Lcom/amap/location/support/fence/FenceState;->mEnterNum:I

    .line 32
    if-le p1, p4, :cond_1

    .line 34
    const/4 p1, 0x3

    .line 35
    return p1

    .line 36
    :cond_1
    if-ne p1, p4, :cond_2

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    iget-object p3, p0, Lcom/amap/location/support/fence/FenceState;->mName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string p3, ":"

    .line 50
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object p3, p0, Lcom/amap/location/support/fence/FenceState;->mCurrentFence:Lcom/amap/location/support/fence/RectangleFence;

    .line 55
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string p3, " in"

    .line 60
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 70
    move-result-object p1

    .line 71
    invoke-static {p2, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 74
    const/4 p1, 0x2

    .line 75
    return p1

    .line 76
    :cond_2
    return p3

    .line 77
    :cond_3
    iget p1, p0, Lcom/amap/location/support/fence/FenceState;->mExitFenceTimes:I

    .line 79
    add-int/2addr p1, p3

    .line 80
    iput p1, p0, Lcom/amap/location/support/fence/FenceState;->mExitFenceTimes:I

    .line 82
    iget p3, p0, Lcom/amap/location/support/fence/FenceState;->mEnterFenceTimes:I

    .line 84
    iget p4, p0, Lcom/amap/location/support/fence/FenceState;->mEnterNum:I

    .line 86
    if-lt p3, p4, :cond_5

    .line 88
    iget p3, p0, Lcom/amap/location/support/fence/FenceState;->mExitNum:I

    .line 90
    if-lt p1, p3, :cond_4

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    iget-object p3, p0, Lcom/amap/location/support/fence/FenceState;->mName:Ljava/lang/String;

    .line 99
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string p3, " out"

    .line 104
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 114
    move-result-object p1

    .line 115
    invoke-static {p2, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 118
    invoke-virtual {p0}, Lcom/amap/location/support/fence/FenceState;->clear()V

    .line 121
    const/4 p1, 0x5

    .line 122
    return p1

    .line 123
    :cond_4
    const/4 p1, 0x4

    .line 124
    return p1

    .line 125
    :cond_5
    invoke-virtual {p0}, Lcom/amap/location/support/fence/FenceState;->clear()V

    .line 128
    :cond_6
    return v1
.end method

.method public getEnterNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/support/fence/FenceState;->mEnterNum:I

    .line 3
    return v0
.end method

.method public getState(DD)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/fence/FenceState;->mCandidateList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/amap/location/support/fence/FenceState;->mCurrentFence:Lcom/amap/location/support/fence/RectangleFence;

    .line 13
    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amap/location/support/fence/FenceState;->getCurrentState(DD)I

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/amap/location/support/fence/FenceState;->mCandidateList:Ljava/util/List;

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_5

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/amap/location/support/fence/RectangleFence;

    .line 39
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/amap/location/support/fence/RectangleFence;->isIn(DD)Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 45
    iput-object v2, p0, Lcom/amap/location/support/fence/FenceState;->mCurrentFence:Lcom/amap/location/support/fence/RectangleFence;

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amap/location/support/fence/FenceState;->getCurrentState(DD)I

    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    :cond_2
    return v0

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/amap/location/support/fence/FenceState;->mCandidateList:Ljava/util/List;

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v0

    .line 59
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_5

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lcom/amap/location/support/fence/RectangleFence;

    .line 71
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/amap/location/support/fence/RectangleFence;->isIn(DD)Z

    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_4

    .line 77
    iput-object v2, p0, Lcom/amap/location/support/fence/FenceState;->mCurrentFence:Lcom/amap/location/support/fence/RectangleFence;

    .line 79
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amap/location/support/fence/FenceState;->getCurrentState(DD)I

    .line 82
    move-result p1

    .line 83
    return p1

    .line 84
    :cond_5
    return v1
.end method

.method public isIn(DD)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amap/location/support/fence/FenceState;->getState(DD)I

    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x2

    .line 6
    if-eq p1, p2, :cond_1

    .line 8
    const/4 p2, 0x3

    .line 9
    if-ne p1, p2, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    :goto_1
    return p1
.end method

.method public setEasyEnter()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/fence/FenceState;->mCurrentFence:Lcom/amap/location/support/fence/RectangleFence;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/amap/location/support/fence/FenceState;->mEnterNum:I

    .line 8
    :cond_0
    return-void
.end method

.method public updateFenceList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amap/location/support/fence/RectangleFence;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/support/fence/FenceState;->mCandidateList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/amap/location/support/fence/FenceState;->mCandidateList:Ljava/util/List;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 16
    :goto_0
    return-void
.end method
