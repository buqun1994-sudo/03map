.class public Lcom/autonavi/amapauto/MapSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "MapSurfaceView"

.field private static surfaceHeight:I = -0x1

.field private static surfaceWidth:I = -0x1


# instance fields
.field protected mDisplayId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/autonavi/amapauto/MapSurfaceView;->mDisplayId:I

    .line 3
    invoke-direct {p0}, Lcom/autonavi/amapauto/MapSurfaceView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/autonavi/amapauto/MapSurfaceView;->mDisplayId:I

    .line 6
    invoke-direct {p0}, Lcom/autonavi/amapauto/MapSurfaceView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/autonavi/amapauto/MapSurfaceView;->mDisplayId:I

    .line 9
    invoke-direct {p0}, Lcom/autonavi/amapauto/MapSurfaceView;->initView()V

    return-void
.end method

.method public static getMapSurfaceDpi(I)I
    .locals 6

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
    const-string v2, "MapSurfaceView"

    .line 13
    const-string v4, "getMapSurfaceDpi screenId:{?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const-string v1, "getMapSurfaceDpi:{?}"

    .line 20
    if-nez p0, :cond_0

    .line 22
    invoke-static {}, Lrv;->H()Lrv;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lsi;->q(Landroid/content/Context;)F

    .line 33
    move-result p0

    .line 34
    float-to-int p0, p0

    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v4

    .line 41
    aput-object v4, v0, v3

    .line 43
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    return p0

    .line 47
    :cond_0
    invoke-static {}, La20;->l()La20;

    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, La20;->m()Ljava/util/HashMap;

    .line 54
    move-result-object v4

    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v4

    .line 63
    if-eqz v4, :cond_1

    .line 65
    invoke-static {}, La20;->l()La20;

    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v4}, La20;->m()Ljava/util/HashMap;

    .line 72
    move-result-object v4

    .line 73
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Lcom/autonavi/extscreen/dto/PresentationConfig;

    .line 83
    iget p0, p0, Lcom/autonavi/extscreen/dto/PresentationConfig;->dpi:I

    .line 85
    new-array v0, v0, [Ljava/lang/Object;

    .line 87
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v4

    .line 91
    aput-object v4, v0, v3

    .line 93
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    return p0

    .line 97
    :cond_1
    invoke-static {}, La20;->l()La20;

    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4, p0}, La20;->k(I)Lhl;

    .line 104
    move-result-object p0

    .line 105
    if-eqz p0, :cond_2

    .line 107
    new-array v0, v0, [Ljava/lang/Object;

    .line 109
    invoke-virtual {p0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 112
    move-result-object v4

    .line 113
    iget v4, v4, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v4

    .line 119
    aput-object v4, v0, v3

    .line 121
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 127
    move-result-object p0

    .line 128
    iget p0, p0, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 130
    return p0

    .line 131
    :cond_2
    return v3
.end method

.method public static getMapSurfaceHeight(I)I
    .locals 6

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
    const-string v2, "MapSurfaceView"

    .line 13
    const-string v4, "getMapSurfaceHeight screenId:{?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const-string v1, "getMapSurfaceHeight :{?}"

    .line 20
    if-nez p0, :cond_0

    .line 22
    new-array p0, v0, [Ljava/lang/Object;

    .line 24
    sget v0, Lcom/autonavi/amapauto/MapSurfaceView;->surfaceHeight:I

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v0

    .line 30
    aput-object v0, p0, v3

    .line 32
    invoke-static {v2, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    sget p0, Lcom/autonavi/amapauto/MapSurfaceView;->surfaceHeight:I

    .line 37
    return p0

    .line 38
    :cond_0
    invoke-static {}, La20;->l()La20;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, La20;->m()Ljava/util/HashMap;

    .line 45
    move-result-object v4

    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 54
    if-eqz v4, :cond_1

    .line 56
    invoke-static {}, La20;->l()La20;

    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, La20;->m()Ljava/util/HashMap;

    .line 63
    move-result-object v4

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lcom/autonavi/extscreen/dto/PresentationConfig;

    .line 74
    iget p0, p0, Lcom/autonavi/extscreen/dto/PresentationConfig;->height:I

    .line 76
    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v4

    .line 82
    aput-object v4, v0, v3

    .line 84
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return p0

    .line 88
    :cond_1
    invoke-static {}, La20;->l()La20;

    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1, p0}, La20;->k(I)Lhl;

    .line 95
    move-result-object p0

    .line 96
    if-eqz p0, :cond_2

    .line 98
    new-array v0, v0, [Ljava/lang/Object;

    .line 100
    invoke-virtual {p0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 103
    move-result-object v1

    .line 104
    iget v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v1

    .line 110
    aput-object v1, v0, v3

    .line 112
    const-string v1, "getMapSurfaceHeight:{?}"

    .line 114
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 120
    move-result-object p0

    .line 121
    iget p0, p0, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 123
    return p0

    .line 124
    :cond_2
    return v3
.end method

.method public static getMapSurfaceWidth(I)I
    .locals 6

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
    const-string v2, "MapSurfaceView"

    .line 13
    const-string v4, "getMapSurfaceWidth screenId:{?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const-string v1, "getMapSurfaceWidth:{?}"

    .line 20
    if-nez p0, :cond_0

    .line 22
    new-array p0, v0, [Ljava/lang/Object;

    .line 24
    sget v0, Lcom/autonavi/amapauto/MapSurfaceView;->surfaceWidth:I

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v0

    .line 30
    aput-object v0, p0, v3

    .line 32
    invoke-static {v2, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    sget p0, Lcom/autonavi/amapauto/MapSurfaceView;->surfaceWidth:I

    .line 37
    return p0

    .line 38
    :cond_0
    invoke-static {}, La20;->l()La20;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, La20;->m()Ljava/util/HashMap;

    .line 45
    move-result-object v4

    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 54
    if-eqz v4, :cond_1

    .line 56
    invoke-static {}, La20;->l()La20;

    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, La20;->m()Ljava/util/HashMap;

    .line 63
    move-result-object v4

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lcom/autonavi/extscreen/dto/PresentationConfig;

    .line 74
    iget p0, p0, Lcom/autonavi/extscreen/dto/PresentationConfig;->width:I

    .line 76
    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v4

    .line 82
    aput-object v4, v0, v3

    .line 84
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return p0

    .line 88
    :cond_1
    invoke-static {}, La20;->l()La20;

    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v4, p0}, La20;->k(I)Lhl;

    .line 95
    move-result-object p0

    .line 96
    if-eqz p0, :cond_2

    .line 98
    new-array v0, v0, [Ljava/lang/Object;

    .line 100
    invoke-virtual {p0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 103
    move-result-object v4

    .line 104
    iget v4, v4, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v4

    .line 110
    aput-object v4, v0, v3

    .line 112
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 118
    move-result-object p0

    .line 119
    iget p0, p0, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 121
    return p0

    .line 122
    :cond_2
    return v3
.end method

.method private initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8
    invoke-static {}, Lse;->c()Lse;

    .line 11
    move-result-object v1

    .line 12
    const/16 v2, 0x2742

    .line 14
    invoke-virtual {v1, v2}, Lse;->getBooleanValue(I)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    const/4 v1, -0x2

    .line 21
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 24
    :cond_0
    return-void
.end method

.method public static native nativeSurfaceCreated(IILandroid/view/Surface;)V
.end method

.method public static native nativeSurfaceDestroyed(ILandroid/view/Surface;)V
.end method

.method public static native nativeSurfaceRedrawNeeded(ILandroid/view/Surface;)V
.end method

.method public static native nativesurfaceChanged(ILandroid/view/Surface;III)V
.end method


# virtual methods
.method public getDisplayId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/MapSurfaceView;->mDisplayId:I

    .line 3
    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    move-result v2

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x1

    .line 24
    aput-object v2, v1, v3

    .line 26
    const-string v2, "MapSurfaceView"

    .line 28
    const-string v3, "surfaceChanged getWidth:{?} getHeight:{?} "

    .line 30
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v3, "surfaceChanged getWidth: "

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 46
    move-result v3

    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string v3, " getHeight: "

    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 58
    move-result v3

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lk6;->g()Lk6;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1, v0}, Lk6;->o(I)V

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 79
    move-result v0

    .line 80
    sput v0, Lcom/autonavi/amapauto/MapSurfaceView;->surfaceWidth:I

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 85
    move-result v0

    .line 86
    sput v0, Lcom/autonavi/amapauto/MapSurfaceView;->surfaceHeight:I

    .line 88
    iget v0, p0, Lcom/autonavi/amapauto/MapSurfaceView;->mDisplayId:I

    .line 90
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 93
    move-result-object p1

    .line 94
    invoke-static {v0, p1, p2, p3, p4}, Lcom/autonavi/amapauto/MapSurfaceView;->nativesurfaceChanged(ILandroid/view/Surface;III)V

    .line 97
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object v1, v0, v2

    .line 26
    const-string v1, "MapSurfaceView"

    .line 28
    const-string v3, "surfaceCreated getWidth:{?} getHeight:{?} "

    .line 30
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v3, "surfaceCreated getWidth: "

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 46
    move-result v3

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string v3, " getHeight: "

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 58
    move-result v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lk6;->g()Lk6;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, v2}, Lk6;->o(I)V

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 79
    move-result v0

    .line 80
    sput v0, Lcom/autonavi/amapauto/MapSurfaceView;->surfaceWidth:I

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 85
    move-result v0

    .line 86
    sput v0, Lcom/autonavi/amapauto/MapSurfaceView;->surfaceHeight:I

    .line 88
    iget v0, p0, Lcom/autonavi/amapauto/MapSurfaceView;->mDisplayId:I

    .line 90
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 93
    move-result-object p1

    .line 94
    invoke-static {v0, v2, p1}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceCreated(IILandroid/view/Surface;)V

    .line 97
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "MapSurfaceView"

    .line 6
    const-string v2, "surfaceDestroyed"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lk6;->g()Lk6;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-virtual {v0, v1}, Lk6;->o(I)V

    .line 22
    const/4 v0, -0x1

    .line 23
    sput v0, Lcom/autonavi/amapauto/MapSurfaceView;->surfaceWidth:I

    .line 25
    sput v0, Lcom/autonavi/amapauto/MapSurfaceView;->surfaceHeight:I

    .line 27
    iget v0, p0, Lcom/autonavi/amapauto/MapSurfaceView;->mDisplayId:I

    .line 29
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceDestroyed(ILandroid/view/Surface;)V

    .line 36
    return-void
.end method
