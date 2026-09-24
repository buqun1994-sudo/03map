.class public abstract Lfc;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Landroid/view/WindowManager;

.field public c:J

.field public d:F

.field public e:F

.field public f:I

.field public g:I

.field public h:Z

.field public i:J

.field public j:Landroid/content/Context;

.field public k:Landroid/view/WindowManager$LayoutParams;

.field public l:Landroid/content/SharedPreferences;

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:Z

.field public r:I

.field public s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lfc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lfc;->n:Z

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfc;->a:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lfc;->j:Landroid/content/Context;

    const-string v0, "window"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lfc;->b:Landroid/view/WindowManager;

    const-string v0, "SharedPreferences"

    .line 7
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lfc;->l:Landroid/content/SharedPreferences;

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lfc;->getFloatLayoutId()I

    move-result p2

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    invoke-virtual {p0}, Lfc;->c()V

    .line 10
    invoke-virtual {p0}, Lfc;->j()V

    .line 11
    iget-object p1, p0, Lfc;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 12
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lfc;->r:I

    .line 13
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lfc;->s:I

    return-void
.end method


# virtual methods
.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V
.end method

.method public abstract g()V
.end method

.method public getConfigSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lfc;->l:Landroid/content/SharedPreferences;

    .line 3
    return-object v0
.end method

.method public abstract getFloatLayoutId()I
.end method

.method public getSavedWindowLeft()I
    .locals 4

    .line 1
    iget-object v0, p0, Lfc;->l:Landroid/content/SharedPreferences;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    const-string v2, "float_window_location_left"

    .line 9
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lfc;->o:I

    .line 15
    const/16 v0, 0x3f0

    .line 17
    :try_start_0
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetBooleanValue(I)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 23
    iget v0, p0, Lfc;->o:I

    .line 25
    if-nez v0, :cond_2

    .line 27
    instance-of v0, p0, Lkm;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lsi;->I()I

    .line 40
    move-result v2

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v3

    .line 49
    if-eqz v0, :cond_1

    .line 51
    sget v0, Lq80;->q:I

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    sget v0, Lq80;->i:I

    .line 56
    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 59
    move-result v0

    .line 60
    sub-int/2addr v2, v0

    .line 61
    div-int/lit8 v2, v2, 0x2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return v2

    .line 64
    :catch_0
    move-exception v0

    .line 65
    iget-object v2, p0, Lfc;->a:Ljava/lang/String;

    .line 67
    const-string v3, "occur a UnsatisfiedLinkError !"

    .line 69
    new-array v1, v1, [Ljava/lang/Object;

    .line 71
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 74
    :cond_2
    iget v0, p0, Lfc;->o:I

    .line 76
    return v0
.end method

.method public getSavedWindowTop()I
    .locals 3

    .line 1
    iget-object v0, p0, Lfc;->l:Landroid/content/SharedPreferences;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    const-string v2, "float_window_location_top"

    .line 9
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lfc;->p:I

    .line 15
    return v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lfc;->b:Landroid/view/WindowManager;

    .line 3
    return-object v0
.end method

.method public getWmParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lfc;->k:Landroid/view/WindowManager$LayoutParams;

    .line 3
    return-object v0
.end method

.method public getmContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lfc;->j:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public abstract h(Z)V
.end method

.method public abstract i(Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;)V
.end method

.method public abstract j()V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object v0, p0, Lfc;->a:Ljava/lang/String;

    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p1, v1, v2

    .line 12
    const-string v2, "onConfigurationChanged:{?}"

    .line 14
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 19
    const/4 v0, 0x2

    .line 20
    if-ne p1, v0, :cond_0

    .line 22
    iget-object p1, p0, Lfc;->j:Landroid/content/Context;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 31
    move-result-object p1

    .line 32
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 34
    iput v0, p0, Lfc;->r:I

    .line 36
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 38
    iput p1, p0, Lfc;->s:I

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lfc;->j:Landroid/content/Context;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 50
    move-result-object p1

    .line 51
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 53
    iput v0, p0, Lfc;->r:I

    .line 55
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 57
    iput p1, p0, Lfc;->s:I

    .line 59
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v1, :cond_7

    .line 12
    if-eq v0, v3, :cond_0

    .line 14
    const/4 p1, 0x3

    .line 15
    if-eq v0, p1, :cond_7

    .line 17
    goto/16 :goto_4

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 26
    move-result v3

    .line 27
    iget-object v4, p0, Lfc;->j:Landroid/content/Context;

    .line 29
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 36
    move-result-object v4

    .line 37
    const/high16 v5, 0x40000000    # 2.0f

    .line 39
    invoke-static {v1, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 42
    move-result v4

    .line 43
    iget v5, p0, Lfc;->d:F

    .line 45
    sub-float/2addr v5, v0

    .line 46
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 49
    move-result v0

    .line 50
    cmpl-float v0, v0, v4

    .line 52
    if-gtz v0, :cond_1

    .line 54
    iget v0, p0, Lfc;->e:F

    .line 56
    sub-float/2addr v0, v3

    .line 57
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 60
    move-result v0

    .line 61
    cmpl-float v0, v0, v4

    .line 63
    if-lez v0, :cond_b

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 68
    move-result v0

    .line 69
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 72
    move-result v0

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 76
    move-result p1

    .line 77
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 80
    move-result p1

    .line 81
    iget v3, p0, Lfc;->f:I

    .line 83
    sub-int v3, v0, v3

    .line 85
    iget v4, p0, Lfc;->g:I

    .line 87
    sub-int v4, p1, v4

    .line 89
    iput v0, p0, Lfc;->f:I

    .line 91
    iput p1, p0, Lfc;->g:I

    .line 93
    iget-object p1, p0, Lfc;->k:Landroid/view/WindowManager$LayoutParams;

    .line 95
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 97
    add-int/2addr v0, v3

    .line 98
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 100
    add-int/2addr p1, v4

    .line 101
    if-gez v0, :cond_2

    .line 103
    const/4 v0, 0x0

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    iget v3, p0, Lfc;->r:I

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 110
    move-result v4

    .line 111
    sub-int/2addr v3, v4

    .line 112
    if-le v0, v3, :cond_3

    .line 114
    iget v0, p0, Lfc;->r:I

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 119
    move-result v3

    .line 120
    sub-int/2addr v0, v3

    .line 121
    :cond_3
    :goto_0
    if-gez p1, :cond_4

    .line 123
    const/4 p1, 0x0

    .line 124
    goto :goto_1

    .line 125
    :cond_4
    iget v3, p0, Lfc;->s:I

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 130
    move-result v4

    .line 131
    sub-int/2addr v3, v4

    .line 132
    if-le p1, v3, :cond_5

    .line 134
    iget p1, p0, Lfc;->s:I

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 139
    move-result v3

    .line 140
    sub-int/2addr p1, v3

    .line 141
    :cond_5
    :goto_1
    iget-object v3, p0, Lfc;->k:Landroid/view/WindowManager$LayoutParams;

    .line 143
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 145
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 147
    :try_start_0
    iget-boolean p1, p0, Lfc;->m:Z

    .line 149
    if-eqz p1, :cond_6

    .line 151
    iget-object p1, p0, Lfc;->b:Landroid/view/WindowManager;

    .line 153
    invoke-interface {p1, p0, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iput-boolean v1, p0, Lfc;->n:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    goto :goto_2

    .line 159
    :catch_0
    move-exception p1

    .line 160
    iget-object v0, p0, Lfc;->a:Ljava/lang/String;

    .line 162
    const-string v1, "mWindowManager.updateViewLayout occur Exception "

    .line 164
    new-array v3, v2, [Ljava/lang/Object;

    .line 166
    invoke-static {v0, v1, p1, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 169
    goto :goto_2

    .line 170
    :catch_1
    move-exception p1

    .line 171
    iget-object v0, p0, Lfc;->a:Ljava/lang/String;

    .line 173
    const-string v1, "mWindowManager.updateViewLayout occur IllegalArgumentException "

    .line 175
    new-array v3, v2, [Ljava/lang/Object;

    .line 177
    invoke-static {v0, v1, p1, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 180
    :cond_6
    :goto_2
    return v2

    .line 181
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 184
    move-result-wide v4

    .line 185
    iput-wide v4, p0, Lfc;->i:J

    .line 187
    iget-object p1, p0, Lfc;->l:Landroid/content/SharedPreferences;

    .line 189
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 192
    move-result-object p1

    .line 193
    iget-object v0, p0, Lfc;->k:Landroid/view/WindowManager$LayoutParams;

    .line 195
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 197
    const-string v4, "float_window_location_left"

    .line 199
    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 202
    move-result-object p1

    .line 203
    iget-object v0, p0, Lfc;->k:Landroid/view/WindowManager$LayoutParams;

    .line 205
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 207
    const-string v4, "float_window_location_top"

    .line 209
    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 212
    move-result-object p1

    .line 213
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    iget-object p1, p0, Lfc;->a:Ljava/lang/String;

    .line 218
    new-array v0, v3, [Ljava/lang/Object;

    .line 220
    iget-object v3, p0, Lfc;->k:Landroid/view/WindowManager$LayoutParams;

    .line 222
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 224
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    move-result-object v3

    .line 228
    aput-object v3, v0, v2

    .line 230
    iget-object v3, p0, Lfc;->k:Landroid/view/WindowManager$LayoutParams;

    .line 232
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 234
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    move-result-object v3

    .line 238
    aput-object v3, v0, v1

    .line 240
    const-string v3, "\u60ac\u6d6e\u7a97\u79fb\u52a8\u7ed3\u675f\uff1amWmParams.x:{?},mWmParams.y:{?}"

    .line 242
    invoke-static {p1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iget-boolean p1, p0, Lfc;->n:Z

    .line 247
    if-nez p1, :cond_9

    .line 249
    iget-wide v3, p0, Lfc;->i:J

    .line 251
    iget-wide v5, p0, Lfc;->c:J

    .line 253
    sub-long/2addr v3, v5

    .line 254
    const-wide/16 v5, 0x3e8

    .line 256
    cmp-long p1, v3, v5

    .line 258
    if-lez p1, :cond_8

    .line 260
    goto :goto_3

    .line 261
    :cond_8
    iput-boolean v1, p0, Lfc;->h:Z

    .line 263
    goto :goto_4

    .line 264
    :cond_9
    :goto_3
    iput-boolean v2, p0, Lfc;->h:Z

    .line 266
    goto :goto_4

    .line 267
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 270
    move-result-wide v3

    .line 271
    iput-wide v3, p0, Lfc;->c:J

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 276
    move-result v0

    .line 277
    iput v0, p0, Lfc;->d:F

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 282
    move-result v0

    .line 283
    iput v0, p0, Lfc;->e:F

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 288
    move-result v0

    .line 289
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 292
    move-result v0

    .line 293
    iput v0, p0, Lfc;->f:I

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 298
    move-result p1

    .line 299
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 302
    move-result p1

    .line 303
    iput p1, p0, Lfc;->g:I

    .line 305
    iput-boolean v2, p0, Lfc;->n:Z

    .line 307
    :cond_b
    :goto_4
    iget-boolean p1, p0, Lfc;->h:Z

    .line 309
    if-eqz p1, :cond_c

    .line 311
    iget-object p1, p0, Lfc;->a:Ljava/lang/String;

    .line 313
    const-string v0, "\u60ac\u6d6e\u7a97\u70b9\u51fb\u5904\u7406 :\u5207\u56de\u524d\u53f0"

    .line 315
    new-array v2, v2, [Ljava/lang/Object;

    .line 317
    invoke-static {p1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-virtual {p0}, Lfc;->b()V

    .line 323
    invoke-static {}, Lcom/autonavi/autofloat/FloatWindowManagerNative;->backToAuto()V

    .line 326
    :cond_c
    return v1
.end method

.method public setGpsLocated(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfc;->q:Z

    .line 3
    return-void
.end method

.method public setHadAdd2Window(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lfc;->g()V

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lfc;->d()V

    .line 10
    :goto_0
    iput-boolean p1, p0, Lfc;->m:Z

    .line 12
    return-void
.end method

.method public setmWmParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfc;->k:Landroid/view/WindowManager$LayoutParams;

    .line 3
    return-void
.end method
