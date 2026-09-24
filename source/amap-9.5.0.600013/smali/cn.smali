.class public Lcn;
.super Lo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn$c;
    }
.end annotation


# static fields
.field public static final s:Lcn$c;

.field public static t:Lcn$c;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lmr;

.field public c:Z

.field public d:Z

.field public e:Landroid/os/MemoryFile;

.field public f:I

.field public g:I

.field public h:[B

.field public i:I

.field public j:I

.field public k:Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

.field public l:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

.field public m:Landroid/view/Surface;

.field public n:Z

.field public o:Ljava/util/ArrayList;

.field public p:Lnr$a;

.field public q:Landroid/content/ServiceConnection;

.field public r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcn$c;

    .line 3
    const-string v1, "com.autonavi.amapauto.gdarcameraservicedemo"

    .line 5
    const-string v2, "com.autonavi.amapauto.gdarcameraservice"

    .line 7
    invoke-direct {v0, v1, v2}, Lcn$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sput-object v0, Lcn;->s:Lcn$c;

    .line 12
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcn;->t:Lcn$c;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lo;-><init>()V

    .line 4
    const-string v0, "com.autonavi.amapauto"

    .line 6
    iput-object v0, p0, Lcn;->a:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcn;->e:Landroid/os/MemoryFile;

    .line 11
    const/16 v1, 0x500

    .line 13
    iput v1, p0, Lcn;->f:I

    .line 15
    const/16 v2, 0x2d0

    .line 17
    iput v2, p0, Lcn;->g:I

    .line 19
    const/16 v3, 0x14

    .line 21
    new-array v4, v3, [B

    .line 23
    iput-object v4, p0, Lcn;->h:[B

    .line 25
    mul-int/lit16 v1, v1, 0x2d0

    .line 27
    mul-int/lit8 v1, v1, 0x3

    .line 29
    div-int/lit8 v1, v1, 0x2

    .line 31
    iput v1, p0, Lcn;->i:I

    .line 33
    add-int/2addr v1, v3

    .line 34
    iput v1, p0, Lcn;->j:I

    .line 36
    new-instance v1, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 38
    invoke-direct {v1}, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;-><init>()V

    .line 41
    iput-object v1, p0, Lcn;->k:Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 43
    iput-object v0, p0, Lcn;->m:Landroid/view/Surface;

    .line 45
    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcn;->n:Z

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    .line 50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iput-object v1, p0, Lcn;->o:Ljava/util/ArrayList;

    .line 55
    new-instance v1, Lcn$a;

    .line 57
    invoke-direct {v1, p0}, Lcn$a;-><init>(Lcn;)V

    .line 60
    iput-object v1, p0, Lcn;->p:Lnr$a;

    .line 62
    new-instance v1, Lcn$b;

    .line 64
    invoke-direct {v1, p0}, Lcn$b;-><init>(Lcn;)V

    .line 67
    iput-object v1, p0, Lcn;->q:Landroid/content/ServiceConnection;

    .line 69
    new-instance v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 71
    invoke-direct {v1}, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;-><init>()V

    .line 74
    iput-object v1, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 76
    const/4 v1, 0x1

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    .line 79
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    const-string v2, "null"

    .line 88
    :goto_0
    aput-object v2, v1, v0

    .line 90
    const-string v0, "GDCamera"

    .line 92
    const-string v2, "GDCamera packageNameAndServiceActionArrayList = {?}"

    .line 94
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0, p1}, Lcn;->G(Ljava/util/ArrayList;)V

    .line 100
    return-void
.end method

.method public static C(I)I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "GDCamera"

    .line 13
    const-string v4, "convertStandardImageFormatToAuto imageFormat = {?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-eqz p0, :cond_3

    .line 20
    const/16 v1, 0x23

    .line 22
    if-eq p0, v0, :cond_4

    .line 24
    const/4 v4, 0x2

    .line 25
    if-eq p0, v4, :cond_2

    .line 27
    const/4 v4, 0x3

    .line 28
    if-eq p0, v4, :cond_1

    .line 30
    const/4 v4, 0x4

    .line 31
    if-eq p0, v4, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const v1, 0x32315659

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const v1, 0x2000030

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/16 v1, 0x29

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/16 v1, 0x11

    .line 47
    :cond_4
    :goto_0
    new-array p0, v0, [Ljava/lang/Object;

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v0

    .line 53
    aput-object v0, p0, v3

    .line 55
    const-string v0, "convertStandardImageFormatToAuto autoImageFormat = {?}"

    .line 57
    invoke-static {v2, v0, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return v1
.end method

.method public static synthetic m(Lcn;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn;->c:Z

    .line 3
    return p0
.end method

.method public static synthetic n(Lcn;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn;->c:Z

    .line 3
    return p1
.end method

.method public static synthetic o(Lcn;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn;->d:Z

    .line 3
    return p1
.end method

.method public static synthetic p(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcn;->C(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic q(Lcn;IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn;->E(IIII)V

    .line 4
    return-void
.end method

.method public static synthetic r(Lcn;Landroid/os/MemoryFile;)Landroid/os/MemoryFile;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn;->e:Landroid/os/MemoryFile;

    .line 3
    return-object p1
.end method

.method public static synthetic s(Lcn;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn;->j:I

    .line 3
    return p0
.end method

.method public static synthetic t(Lcn;)Lmr;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn;->b:Lmr;

    .line 3
    return-object p0
.end method

.method public static synthetic u(Lcn;Lmr;)Lmr;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn;->b:Lmr;

    .line 3
    return-object p1
.end method

.method public static synthetic v(Lcn;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn;->D()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic w(Lcn;)Lnr$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn;->p:Lnr$a;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "GDCamera"

    .line 6
    const-string v3, "convertImageDataToImageInfoWithNv21"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget v1, p0, Lcn;->f:I

    .line 13
    iget v3, p0, Lcn;->g:I

    .line 15
    mul-int v1, v1, v3

    .line 17
    mul-int/lit8 v1, v1, 0x3

    .line 19
    div-int/lit8 v1, v1, 0x2

    .line 21
    iget-object v3, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 23
    iget-object v3, v3, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 31
    new-instance v3, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 33
    invoke-direct {v3}, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;-><init>()V

    .line 36
    iget-object v4, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 38
    iget-object v4, v4, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v3, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 46
    iget-object v3, v3, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 54
    if-nez v3, :cond_1

    .line 56
    new-instance v3, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 58
    invoke-direct {v3}, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;-><init>()V

    .line 61
    iget-object v4, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 63
    iget-object v4, v4, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_1
    :goto_0
    iget-object v4, v3, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 70
    if-eqz v4, :cond_2

    .line 72
    array-length v4, v4

    .line 73
    if-eq v4, v1, :cond_3

    .line 75
    :cond_2
    new-array v4, v1, [B

    .line 77
    iput-object v4, v3, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 79
    :cond_3
    const/4 v4, 0x1

    .line 80
    :try_start_0
    iget-object v5, p0, Lcn;->e:Landroid/os/MemoryFile;

    .line 82
    iget-object v6, v3, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 84
    const/16 v7, 0x14

    .line 86
    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/os/MemoryFile;->readBytes([BIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception v5

    .line 91
    new-array v6, v4, [Ljava/lang/Object;

    .line 93
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    move-result-object v5

    .line 97
    aput-object v5, v6, v0

    .line 99
    const-string v0, "convertImageDataToImageInfoWithNv21 e = {?}"

    .line 101
    invoke-static {v2, v0, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :goto_1
    iget v0, p0, Lcn;->f:I

    .line 106
    mul-int/lit8 v0, v0, 0x3

    .line 108
    div-int/lit8 v0, v0, 0x2

    .line 110
    iput v0, v3, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->rowStride:I

    .line 112
    iput v4, v3, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->pixelStride:I

    .line 114
    iput v1, v3, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->dataSize:I

    .line 116
    return-void
.end method

.method public final B(Z)V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget v2, p0, Lcn;->f:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    iget v2, p0, Lcn;->g:I

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 19
    const/4 v4, 0x1

    .line 20
    aput-object v2, v1, v4

    .line 22
    const-string v2, "GDCamera"

    .line 24
    const-string v5, "convertImageDataToImageInfoWithYuv420888 IMAGE_WIDTH={?},IMAGE_HEIGHT={?}"

    .line 26
    invoke-static {v2, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget v1, p0, Lcn;->f:I

    .line 31
    iget v5, p0, Lcn;->g:I

    .line 33
    mul-int v5, v5, v1

    .line 35
    div-int/lit8 v6, v5, 0x4

    .line 37
    div-int/2addr v1, v0

    .line 38
    const/4 v7, 0x3

    .line 39
    new-array v7, v7, [Ljava/lang/Object;

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v8

    .line 45
    aput-object v8, v7, v3

    .line 47
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v8

    .line 51
    aput-object v8, v7, v4

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v8

    .line 57
    aput-object v8, v7, v0

    .line 59
    const-string v8, "convertImageDataToImageInfoWithYuv420888 pixSize={?},uvSize={?},rowStrideSize={?}"

    .line 61
    invoke-static {v2, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v7, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 66
    iget-object v7, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result v7

    .line 72
    if-nez v7, :cond_0

    .line 74
    new-instance v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 76
    invoke-direct {v0}, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;-><init>()V

    .line 79
    new-instance v7, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 81
    invoke-direct {v7}, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;-><init>()V

    .line 84
    new-instance v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 86
    invoke-direct {v8}, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;-><init>()V

    .line 89
    iget-object v9, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 91
    iget-object v9, v9, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v9, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 98
    iget-object v9, v9, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v9, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 105
    iget-object v9, v9, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    goto :goto_0

    .line 111
    :cond_0
    iget-object v7, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 113
    iget-object v7, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    move-result-object v7

    .line 119
    check-cast v7, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 121
    if-nez v7, :cond_1

    .line 123
    new-instance v7, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 125
    invoke-direct {v7}, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;-><init>()V

    .line 128
    iget-object v8, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 130
    iget-object v8, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v8, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_1
    iget-object v8, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 137
    iget-object v8, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    move-result-object v8

    .line 143
    check-cast v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 145
    if-nez v8, :cond_2

    .line 147
    new-instance v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 149
    invoke-direct {v8}, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;-><init>()V

    .line 152
    iget-object v9, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 154
    iget-object v9, v9, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {v9, v4, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_2
    iget-object v9, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 161
    iget-object v9, v9, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    move-result-object v9

    .line 167
    check-cast v9, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 169
    if-nez v9, :cond_3

    .line 171
    new-instance v9, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 173
    invoke-direct {v9}, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;-><init>()V

    .line 176
    iget-object v10, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 178
    iget-object v10, v10, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v10, v0, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_3
    move-object v0, v7

    .line 184
    move-object v7, v8

    .line 185
    move-object v8, v9

    .line 186
    :goto_0
    iget-object v9, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 188
    if-eqz v9, :cond_4

    .line 190
    array-length v9, v9

    .line 191
    if-eq v9, v5, :cond_5

    .line 193
    :cond_4
    new-array v9, v5, [B

    .line 195
    iput-object v9, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 197
    :cond_5
    iget-object v9, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 199
    if-eqz v9, :cond_6

    .line 201
    array-length v9, v9

    .line 202
    if-eq v9, v6, :cond_7

    .line 204
    :cond_6
    new-array v9, v6, [B

    .line 206
    iput-object v9, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 208
    :cond_7
    iget-object v9, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 210
    if-eqz v9, :cond_8

    .line 212
    array-length v9, v9

    .line 213
    if-eq v9, v6, :cond_9

    .line 215
    :cond_8
    new-array v9, v6, [B

    .line 217
    iput-object v9, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 219
    :cond_9
    const/16 v9, 0x14

    .line 221
    if-eqz p1, :cond_a

    .line 223
    :try_start_0
    iget-object p1, p0, Lcn;->e:Landroid/os/MemoryFile;

    .line 225
    iget-object v10, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 227
    invoke-virtual {p1, v10, v9, v3, v5}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 230
    iget-object p1, p0, Lcn;->e:Landroid/os/MemoryFile;

    .line 232
    iget-object v9, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 234
    add-int/lit8 v10, v5, 0x14

    .line 236
    invoke-virtual {p1, v9, v10, v3, v6}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 239
    iget-object p1, p0, Lcn;->e:Landroid/os/MemoryFile;

    .line 241
    iget-object v9, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 243
    add-int/2addr v10, v6

    .line 244
    invoke-virtual {p1, v9, v10, v3, v6}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 247
    goto :goto_1

    .line 248
    :cond_a
    iget-object p1, p0, Lcn;->e:Landroid/os/MemoryFile;

    .line 250
    iget-object v10, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 252
    invoke-virtual {p1, v10, v9, v3, v5}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 255
    iget-object p1, p0, Lcn;->e:Landroid/os/MemoryFile;

    .line 257
    iget-object v9, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 259
    add-int/lit8 v10, v5, 0x14

    .line 261
    invoke-virtual {p1, v9, v10, v3, v6}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 264
    iget-object p1, p0, Lcn;->e:Landroid/os/MemoryFile;

    .line 266
    iget-object v9, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 268
    add-int/2addr v10, v6

    .line 269
    invoke-virtual {p1, v9, v10, v3, v6}, Landroid/os/MemoryFile;->readBytes([BIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    goto :goto_1

    .line 273
    :catch_0
    move-exception p1

    .line 274
    new-array v9, v4, [Ljava/lang/Object;

    .line 276
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 279
    move-result-object p1

    .line 280
    aput-object p1, v9, v3

    .line 282
    const-string p1, "convertImageDataToImageInfoWithYuv420888 e = {?}"

    .line 284
    invoke-static {v2, p1, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    :goto_1
    iget p1, p0, Lcn;->f:I

    .line 289
    iput p1, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->rowStride:I

    .line 291
    iput v4, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->pixelStride:I

    .line 293
    iput v5, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->dataSize:I

    .line 295
    iput v1, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->rowStride:I

    .line 297
    iput v4, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->pixelStride:I

    .line 299
    iput v6, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->dataSize:I

    .line 301
    iput v1, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->rowStride:I

    .line 303
    iput v4, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->pixelStride:I

    .line 305
    iput v6, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->dataSize:I

    .line 307
    return-void
.end method

.method public final D()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "GDCamera"

    .line 6
    const-string v3, "initArCameraParamWithMem"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lcn;->l:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 13
    iget v3, v1, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->width:I

    .line 15
    iget v4, v1, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->height:I

    .line 17
    iget v1, v1, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->format:I

    .line 19
    invoke-virtual {p0, v3, v4, v0, v1}, Lcn;->E(IIII)V

    .line 22
    iget-object v1, p0, Lcn;->b:Lmr;

    .line 24
    if-eqz v1, :cond_0

    .line 26
    const-string v1, "initArCameraParamWithMem gdCameraService!=null"

    .line 28
    new-array v3, v0, [Ljava/lang/Object;

    .line 30
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    new-instance v1, Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;

    .line 35
    invoke-direct {v1}, Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;-><init>()V

    .line 38
    iget-object v3, p0, Lcn;->l:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 40
    iget v3, v3, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->format:I

    .line 42
    invoke-virtual {p0, v3}, Lcn;->y(I)I

    .line 45
    move-result v3

    .line 46
    iput v3, v1, Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;->a:I

    .line 48
    iget-object v3, p0, Lcn;->l:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 50
    iget v4, v3, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->width:I

    .line 52
    iput v4, v1, Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;->d:I

    .line 54
    iget v3, v3, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->height:I

    .line 56
    iput v3, v1, Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;->e:I

    .line 58
    :try_start_0
    iget-object v3, p0, Lcn;->b:Lmr;

    .line 60
    const-string v4, "com.autonavi.amapauto"

    .line 62
    iget-object v5, p0, Lcn;->m:Landroid/view/Surface;

    .line 64
    invoke-interface {v3, v4, v1, v5}, Lmr;->o0(Ljava/lang/String;Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;Landroid/view/Surface;)Z

    .line 67
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return v0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    const/4 v3, 0x1

    .line 71
    new-array v3, v3, [Ljava/lang/Object;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    aput-object v1, v3, v0

    .line 79
    const-string v1, "initArCameraParamWithMem RemoteException = {?}"

    .line 81
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    return v0

    .line 85
    :cond_0
    const-string v1, "initArCameraParamWithMem gdCameraService==null"

    .line 87
    new-array v3, v0, [Ljava/lang/Object;

    .line 89
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    return v0
.end method

.method public final E(IIII)V
    .locals 8

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v2

    .line 15
    const/4 v4, 0x1

    .line 16
    aput-object v2, v1, v4

    .line 18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    const/4 v5, 0x2

    .line 23
    aput-object v2, v1, v5

    .line 25
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v2

    .line 29
    const/4 v6, 0x3

    .line 30
    aput-object v2, v1, v6

    .line 32
    const-string v2, "GDCamera"

    .line 34
    const-string v7, "reInitCameraparam before change imageWidth = {?},imageHeight = {?},imageSize = {?},imageFormat = {?}"

    .line 36
    invoke-static {v2, v7, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    new-array v1, v0, [Ljava/lang/Object;

    .line 41
    iget v7, p0, Lcn;->f:I

    .line 43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v7

    .line 47
    aput-object v7, v1, v3

    .line 49
    iget v7, p0, Lcn;->g:I

    .line 51
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v7

    .line 55
    aput-object v7, v1, v4

    .line 57
    iget v7, p0, Lcn;->i:I

    .line 59
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v7

    .line 63
    aput-object v7, v1, v5

    .line 65
    iget v7, p0, Lcn;->j:I

    .line 67
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v7

    .line 71
    aput-object v7, v1, v6

    .line 73
    const-string v7, "reInitCameraparam before change IMAGE_WIDTH = {?},IMAGE_HEIGHT = {?},DATA_SIZE = {?},MEMORY_SIZE = {?}"

    .line 75
    invoke-static {v2, v7, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iput p1, p0, Lcn;->f:I

    .line 80
    iput p2, p0, Lcn;->g:I

    .line 82
    const v1, 0x151800

    .line 85
    if-lez p3, :cond_0

    .line 87
    iput p3, p0, Lcn;->i:I

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    if-nez p1, :cond_1

    .line 92
    if-nez p2, :cond_1

    .line 94
    const p3, 0x151800

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    mul-int p3, p1, p2

    .line 100
    mul-int/lit8 p3, p3, 0x3

    .line 102
    div-int/2addr p3, v5

    .line 103
    :goto_0
    iput p3, p0, Lcn;->i:I

    .line 105
    :goto_1
    iget p3, p0, Lcn;->i:I

    .line 107
    if-lez p3, :cond_2

    .line 109
    if-lez p1, :cond_2

    .line 111
    if-gtz p2, :cond_3

    .line 113
    :cond_2
    const/16 p1, 0x500

    .line 115
    iput p1, p0, Lcn;->f:I

    .line 117
    const/16 p2, 0x2d0

    .line 119
    iput p2, p0, Lcn;->g:I

    .line 121
    iget-object p3, p0, Lcn;->l:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 123
    iput p1, p3, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->width:I

    .line 125
    iput p2, p3, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->height:I

    .line 127
    iput v1, p0, Lcn;->i:I

    .line 129
    :cond_3
    iget p1, p0, Lcn;->i:I

    .line 131
    add-int/lit8 p1, p1, 0x14

    .line 133
    iput p1, p0, Lcn;->j:I

    .line 135
    iget-object p1, p0, Lcn;->l:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 137
    if-eqz p1, :cond_4

    .line 139
    iput p4, p1, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->format:I

    .line 141
    :cond_4
    const/4 p1, 0x5

    .line 142
    new-array p1, p1, [Ljava/lang/Object;

    .line 144
    iget p2, p0, Lcn;->f:I

    .line 146
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    move-result-object p2

    .line 150
    aput-object p2, p1, v3

    .line 152
    iget p2, p0, Lcn;->g:I

    .line 154
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object p2

    .line 158
    aput-object p2, p1, v4

    .line 160
    iget p2, p0, Lcn;->i:I

    .line 162
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    move-result-object p2

    .line 166
    aput-object p2, p1, v5

    .line 168
    iget p2, p0, Lcn;->j:I

    .line 170
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    move-result-object p2

    .line 174
    aput-object p2, p1, v6

    .line 176
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    move-result-object p2

    .line 180
    aput-object p2, p1, v0

    .line 182
    const-string p2, "reInitCameraparam after change IMAGE_WIDTH = {?},IMAGE_HEIGHT = {?},DATA_SIZE = {?},MEMORY_SIZE = {?},imageFormat = {?}"

    .line 184
    invoke-static {v2, p2, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public final F()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "GDCamera"

    .line 6
    const-string v3, "readCameraData"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lcn;->e:Landroid/os/MemoryFile;

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 16
    const-string v1, "readCameraData memoryFile != null"

    .line 18
    new-array v4, v0, [Ljava/lang/Object;

    .line 20
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    const/4 v1, 0x1

    .line 24
    :try_start_0
    iget-object v4, p0, Lcn;->e:Landroid/os/MemoryFile;

    .line 26
    iget-object v5, p0, Lcn;->h:[B

    .line 28
    const/16 v6, 0x14

    .line 30
    invoke-virtual {v4, v5, v0, v0, v6}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 33
    iget-object v4, p0, Lcn;->h:[B

    .line 35
    invoke-static {v4}, Lrd0;->a([B)Z

    .line 38
    move-result v4

    .line 39
    const-string v5, "readCameraData canRead = {?}"

    .line 41
    new-array v7, v1, [Ljava/lang/Object;

    .line 43
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    move-result-object v8

    .line 47
    aput-object v8, v7, v0

    .line 49
    invoke-static {v2, v5, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    if-eqz v4, :cond_1

    .line 54
    const-string v4, "readCameraData canRead"

    .line 56
    new-array v5, v0, [Ljava/lang/Object;

    .line 58
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lcn;->z()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 64
    move-result-object v3

    .line 65
    iget-object v4, p0, Lcn;->h:[B

    .line 67
    invoke-static {v4}, Lrd0;->b([B)Z

    .line 70
    iget-object v4, p0, Lcn;->e:Landroid/os/MemoryFile;

    .line 72
    iget-object v5, p0, Lcn;->h:[B

    .line 74
    invoke-virtual {v4, v5, v0, v0, v6}, Landroid/os/MemoryFile;->writeBytes([BIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v4

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    .line 81
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    move-result-object v4

    .line 85
    aput-object v4, v1, v0

    .line 87
    const-string v0, "readCameraData memoryFile != null e = {?}"

    .line 89
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    const-string v1, "readCameraData memoryFile == null"

    .line 95
    new-array v0, v0, [Ljava/lang/Object;

    .line 97
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_1
    :goto_0
    return-object v3
.end method

.method public G(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "GDCamera"

    .line 6
    const-string v3, "setPackageNameAndServiceActionArrayList"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lcn;->o:Ljava/util/ArrayList;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const/4 v1, 0x1

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    aput-object v3, v1, v0

    .line 24
    const-string v3, "setPackageNameAndServiceActionArrayList  packageNameAndServiceActionArrayList = {?}"

    .line 26
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v1, p0, Lcn;->o:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iput-object v1, p0, Lcn;->o:Ljava/util/ArrayList;

    .line 42
    :goto_0
    if-eqz p1, :cond_1

    .line 44
    const-string v1, "setPackageNameAndServiceActionArrayList  packageNameAndServiceActionArrayList!=null"

    .line 46
    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iput-object p1, p0, Lcn;->o:Ljava/util/ArrayList;

    .line 53
    sget-object v0, Lcn;->s:Lcn$c;

    .line 55
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_1

    .line 61
    iget-object p1, p0, Lcn;->o:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    return-void
.end method

.method public final H()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "GDCamera"

    .line 6
    const-string v2, "bindCameraService"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcn;->q:Landroid/content/ServiceConnection;

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 24
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lo;->a(I)V

    .line 4
    return-void
.end method

.method public b(I)Z
    .locals 7

    .line 1
    const-string v0, "com.autonavi.amapauto"

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object p1, v2, v3

    .line 13
    const-string p1, "GDCamera"

    .line 15
    const-string v4, "openCamera id = {?}"

    .line 17
    invoke-static {p1, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v2, p0, Lcn;->b:Lmr;

    .line 22
    if-eqz v2, :cond_1

    .line 24
    :try_start_0
    const-string v2, "openCamera before isCameraOpened = {?},isCameraConnected = {?}"

    .line 26
    const/4 v4, 0x2

    .line 27
    new-array v5, v4, [Ljava/lang/Object;

    .line 29
    iget-boolean v6, p0, Lcn;->d:Z

    .line 31
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    move-result-object v6

    .line 35
    aput-object v6, v5, v3

    .line 37
    iget-boolean v6, p0, Lcn;->c:Z

    .line 39
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    move-result-object v6

    .line 43
    aput-object v6, v5, v1

    .line 45
    invoke-static {p1, v2, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v2, p0, Lcn;->b:Lmr;

    .line 50
    invoke-interface {v2, v0}, Lmr;->j1(Ljava/lang/String;)Z

    .line 53
    move-result v2

    .line 54
    iput-boolean v2, p0, Lcn;->d:Z

    .line 56
    iget-object v2, p0, Lcn;->b:Lmr;

    .line 58
    invoke-interface {v2, v0}, Lmr;->j0(Ljava/lang/String;)Z

    .line 61
    move-result v2

    .line 62
    iput-boolean v2, p0, Lcn;->c:Z

    .line 64
    const-string v2, "openCamera after isCameraOpened = {?},isCameraConnected = {?}"

    .line 66
    new-array v4, v4, [Ljava/lang/Object;

    .line 68
    iget-boolean v5, p0, Lcn;->d:Z

    .line 70
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    move-result-object v5

    .line 74
    aput-object v5, v4, v3

    .line 76
    iget-boolean v5, p0, Lcn;->c:Z

    .line 78
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    move-result-object v5

    .line 82
    aput-object v5, v4, v1

    .line 84
    invoke-static {p1, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-boolean v2, p0, Lcn;->c:Z

    .line 89
    if-eqz v2, :cond_0

    .line 91
    iget-boolean v2, p0, Lcn;->d:Z

    .line 93
    if-eqz v2, :cond_0

    .line 95
    const-string v0, "openCamera has opened"

    .line 97
    new-array v2, v3, [Ljava/lang/Object;

    .line 99
    invoke-static {p1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    return v1

    .line 103
    :cond_0
    iget-object v2, p0, Lcn;->b:Lmr;

    .line 105
    invoke-interface {v2, v0}, Lmr;->a1(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    new-array v1, v1, [Ljava/lang/Object;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    aput-object v0, v1, v3

    .line 118
    const-string v0, "openCamera RemoteException = {?}"

    .line 120
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    return v3

    .line 124
    :cond_1
    const-string v0, "openCamera gdCameraService==null"

    .line 126
    new-array v1, v3, [Ljava/lang/Object;

    .line 128
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    return v3
.end method

.method public c(Lcom/autonavi/amapauto/ar/camera/ArCameraParam;)Z
    .locals 3

    .line 1
    const-string v0, "GDCamera"

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iput-object p1, p0, Lcn;->l:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 8
    invoke-virtual {p0}, Lcn;->x()V

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    aput-object p1, v2, v1

    .line 20
    const-string p1, "initCamera param = {?}"

    .line 22
    invoke-static {v0, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lcn;->D()Z

    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_0
    const-string p1, "initCamera param==null"

    .line 32
    new-array v2, v1, [Ljava/lang/Object;

    .line 34
    invoke-static {v0, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return v1
.end method

.method public closeCamera()Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v2, p0, Lcn;->d:Z

    .line 6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    const-string v2, "GDCamera"

    .line 15
    const-string v4, "closeCamera mIsCameraOpened = {?}"

    .line 17
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :try_start_0
    iget-object v1, p0, Lcn;->b:Lmr;

    .line 22
    if-eqz v1, :cond_1

    .line 24
    const-string v4, "com.autonavi.amapauto"

    .line 26
    invoke-interface {v1, v4}, Lmr;->E0(Ljava/lang/String;)Z

    .line 29
    move-result v1

    .line 30
    iget-object v4, p0, Lcn;->e:Landroid/os/MemoryFile;

    .line 32
    if-eqz v4, :cond_0

    .line 34
    invoke-virtual {v4}, Landroid/os/MemoryFile;->close()V

    .line 37
    const/4 v4, 0x0

    .line 38
    iput-object v4, p0, Lcn;->e:Landroid/os/MemoryFile;

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v4, "closeCamera memoryFile==null"

    .line 43
    new-array v5, v3, [Ljava/lang/Object;

    .line 45
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :goto_0
    const-string v4, "closeCamera result = {?}"

    .line 50
    new-array v5, v0, [Ljava/lang/Object;

    .line 52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    move-result-object v6

    .line 56
    aput-object v6, v5, v3

    .line 58
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iput-boolean v3, p0, Lcn;->d:Z

    .line 63
    iput-boolean v0, p0, Lcn;->c:Z

    .line 65
    return v1

    .line 66
    :cond_1
    :try_start_1
    const-string v1, "closeCamera gdCameraService==null"

    .line 68
    new-array v4, v3, [Ljava/lang/Object;

    .line 70
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    iput-boolean v3, p0, Lcn;->d:Z

    .line 75
    iput-boolean v0, p0, Lcn;->c:Z

    .line 77
    return v3

    .line 78
    :catchall_0
    move-exception v1

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception v1

    .line 81
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    new-array v4, v3, [Ljava/lang/Object;

    .line 87
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    iput-boolean v3, p0, Lcn;->d:Z

    .line 92
    iput-boolean v0, p0, Lcn;->c:Z

    .line 94
    return v3

    .line 95
    :goto_1
    iput-boolean v3, p0, Lcn;->d:Z

    .line 97
    iput-boolean v0, p0, Lcn;->c:Z

    .line 99
    throw v1
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-super {p0}, Lo;->e()V

    .line 4
    return-void
.end method

.method public f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn;->b:Lmr;

    .line 3
    const-string v1, "GDCamera"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    :try_start_0
    const-string v3, "com.autonavi.amapauto"

    .line 10
    invoke-interface {v0, v3}, Lmr;->j1(Ljava/lang/String;)Z

    .line 13
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    const/4 v3, 0x1

    .line 17
    new-array v3, v3, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    aput-object v0, v3, v2

    .line 25
    const-string v0, "isCameraOpened RemoteException = {?}"

    .line 27
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v0, "isCameraOpened gdCameraService==null"

    .line 33
    new-array v3, v2, [Ljava/lang/Object;

    .line 35
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    :goto_0
    return v2
.end method

.method public g()Z
    .locals 6

    .line 1
    const-string v0, "com.autonavi.amapauto"

    .line 3
    iget-object v1, p0, Lcn;->b:Lmr;

    .line 5
    const-string v2, "GDCamera"

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcn;->closeCamera()Z

    .line 14
    iget-object v4, p0, Lcn;->b:Lmr;

    .line 16
    iget-object v5, p0, Lcn;->p:Lnr$a;

    .line 18
    invoke-interface {v4, v0, v5}, Lmr;->f0(Ljava/lang/String;Lnr;)Z

    .line 21
    iget-object v4, p0, Lcn;->b:Lmr;

    .line 23
    invoke-interface {v4, v0}, Lmr;->F0(Ljava/lang/String;)Z

    .line 26
    invoke-virtual {p0}, Lcn;->H()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return v1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    new-array v1, v1, [Ljava/lang/Object;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    aput-object v0, v1, v3

    .line 39
    const-string v0, "unInitCamera RemoteException = {?}"

    .line 41
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v0, "unInitCamera gdCameraService==null"

    .line 47
    new-array v1, v3, [Ljava/lang/Object;

    .line 49
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :goto_0
    return v3
.end method

.method public h()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "requestCameraData isCameraOpened = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-boolean v1, p0, Lcn;->d:Z

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v2, v1, [Ljava/lang/Object;

    .line 23
    const-string v3, "GDCamera"

    .line 25
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0}, Lcn;->F()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 34
    const-string v0, "requestCameraData image == null"

    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    const/4 v0, 0x0

    .line 42
    return-object v0

    .line 43
    :cond_0
    const/4 v2, 0x1

    .line 44
    new-array v2, v2, [Ljava/lang/Object;

    .line 46
    invoke-virtual {v0}, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->toString()Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    aput-object v4, v2, v1

    .line 52
    const-string v1, "requestCameraData image = {?}"

    .line 54
    invoke-static {v3, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    return-object v0
.end method

.method public i(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lo;->i(Landroid/graphics/SurfaceTexture;)V

    .line 4
    new-instance v0, Landroid/view/Surface;

    .line 6
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 9
    iput-object v0, p0, Lcn;->m:Landroid/view/Surface;

    .line 11
    return-void
.end method

.method public j(Ljava/util/ArrayList;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lo;->j(Ljava/util/ArrayList;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public k()Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn;->k:Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 3
    return-object v0
.end method

.method public final x()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "GDCamera"

    .line 6
    const-string v3, "bindCameraService"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v1, Lcn;->t:Lcn$c;

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v1, :cond_1

    .line 16
    new-array v4, v3, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v1}, Lcn$c;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    aput-object v1, v4, v0

    .line 24
    const-string v1, "bindCameraService currentPackageNameAndServiceAction = {?}"

    .line 26
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    sget-object v1, Lcn;->t:Lcn$c;

    .line 31
    iget-object v1, v1, Lcn$c;->a:Ljava/lang/String;

    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 39
    sget-object v1, Lcn;->t:Lcn$c;

    .line 41
    iget-object v1, v1, Lcn$c;->b:Ljava/lang/String;

    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_0

    .line 49
    new-instance v1, Landroid/content/Intent;

    .line 51
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 54
    sget-object v4, Lcn;->t:Lcn$c;

    .line 56
    iget-object v4, v4, Lcn$c;->b:Ljava/lang/String;

    .line 58
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    sget-object v4, Lcn;->t:Lcn$c;

    .line 63
    iget-object v4, v4, Lcn$c;->a:Ljava/lang/String;

    .line 65
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-static {}, Lrv;->H()Lrv;

    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Lrv;->z()Landroid/content/Context;

    .line 75
    move-result-object v4

    .line 76
    iget-object v5, p0, Lcn;->q:Landroid/content/ServiceConnection;

    .line 78
    invoke-virtual {v4, v1, v5, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 81
    move-result v1

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v5, "bindCameraService currentPackageNameAndServiceAction bind result = "

    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v4

    .line 99
    new-array v5, v0, [Ljava/lang/Object;

    .line 101
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    if-eqz v1, :cond_2

    .line 106
    new-array v1, v3, [Ljava/lang/Object;

    .line 108
    sget-object v3, Lcn;->t:Lcn$c;

    .line 110
    invoke-virtual {v3}, Lcn$c;->toString()Ljava/lang/String;

    .line 113
    move-result-object v3

    .line 114
    aput-object v3, v1, v0

    .line 116
    const-string v0, "bindCameraService currentPackageNameAndServiceAction result true = {?}"

    .line 118
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    return-void

    .line 122
    :cond_0
    const-string v1, "bindCameraService currentPackageNameAndServiceAction content null"

    .line 124
    new-array v4, v0, [Ljava/lang/Object;

    .line 126
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    goto :goto_0

    .line 130
    :cond_1
    const-string v1, "bindCameraService currentPackageNameAndServiceAction null"

    .line 132
    new-array v4, v0, [Ljava/lang/Object;

    .line 134
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_2
    :goto_0
    iget-object v1, p0, Lcn;->o:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 142
    move-result-object v1

    .line 143
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_4

    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    move-result-object v4

    .line 153
    check-cast v4, Lcn$c;

    .line 155
    new-array v5, v3, [Ljava/lang/Object;

    .line 157
    invoke-virtual {v4}, Lcn$c;->toString()Ljava/lang/String;

    .line 160
    move-result-object v6

    .line 161
    aput-object v6, v5, v0

    .line 163
    const-string v6, "bindCameraService packageNameAndServiceAction = {?}"

    .line 165
    invoke-static {v2, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    new-instance v5, Landroid/content/Intent;

    .line 170
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 173
    iget-object v6, v4, Lcn$c;->b:Ljava/lang/String;

    .line 175
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v6, v4, Lcn$c;->a:Ljava/lang/String;

    .line 180
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-static {}, Lrv;->H()Lrv;

    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {v6}, Lrv;->z()Landroid/content/Context;

    .line 190
    move-result-object v6

    .line 191
    iget-object v7, p0, Lcn;->q:Landroid/content/ServiceConnection;

    .line 193
    invoke-virtual {v6, v5, v7, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 196
    move-result v5

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    .line 199
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    const-string v7, "bindCameraService packageNameAndServiceAction bind result = "

    .line 204
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v6

    .line 214
    new-array v7, v0, [Ljava/lang/Object;

    .line 216
    invoke-static {v2, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    if-eqz v5, :cond_3

    .line 221
    sput-object v4, Lcn;->t:Lcn$c;

    .line 223
    new-array v1, v3, [Ljava/lang/Object;

    .line 225
    invoke-virtual {v4}, Lcn$c;->toString()Ljava/lang/String;

    .line 228
    move-result-object v4

    .line 229
    aput-object v4, v1, v0

    .line 231
    const-string v4, "bindCameraService packageNameAndServiceAction result true = {?}"

    .line 233
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    goto :goto_1

    .line 237
    :cond_4
    const/4 v5, 0x0

    .line 238
    :goto_1
    if-nez v5, :cond_5

    .line 240
    const-string v1, "bindCameraService realResult false"

    .line 242
    new-array v4, v0, [Ljava/lang/Object;

    .line 244
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    sget-object v1, Lcn;->t:Lcn$c;

    .line 249
    if-eqz v1, :cond_5

    .line 251
    new-array v3, v3, [Ljava/lang/Object;

    .line 253
    invoke-virtual {v1}, Lcn$c;->toString()Ljava/lang/String;

    .line 256
    move-result-object v1

    .line 257
    aput-object v1, v3, v0

    .line 259
    const-string v0, "bindCameraService realResult currentPackageNameAndServiceAction = {?}"

    .line 261
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :cond_5
    return-void
.end method

.method public final y(I)I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "GDCamera"

    .line 13
    const-string v4, "convertAutoImageFormatToStandard imageFormat = {?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v4, 0x4

    .line 20
    if-eq p1, v4, :cond_4

    .line 22
    const/16 v5, 0x14

    .line 24
    if-eq p1, v5, :cond_3

    .line 26
    const/16 v5, 0x23

    .line 28
    if-eq p1, v5, :cond_3

    .line 30
    const/16 v5, 0x100

    .line 32
    if-eq p1, v5, :cond_3

    .line 34
    const v5, 0x2000030

    .line 37
    if-eq p1, v5, :cond_2

    .line 39
    const v5, 0x32315659

    .line 42
    if-eq p1, v5, :cond_1

    .line 44
    const/16 v4, 0x10

    .line 46
    if-eq p1, v4, :cond_0

    .line 48
    const/16 v4, 0x11

    .line 50
    if-eq p1, v4, :cond_0

    .line 52
    packed-switch p1, :pswitch_data_0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 v1, 0x4

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v1, 0x3

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    .line 63
    :cond_4
    :goto_1
    :pswitch_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v0

    .line 69
    aput-object v0, p1, v3

    .line 71
    const-string v0, "convertAutoImageFormatToStandard standardImageFormat = {?}"

    .line 73
    invoke-static {v2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return v1

    .line 77
    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final z()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "GDCamera"

    .line 6
    const-string v3, "convertImageDataToImageInfo"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v3

    .line 15
    const/4 v1, 0x1

    .line 16
    new-array v5, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    move-result-object v6

    .line 22
    aput-object v6, v5, v0

    .line 24
    const-string v6, "convertImageDataToImageInfo has Received From System timestamp = {?}"

    .line 26
    invoke-static {v2, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v5, p0, Lcn;->l:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 31
    iget v5, v5, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->format:I

    .line 33
    new-array v6, v1, [Ljava/lang/Object;

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v7

    .line 39
    aput-object v7, v6, v0

    .line 41
    const-string v7, "convertImageDataToImageInfo targetFormat = {?}"

    .line 43
    invoke-static {v2, v7, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v6, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 48
    iput v5, v6, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->format:I

    .line 50
    iget v7, p0, Lcn;->f:I

    .line 52
    iput v7, v6, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->width:I

    .line 54
    iget v7, p0, Lcn;->g:I

    .line 56
    iput v7, v6, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->height:I

    .line 58
    iput-wide v3, v6, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->timestamp:J

    .line 60
    if-nez v6, :cond_0

    .line 62
    new-instance v6, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 64
    invoke-direct {v6}, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;-><init>()V

    .line 67
    iput-object v6, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 69
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    const-string v7, "convertImageDataToImageInfo format:"

    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v7, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 81
    iget v7, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->format:I

    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v7, ", width:"

    .line 88
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v7, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 93
    iget v7, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->width:I

    .line 95
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v7, ", height:"

    .line 100
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v7, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 105
    iget v7, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->height:I

    .line 107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string v7, ",timestamp:"

    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v7, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 117
    iget-wide v7, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->timestamp:J

    .line 119
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v6

    .line 126
    new-array v7, v0, [Ljava/lang/Object;

    .line 128
    invoke-static {v2, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    const/16 v6, 0x11

    .line 133
    if-eq v5, v6, :cond_3

    .line 135
    const/16 v6, 0x23

    .line 137
    if-eq v5, v6, :cond_2

    .line 139
    const v6, 0x32315659

    .line 142
    if-eq v5, v6, :cond_1

    .line 144
    invoke-virtual {p0, v0}, Lcn;->B(Z)V

    .line 147
    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0, v1}, Lcn;->B(Z)V

    .line 151
    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0, v0}, Lcn;->B(Z)V

    .line 155
    goto :goto_0

    .line 156
    :cond_3
    invoke-virtual {p0}, Lcn;->A()V

    .line 159
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 162
    move-result-wide v5

    .line 163
    new-array v1, v1, [Ljava/lang/Object;

    .line 165
    sub-long/2addr v5, v3

    .line 166
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 169
    move-result-object v3

    .line 170
    aput-object v3, v1, v0

    .line 172
    const-string v0, "convertImageDataToImageInfo converted timestamp = {?}"

    .line 174
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcn;->r:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 179
    return-object v0
.end method
