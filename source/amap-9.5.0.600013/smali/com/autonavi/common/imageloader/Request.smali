.class public final Lcom/autonavi/common/imageloader/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TOO_LONG_LOG:J


# instance fields
.field public final centerCrop:Z

.field public final centerInside:Z

.field public final config:Landroid/graphics/Bitmap$Config;

.field public final hasRotationPivot:Z

.field id:I

.field public final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field networkPolicy:I

.field public final onlyScaleDown:Z

.field public final priority:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

.field public final purgeable:Z

.field public final resourceId:I

.field public final rotationDegrees:F

.field public final rotationPivotX:F

.field public final rotationPivotY:F

.field public final stableKey:Ljava/lang/String;

.field started:J

.field public final targetHeight:I

.field public final targetWidth:I

.field public final transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/common/imageloader/DrawableFactory;",
            ">;"
        }
    .end annotation
.end field

.field public final uri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    const-wide/16 v1, 0x5

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/autonavi/common/imageloader/Request;->TOO_LONG_LOG:J

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZZLandroid/graphics/Bitmap$Config;Lcom/autonavi/common/imageloader/ImageLoader$Priority;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/autonavi/common/imageloader/DrawableFactory;",
            ">;IIZZZFFFZZ",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/autonavi/common/imageloader/ImageLoader$Priority;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/autonavi/common/imageloader/Request;->uri:Landroid/net/Uri;

    move v1, p2

    .line 3
    iput v1, v0, Lcom/autonavi/common/imageloader/Request;->resourceId:I

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/autonavi/common/imageloader/Request;->stableKey:Ljava/lang/String;

    if-nez p4, :cond_0

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lcom/autonavi/common/imageloader/Request;->transformations:Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/common/imageloader/Request;->transformations:Ljava/util/List;

    :goto_0
    move v1, p5

    .line 7
    iput v1, v0, Lcom/autonavi/common/imageloader/Request;->targetWidth:I

    move v1, p6

    .line 8
    iput v1, v0, Lcom/autonavi/common/imageloader/Request;->targetHeight:I

    move v1, p7

    .line 9
    iput-boolean v1, v0, Lcom/autonavi/common/imageloader/Request;->centerCrop:Z

    move v1, p8

    .line 10
    iput-boolean v1, v0, Lcom/autonavi/common/imageloader/Request;->centerInside:Z

    move v1, p9

    .line 11
    iput-boolean v1, v0, Lcom/autonavi/common/imageloader/Request;->onlyScaleDown:Z

    move v1, p10

    .line 12
    iput v1, v0, Lcom/autonavi/common/imageloader/Request;->rotationDegrees:F

    move v1, p11

    .line 13
    iput v1, v0, Lcom/autonavi/common/imageloader/Request;->rotationPivotX:F

    move v1, p12

    .line 14
    iput v1, v0, Lcom/autonavi/common/imageloader/Request;->rotationPivotY:F

    move v1, p13

    .line 15
    iput-boolean v1, v0, Lcom/autonavi/common/imageloader/Request;->hasRotationPivot:Z

    move/from16 v1, p14

    .line 16
    iput-boolean v1, v0, Lcom/autonavi/common/imageloader/Request;->purgeable:Z

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/autonavi/common/imageloader/Request;->config:Landroid/graphics/Bitmap$Config;

    move-object/from16 v1, p16

    .line 18
    iput-object v1, v0, Lcom/autonavi/common/imageloader/Request;->priority:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    move-object/from16 v1, p17

    .line 19
    iput-object v1, v0, Lcom/autonavi/common/imageloader/Request;->mHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Request;->uri:Landroid/net/Uri;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget v0, p0, Lcom/autonavi/common/imageloader/Request;->resourceId:I

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public hasCustomTransformations()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Request;->transformations:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasSize()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/common/imageloader/Request;->targetWidth:I

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Lcom/autonavi/common/imageloader/Request;->targetHeight:I

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public logId()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/autonavi/common/imageloader/Request;->started:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    sget-wide v2, Lcom/autonavi/common/imageloader/Request;->TOO_LONG_LOG:J

    .line 10
    const/16 v4, 0x2b

    .line 12
    cmp-long v5, v0, v2

    .line 14
    if-lez v5, :cond_0

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/autonavi/common/imageloader/Request;->plainId()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 33
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 36
    move-result-wide v0

    .line 37
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    const/16 v0, 0x73

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/autonavi/common/imageloader/Request;->plainId()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 67
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 70
    move-result-wide v0

    .line 71
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, "ms"

    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    return-object v0
.end method

.method public needsMatrixTransform()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/common/imageloader/Request;->hasSize()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 7
    iget v0, p0, Lcom/autonavi/common/imageloader/Request;->rotationDegrees:F

    .line 9
    const/4 v1, 0x0

    .line 10
    cmpl-float v0, v0, v1

    .line 12
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    return v0
.end method

.method public needsTransformation()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/common/imageloader/Request;->needsMatrixTransform()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/autonavi/common/imageloader/Request;->hasCustomTransformations()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public plainId()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "[R"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/common/imageloader/Request;->id:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const/16 v1, 0x5d

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Request{"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/autonavi/common/imageloader/Request;->resourceId:I

    .line 10
    if-lez v1, :cond_0

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Request;->uri:Landroid/net/Uri;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Request;->transformations:Ljava/util/List;

    .line 23
    const/16 v2, 0x20

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 33
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Request;->transformations:Ljava/util/List;

    .line 35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v1

    .line 39
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/autonavi/common/imageloader/DrawableFactory;

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    invoke-interface {v3}, Lcom/autonavi/common/imageloader/DrawableFactory;->key()Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Request;->stableKey:Ljava/lang/String;

    .line 64
    const/16 v3, 0x29

    .line 66
    if-eqz v1, :cond_2

    .line 68
    const-string v1, " stableKey("

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Request;->stableKey:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    :cond_2
    iget v1, p0, Lcom/autonavi/common/imageloader/Request;->targetWidth:I

    .line 83
    const/16 v4, 0x2c

    .line 85
    if-lez v1, :cond_3

    .line 87
    const-string v1, " resize("

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v1, p0, Lcom/autonavi/common/imageloader/Request;->targetWidth:I

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    iget v1, p0, Lcom/autonavi/common/imageloader/Request;->targetHeight:I

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    :cond_3
    iget-boolean v1, p0, Lcom/autonavi/common/imageloader/Request;->centerCrop:Z

    .line 110
    if-eqz v1, :cond_4

    .line 112
    const-string v1, " centerCrop"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_4
    iget-boolean v1, p0, Lcom/autonavi/common/imageloader/Request;->centerInside:Z

    .line 119
    if-eqz v1, :cond_5

    .line 121
    const-string v1, " centerInside"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_5
    iget v1, p0, Lcom/autonavi/common/imageloader/Request;->rotationDegrees:F

    .line 128
    const/4 v5, 0x0

    .line 129
    cmpl-float v1, v1, v5

    .line 131
    if-eqz v1, :cond_7

    .line 133
    const-string v1, " rotation("

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget v1, p0, Lcom/autonavi/common/imageloader/Request;->rotationDegrees:F

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 143
    iget-boolean v1, p0, Lcom/autonavi/common/imageloader/Request;->hasRotationPivot:Z

    .line 145
    if-eqz v1, :cond_6

    .line 147
    const-string v1, " @ "

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget v1, p0, Lcom/autonavi/common/imageloader/Request;->rotationPivotX:F

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    iget v1, p0, Lcom/autonavi/common/imageloader/Request;->rotationPivotY:F

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 165
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    :cond_7
    iget-boolean v1, p0, Lcom/autonavi/common/imageloader/Request;->purgeable:Z

    .line 170
    if-eqz v1, :cond_8

    .line 172
    const-string v1, " purgeable"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_8
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Request;->config:Landroid/graphics/Bitmap$Config;

    .line 179
    if-eqz v1, :cond_9

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Request;->config:Landroid/graphics/Bitmap$Config;

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    :cond_9
    const/16 v1, 0x7d

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v0

    .line 198
    return-object v0
.end method
