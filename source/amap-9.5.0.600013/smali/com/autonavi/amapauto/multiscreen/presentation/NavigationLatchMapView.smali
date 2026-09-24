.class public Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;
.super Lcom/autonavi/amapauto/MapSurfaceView;
.source "SourceFile"


# instance fields
.field public a:Lcom/autonavi/amapauto/jni/ViewInfo;

.field public b:Landroid/os/Handler;

.field public c:Lhl;

.field public d:Landroid/view/Surface;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/autonavi/amapauto/MapSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 11
    const/4 p1, 0x0

    .line 12
    new-array p1, p1, [Ljava/lang/Object;

    .line 14
    const-string p2, "NavigationLatchMapView"

    .line 16
    const-string v0, "construct NavigationLatchMapView !!"

    .line 18
    invoke-static {p2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public static synthetic a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->d:Landroid/view/Surface;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->e:I

    .line 3
    return p0
.end method

.method public static synthetic d(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->f:I

    .line 3
    return p0
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "NavigationLatchMapView"

    .line 6
    const-string v2, "onDetachedFromWindow"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 14
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v0, v1

    .line 25
    const/4 v1, 0x3

    .line 26
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v2

    .line 30
    aput-object v2, v0, v1

    .line 32
    const-string v1, "NavigationLatchMapView"

    .line 34
    const-string v2, "onSizeChanged:w:{?},h:{?},oldw:{?},oldh:{?}"

    .line 36
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 42
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "NavigationLatchMapView surfaceChanged:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ","

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ",displayId:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->c:Lhl;

    .line 29
    if-nez v1, :cond_0

    .line 31
    const-string v1, "null"

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Lhl;->d()I

    .line 37
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v1

    .line 42
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x0

    .line 50
    new-array v2, v1, [Ljava/lang/Object;

    .line 52
    const-string v3, "NavigationLatchMapView"

    .line 54
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const-string v0, "Eaglet "

    .line 59
    const-string v2, "NavigationLatchMapView  surfaceChanged"

    .line 61
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->d:Landroid/view/Surface;

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 73
    move-result p1

    .line 74
    iput p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->e:I

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 79
    move-result p1

    .line 80
    iput p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->f:I

    .line 82
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->c:Lhl;

    .line 84
    if-eqz p1, :cond_1

    .line 86
    new-instance p1, Lcom/autonavi/extscreen/dto/PresentationConfig;

    .line 88
    invoke-direct {p1}, Lcom/autonavi/extscreen/dto/PresentationConfig;-><init>()V

    .line 91
    iput p3, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->width:I

    .line 93
    iput p4, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->height:I

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 98
    move-result-object p3

    .line 99
    invoke-static {p3}, Lsi;->q(Landroid/content/Context;)F

    .line 102
    move-result p3

    .line 103
    float-to-int p3, p3

    .line 104
    iput p3, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->dpi:I

    .line 106
    invoke-static {}, La20;->l()La20;

    .line 109
    move-result-object p3

    .line 110
    invoke-virtual {p3}, La20;->m()Ljava/util/HashMap;

    .line 113
    move-result-object p3

    .line 114
    iget-object p4, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->c:Lhl;

    .line 116
    invoke-virtual {p4}, Lhl;->d()I

    .line 119
    move-result p4

    .line 120
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object p4

    .line 124
    invoke-virtual {p3, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const/4 p3, 0x3

    .line 128
    new-array p3, p3, [Ljava/lang/Object;

    .line 130
    iget p4, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->width:I

    .line 132
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    move-result-object p4

    .line 136
    aput-object p4, p3, v1

    .line 138
    iget p4, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->height:I

    .line 140
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object p4

    .line 144
    const/4 v0, 0x1

    .line 145
    aput-object p4, p3, v0

    .line 147
    iget p1, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->dpi:I

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object p1

    .line 153
    const/4 p4, 0x2

    .line 154
    aput-object p1, p3, p4

    .line 156
    const-string p1, "NavigationLatchMapView surfaceChanged width:{?},height:{?},dpi:{?}"

    .line 158
    invoke-static {v3, p1, p3}, Lcz;->x(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->c:Lhl;

    .line 163
    if-eqz p1, :cond_4

    .line 165
    iget-object p3, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 167
    if-eqz p3, :cond_4

    .line 169
    iget-object p3, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->d:Landroid/view/Surface;

    .line 171
    invoke-virtual {p1, p3}, Lhl;->p(Landroid/view/Surface;)V

    .line 174
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 176
    iget p3, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->e:I

    .line 178
    iput p3, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 180
    iget p3, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->f:I

    .line 182
    iput p3, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 184
    iget p3, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 186
    if-gtz p3, :cond_2

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 191
    move-result-object p3

    .line 192
    invoke-static {p3}, Lsi;->q(Landroid/content/Context;)F

    .line 195
    move-result p3

    .line 196
    float-to-int p3, p3

    .line 197
    iput p3, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 199
    :cond_2
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->c:Lhl;

    .line 201
    iget-object p3, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 203
    invoke-virtual {p1, p3}, Lhl;->r(Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 206
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 208
    iget-boolean p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 210
    if-eqz p1, :cond_3

    .line 212
    const-string p1, "surfaceChanged handle sync !!!"

    .line 214
    new-array p3, v1, [Ljava/lang/Object;

    .line 216
    invoke-static {v3, p1, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 221
    iget p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 223
    iget-object p3, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->d:Landroid/view/Surface;

    .line 225
    iget p4, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->e:I

    .line 227
    iget v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->f:I

    .line 229
    invoke-static {p1, p3, p2, p4, v0}, Lcom/autonavi/amapauto/MapSurfaceView;->nativesurfaceChanged(ILandroid/view/Surface;III)V

    .line 232
    goto :goto_1

    .line 233
    :cond_3
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->b:Landroid/os/Handler;

    .line 235
    if-eqz p1, :cond_4

    .line 237
    new-instance p3, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView$b;

    .line 239
    invoke-direct {p3, p0, p2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView$b;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;I)V

    .line 242
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    :cond_4
    :goto_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 6

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
    const/4 v4, 0x1

    .line 24
    aput-object v2, v1, v4

    .line 26
    const-string v2, "NavigationLatchMapView"

    .line 28
    const-string v5, "NavigationLatchMapView surfaceCreated width:{?}, height:{?}"

    .line 30
    invoke-static {v2, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->d:Landroid/view/Surface;

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->e:I

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 48
    move-result p1

    .line 49
    iput p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->f:I

    .line 51
    const-string p1, "Eaglet "

    .line 53
    const-string v1, "NavigationLatchMapView  surfaceCreated"

    .line 55
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->c:Lhl;

    .line 60
    if-eqz p1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 64
    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->d:Landroid/view/Surface;

    .line 68
    invoke-virtual {p1, v1}, Lhl;->p(Landroid/view/Surface;)V

    .line 71
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 73
    iget v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->e:I

    .line 75
    iput v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 77
    iget v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->f:I

    .line 79
    iput v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 81
    iget v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 83
    if-gtz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    move-result-object v1

    .line 89
    invoke-static {v1}, Lsi;->q(Landroid/content/Context;)F

    .line 92
    move-result v1

    .line 93
    float-to-int v1, v1

    .line 94
    iput v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->c:Lhl;

    .line 98
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 100
    invoke-virtual {p1, v1}, Lhl;->r(Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 103
    new-array p1, v0, [Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 107
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v0

    .line 113
    aput-object v0, p1, v3

    .line 115
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 117
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 119
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    move-result-object v0

    .line 123
    aput-object v0, p1, v4

    .line 125
    const-string v0, "MultiScreenNative.surfaceCreated id = {?}, isSynMultiScreenNotify = {?}"

    .line 127
    invoke-static {v2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 132
    iget-boolean p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 134
    if-eqz p1, :cond_1

    .line 136
    const-string p1, "surfaceCreated handle sync !!!"

    .line 138
    new-array v0, v3, [Ljava/lang/Object;

    .line 140
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 145
    iget v0, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 147
    iget p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->l:I

    .line 149
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->d:Landroid/view/Surface;

    .line 151
    invoke-static {v0, p1, v1}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceCreated(IILandroid/view/Surface;)V

    .line 154
    goto :goto_0

    .line 155
    :cond_1
    invoke-static {}, Lvo;->a()Landroid/os/Handler;

    .line 158
    move-result-object p1

    .line 159
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->b:Landroid/os/Handler;

    .line 161
    if-eqz p1, :cond_2

    .line 163
    new-instance v0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView$a;

    .line 165
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView$a;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;)V

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    :cond_2
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    new-instance v2, Ljava/lang/Throwable;

    .line 6
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 9
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v2, v1, v3

    .line 16
    const-string v2, "NavigationLatchMapView"

    .line 18
    const-string v4, " surfaceDestroyed stacktrace={?}"

    .line 20
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->d:Landroid/view/Surface;

    .line 29
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->c:Lhl;

    .line 31
    if-eqz v1, :cond_1

    .line 33
    iget-object v4, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 35
    if-eqz v4, :cond_1

    .line 37
    invoke-virtual {v1, p1}, Lhl;->p(Landroid/view/Surface;)V

    .line 40
    const/4 p1, 0x2

    .line 41
    new-array p1, p1, [Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 45
    iget v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v1

    .line 51
    aput-object v1, p1, v3

    .line 53
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 55
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 57
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    move-result-object v1

    .line 61
    aput-object v1, p1, v0

    .line 63
    const-string v0, "MultiScreenNative.surfaceDestroy id = {?}, isSynMultiScreenNotify = {?}"

    .line 65
    invoke-static {v2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 70
    iget-boolean p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 72
    if-eqz p1, :cond_0

    .line 74
    const-string p1, "surfaceDestroyed handle sync !!!"

    .line 76
    new-array v0, v3, [Ljava/lang/Object;

    .line 78
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 83
    iget p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 85
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->d:Landroid/view/Surface;

    .line 87
    invoke-static {p1, v0}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceDestroyed(ILandroid/view/Surface;)V

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->b:Landroid/os/Handler;

    .line 93
    if-eqz p1, :cond_1

    .line 95
    new-instance v0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView$c;

    .line 97
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView$c;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;)V

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "NavigationLatchMapView{TAG=\'NavigationLatchMapView\', mViewInfo="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const/16 v1, 0x7d

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
