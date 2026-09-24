.class public Lul0$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lul0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lem0$b;

.field public final b:Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/concurrent/locks/ReentrantLock;

.field public e:I

.field public final synthetic f:Lul0;


# direct methods
.method public constructor <init>(Lul0;Lem0$b;Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lul0$a;->f:Lul0;

    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lul0$a;->c:Ljava/util/ArrayList;

    .line 13
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 18
    iput-object p1, p0, Lul0$a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lul0$a;->e:I

    .line 23
    iput-object p2, p0, Lul0$a;->a:Lem0$b;

    .line 25
    iput-object p3, p0, Lul0$a;->b:Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

    .line 27
    return-void
.end method


# virtual methods
.method public final a([Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;)[Lcom/autonavi/amapauto/widget/jni/LightBarItem;
    .locals 6

    .line 1
    if-eqz p1, :cond_1

    .line 3
    array-length v0, p1

    .line 4
    new-array v1, v0, [Lcom/autonavi/amapauto/widget/jni/LightBarItem;

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    new-instance v3, Lcom/autonavi/amapauto/widget/jni/LightBarItem;

    .line 11
    invoke-direct {v3}, Lcom/autonavi/amapauto/widget/jni/LightBarItem;-><init>()V

    .line 14
    aget-object v4, p1, v2

    .line 16
    iget v5, v4, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->status:I

    .line 18
    iput v5, v3, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->status:I

    .line 20
    iget v4, v4, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->distance:I

    .line 22
    iput v4, v3, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->length:I

    .line 24
    aput-object v3, v1, v2

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v1

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method public b([Lcom/autonavi/amapauto/widget/jni/LightBarItem;I)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-nez p1, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1

    .line 10
    :cond_0
    array-length v1, p1

    .line 11
    const/4 v2, 0x1

    .line 12
    sub-int/2addr v1, v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    if-gt v3, v1, :cond_8

    .line 17
    aget-object v5, p1, v3

    .line 19
    iget v5, v5, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->length:I

    .line 21
    add-int/2addr v4, v5

    .line 22
    iget-object v6, p0, Lul0$a;->f:Lul0;

    .line 24
    invoke-static {v6}, Lul0;->a(Lul0;)I

    .line 27
    move-result v6

    .line 28
    mul-int v5, v5, v6

    .line 30
    div-int/2addr v5, p2

    .line 31
    if-gtz v5, :cond_1

    .line 33
    const/4 v5, 0x1

    .line 34
    :cond_1
    aget-object v6, p1, v3

    .line 36
    iget v6, v6, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->status:I

    .line 38
    if-eqz v6, :cond_7

    .line 40
    if-eq v6, v2, :cond_6

    .line 42
    const/4 v7, 0x2

    .line 43
    if-eq v6, v7, :cond_5

    .line 45
    const/4 v7, 0x3

    .line 46
    if-eq v6, v7, :cond_4

    .line 48
    const/4 v7, 0x4

    .line 49
    if-eq v6, v7, :cond_3

    .line 51
    const/4 v7, 0x5

    .line 52
    if-eq v6, v7, :cond_2

    .line 54
    sget-object v6, Lnm0;->f:Lnm0;

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    sget-object v6, Lnm0;->p:Lnm0;

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    sget-object v6, Lnm0;->n:Lnm0;

    .line 62
    goto :goto_1

    .line 63
    :cond_4
    sget-object v6, Lnm0;->l:Lnm0;

    .line 65
    goto :goto_1

    .line 66
    :cond_5
    sget-object v6, Lnm0;->j:Lnm0;

    .line 68
    goto :goto_1

    .line 69
    :cond_6
    sget-object v6, Lnm0;->h:Lnm0;

    .line 71
    goto :goto_1

    .line 72
    :cond_7
    sget-object v6, Lnm0;->f:Lnm0;

    .line 74
    :goto_1
    iget-object v7, p0, Lul0$a;->f:Lul0;

    .line 76
    invoke-static {v7}, Lul0;->b(Lul0;)I

    .line 79
    move-result v7

    .line 80
    invoke-virtual {p0, v5, v7, v6}, Lul0$a;->c(IILnm0;)Landroid/graphics/Bitmap;

    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v3, v3, 0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_8
    if-ge v4, p2, :cond_a

    .line 92
    sub-int p1, p2, v4

    .line 94
    iget-object v1, p0, Lul0$a;->f:Lul0;

    .line 96
    invoke-static {v1}, Lul0;->a(Lul0;)I

    .line 99
    move-result v1

    .line 100
    mul-int p1, p1, v1

    .line 102
    div-int/2addr p1, p2

    .line 103
    if-gtz p1, :cond_9

    .line 105
    const/4 p1, 0x1

    .line 106
    :cond_9
    iget-object p2, p0, Lul0$a;->f:Lul0;

    .line 108
    invoke-static {p2}, Lul0;->b(Lul0;)I

    .line 111
    move-result p2

    .line 112
    sget-object v1, Lnm0;->h:Lnm0;

    .line 114
    invoke-virtual {p0, p1, p2, v1}, Lul0$a;->c(IILnm0;)Landroid/graphics/Bitmap;

    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_a
    iget p1, p0, Lul0$a;->e:I

    .line 123
    iget-object p2, p0, Lul0$a;->f:Lul0;

    .line 125
    invoke-static {p2}, Lul0;->a(Lul0;)I

    .line 128
    move-result p2

    .line 129
    if-ge p1, p2, :cond_c

    .line 131
    iget-object p1, p0, Lul0$a;->f:Lul0;

    .line 133
    invoke-static {p1}, Lul0;->a(Lul0;)I

    .line 136
    move-result p1

    .line 137
    iget p2, p0, Lul0$a;->e:I

    .line 139
    sub-int/2addr p1, p2

    .line 140
    if-gtz p1, :cond_b

    .line 142
    goto :goto_2

    .line 143
    :cond_b
    move v2, p1

    .line 144
    :goto_2
    iget-object p1, p0, Lul0$a;->f:Lul0;

    .line 146
    invoke-static {p1}, Lul0;->b(Lul0;)I

    .line 149
    move-result p1

    .line 150
    sget-object p2, Lnm0;->h:Lnm0;

    .line 152
    invoke-virtual {p0, v2, p1, p2}, Lul0$a;->c(IILnm0;)Landroid/graphics/Bitmap;

    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_c
    invoke-virtual {p0, v0}, Lul0$a;->e(Ljava/util/ArrayList;)Landroid/graphics/Bitmap;

    .line 162
    move-result-object p1

    .line 163
    return-object p1
.end method

.method public final c(IILnm0;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget v0, p0, Lul0$a;->e:I

    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lul0$a;->e:I

    .line 6
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 8
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 11
    move-result-object p1

    .line 12
    new-instance p2, Landroid/graphics/Canvas;

    .line 14
    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 17
    invoke-virtual {p3}, Lnm0;->d()I

    .line 20
    move-result v0

    .line 21
    invoke-virtual {p3}, Lnm0;->c()I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {p3}, Lnm0;->b()I

    .line 28
    move-result p3

    .line 29
    const/16 v2, 0xff

    .line 31
    invoke-virtual {p2, v2, v0, v1, p3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 34
    return-object p1
.end method

.method public varargs d([Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lul0$a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    iget-object p1, p0, Lul0$a;->b:Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->totaldistance:I

    .line 12
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->routeTMCSegmentData:[Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;

    .line 14
    invoke-virtual {p0, p1}, Lul0$a;->a([Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;)[Lcom/autonavi/amapauto/widget/jni/LightBarItem;

    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 20
    if-lez v0, :cond_0

    .line 22
    invoke-virtual {p0, p1, v0}, Lul0$a;->b([Lcom/autonavi/amapauto/widget/jni/LightBarItem;I)Landroid/graphics/Bitmap;

    .line 25
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz p1, :cond_0

    .line 28
    iget-object v0, p0, Lul0$a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    return-object p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    iget-object v0, p0, Lul0$a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 40
    throw p1

    .line 41
    :catch_0
    :cond_0
    iget-object p1, p0, Lul0$a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 46
    const/4 p1, 0x0

    .line 47
    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;

    .line 3
    invoke-virtual {p0, p1}, Lul0$a;->d([Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;)Landroid/graphics/Bitmap;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final e(Ljava/util/ArrayList;)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Landroid/graphics/Bitmap;

    .line 8
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lul0$a;->f:Lul0;

    .line 14
    invoke-static {v2}, Lul0;->a(Lul0;)I

    .line 17
    move-result v2

    .line 18
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 20
    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Landroid/graphics/Canvas;

    .line 26
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x1

    .line 34
    sub-int/2addr v3, v4

    .line 35
    const/4 v5, 0x0

    .line 36
    :goto_0
    if-gt v0, v3, :cond_1

    .line 38
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Landroid/graphics/Bitmap;

    .line 44
    if-eqz v6, :cond_0

    .line 46
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 49
    move-result v7

    .line 50
    if-nez v7, :cond_0

    .line 52
    int-to-float v7, v5

    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 58
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 61
    move-result v7

    .line 62
    add-int/2addr v5, v7

    .line 63
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lul0$a;->f:Lul0;

    .line 71
    invoke-static {p1}, Lul0;->a(Lul0;)I

    .line 74
    move-result p1

    .line 75
    if-le v5, p1, :cond_2

    .line 77
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 80
    move-result p1

    .line 81
    int-to-double v2, p1

    .line 82
    const-wide v5, 0x3feccccccccccccdL    # 0.9

    .line 87
    mul-double v2, v2, v5

    .line 89
    double-to-int p1, v2

    .line 90
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 93
    move-result v0

    .line 94
    invoke-static {v1, p1, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 97
    move-result-object p1

    .line 98
    return-object p1

    .line 99
    :cond_2
    return-object v1
.end method

.method public f(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const/4 p1, 0x0

    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    iget-object v0, p0, Lul0$a;->a:Lem0$b;

    .line 15
    if-eqz v0, :cond_2

    .line 17
    invoke-interface {v0, p1}, Lem0$b;->b(Landroid/graphics/Bitmap;)V

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p0, Lul0$a;->a:Lem0$b;

    .line 23
    if-eqz p1, :cond_2

    .line 25
    invoke-interface {p1}, Lem0$b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    nop

    .line 30
    iget-object p1, p0, Lul0$a;->a:Lem0$b;

    .line 32
    if-eqz p1, :cond_2

    .line 34
    invoke-interface {p1}, Lem0$b;->a()V

    .line 37
    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 3
    invoke-virtual {p0, p1}, Lul0$a;->f(Landroid/graphics/Bitmap;)V

    .line 6
    return-void
.end method
