.class public Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/openspace/IOpenSpaceDetector;


# instance fields
.field private mFirstStart:Z

.field private final mLocations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/amap/location/support/bean/location/AmapLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mLogger:Ljava/lang/StringBuffer;

.field private mMinDistance:I

.field private mOpenSpace:Z

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 11
    const/16 v0, 0xa

    .line 13
    iput v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mSize:I

    .line 15
    const/16 v0, 0x4c

    .line 17
    iput v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mMinDistance:I

    .line 19
    return-void
.end method


# virtual methods
.method public isOpenSpace()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mOpenSpace:Z

    .line 3
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mOpenSpace:Z

    .line 5
    iget-object v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public setDebugLogger(Ljava/lang/StringBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLogger:Ljava/lang/StringBuffer;

    .line 3
    return-void
.end method

.method public declared-synchronized updateStatus(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v2, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mFirstStart:Z

    .line 8
    const/4 v3, 0x1

    .line 9
    if-nez v2, :cond_0

    .line 11
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 14
    move-result-object v2

    .line 15
    const-string v4, "osdsize"

    .line 17
    iget v5, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mSize:I

    .line 19
    invoke-virtual {v2, v4, v5}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;I)I

    .line 22
    move-result v2

    .line 23
    iput v2, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mSize:I

    .line 25
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 28
    move-result-object v2

    .line 29
    const-string v4, "osdmindis"

    .line 31
    iget v5, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mMinDistance:I

    .line 33
    invoke-virtual {v2, v4, v5}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;I)I

    .line 36
    move-result v2

    .line 37
    iput v2, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mMinDistance:I

    .line 39
    iput-boolean v3, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mFirstStart:Z

    .line 41
    :cond_0
    iget-object v2, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 43
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 46
    move-result v2

    .line 47
    iget v4, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mSize:I

    .line 49
    if-le v2, v4, :cond_1

    .line 51
    iget-object v2, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 53
    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 56
    :cond_1
    iget-object v2, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 58
    invoke-virtual {v2}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 64
    if-eqz v2, :cond_2

    .line 66
    invoke-virtual {v0, v2}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    .line 69
    move-result-wide v4

    .line 70
    iget v2, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mMinDistance:I

    .line 72
    int-to-double v6, v2

    .line 73
    cmpl-double v2, v4, v6

    .line 75
    if-lez v2, :cond_3

    .line 77
    :cond_2
    iget-object v2, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 79
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_3
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 89
    move-result-wide v4

    .line 90
    const-wide/32 v6, 0x927c0

    .line 93
    sub-long/2addr v4, v6

    .line 94
    iget-object v0, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 96
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 99
    move-result v0

    .line 100
    const/4 v2, 0x0

    .line 101
    const/4 v6, 0x3

    .line 102
    if-le v0, v6, :cond_7

    .line 104
    const/4 v0, 0x0

    .line 105
    :goto_0
    iget-object v7, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 107
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    .line 110
    move-result v7

    .line 111
    sub-int/2addr v7, v6

    .line 112
    if-ge v0, v7, :cond_6

    .line 114
    iget-object v7, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 116
    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object v7

    .line 120
    check-cast v7, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 122
    invoke-virtual {v7}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 125
    move-result-wide v7

    .line 126
    cmp-long v9, v7, v4

    .line 128
    if-gez v9, :cond_4

    .line 130
    goto/16 :goto_1

    .line 132
    :cond_4
    iget-object v7, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 134
    add-int/lit8 v8, v0, 0x3

    .line 136
    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 139
    move-result-object v7

    .line 140
    check-cast v7, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 142
    iget-object v9, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 144
    add-int/lit8 v10, v0, 0x2

    .line 146
    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 149
    move-result-object v9

    .line 150
    check-cast v9, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 152
    invoke-virtual {v7, v9}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    .line 155
    move-result-wide v11

    .line 156
    iget-object v7, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 158
    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 161
    move-result-object v7

    .line 162
    check-cast v7, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 164
    iget-object v8, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 166
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 169
    move-result-object v8

    .line 170
    check-cast v8, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 172
    invoke-virtual {v7, v8}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    .line 175
    move-result-wide v7

    .line 176
    iget-object v9, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 178
    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 181
    move-result-object v9

    .line 182
    check-cast v9, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 184
    iget-object v13, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 186
    add-int/lit8 v14, v0, 0x1

    .line 188
    invoke-virtual {v13, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 191
    move-result-object v13

    .line 192
    check-cast v13, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 194
    invoke-virtual {v9, v13}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    .line 197
    move-result-wide v15

    .line 198
    iget-object v9, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 200
    invoke-virtual {v9, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 203
    move-result-object v9

    .line 204
    check-cast v9, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 206
    iget-object v13, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 208
    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 211
    move-result-object v13

    .line 212
    check-cast v13, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 214
    invoke-virtual {v9, v13}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    .line 217
    move-result-wide v13

    .line 218
    iget-object v9, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 220
    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 223
    move-result-object v9

    .line 224
    check-cast v9, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 226
    iget-object v10, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mLocations:Ljava/util/LinkedList;

    .line 228
    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 231
    move-result-object v10

    .line 232
    check-cast v10, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 234
    invoke-virtual {v9, v10}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    .line 237
    move-result-wide v9

    .line 238
    cmpl-double v17, v9, v13

    .line 240
    if-lez v17, :cond_5

    .line 242
    cmpl-double v13, v9, v15

    .line 244
    if-lez v13, :cond_5

    .line 246
    cmpl-double v13, v7, v9

    .line 248
    if-lez v13, :cond_5

    .line 250
    cmpl-double v9, v7, v11

    .line 252
    if-lez v9, :cond_5

    .line 254
    goto :goto_2

    .line 255
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 257
    goto/16 :goto_0

    .line 259
    :cond_6
    const/4 v3, 0x0

    .line 260
    :goto_2
    iput-boolean v3, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mOpenSpace:Z

    .line 262
    goto :goto_3

    .line 263
    :cond_7
    iput-boolean v2, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mOpenSpace:Z

    .line 265
    :goto_3
    sget-boolean v0, Lcom/amap/location/support/AmapContext;->DEBUG:Z

    .line 267
    if-eqz v0, :cond_8

    .line 269
    const-string v0, "osdForRide"

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    .line 273
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    const-string v3, "res:"

    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-boolean v3, v1, Lcom/amap/location/support/openspace/OpenSpaceDetectorForRide;->mOpenSpace:Z

    .line 283
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object v2

    .line 290
    invoke-static {v0, v2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_8
    monitor-exit p0

    .line 294
    return-void

    .line 295
    :catchall_0
    move-exception v0

    .line 296
    monitor-exit p0

    .line 297
    throw v0
.end method
