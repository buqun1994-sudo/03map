.class public Lnb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnb$c;
    }
.end annotation


# static fields
.field public static j:Ljava/lang/String; = ""

.field public static k:I = 0x136


# instance fields
.field public a:Lmm0;

.field public b:Lcr;

.field public c:Lxl0;

.field public d:Z

.field public e:I

.field public f:Z

.field public g:I

.field public h:Lom0;

.field public i:Ljava/lang/ref/WeakReference;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lnb;->f:Z

    .line 4
    iput v0, p0, Lnb;->g:I

    .line 5
    new-instance v0, Lmm0;

    invoke-direct {v0}, Lmm0;-><init>()V

    iput-object v0, p0, Lnb;->a:Lmm0;

    .line 6
    new-instance v0, Lfh;

    invoke-direct {v0}, Lfh;-><init>()V

    iput-object v0, p0, Lnb;->b:Lcr;

    .line 7
    new-instance v0, Lxl0;

    invoke-direct {v0}, Lxl0;-><init>()V

    iput-object v0, p0, Lnb;->c:Lxl0;

    return-void
.end method

.method public synthetic constructor <init>(Lnb$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnb;-><init>()V

    return-void
.end method

.method public static F()V
    .locals 0

    .line 1
    invoke-static {}, Lco;->a()V

    .line 4
    invoke-static {}, Lwc;->b()V

    .line 7
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->D()V

    .line 10
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->x()V

    .line 13
    invoke-static {}, Lvl0;->s()V

    .line 16
    return-void
.end method

.method public static synthetic a(Lnb;)Lcr;
    .locals 0

    .line 1
    iget-object p0, p0, Lnb;->b:Lcr;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lnb;)I
    .locals 0

    .line 1
    iget p0, p0, Lnb;->g:I

    .line 3
    return p0
.end method

.method public static synthetic c(Lnb;I)I
    .locals 0

    .line 1
    iput p1, p0, Lnb;->g:I

    .line 3
    return p1
.end method

.method public static synthetic d(Lnb;)I
    .locals 2

    .line 1
    iget v0, p0, Lnb;->g:I

    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 5
    iput v1, p0, Lnb;->g:I

    .line 7
    return v0
.end method

.method public static synthetic e(Lnb;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnb;->f()V

    .line 4
    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "AutoWidgetManager"

    .line 4
    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    move-result-object p0

    .line 14
    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 16
    int-to-float v3, v2

    .line 17
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 19
    int-to-float v4, p0

    .line 20
    if-ge v2, p0, :cond_0

    .line 22
    int-to-float v3, p0

    .line 23
    int-to-float v4, v2

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    const-string v2, "getDisplay width="

    .line 31
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, " height="

    .line 39
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    new-array v2, v0, [Ljava/lang/Object;

    .line 51
    invoke-static {v1, p0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    const/high16 p0, 0x44160000    # 600.0f

    .line 56
    div-float/2addr v4, p0

    .line 57
    const/high16 p0, 0x439b0000    # 310.0f

    .line 59
    mul-float p0, p0, v4

    .line 61
    float-to-int p0, p0

    .line 62
    sput p0, Lnb;->k:I

    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    const-string v2, "getDisplay new mapDefaultHeight="

    .line 71
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    sget v2, Lnb;->k:I

    .line 76
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v2, " heightRatio="

    .line 81
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    invoke-static {v1, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    const-string p0, "getDisplay context==null"

    .line 99
    new-array v0, v0, [Ljava/lang/Object;

    .line 101
    invoke-static {v1, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :goto_0
    return-void
.end method

.method public static j()Lnb;
    .locals 1

    .line 1
    invoke-static {}, Lnb$c;->a()Lnb;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public A(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V
    .locals 4

    .line 1
    invoke-static {}, Lob;->e()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lhm0;->l()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 14
    return-void

    .line 15
    :cond_1
    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getType()I

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_3

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_3

    .line 26
    const/4 v1, 0x2

    .line 27
    if-eq v0, v1, :cond_2

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurRoadName()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetCruise;->onCruiseRoadNameChange(Ljava/lang/String;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    new-instance v1, Lcom/autonavi/amapauto/widget/jni/NaviInfo;

    .line 45
    invoke-direct {v1}, Lcom/autonavi/amapauto/widget/jni/NaviInfo;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getType()I

    .line 51
    move-result v2

    .line 52
    iput v2, v1, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->type:I

    .line 54
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRouteRemainDis()I

    .line 57
    move-result v2

    .line 58
    int-to-double v2, v2

    .line 59
    iput-wide v2, v1, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->routeRemainDist:D

    .line 61
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRouteRemainTime()I

    .line 64
    move-result v2

    .line 65
    int-to-double v2, v2

    .line 66
    iput-wide v2, v1, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->routeRemainTime:D

    .line 68
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRouteRemainDistanceAuto()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    iput-object v2, v1, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->routeRemainDistAuto:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurRoadName()Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    iput-object v2, v1, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->curRouteName:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRoundAboutNum()I

    .line 83
    move-result v2

    .line 84
    iput v2, v1, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->ringOutCnt:I

    .line 86
    const/4 v2, 0x0

    .line 87
    iput v2, v1, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->NaviInfoFlag:I

    .line 89
    new-instance v2, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;

    .line 91
    invoke-direct {v2}, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;-><init>()V

    .line 94
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getIcon()I

    .line 97
    move-result v3

    .line 98
    iput v3, v2, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;->maneuverID:I

    .line 100
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextRoadName()Ljava/lang/String;

    .line 103
    move-result-object v3

    .line 104
    iput-object v3, v2, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;->nextRouteName:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSegRemainDis()I

    .line 109
    move-result v3

    .line 110
    iput v3, v2, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;->segmentRemainDist:I

    .line 112
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSegRemainDisAuto()Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    iput-object v3, v2, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;->segmentRemainDistAuto:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSegRemainTime()I

    .line 121
    move-result v3

    .line 122
    iput v3, v2, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;->segmentRemainTime:I

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    .line 126
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    iput-object v3, v1, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->NaviInfoData:Ljava/util/List;

    .line 131
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {v0, p1}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetNavi;->onUpdateNaviInfo(Ljava/util/List;Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 140
    :cond_4
    :goto_0
    return-void
.end method

.method public B()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoWidgetManager"

    .line 6
    const-string v3, "onTmcNeedClear \u6e05\u7a7a\u7f13\u5b58\u7684tmc\u4fe1\u606f\uff01\uff01\uff01"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lob;->e()Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    iput v0, p0, Lnb;->g:I

    .line 20
    invoke-static {}, Lco;->c()V

    .line 23
    const-wide/16 v0, 0x0

    .line 25
    sput-wide v0, Lco;->d:J

    .line 27
    return-void
.end method

.method public C(Ljava/util/List;II)V
    .locals 1

    .line 1
    new-instance v0, Lnb$b;

    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lnb$b;-><init>(Lnb;Ljava/util/List;II)V

    .line 6
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public D(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnb;->c:Lxl0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lxl0;->d(Ljava/util/List;)V

    .line 8
    :cond_0
    return-void
.end method

.method public E()V
    .locals 16

    .line 1
    invoke-static {}, Lob;->e()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    sget-boolean v0, Lzl0;->a:Z

    .line 10
    if-eqz v0, :cond_8

    .line 12
    sget-object v0, Lco;->h:[I

    .line 14
    if-eqz v0, :cond_8

    .line 16
    sget-object v0, Lco;->g:[I

    .line 18
    if-eqz v0, :cond_8

    .line 20
    invoke-virtual/range {p0 .. p0}, Lnb;->r()Z

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual/range {p0 .. p0}, Lnb;->s()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 34
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnb;->p()Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 40
    :cond_2
    const/4 v0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const/4 v0, 0x0

    .line 43
    :goto_0
    const/4 v3, 0x3

    .line 44
    const/4 v4, 0x2

    .line 45
    const-string v5, "AutoWidgetManager"

    .line 47
    if-eqz v0, :cond_7

    .line 49
    const/16 v0, 0x26c

    .line 51
    invoke-static {v0}, Lib;->u(I)Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_6

    .line 57
    invoke-static {}, Lrv;->H()Lrv;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    move-result-object v6

    .line 69
    sget v7, Lq80;->j:I

    .line 71
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 74
    move-result v6

    .line 75
    float-to-int v6, v6

    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object v7

    .line 80
    sget v8, Lq80;->n:I

    .line 82
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 85
    move-result v7

    .line 86
    float-to-int v7, v7

    .line 87
    new-instance v15, Lhh;

    .line 89
    invoke-direct {v15, v0, v6, v7}, Lhh;-><init>(Landroid/content/Context;II)V

    .line 92
    sget-object v9, Lco;->g:[I

    .line 94
    sget-object v10, Lco;->h:[I

    .line 96
    sget-object v11, Lco;->i:[I

    .line 98
    sget-object v12, Lco;->j:[Z

    .line 100
    const/16 v13, 0x168

    .line 102
    const/16 v14, 0x168

    .line 104
    invoke-virtual/range {p0 .. p0}, Lnb;->r()Z

    .line 107
    move-result v0

    .line 108
    move-object v8, v15

    .line 109
    move-object v6, v15

    .line 110
    move v15, v0

    .line 111
    invoke-virtual/range {v8 .. v15}, Lhh;->t([I[I[I[ZIIZ)Z

    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_5

    .line 117
    invoke-virtual {v6}, Lge;->getDriveWaysWidth()I

    .line 120
    move-result v0

    .line 121
    invoke-virtual {v6}, Lge;->getDriveWaysHeight()I

    .line 124
    move-result v7

    .line 125
    invoke-virtual {v6, v0, v7}, Landroid/view/View;->measure(II)V

    .line 128
    invoke-virtual {v6, v2, v2, v0, v7}, Landroid/view/View;->layout(IIII)V

    .line 131
    invoke-virtual {v6, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 134
    sget-object v0, Lco;->l:Landroid/graphics/Bitmap;

    .line 136
    sput-object v0, Lco;->k:Landroid/graphics/Bitmap;

    .line 138
    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 141
    move-result-object v0

    .line 142
    sput-object v0, Lco;->l:Landroid/graphics/Bitmap;

    .line 144
    invoke-static {}, Lib;->n()Z

    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_4

    .line 150
    sget-object v0, Lco;->l:Landroid/graphics/Bitmap;

    .line 152
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 155
    move-result v0

    .line 156
    sget-object v6, Lco;->l:Landroid/graphics/Bitmap;

    .line 158
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 161
    move-result v6

    .line 162
    sget-object v7, Lco;->l:Landroid/graphics/Bitmap;

    .line 164
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 167
    move-result-object v7

    .line 168
    invoke-static {v0, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 171
    move-result-object v0

    .line 172
    new-instance v6, Landroid/graphics/Canvas;

    .line 174
    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 177
    invoke-static {}, Lrv;->H()Lrv;

    .line 180
    move-result-object v7

    .line 181
    invoke-virtual {v7}, Lrv;->z()Landroid/content/Context;

    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 188
    move-result-object v7

    .line 189
    sget v8, Lq80;->r:I

    .line 191
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 194
    move-result v7

    .line 195
    const/16 v8, 0x8

    .line 197
    new-array v8, v8, [F

    .line 199
    int-to-float v7, v7

    .line 200
    aput v7, v8, v2

    .line 202
    aput v7, v8, v1

    .line 204
    aput v7, v8, v4

    .line 206
    aput v7, v8, v3

    .line 208
    const/4 v3, 0x4

    .line 209
    aput v7, v8, v3

    .line 211
    const/4 v3, 0x5

    .line 212
    aput v7, v8, v3

    .line 214
    const/4 v3, 0x6

    .line 215
    aput v7, v8, v3

    .line 217
    const/4 v3, 0x7

    .line 218
    aput v7, v8, v3

    .line 220
    new-instance v3, Landroid/graphics/Path;

    .line 222
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 225
    new-instance v4, Landroid/graphics/RectF;

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 230
    move-result v7

    .line 231
    int-to-float v7, v7

    .line 232
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 235
    move-result v9

    .line 236
    int-to-float v9, v9

    .line 237
    const/4 v10, 0x0

    .line 238
    invoke-direct {v4, v10, v10, v7, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 241
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 243
    invoke-virtual {v3, v4, v8, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 246
    invoke-virtual {v6, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 249
    sget-object v3, Lco;->l:Landroid/graphics/Bitmap;

    .line 251
    const/4 v4, 0x0

    .line 252
    invoke-virtual {v6, v3, v10, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 255
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 258
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 261
    sput-object v0, Lco;->l:Landroid/graphics/Bitmap;

    .line 263
    :cond_4
    new-array v0, v1, [Ljava/lang/Object;

    .line 265
    sget-object v1, Lco;->l:Landroid/graphics/Bitmap;

    .line 267
    aput-object v1, v0, v2

    .line 269
    const-string v1, "refreshWidgetWhenResumed(). naviRodLineBitmap={?}"

    .line 271
    invoke-static {v5, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    goto :goto_1

    .line 275
    :cond_5
    invoke-static {}, Lco;->e()V

    .line 278
    new-array v3, v4, [Ljava/lang/Object;

    .line 280
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 283
    move-result-object v0

    .line 284
    aput-object v0, v3, v2

    .line 286
    sget-object v0, Lco;->l:Landroid/graphics/Bitmap;

    .line 288
    aput-object v0, v3, v1

    .line 290
    const-string v0, "onLaneInfoShow().needShowFlag:{?} naviRoadLineBitmap={?} "

    .line 292
    invoke-static {v5, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    :cond_6
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lnb;->P()V

    .line 298
    goto :goto_2

    .line 299
    :cond_7
    new-array v0, v3, [Ljava/lang/Object;

    .line 301
    invoke-virtual/range {p0 .. p0}, Lnb;->r()Z

    .line 304
    move-result v3

    .line 305
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 308
    move-result-object v3

    .line 309
    aput-object v3, v0, v2

    .line 311
    invoke-virtual/range {p0 .. p0}, Lnb;->s()Z

    .line 314
    move-result v2

    .line 315
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 318
    move-result-object v2

    .line 319
    aput-object v2, v0, v1

    .line 321
    invoke-virtual/range {p0 .. p0}, Lnb;->p()Z

    .line 324
    move-result v1

    .line 325
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 328
    move-result-object v1

    .line 329
    aput-object v1, v0, v4

    .line 331
    const-string v1, "refreshWidgetWhenResumed(). isInNavi={?}, isInSimulateNavi={?}, isCruise={?}"

    .line 333
    invoke-static {v5, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    :cond_8
    :goto_2
    return-void
.end method

.method public G()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnb;->g:I

    .line 4
    return-void
.end method

.method public H(Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;)V
    .locals 1

    .line 1
    invoke-static {}, Lob;->e()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lem0;->d()Lem0;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lem0;->f(Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;)V

    .line 15
    return-void
.end method

.method public I(Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;)V
    .locals 6

    .line 1
    invoke-static {}, Lob;->e()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_2

    .line 10
    invoke-static {}, Lhm0;->l()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 16
    const/4 v0, 0x1

    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    const/4 v1, 0x0

    .line 20
    aput-object p1, v0, v1

    .line 22
    const-string v1, "AutoWidgetManager"

    .line 24
    const-string v2, "sendTmcSegment segmentData:{?}"

    .line 26
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->totalDistance:I

    .line 31
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->resiDistance:I

    .line 33
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->getTmcinfos()Ljava/util/List;

    .line 36
    move-result-object p1

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    if-eqz p1, :cond_1

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 47
    move-result v3

    .line 48
    if-lez v3, :cond_1

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object p1

    .line 54
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_1

    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;

    .line 66
    new-instance v4, Lcom/autonavi/amapauto/widget/jni/LightBarItem;

    .line 68
    invoke-direct {v4}, Lcom/autonavi/amapauto/widget/jni/LightBarItem;-><init>()V

    .line 71
    iget v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->distance:I

    .line 73
    iput v5, v4, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->length:I

    .line 75
    iget v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->status:I

    .line 77
    iput v3, v4, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->status:I

    .line 79
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0, v2, v0, v1}, Lnb;->C(Ljava/util/List;II)V

    .line 86
    :cond_2
    return-void
.end method

.method public J()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "AUTO_GUIDE_INFO_FOR_INTERNAL_WIDGET"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lrv;->H()Lrv;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lrv;->L()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-static {}, Lrv;->H()Lrv;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public K(I)V
    .locals 4

    .line 1
    invoke-static {}, Lob;->e()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lhm0;->j()Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const-string v2, "AutoWidgetManager"

    .line 15
    if-nez v0, :cond_1

    .line 17
    invoke-static {}, Lhm0;->i()Z

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 23
    const-string p1, "sendUpdateNaviStatusBrocast isWidgetAdded=false return!!!"

    .line 25
    new-array v0, v1, [Ljava/lang/Object;

    .line 27
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 33
    const-string v3, "AUTO_STATUS_FOR_INTERNAL_WIDGET"

    .line 35
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v3, "extra_auto_state"

    .line 40
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    invoke-static {}, Lrv;->H()Lrv;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lrv;->L()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-static {}, Lrv;->H()Lrv;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lrv;->z()Landroid/content/Context;

    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    const-string p1, "sendUpdateNaviStatusBrocast send!!!"

    .line 67
    new-array v0, v1, [Ljava/lang/Object;

    .line 69
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnb;->f:Z

    .line 3
    return-void
.end method

.method public M(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "AutoWidgetManager"

    .line 13
    const-string v2, "setCruise:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iput-boolean p1, p0, Lnb;->d:Z

    .line 20
    return-void
.end method

.method public N(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "AutoWidgetManager"

    .line 13
    const-string v2, "setMute={?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {p1}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetUI;->setMute(Z)V

    .line 21
    return-void
.end method

.method public O()V
    .locals 0

    .line 1
    return-void
.end method

.method public P()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_GPS_INFO"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lrv;->H()Lrv;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lrv;->L()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-static {}, Lrv;->H()Lrv;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    sget-object v0, Lco;->a:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lnb;->n()Lom0;

    .line 8
    move-result-object v0

    .line 9
    sget v1, Lco;->b:I

    .line 11
    invoke-virtual {v0, v1}, Lom0;->c(I)V

    .line 14
    invoke-virtual {p0}, Lnb;->n()Lom0;

    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lco;->a:Ljava/util/List;

    .line 20
    sget v2, Lco;->c:I

    .line 22
    invoke-virtual {v0, v1, v2}, Lom0;->a(Ljava/util/List;I)V

    .line 25
    invoke-static {}, Lco;->b()V

    .line 28
    const-class v0, Lco;

    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lco;->f:Landroid/graphics/Bitmap;

    .line 33
    sput-object v1, Lco;->e:Landroid/graphics/Bitmap;

    .line 35
    invoke-virtual {p0}, Lnb;->n()Lom0;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lom0;->getBitmap()Landroid/graphics/Bitmap;

    .line 42
    move-result-object v1

    .line 43
    sput-object v1, Lco;->f:Landroid/graphics/Bitmap;

    .line 45
    monitor-exit v0

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v1

    .line 50
    :cond_0
    :goto_0
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AutoWidgetManager"

    .line 6
    const-string v2, "destroyWidget"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lnb;->m()Lmm0;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lnb;->a:Lmm0;

    .line 19
    invoke-virtual {v0}, Lmm0;->d()V

    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lnb;->a:Lmm0;

    .line 25
    :cond_0
    invoke-static {}, Lnb;->F()V

    .line 28
    return-void
.end method

.method public declared-synchronized h()Lcr;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lnb;->b:Lcr;

    .line 4
    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lfh;

    .line 8
    invoke-direct {v0}, Lfh;-><init>()V

    .line 11
    iput-object v0, p0, Lnb;->b:Lcr;

    .line 13
    :cond_0
    iget-object v0, p0, Lnb;->b:Lcr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method

.method public k()Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;
    .locals 1

    .line 1
    sget-object v0, Lpm0;->b:Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;

    .line 3
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lnb;->j:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public declared-synchronized m()Lmm0;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lnb;->a:Lmm0;

    .line 4
    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lmm0;

    .line 8
    invoke-direct {v0}, Lmm0;-><init>()V

    .line 11
    iput-object v0, p0, Lnb;->a:Lmm0;

    .line 13
    :cond_0
    iget-object v0, p0, Lnb;->a:Lmm0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method

.method public n()Lom0;
    .locals 2

    .line 1
    iget-object v0, p0, Lnb;->h:Lom0;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lom0;

    .line 7
    invoke-static {}, Lrv;->H()Lrv;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lom0;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lnb;->h:Lom0;

    .line 20
    invoke-static {}, Lrv;->H()Lrv;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lnb;->i(Landroid/content/Context;)V

    .line 31
    iget-object v0, p0, Lnb;->h:Lom0;

    .line 33
    sget v1, Lnb;->k:I

    .line 35
    invoke-virtual {v0, v1}, Lom0;->b(I)V

    .line 38
    :cond_0
    iget-object v0, p0, Lnb;->h:Lom0;

    .line 40
    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnb;->f:Z

    .line 3
    return v0
.end method

.method public p()Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lnb;->d:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "AutoWidgetManager"

    .line 15
    const-string v2, "mIsCruise:{?}"

    .line 17
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lib;->n()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetNavi;->isInCruise()Z

    .line 29
    move-result v0

    .line 30
    iput-boolean v0, p0, Lnb;->d:Z

    .line 32
    :cond_0
    iget-boolean v0, p0, Lnb;->d:Z

    .line 34
    return v0
.end method

.method public q()Z
    .locals 2

    .line 1
    iget v0, p0, Lnb;->e:I

    .line 3
    const/16 v1, 0x19f

    .line 5
    if-eq v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public r()Z
    .locals 7

    .line 1
    const-string v0, "AutoWidgetManager"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetNavi;->isInNavi()Z

    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-nez v2, :cond_1

    .line 11
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetNavi;->isInSimulateNavi()Z

    .line 14
    move-result v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    if-eqz v2, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 21
    :goto_1
    :try_start_1
    const-string v4, "isInNavi:{?}"

    .line 23
    new-array v3, v3, [Ljava/lang/Object;

    .line 25
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    move-result-object v5

    .line 29
    aput-object v5, v3, v1

    .line 31
    invoke-static {v0, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    goto :goto_3

    .line 35
    :catch_0
    move-exception v3

    .line 36
    move-object v6, v3

    .line 37
    move v3, v2

    .line 38
    move-object v2, v6

    .line 39
    goto :goto_2

    .line 40
    :catch_1
    move-exception v2

    .line 41
    const/4 v3, 0x0

    .line 42
    :goto_2
    const-string v4, "ocuur an UnsatisfiedLinkError "

    .line 44
    new-array v1, v1, [Ljava/lang/Object;

    .line 46
    invoke-static {v0, v4, v2, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 49
    move v2, v3

    .line 50
    :goto_3
    return v2
.end method

.method public s()Z
    .locals 7

    .line 1
    const-string v0, "AutoWidgetManager"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetNavi;->isInSimulateNavi()Z

    .line 8
    move-result v3
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    const-string v4, "isInNavi:{?}"

    .line 11
    new-array v5, v1, [Ljava/lang/Object;

    .line 13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v6

    .line 17
    aput-object v6, v5, v2

    .line 19
    invoke-static {v0, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception v4

    .line 24
    goto :goto_0

    .line 25
    :catch_1
    move-exception v4

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    const-string v5, "ocuur an UnsatisfiedLinkError "

    .line 29
    new-array v6, v2, [Ljava/lang/Object;

    .line 31
    invoke-static {v0, v5, v4, v6}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 34
    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    move-result-object v4

    .line 40
    aput-object v4, v1, v2

    .line 42
    const-string v2, "isInSimulateNavi:{?}"

    .line 44
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return v3
.end method

.method public t()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeIsMute()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object v3

    .line 13
    aput-object v3, v1, v2

    .line 15
    const-string v2, "AutoWidgetManager"

    .line 17
    const-string v3, "isMute={?}"

    .line 19
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    return v0
.end method

.method public u()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeIsNightMode()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object v3

    .line 13
    aput-object v3, v1, v2

    .line 15
    const-string v2, "AutoWidgetManager"

    .line 17
    const-string v3, "isNightMode={?}"

    .line 19
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    return v0
.end method

.method public v()Z
    .locals 7

    .line 1
    invoke-static {}, Lob;->c()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "AutoWidgetManager"

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lvl0;->o()Z

    .line 14
    move-result v0

    .line 15
    invoke-static {}, Lhm0;->j()Z

    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x2

    .line 20
    new-array v5, v5, [Ljava/lang/Object;

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object v6

    .line 26
    aput-object v6, v5, v3

    .line 28
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    move-result-object v6

    .line 32
    aput-object v6, v5, v2

    .line 34
    const-string v6, "[AMapOperator]. isBgRenderNeeded(). isNeedUseInternalWidget={?}, is4x3WidgetAdded={?}, "

    .line 36
    invoke-static {v1, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    if-eqz v0, :cond_0

    .line 41
    sget v0, Lvl0;->h:I

    .line 43
    sget v5, Lvl0;->g:I

    .line 45
    if-ne v0, v5, :cond_1

    .line 47
    if-eqz v4, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x0

    .line 52
    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    move-result-object v4

    .line 58
    aput-object v4, v2, v3

    .line 60
    const-string v3, "isWidgetRenderNeeded(). {?}"

    .line 62
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    return v0
.end method

.method public w(I)V
    .locals 5

    .line 1
    invoke-static {}, Lob;->c()Z

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lnb;->j()Lnb;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lnb;->p()Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    const-string v4, "AutoWidgetManager"

    .line 17
    if-eqz v0, :cond_2

    .line 19
    if-eqz v1, :cond_2

    .line 21
    iget-object v0, p0, Lnb;->i:Ljava/lang/ref/WeakReference;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/graphics/Bitmap;

    .line 31
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 39
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object v0

    .line 51
    sget v1, Lt80;->J2:I

    .line 53
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 59
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 62
    iput-object v1, p0, Lnb;->i:Ljava/lang/ref/WeakReference;

    .line 64
    :cond_1
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->b:Landroid/graphics/Bitmap;

    .line 66
    sput-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->c:Landroid/graphics/Bitmap;

    .line 68
    invoke-static {v0, p1}, Lob;->m(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->b:Landroid/graphics/Bitmap;

    .line 74
    invoke-static {}, Lrv;->H()Lrv;

    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0}, Lob;->n(Landroid/content/Context;)V

    .line 85
    new-array v0, v2, [Ljava/lang/Object;

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object p1

    .line 91
    aput-object p1, v0, v3

    .line 93
    const-string p1, "dealWithMapview().[onCarAngleChange] angle={?}"

    .line 95
    invoke-static {v4, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    const/4 p1, 0x2

    .line 100
    new-array p1, p1, [Ljava/lang/Object;

    .line 102
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    move-result-object v0

    .line 106
    aput-object v0, p1, v3

    .line 108
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 111
    move-result-object v0

    .line 112
    aput-object v0, p1, v2

    .line 114
    const-string v0, "dealWithMapview().[onCarAngleChange] isScreenShotEnabled={?},isCruise={?}"

    .line 116
    invoke-static {v4, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :goto_0
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lnb;->M(Z)V

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lvl0;->d(Z)V

    .line 9
    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    new-instance v0, Lnb$a;

    .line 3
    invoke-direct {v0, p0}, Lnb$a;-><init>(Lnb;)V

    .line 6
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public z(I)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lnb;->e:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    const/4 v3, 0x1

    .line 18
    aput-object v1, v0, v3

    .line 20
    const-string v1, "AutoWidgetManager"

    .line 22
    const-string v4, "onGpsStatusChange mCurrentGpsStatus = {?}, new gpsStatus = {?}"

    .line 24
    invoke-static {v1, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget v0, p0, Lnb;->e:I

    .line 29
    if-eq v0, p1, :cond_0

    .line 31
    const/4 v2, 0x1

    .line 32
    :cond_0
    iput p1, p0, Lnb;->e:I

    .line 34
    invoke-static {}, Lnb;->j()Lnb;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lnb;->r()Z

    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 44
    invoke-static {}, Lnb;->j()Lnb;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lnb;->s()Z

    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_1

    .line 54
    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {p0}, Lnb;->P()V

    .line 59
    :cond_1
    return-void
.end method
