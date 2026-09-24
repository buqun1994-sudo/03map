.class public Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_VALUE:I = 0x63


# instance fields
.field private mConfigMode:I

.field private mCrossControl:I

.field private mDayNightMode:I

.field private mFullView:I

.field private mLevel:I

.field private mLevelStatus:I

.field private mMiniMap:I

.field private mViewMode:I

.field private mWindowId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mWindowId:I

    .line 7
    const/16 v0, 0x63

    .line 9
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mViewMode:I

    .line 11
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mLevel:I

    .line 13
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mCrossControl:I

    .line 15
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mMiniMap:I

    .line 17
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mFullView:I

    .line 19
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mConfigMode:I

    .line 21
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mLevelStatus:I

    .line 23
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mDayNightMode:I

    .line 25
    return-void
.end method


# virtual methods
.method public getConfigMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mConfigMode:I

    .line 3
    return v0
.end method

.method public getCrossControl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mCrossControl:I

    .line 3
    return v0
.end method

.method public getDayNightMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mDayNightMode:I

    .line 3
    return v0
.end method

.method public getFullView()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mFullView:I

    .line 3
    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mLevel:I

    .line 3
    return v0
.end method

.method public getLevelStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mLevelStatus:I

    .line 3
    return v0
.end method

.method public getMiniMap()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mMiniMap:I

    .line 3
    return v0
.end method

.method public getViewMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mViewMode:I

    .line 3
    return v0
.end method

.method public getWindowId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mWindowId:I

    .line 3
    return v0
.end method

.method public setConfigMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mConfigMode:I

    .line 3
    return-void
.end method

.method public setCrossControl(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mCrossControl:I

    .line 3
    return-void
.end method

.method public setDayNightMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mDayNightMode:I

    .line 3
    return-void
.end method

.method public setFullView(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mFullView:I

    .line 3
    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mLevel:I

    .line 3
    return-void
.end method

.method public setLevelStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mLevelStatus:I

    .line 3
    return-void
.end method

.method public setMiniMap(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mMiniMap:I

    .line 3
    return-void
.end method

.method public setViewMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mViewMode:I

    .line 3
    return-void
.end method

.method public setWindowId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mWindowId:I

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "ExtScreenControlData{mWindowId="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mWindowId:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", mViewMode="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mViewMode:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", mLevel="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mLevel:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", mCrossControl="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mCrossControl:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", mMiniMap="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mMiniMap:I

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", mFullView="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mFullView:I

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", mConfigMode="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mConfigMode:I

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", mLevelStatus="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mLevelStatus:I

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", mDayNightMode="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->mDayNightMode:I

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    const/16 v1, 0x7d

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method
