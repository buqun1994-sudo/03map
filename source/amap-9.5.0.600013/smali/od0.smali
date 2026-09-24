.class public Lod0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/View;

.field public c:Z

.field public d:I

.field public e:I

.field public f:F

.field public g:I

.field public h:I

.field public i:F

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lod0;->c:Z

    .line 7
    iput v0, p0, Lod0;->d:I

    .line 9
    iput v0, p0, Lod0;->e:I

    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lod0;->f:F

    .line 14
    iput v0, p0, Lod0;->g:I

    .line 16
    iput v0, p0, Lod0;->h:I

    .line 18
    iput-object p1, p0, Lod0;->b:Landroid/view/View;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lod0;->a:Landroid/content/Context;

    .line 26
    invoke-virtual {p0, p2, p1}, Lod0;->b(Landroid/util/AttributeSet;Landroid/view/View;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lod0;->c:Z

    .line 3
    if-eqz v0, :cond_3

    .line 5
    if-eqz p1, :cond_3

    .line 7
    if-nez p2, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lod0;->j:Ljava/lang/String;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    const-string v1, "oval"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 25
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    iput v0, p0, Lod0;->i:F

    .line 29
    :cond_1
    iget v0, p0, Lod0;->d:I

    .line 31
    invoke-static {}, Ln30;->a()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 37
    iget v1, p0, Lod0;->e:I

    .line 39
    const/4 v2, -0x1

    .line 40
    if-eq v1, v2, :cond_2

    .line 42
    move v0, v1

    .line 43
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v2, "draw:mShadowCorner= "

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget v2, p0, Lod0;->i:F

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    const-string v2, "hlf"

    .line 64
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lzf;->d()Lzf;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Lzf;->a(I)Lzf;

    .line 74
    move-result-object v0

    .line 75
    iget v1, p0, Lod0;->i:F

    .line 77
    float-to-int v1, v1

    .line 78
    invoke-virtual {v0, v1}, Lzf;->c(I)Lzf;

    .line 81
    move-result-object v0

    .line 82
    iget v1, p0, Lod0;->i:F

    .line 84
    float-to-int v1, v1

    .line 85
    invoke-virtual {v0, v1}, Lzf;->h(I)Lzf;

    .line 88
    move-result-object v0

    .line 89
    iget v1, p0, Lod0;->i:F

    .line 91
    float-to-int v1, v1

    .line 92
    invoke-virtual {v0, v1}, Lzf;->b(I)Lzf;

    .line 95
    move-result-object v0

    .line 96
    iget v1, p0, Lod0;->i:F

    .line 98
    float-to-int v1, v1

    .line 99
    invoke-virtual {v0, v1}, Lzf;->g(I)Lzf;

    .line 102
    move-result-object v0

    .line 103
    iget v1, p0, Lod0;->f:F

    .line 105
    invoke-virtual {v0, v1}, Lzf;->e(F)Lzf;

    .line 108
    move-result-object v0

    .line 109
    iget v1, p0, Lod0;->g:I

    .line 111
    invoke-virtual {v0, v1}, Lzf;->i(I)Lzf;

    .line 114
    move-result-object v0

    .line 115
    iget v1, p0, Lod0;->h:I

    .line 117
    invoke-virtual {v0, v1}, Lzf;->j(I)Lzf;

    .line 120
    move-result-object v0

    .line 121
    invoke-static {p1, p2, v0}, Lnd0;->a(Landroid/graphics/Canvas;Landroid/view/View;Lzf;)V

    .line 124
    :cond_3
    :goto_0
    return-void
.end method

.method public final b(Landroid/util/AttributeSet;Landroid/view/View;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 3
    if-eqz p2, :cond_2

    .line 5
    sget-boolean v0, Lfb;->a:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto/16 :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lod0;->a:Landroid/content/Context;

    .line 13
    sget-object v1, Lj90;->d:[I

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_2

    .line 21
    :try_start_0
    sget v0, Lj90;->l:I

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 27
    move-result v0

    .line 28
    iput-boolean v0, p0, Lod0;->c:Z

    .line 30
    if-eqz v0, :cond_1

    .line 32
    iput-boolean v1, p0, Lod0;->c:Z

    .line 34
    invoke-virtual {p2, v1}, Landroid/view/View;->setWillNotDraw(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    sget p2, Lj90;->e:I

    .line 39
    iget-object v0, p0, Lod0;->a:Landroid/content/Context;

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v0

    .line 45
    const v2, 0x106000c

    .line 48
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 51
    move-result v0

    .line 52
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 55
    move-result p2

    .line 56
    iput p2, p0, Lod0;->d:I

    .line 58
    sget p2, Lj90;->f:I

    .line 60
    const/4 v0, -0x1

    .line 61
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 64
    move-result p2

    .line 65
    iput p2, p0, Lod0;->e:I

    .line 67
    sget p2, Lj90;->j:I

    .line 69
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 73
    move-result p2

    .line 74
    iput p2, p0, Lod0;->f:F

    .line 76
    sget p2, Lj90;->h:I

    .line 78
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 81
    move-result p2

    .line 82
    float-to-int p2, p2

    .line 83
    iput p2, p0, Lod0;->g:I

    .line 85
    sget p2, Lj90;->i:I

    .line 87
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 90
    move-result p2

    .line 91
    float-to-int p2, p2

    .line 92
    iput p2, p0, Lod0;->h:I

    .line 94
    sget p2, Lj90;->g:I

    .line 96
    iget-object v0, p0, Lod0;->a:Landroid/content/Context;

    .line 98
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    move-result-object v0

    .line 102
    sget v2, Lq80;->r:I

    .line 104
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 107
    move-result v0

    .line 108
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 111
    move-result p2

    .line 112
    iput p2, p0, Lod0;->i:F

    .line 114
    sget p2, Lj90;->k:I

    .line 116
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 119
    move-result-object p2

    .line 120
    iput-object p2, p0, Lod0;->j:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    goto :goto_0

    .line 123
    :catch_0
    move-exception p2

    .line 124
    :try_start_2
    const-string v0, "ShadowViewController"

    .line 126
    const-string v2, "excute initShadowView method ocuur a exeception: "

    .line 128
    new-array v1, v1, [Ljava/lang/Object;

    .line 130
    invoke-static {v0, v2, p2, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    goto :goto_1

    .line 137
    :catchall_0
    move-exception p2

    .line 138
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    throw p2

    .line 142
    :cond_2
    :goto_1
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lod0;->c:Z

    .line 8
    invoke-static {}, Lnd0;->c()V

    .line 11
    iget-object p1, p0, Lod0;->b:Landroid/view/View;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lod0;->c:Z

    .line 20
    iget-object p1, p0, Lod0;->b:Landroid/view/View;

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 25
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lod0;->c:Z

    .line 3
    return-void
.end method
