.class public Lsf0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsf0;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsf0;

.field public final synthetic b:Lsf0;


# direct methods
.method public constructor <init>(Lsf0;Lsf0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsf0$a;->b:Lsf0;

    .line 3
    iput-object p2, p0, Lsf0$a;->a:Lsf0;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lsf0$a;->b:Lsf0;

    .line 3
    invoke-virtual {v0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_7

    .line 9
    iget-object v1, p0, Lsf0$a;->b:Lsf0;

    .line 11
    invoke-static {v1}, Lsf0;->v(Lsf0;)Landroid/view/Display;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    .line 18
    move-result v1

    .line 19
    iput v1, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 21
    iget-object v1, p0, Lsf0$a;->b:Lsf0;

    .line 23
    invoke-static {v1}, Lsf0;->v(Lsf0;)Landroid/view/Display;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    .line 30
    move-result v1

    .line 31
    iput v1, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 33
    iget-object v1, p0, Lsf0$a;->b:Lsf0;

    .line 35
    invoke-static {v1}, Lsf0;->w(Lsf0;)Lkf0;

    .line 38
    move-result-object v1

    .line 39
    const/4 v2, -0x1

    .line 40
    const/4 v3, 0x1

    .line 41
    const-string v4, "SystemPresentationScreen"

    .line 43
    const/4 v5, 0x0

    .line 44
    if-nez v1, :cond_2

    .line 46
    iget-object v1, p0, Lsf0$a;->b:Lsf0;

    .line 48
    new-instance v6, Lkf0;

    .line 50
    iget-object v7, p0, Lsf0$a;->b:Lsf0;

    .line 52
    invoke-static {v7}, Lsf0;->y(Lsf0;)Landroid/content/Context;

    .line 55
    move-result-object v7

    .line 56
    iget-object v8, p0, Lsf0$a;->a:Lsf0;

    .line 58
    invoke-direct {v6, v7, v8, v0}, Lkf0;-><init>(Landroid/content/Context;Lsf0;Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 61
    invoke-static {v1, v6}, Lsf0;->x(Lsf0;Lkf0;)Lkf0;

    .line 64
    new-array v1, v3, [Ljava/lang/Object;

    .line 66
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v7

    .line 72
    aput-object v7, v1, v5

    .line 74
    const-string v7, "current Build.VERSION.SDK_INT = {?}"

    .line 76
    invoke-static {v4, v7, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    const/16 v1, 0x19

    .line 81
    if-gt v6, v1, :cond_0

    .line 83
    iget-object v1, p0, Lsf0$a;->b:Lsf0;

    .line 85
    invoke-static {v1}, Lsf0;->w(Lsf0;)Lkf0;

    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 92
    move-result-object v1

    .line 93
    if-eqz v1, :cond_0

    .line 95
    const/16 v6, 0x7d2

    .line 97
    invoke-virtual {v1, v6}, Landroid/view/Window;->setType(I)V

    .line 100
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    .line 103
    move-result-object v1

    .line 104
    const/16 v6, 0x7553

    .line 106
    invoke-virtual {v1, v6}, Lse;->getIntValue(I)I

    .line 109
    move-result v1

    .line 110
    new-array v6, v3, [Ljava/lang/Object;

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object v7

    .line 116
    aput-object v7, v6, v5

    .line 118
    const-string v7, "mChannelWindowType = {?} "

    .line 120
    invoke-static {v4, v7, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    if-eq v1, v2, :cond_1

    .line 125
    iget-object v6, p0, Lsf0$a;->b:Lsf0;

    .line 127
    invoke-static {v6}, Lsf0;->w(Lsf0;)Lkf0;

    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 134
    move-result-object v6

    .line 135
    if-eqz v6, :cond_1

    .line 137
    invoke-virtual {v6, v1}, Landroid/view/Window;->setType(I)V

    .line 140
    const-string v1, "window.setType end"

    .line 142
    new-array v6, v5, [Ljava/lang/Object;

    .line 144
    invoke-static {v4, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_1
    invoke-static {}, Lb20;->g()Lb20;

    .line 150
    move-result-object v1

    .line 151
    iget-object v6, p0, Lsf0$a;->b:Lsf0;

    .line 153
    invoke-virtual {v6}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 156
    move-result-object v6

    .line 157
    iget v6, v6, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 159
    add-int/lit16 v6, v6, -0x3e8

    .line 161
    iget-object v7, p0, Lsf0$a;->b:Lsf0;

    .line 163
    invoke-static {v7}, Lsf0;->w(Lsf0;)Lkf0;

    .line 166
    move-result-object v7

    .line 167
    invoke-virtual {v1, v6, v7}, Lb20;->e(ILrt;)Lb20;

    .line 170
    :cond_2
    :try_start_0
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->p:Ljava/util/List;

    .line 172
    if-eqz v0, :cond_6

    .line 174
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 177
    move-result v1

    .line 178
    if-lez v1, :cond_6

    .line 180
    iget-object v1, p0, Lsf0$a;->b:Lsf0;

    .line 182
    invoke-static {v1}, Lsf0;->z(Lsf0;)I

    .line 185
    move-result v1

    .line 186
    if-ltz v1, :cond_5

    .line 188
    const-string v1, "startRender currentMode:{?}"

    .line 190
    new-array v3, v3, [Ljava/lang/Object;

    .line 192
    iget-object v6, p0, Lsf0$a;->b:Lsf0;

    .line 194
    invoke-static {v6}, Lsf0;->z(Lsf0;)I

    .line 197
    move-result v6

    .line 198
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    move-result-object v6

    .line 202
    aput-object v6, v3, v5

    .line 204
    invoke-static {v4, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 210
    move-result-object v0

    .line 211
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_4

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;

    .line 223
    iget v3, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->mode:I

    .line 225
    iget-object v6, p0, Lsf0$a;->b:Lsf0;

    .line 227
    invoke-static {v6}, Lsf0;->z(Lsf0;)I

    .line 230
    move-result v6

    .line 231
    if-ne v3, v6, :cond_3

    .line 233
    goto :goto_0

    .line 234
    :cond_4
    const/4 v1, 0x0

    .line 235
    :goto_0
    iget-object v0, p0, Lsf0$a;->b:Lsf0;

    .line 237
    invoke-static {v0, v2}, Lsf0;->A(Lsf0;I)I

    .line 240
    goto :goto_1

    .line 241
    :cond_5
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 244
    move-result-object v0

    .line 245
    move-object v1, v0

    .line 246
    check-cast v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;

    .line 248
    :goto_1
    iget-object v0, p0, Lsf0$a;->b:Lsf0;

    .line 250
    invoke-static {v0}, Lsf0;->w(Lsf0;)Lkf0;

    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 257
    move-result-object v0

    .line 258
    if-eqz v1, :cond_6

    .line 260
    if-eqz v0, :cond_6

    .line 262
    iget v2, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->surfaceWidth:I

    .line 264
    if-lez v2, :cond_6

    .line 266
    iget v2, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->surfaceHeight:I

    .line 268
    if-lez v2, :cond_6

    .line 270
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 273
    move-result-object v2

    .line 274
    iget v3, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->surfaceLeft:I

    .line 276
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 278
    iget v3, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->surfaceTop:I

    .line 280
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 282
    iget v3, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->surfaceWidth:I

    .line 284
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 286
    iget v1, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->surfaceHeight:I

    .line 288
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 290
    const/16 v1, 0x33

    .line 292
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 294
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 297
    :cond_6
    const-string v0, "SystemPresentation.show() --start"

    .line 299
    new-array v1, v5, [Ljava/lang/Object;

    .line 301
    invoke-static {v4, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lsf0$a;->b:Lsf0;

    .line 306
    invoke-static {v0}, Lsf0;->w(Lsf0;)Lkf0;

    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 313
    const-string v0, "SystemPresentation.show() --end"

    .line 315
    new-array v1, v5, [Ljava/lang/Object;

    .line 317
    invoke-static {v4, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    goto :goto_2

    .line 321
    :catch_0
    move-exception v0

    .line 322
    const-string v1, "presentation show failed."

    .line 324
    new-array v2, v5, [Ljava/lang/Object;

    .line 326
    invoke-static {v4, v1, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 329
    :cond_7
    :goto_2
    return-void
.end method
