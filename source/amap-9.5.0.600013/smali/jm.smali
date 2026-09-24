.class public Ljm;
.super Lfc;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amapauto/jni/RoadMapInteract$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljm$e;
    }
.end annotation


# instance fields
.field public t:Ljm$e;

.field public u:Landroid/graphics/Bitmap;

.field public v:Z

.field public w:I

.field public x:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfc;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Ljm;->v:Z

    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Ljm;->w:I

    .line 10
    new-instance p1, Ljm$c;

    .line 12
    invoke-direct {p1, p0}, Ljm$c;-><init>(Ljm;)V

    .line 15
    iput-object p1, p0, Ljm;->x:Landroid/view/View$OnLayoutChangeListener;

    .line 17
    return-void
.end method

.method public static synthetic k(Ljm;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljm;->r(I)V

    .line 4
    return-void
.end method

.method public static synthetic l(Ljm;)Ljm$e;
    .locals 0

    .line 1
    iget-object p0, p0, Ljm;->t:Ljm$e;

    .line 3
    return-object p0
.end method

.method public static synthetic m(Ljm;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Ljm;->u:Landroid/graphics/Bitmap;

    .line 3
    return-object p0
.end method

.method public static synthetic n(Ljm;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Ljm;->u:Landroid/graphics/Bitmap;

    .line 3
    return-object p1
.end method

.method public static synthetic o(Ljm;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ljm;->s(II)V

    .line 4
    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 7
    const/4 v2, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    array-length v2, p1

    .line 10
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v2

    .line 14
    aput-object v2, v0, v1

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v2

    .line 21
    aput-object v2, v0, v1

    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v2

    .line 28
    aput-object v2, v0, v1

    .line 30
    const-string v1, "FloatLayoutStyleCruise"

    .line 32
    const-string v2, "onReceived img:{?},width:{?},height:{?}"

    .line 34
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const/16 v0, 0x26c

    .line 39
    invoke-static {v0}, Lib;->u(I)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Lvo;->b()Landroid/os/Handler;

    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Ljm$d;

    .line 51
    invoke-direct {v1, p0, p1, p2, p3}, Ljm$d;-><init>(Ljm;[BII)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljm;->r(I)V

    .line 5
    invoke-static {}, Lhm;->a()Lhm;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lfc;->getmContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lhm;->e(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljm$e;

    .line 7
    invoke-direct {v0}, Ljm$e;-><init>()V

    .line 10
    iput-object v0, p0, Ljm;->t:Ljm$e;

    .line 12
    :cond_0
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 14
    sget v1, Ly80;->J:I

    .line 16
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/view/ViewGroup;

    .line 22
    iput-object v1, v0, Ljm$e;->a:Landroid/view/ViewGroup;

    .line 24
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 26
    sget v1, Ly80;->u0:I

    .line 28
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/autonavi/skin/view/SkinImageView;

    .line 34
    iput-object v1, v0, Ljm$e;->b:Lcom/autonavi/skin/view/SkinImageView;

    .line 36
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 38
    sget v1, Ly80;->H0:I

    .line 40
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    .line 46
    iput-object v1, v0, Ljm$e;->c:Lcom/autonavi/skin/view/SkinTextView;

    .line 48
    const/16 v0, 0x2d0

    .line 50
    invoke-static {v0}, Lib;->u(I)Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 58
    invoke-static {}, Lcom/autonavi/floatwindow/FloatViewUtils;->getRoadNamePlaceId()I

    .line 61
    move-result v1

    .line 62
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    .line 68
    iput-object v1, v0, Ljm$e;->d:Lcom/autonavi/skin/view/SkinTextView;

    .line 70
    :cond_1
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 72
    sget v1, Ly80;->A0:I

    .line 74
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    .line 80
    iput-object v1, v0, Ljm$e;->e:Lcom/autonavi/skin/view/SkinTextView;

    .line 82
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 84
    sget v1, Ly80;->D0:I

    .line 86
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    .line 92
    iput-object v1, v0, Ljm$e;->f:Lcom/autonavi/skin/view/SkinTextView;

    .line 94
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 96
    sget v1, Ly80;->E:I

    .line 98
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 104
    iput-object v1, v0, Ljm$e;->g:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 106
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 108
    sget v1, Ly80;->C:I

    .line 110
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 116
    iput-object v1, v0, Ljm$e;->h:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 118
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 120
    sget v1, Ly80;->D:I

    .line 122
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object v1

    .line 126
    iput-object v1, v0, Ljm$e;->i:Landroid/view/View;

    .line 128
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 130
    sget v1, Ly80;->F:I

    .line 132
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object v1

    .line 136
    iput-object v1, v0, Ljm$e;->j:Landroid/view/View;

    .line 138
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 140
    sget v1, Ly80;->r:I

    .line 142
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    move-result-object v1

    .line 146
    iput-object v1, v0, Ljm$e;->k:Landroid/view/View;

    .line 148
    invoke-static {}, Lib;->l()Z

    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 156
    iget-object v0, v0, Ljm$e;->k:Landroid/view/View;

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 161
    move-result-object v1

    .line 162
    sget v2, Lt80;->K2:I

    .line 164
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_2
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 173
    sget v1, Ly80;->B:I

    .line 175
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 181
    iput-object v1, v0, Ljm$e;->l:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 183
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 185
    sget v1, Ly80;->t:I

    .line 187
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 190
    move-result-object v1

    .line 191
    check-cast v1, Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 193
    iput-object v1, v0, Ljm$e;->m:Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 195
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 197
    sget v1, Ly80;->F0:I

    .line 199
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 202
    move-result-object v1

    .line 203
    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    .line 205
    iput-object v1, v0, Ljm$e;->n:Lcom/autonavi/skin/view/SkinTextView;

    .line 207
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 209
    sget v1, Ly80;->u:I

    .line 211
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    move-result-object v1

    .line 215
    check-cast v1, Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 217
    iput-object v1, v0, Ljm$e;->o:Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 219
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 221
    sget v1, Ly80;->G0:I

    .line 223
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    .line 229
    iput-object v1, v0, Ljm$e;->p:Lcom/autonavi/skin/view/SkinTextView;

    .line 231
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 233
    sget v1, Ly80;->E0:I

    .line 235
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 238
    move-result-object v1

    .line 239
    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    .line 241
    iput-object v1, v0, Ljm$e;->q:Lcom/autonavi/skin/view/SkinTextView;

    .line 243
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 245
    sget v1, Ly80;->I:I

    .line 247
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 250
    move-result-object v1

    .line 251
    check-cast v1, Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 253
    iput-object v1, v0, Ljm$e;->r:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 255
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 257
    sget v1, Ly80;->w:I

    .line 259
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 262
    move-result-object v1

    .line 263
    check-cast v1, Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 265
    iput-object v1, v0, Ljm$e;->s:Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 267
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 269
    sget v1, Ly80;->O0:I

    .line 271
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 274
    move-result-object v1

    .line 275
    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    .line 277
    iput-object v1, v0, Ljm$e;->t:Lcom/autonavi/skin/view/SkinTextView;

    .line 279
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 281
    sget v1, Ly80;->N0:I

    .line 283
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 286
    move-result-object v1

    .line 287
    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    .line 289
    iput-object v1, v0, Ljm$e;->u:Lcom/autonavi/skin/view/SkinTextView;

    .line 291
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 293
    sget v1, Ly80;->G:I

    .line 295
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 298
    move-result-object v1

    .line 299
    check-cast v1, Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 301
    iput-object v1, v0, Ljm$e;->v:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 303
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 305
    sget v1, Ly80;->v:I

    .line 307
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 310
    move-result-object v1

    .line 311
    check-cast v1, Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 313
    iput-object v1, v0, Ljm$e;->w:Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 315
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 317
    sget v1, Ly80;->M0:I

    .line 319
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 322
    move-result-object v1

    .line 323
    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    .line 325
    iput-object v1, v0, Ljm$e;->x:Lcom/autonavi/skin/view/SkinTextView;

    .line 327
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 329
    sget v1, Ly80;->H:I

    .line 331
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 334
    move-result-object v1

    .line 335
    check-cast v1, Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 337
    iput-object v1, v0, Ljm$e;->y:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 339
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 341
    iget-object v0, v0, Ljm$e;->y:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 343
    const/16 v1, 0x8

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 350
    sget v1, Ly80;->O:I

    .line 352
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 355
    move-result-object v1

    .line 356
    check-cast v1, Landroid/widget/LinearLayout;

    .line 358
    iput-object v1, v0, Ljm$e;->z:Landroid/widget/LinearLayout;

    .line 360
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 362
    sget v1, Ly80;->y0:I

    .line 364
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 367
    move-result-object v1

    .line 368
    iput-object v1, v0, Ljm$e;->A:Landroid/view/View;

    .line 370
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    const/16 v0, 0x26c

    .line 3
    invoke-static {v0}, Lib;->u(I)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 11
    iget-object v0, v0, Ljm$e;->a:Landroid/view/ViewGroup;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v1, p0, Ljm;->x:Landroid/view/View$OnLayoutChangeListener;

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/autonavi/amapauto/jni/RoadMapInteract;->floatHandler:Lcom/autonavi/amapauto/jni/RoadMapInteract$a;

    .line 23
    new-instance v1, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;

    .line 25
    invoke-direct {v1}, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;-><init>()V

    .line 28
    const/4 v2, 0x0

    .line 29
    iput-boolean v2, v1, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->b:Z

    .line 31
    iput v2, v1, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->a:I

    .line 33
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/RoadMapInteract;->sendRoadMapVisibleImpl(Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;)V

    .line 36
    iget-object v1, p0, Ljm;->u:Landroid/graphics/Bitmap;

    .line 38
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/RoadMapInteract;->recycle(Landroid/graphics/Bitmap;)V

    .line 41
    iput-object v0, p0, Ljm;->u:Landroid/graphics/Bitmap;

    .line 43
    :cond_1
    return-void
.end method

.method public e()V
    .locals 5

    .line 1
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, v0, Ljm$e;->y:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 7
    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Ljm;->u:Landroid/graphics/Bitmap;

    .line 11
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/RoadMapInteract;->recycle(Landroid/graphics/Bitmap;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Ljm;->u:Landroid/graphics/Bitmap;

    .line 17
    iget-object v1, p0, Ljm;->t:Ljm$e;

    .line 19
    iget-object v1, v1, Ljm$e;->y:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 21
    const/16 v2, 0x8

    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    invoke-static {}, Lib;->l()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Ljm;->t:Ljm$e;

    .line 34
    iget-object v1, v1, Ljm$e;->k:Landroid/view/View;

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object v3

    .line 40
    sget v4, Lt80;->K2:I

    .line 42
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    :cond_0
    iget-object v1, p0, Ljm;->t:Ljm$e;

    .line 51
    iget-object v1, v1, Ljm$e;->z:Landroid/widget/LinearLayout;

    .line 53
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 56
    iget-object v1, p0, Ljm;->t:Ljm$e;

    .line 58
    iget-object v1, v1, Ljm$e;->c:Lcom/autonavi/skin/view/SkinTextView;

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 63
    move-result v1

    .line 64
    const/4 v3, 0x4

    .line 65
    if-ne v1, v3, :cond_2

    .line 67
    iget-boolean v1, p0, Ljm;->v:Z

    .line 69
    if-nez v1, :cond_2

    .line 71
    const/16 v1, 0x2d0

    .line 73
    invoke-static {v1}, Lib;->u(I)Z

    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Ljm;->t:Ljm$e;

    .line 81
    iget-object v1, v1, Ljm$e;->d:Lcom/autonavi/skin/view/SkinTextView;

    .line 83
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    invoke-virtual {p0}, Lfc;->getmContext()Landroid/content/Context;

    .line 89
    move-result-object v1

    .line 90
    const/4 v3, -0x8

    .line 91
    invoke-static {p0, v1, v0, v3}, Lcom/autonavi/floatwindow/FloatViewHelper;->refreshLightsGroup(Landroid/view/View;Landroid/content/Context;Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;I)V

    .line 94
    :cond_1
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 96
    iget-object v0, v0, Ljm$e;->c:Lcom/autonavi/skin/view/SkinTextView;

    .line 98
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_2
    return-void
.end method

.method public f(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const/16 v2, 0x26c

    .line 7
    invoke-static {v2}, Lib;->u(I)Z

    .line 10
    move-result v2

    .line 11
    const/4 v3, -0x4

    .line 12
    const/4 v4, 0x0

    .line 13
    const/16 v5, 0x2d0

    .line 15
    const/16 v6, 0x8

    .line 17
    const/4 v7, 0x4

    .line 18
    if-eqz v2, :cond_2

    .line 20
    iget-object v1, v0, Ljm;->t:Ljm$e;

    .line 22
    if-eqz v1, :cond_1

    .line 24
    iget-boolean v2, v0, Lfc;->q:Z

    .line 26
    if-eqz v2, :cond_1

    .line 28
    iget-object v1, v1, Ljm$e;->c:Lcom/autonavi/skin/view/SkinTextView;

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 33
    move-result v1

    .line 34
    if-ne v1, v6, :cond_1

    .line 36
    invoke-static {v5}, Lib;->u(I)Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 42
    iget-object v1, v0, Ljm;->t:Ljm$e;

    .line 44
    iget-object v1, v1, Ljm$e;->d:Lcom/autonavi/skin/view/SkinTextView;

    .line 46
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lfc;->getmContext()Landroid/content/Context;

    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1, v4, v3}, Lcom/autonavi/floatwindow/FloatViewHelper;->refreshLightsGroup(Landroid/view/View;Landroid/content/Context;Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;I)V

    .line 56
    :cond_0
    iget-object v1, v0, Ljm;->t:Ljm$e;

    .line 58
    iget-object v1, v1, Ljm$e;->c:Lcom/autonavi/skin/view/SkinTextView;

    .line 60
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_1
    return-void

    .line 64
    :cond_2
    iget-object v2, v0, Ljm;->t:Ljm$e;

    .line 66
    if-eqz v2, :cond_9

    .line 68
    iget-object v8, v2, Ljm$e;->y:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 70
    if-eqz v8, :cond_9

    .line 72
    iget-boolean v8, v0, Lfc;->q:Z

    .line 74
    if-eqz v8, :cond_9

    .line 76
    iget-object v2, v2, Ljm$e;->z:Landroid/widget/LinearLayout;

    .line 78
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 81
    invoke-static {}, Lrv;->H()Lrv;

    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    move-result-object v2

    .line 93
    sget v8, Lq80;->g:I

    .line 95
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 98
    move-result v2

    .line 99
    float-to-int v14, v2

    .line 100
    invoke-static {}, Lrv;->H()Lrv;

    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    move-result-object v2

    .line 112
    sget v8, Lq80;->y:I

    .line 114
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 117
    move-result v2

    .line 118
    float-to-int v15, v2

    .line 119
    iget-object v2, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->backLane:[I

    .line 121
    if-nez v2, :cond_3

    .line 123
    iget-object v2, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->tollGate:[I

    .line 125
    array-length v2, v2

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    array-length v2, v2

    .line 128
    :goto_0
    const/4 v8, 0x5

    .line 129
    if-le v2, v8, :cond_4

    .line 131
    goto :goto_1

    .line 132
    :cond_4
    const/4 v2, 0x5

    .line 133
    :goto_1
    invoke-static {}, Lrv;->H()Lrv;

    .line 136
    move-result-object v8

    .line 137
    invoke-virtual {v8}, Lrv;->z()Landroid/content/Context;

    .line 140
    move-result-object v8

    .line 141
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 144
    move-result-object v8

    .line 145
    sget v9, Lq80;->x:I

    .line 147
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 150
    move-result v8

    .line 151
    mul-int/lit8 v8, v8, 0x2

    .line 153
    int-to-float v8, v8

    .line 154
    int-to-float v2, v2

    .line 155
    const/high16 v9, 0x40800000    # 4.0f

    .line 157
    sub-float v9, v2, v9

    .line 159
    div-float/2addr v8, v9

    .line 160
    float-to-int v8, v8

    .line 161
    invoke-static {}, Lib;->o()Z

    .line 164
    move-result v9

    .line 165
    const/4 v13, 0x0

    .line 166
    if-eqz v9, :cond_5

    .line 168
    invoke-static {}, Lrv;->H()Lrv;

    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    move-result-object v2

    .line 180
    sget v8, Lq80;->j:I

    .line 182
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 185
    move-result v2

    .line 186
    float-to-int v2, v2

    .line 187
    const/4 v8, 0x0

    .line 188
    goto :goto_2

    .line 189
    :cond_5
    int-to-float v9, v14

    .line 190
    const/high16 v10, 0x3f800000    # 1.0f

    .line 192
    mul-float v9, v9, v10

    .line 194
    div-float/2addr v9, v2

    .line 195
    float-to-int v2, v9

    .line 196
    sub-int/2addr v2, v8

    .line 197
    :goto_2
    invoke-static {}, Lrv;->H()Lrv;

    .line 200
    move-result-object v9

    .line 201
    invoke-virtual {v9}, Lrv;->z()Landroid/content/Context;

    .line 204
    move-result-object v9

    .line 205
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 208
    move-result-object v9

    .line 209
    sget v10, Lq80;->o:I

    .line 211
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 214
    move-result v9

    .line 215
    float-to-int v9, v9

    .line 216
    new-instance v12, Lmm;

    .line 218
    invoke-static {}, Lrv;->H()Lrv;

    .line 221
    move-result-object v10

    .line 222
    invoke-virtual {v10}, Lrv;->z()Landroid/content/Context;

    .line 225
    move-result-object v10

    .line 226
    invoke-direct {v12, v10, v2, v9, v8}, Lmm;-><init>(Landroid/content/Context;III)V

    .line 229
    iget-object v9, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->backLane:[I

    .line 231
    iget-object v10, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->frontLane:[I

    .line 233
    iget-object v11, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->tollGate:[I

    .line 235
    iget-object v2, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->extFlags:[I

    .line 237
    iget-object v1, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->recommend:[Z

    .line 239
    const/16 v16, 0x0

    .line 241
    move-object v8, v12

    .line 242
    move-object/from16 p1, v12

    .line 244
    move-object v12, v2

    .line 245
    const/4 v2, 0x0

    .line 246
    move-object v13, v1

    .line 247
    invoke-virtual/range {v8 .. v16}, Lmm;->t([I[I[I[I[ZIIZ)Z

    .line 250
    move-result v1

    .line 251
    if-nez v1, :cond_6

    .line 253
    invoke-virtual/range {p0 .. p0}, Ljm;->e()V

    .line 256
    return-void

    .line 257
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lge;->getDriveWaysWidth()I

    .line 260
    move-result v1

    .line 261
    invoke-virtual/range {p1 .. p1}, Lge;->getDriveWaysHeight()I

    .line 264
    move-result v8

    .line 265
    move-object/from16 v9, p1

    .line 267
    invoke-virtual {v9, v1, v8}, Landroid/view/View;->measure(II)V

    .line 270
    invoke-virtual {v9, v2, v2, v1, v8}, Landroid/view/View;->layout(IIII)V

    .line 273
    iget-object v1, v0, Ljm;->t:Ljm$e;

    .line 275
    iget-object v1, v1, Ljm$e;->z:Landroid/widget/LinearLayout;

    .line 277
    const/16 v8, 0x11

    .line 279
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 282
    iget-object v1, v0, Ljm;->t:Ljm$e;

    .line 284
    iget-object v1, v1, Ljm$e;->z:Landroid/widget/LinearLayout;

    .line 286
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 289
    iget-object v1, v0, Ljm;->t:Ljm$e;

    .line 291
    iget-object v1, v1, Ljm$e;->y:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 293
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    invoke-static {}, Lib;->l()Z

    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_7

    .line 302
    iget-object v1, v0, Ljm;->t:Ljm$e;

    .line 304
    iget-object v1, v1, Ljm$e;->k:Landroid/view/View;

    .line 306
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 309
    move-result-object v2

    .line 310
    sget v8, Lt80;->L2:I

    .line 312
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_7
    iget-object v1, v0, Ljm;->t:Ljm$e;

    .line 321
    iget-object v1, v1, Ljm$e;->c:Lcom/autonavi/skin/view/SkinTextView;

    .line 323
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 326
    move-result v1

    .line 327
    if-ne v1, v6, :cond_9

    .line 329
    invoke-static {v5}, Lib;->u(I)Z

    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_8

    .line 335
    iget-object v1, v0, Ljm;->t:Ljm$e;

    .line 337
    iget-object v1, v1, Ljm$e;->d:Lcom/autonavi/skin/view/SkinTextView;

    .line 339
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Lfc;->getmContext()Landroid/content/Context;

    .line 345
    move-result-object v1

    .line 346
    invoke-static {v0, v1, v4, v3}, Lcom/autonavi/floatwindow/FloatViewHelper;->refreshLightsGroup(Landroid/view/View;Landroid/content/Context;Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;I)V

    .line 349
    :cond_8
    iget-object v1, v0, Ljm;->t:Ljm$e;

    .line 351
    iget-object v1, v1, Ljm$e;->c:Lcom/autonavi/skin/view/SkinTextView;

    .line 353
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 356
    :cond_9
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    const/16 v0, 0x26c

    .line 3
    invoke-static {v0}, Lib;->u(I)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 11
    iget-object v0, v0, Ljm$e;->a:Landroid/view/ViewGroup;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v1, p0, Ljm;->x:Landroid/view/View$OnLayoutChangeListener;

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 20
    :cond_0
    sput-object p0, Lcom/autonavi/amapauto/jni/RoadMapInteract;->floatHandler:Lcom/autonavi/amapauto/jni/RoadMapInteract$a;

    .line 22
    new-instance v0, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;

    .line 24
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;-><init>()V

    .line 27
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, v0, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->b:Z

    .line 30
    const/4 v1, 0x0

    .line 31
    iput v1, v0, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->a:I

    .line 33
    sget v1, Lq80;->g:I

    .line 35
    invoke-static {v1}, Lta0;->b(I)I

    .line 38
    move-result v1

    .line 39
    iput v1, v0, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->c:I

    .line 41
    sget v1, Lq80;->y:I

    .line 43
    invoke-static {v1}, Lta0;->b(I)I

    .line 46
    move-result v1

    .line 47
    iput v1, v0, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->d:I

    .line 49
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/RoadMapInteract;->sendRoadMapVisibleImpl(Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;)V

    .line 52
    :cond_1
    return-void
.end method

.method public getFloatLayoutId()I
    .locals 1

    .line 1
    const/16 v0, 0x2d0

    .line 3
    invoke-static {v0}, Lib;->u(I)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lcom/autonavi/floatwindow/FloatViewHelper;->getLayoutId()I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/16 v0, 0x26c

    .line 16
    invoke-static {v0}, Lib;->u(I)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    sget v0, Lb90;->h:I

    .line 24
    return v0

    .line 25
    :cond_1
    invoke-static {}, Lib;->l()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 31
    sget v0, Lb90;->g:I

    .line 33
    return v0

    .line 34
    :cond_2
    sget v0, Lb90;->f:I

    .line 36
    return v0
.end method

.method public h(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lfc;->q:Z

    .line 3
    new-instance v0, Ljm$b;

    .line 5
    invoke-direct {v0, p0, p1}, Ljm$b;-><init>(Ljm;Z)V

    .line 8
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method public i(Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, "FloatLayoutStyleCruise"

    .line 9
    const-string v4, "refreshLightsGroup cameraLightInfoWrapper:{?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->x(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v1, p0, Ljm;->t:Ljm$e;

    .line 16
    if-eqz v1, :cond_3

    .line 18
    const/16 v1, 0x2d0

    .line 20
    invoke-static {v1}, Lib;->u(I)Z

    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    if-eqz p1, :cond_2

    .line 29
    iget-object v1, p1, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;->a:Ljava/util/List;

    .line 31
    if-eqz v1, :cond_2

    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iput-boolean v0, p0, Ljm;->v:Z

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    iput-boolean v2, p0, Ljm;->v:Z

    .line 45
    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    iget-boolean v1, p0, Ljm;->v:Z

    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    move-result-object v1

    .line 53
    aput-object v1, v0, v2

    .line 55
    const-string v1, "refreshLightsGroup cameraLightsShowing = {?}"

    .line 57
    invoke-static {v3, v1, v0}, Lcz;->x(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    move-result-object v0

    .line 64
    iget v1, p0, Ljm;->w:I

    .line 66
    invoke-static {p0, v0, p1, v1}, Lcom/autonavi/floatwindow/FloatViewHelper;->refreshLightsGroup(Landroid/view/View;Landroid/content/Context;Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;I)V

    .line 69
    :cond_3
    :goto_2
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 3
    iget-object v0, v0, Ljm$e;->b:Lcom/autonavi/skin/view/SkinImageView;

    .line 5
    new-instance v1, Ljm$a;

    .line 7
    invoke-direct {v1, p0}, Ljm$a;-><init>(Ljm;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    return-void
.end method

.method public final p(Lig;Landroid/view/View;)V
    .locals 7

    .line 1
    new-instance v6, Lkg;

    .line 3
    invoke-direct {v6}, Lkg;-><init>()V

    .line 6
    invoke-virtual {v6, p1}, Lkg;->f(Lig;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v1, "applyNewConstraint cameraLightsShowing:"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-boolean v1, p0, Ljm;->v:Z

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    const-string v2, "FloatLayoutStyleCruise"

    .line 33
    invoke-static {v2, v0, v1}, Lcz;->x(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-boolean v0, p0, Ljm;->v:Z

    .line 38
    const/4 v1, 0x4

    .line 39
    const/4 v2, 0x3

    .line 40
    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 45
    move-result v0

    .line 46
    invoke-virtual {v6, v0, v2}, Lkg;->e(II)V

    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 52
    move-result v0

    .line 53
    invoke-virtual {v6, v0, v1}, Lkg;->e(II)V

    .line 56
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x3

    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x3

    .line 63
    const/4 v5, 0x0

    .line 64
    move-object v0, v6

    .line 65
    invoke-virtual/range {v0 .. v5}, Lkg;->h(IIIII)V

    .line 68
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 71
    move-result v1

    .line 72
    const/4 v2, 0x4

    .line 73
    const/4 v4, 0x4

    .line 74
    invoke-virtual/range {v0 .. v5}, Lkg;->h(IIIII)V

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 81
    move-result v0

    .line 82
    invoke-virtual {v6, v0, v2}, Lkg;->e(II)V

    .line 85
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 88
    move-result v0

    .line 89
    invoke-virtual {v6, v0, v1}, Lkg;->e(II)V

    .line 92
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 95
    move-result v1

    .line 96
    const/4 v2, 0x3

    .line 97
    const/4 v3, 0x0

    .line 98
    const/4 v4, 0x3

    .line 99
    const/4 v5, 0x0

    .line 100
    move-object v0, v6

    .line 101
    invoke-virtual/range {v0 .. v5}, Lkg;->h(IIIII)V

    .line 104
    :goto_0
    invoke-virtual {v6, p1}, Lkg;->c(Lig;)V

    .line 107
    return-void
.end method

.method public q(II)I
    .locals 0

    .line 1
    const/16 p2, 0x294

    .line 3
    invoke-static {p2}, Lib;->u(I)Z

    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 9
    packed-switch p1, :pswitch_data_0

    .line 12
    :pswitch_0
    goto :goto_0

    .line 13
    :pswitch_1
    sget p1, Lt80;->f0:I

    .line 15
    return p1

    .line 16
    :pswitch_2
    sget p1, Lt80;->b0:I

    .line 18
    return p1

    .line 19
    :pswitch_3
    sget p1, Lt80;->X:I

    .line 21
    return p1

    .line 22
    :pswitch_4
    sget p1, Lt80;->c0:I

    .line 24
    return p1

    .line 25
    :pswitch_5
    sget p1, Lt80;->e0:I

    .line 27
    return p1

    .line 28
    :pswitch_6
    sget p1, Lt80;->V:I

    .line 30
    return p1

    .line 31
    :pswitch_7
    sget p1, Lt80;->W:I

    .line 33
    return p1

    .line 34
    :pswitch_8
    sget p1, Lt80;->a0:I

    .line 36
    return p1

    .line 37
    :pswitch_9
    sget p1, Lt80;->Y:I

    .line 39
    return p1

    .line 40
    :pswitch_a
    sget p1, Lt80;->d0:I

    .line 42
    return p1

    .line 43
    :pswitch_b
    sget p1, Lt80;->Z:I

    .line 45
    return p1

    .line 46
    :pswitch_c
    sget p1, Lt80;->R:I

    .line 48
    return p1

    .line 49
    :pswitch_d
    sget p1, Lt80;->o0:I

    .line 51
    return p1

    .line 52
    :pswitch_e
    sget p1, Lt80;->S:I

    .line 54
    return p1

    .line 55
    :pswitch_f
    sget p1, Lt80;->T:I

    .line 57
    return p1

    .line 58
    :pswitch_10
    sget p1, Lt80;->h0:I

    .line 60
    return p1

    .line 61
    :pswitch_11
    sget p1, Lt80;->T:I

    .line 63
    return p1

    .line 64
    :pswitch_12
    sget p1, Lt80;->m0:I

    .line 66
    return p1

    .line 67
    :cond_0
    const/16 p2, 0x3fd

    .line 69
    if-eq p1, p2, :cond_4

    .line 71
    const/16 p2, 0x44b

    .line 73
    if-eq p1, p2, :cond_3

    .line 75
    const/16 p2, 0x3ff

    .line 77
    if-eq p1, p2, :cond_2

    .line 79
    const/16 p2, 0x400

    .line 81
    if-eq p1, p2, :cond_1

    .line 83
    packed-switch p1, :pswitch_data_1

    .line 86
    packed-switch p1, :pswitch_data_2

    .line 89
    packed-switch p1, :pswitch_data_3

    .line 92
    packed-switch p1, :pswitch_data_4

    .line 95
    :goto_0
    const/4 p1, -0x1

    .line 96
    return p1

    .line 97
    :pswitch_13
    sget p1, Lt80;->d0:I

    .line 99
    return p1

    .line 100
    :pswitch_14
    sget p1, Lt80;->U:I

    .line 102
    return p1

    .line 103
    :pswitch_15
    sget p1, Lt80;->l0:I

    .line 105
    return p1

    .line 106
    :pswitch_16
    sget p1, Lt80;->b0:I

    .line 108
    return p1

    .line 109
    :pswitch_17
    sget p1, Lt80;->k0:I

    .line 111
    return p1

    .line 112
    :pswitch_18
    sget p1, Lt80;->Y:I

    .line 114
    return p1

    .line 115
    :pswitch_19
    sget p1, Lt80;->j0:I

    .line 117
    return p1

    .line 118
    :pswitch_1a
    sget p1, Lt80;->n0:I

    .line 120
    return p1

    .line 121
    :pswitch_1b
    sget p1, Lt80;->c0:I

    .line 123
    return p1

    .line 124
    :pswitch_1c
    sget p1, Lt80;->e0:I

    .line 126
    return p1

    .line 127
    :pswitch_1d
    sget p1, Lt80;->g0:I

    .line 129
    return p1

    .line 130
    :pswitch_1e
    sget p1, Lt80;->R:I

    .line 132
    return p1

    .line 133
    :pswitch_1f
    sget p1, Lt80;->o0:I

    .line 135
    return p1

    .line 136
    :pswitch_20
    sget p1, Lt80;->W:I

    .line 138
    return p1

    .line 139
    :pswitch_21
    sget p1, Lt80;->h0:I

    .line 141
    return p1

    .line 142
    :pswitch_22
    sget p1, Lt80;->m0:I

    .line 144
    return p1

    .line 145
    :cond_1
    sget p1, Lt80;->i0:I

    .line 147
    return p1

    .line 148
    :cond_2
    :pswitch_23
    sget p1, Lt80;->T:I

    .line 150
    return p1

    .line 151
    :cond_3
    sget p1, Lt80;->Z:I

    .line 153
    return p1

    .line 154
    :cond_4
    sget p1, Lt80;->f0:I

    .line 156
    return p1

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 211
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_22
        :pswitch_23
        :pswitch_21
        :pswitch_23
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    .line 229
    :pswitch_data_2
    .packed-switch 0x3e9
        :pswitch_1d
        :pswitch_1c
        :pswitch_23
        :pswitch_23
        :pswitch_1b
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch

    .line 249
    :pswitch_data_3
    .packed-switch 0x3f3
        :pswitch_1a
        :pswitch_19
        :pswitch_23
        :pswitch_23
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    .line 267
    :pswitch_data_4
    .packed-switch 0x404
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public final r(I)V
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v4

    .line 14
    aput-object v2, v0, v3

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p1

    .line 20
    aput-object p1, v0, v1

    .line 22
    const/4 p1, 0x2

    .line 23
    aput-object v4, v0, p1

    .line 25
    const/4 p1, 0x3

    .line 26
    aput-object v4, v0, p1

    .line 28
    const/4 p1, 0x4

    .line 29
    aput-object v4, v0, p1

    .line 31
    const-string p1, "[100000264][5][%d][%d][%d][%d][%d]"

    .line 33
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const v0, 0x5f5e208

    .line 40
    const/16 v1, 0xa

    .line 42
    const-string v2, "AUTO_BASE"

    .line 44
    invoke-static {v2, v0, p1, v1}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 47
    return-void
.end method

.method public final s(II)V
    .locals 6

    .line 1
    sget v0, Lq80;->g:I

    .line 3
    invoke-static {v0}, Lta0;->b(I)I

    .line 6
    move-result v0

    .line 7
    const-string v1, " to "

    .line 9
    const-string v2, "FloatLayoutStyleCruise"

    .line 11
    const/4 v3, 0x0

    .line 12
    if-gt p1, v0, :cond_0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v4, "dismiss onInsertSpaceWidthChanged from "

    .line 21
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    new-array p2, v3, [Ljava/lang/Object;

    .line 39
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    return-void

    .line 43
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v5, "onInsertSpaceWidthChanged from "

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p2

    .line 66
    new-array v1, v3, [Ljava/lang/Object;

    .line 68
    invoke-static {v2, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    sput-object p0, Lcom/autonavi/amapauto/jni/RoadMapInteract;->floatHandler:Lcom/autonavi/amapauto/jni/RoadMapInteract$a;

    .line 73
    new-instance p2, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;

    .line 75
    invoke-direct {p2}, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;-><init>()V

    .line 78
    const/4 v1, 0x1

    .line 79
    iput-boolean v1, p2, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->b:Z

    .line 81
    iput v3, p2, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->a:I

    .line 83
    if-le p1, v0, :cond_1

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    move p1, v0

    .line 87
    :goto_0
    iput p1, p2, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->c:I

    .line 89
    sget p1, Lq80;->y:I

    .line 91
    invoke-static {p1}, Lta0;->b(I)I

    .line 94
    move-result p1

    .line 95
    iput p1, p2, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->d:I

    .line 97
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/RoadMapInteract;->sendRoadMapVisibleImpl(Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;)V

    .line 100
    iget-object p1, p0, Ljm;->u:Landroid/graphics/Bitmap;

    .line 102
    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_2

    .line 110
    new-instance p1, Lcom/autonavi/skin/view/SkinImageView;

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 115
    move-result-object v0

    .line 116
    invoke-direct {p1, v0}, Lcom/autonavi/skin/view/SkinImageView;-><init>(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 121
    iget-object v0, v0, Ljm$e;->z:Landroid/widget/LinearLayout;

    .line 123
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 126
    iget-object v0, p0, Ljm;->u:Landroid/graphics/Bitmap;

    .line 128
    iget v1, p2, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->c:I

    .line 130
    iget p2, p2, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->d:I

    .line 132
    invoke-static {v0, v1, p2}, Lcom/autonavi/amapauto/jni/RoadMapInteract;->getCustomRoundBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 135
    move-result-object p2

    .line 136
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 145
    const/4 v0, -0x1

    .line 146
    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object p2, p0, Ljm;->t:Ljm$e;

    .line 154
    iget-object p2, p2, Ljm$e;->z:Landroid/widget/LinearLayout;

    .line 156
    const/16 v0, 0x11

    .line 158
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 161
    iget-object p2, p0, Ljm;->t:Ljm$e;

    .line 163
    iget-object p2, p2, Ljm$e;->z:Landroid/widget/LinearLayout;

    .line 165
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    :cond_2
    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 3
    const/16 v1, 0x8

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, v0, Ljm$e;->l:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_0
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget-object v0, v0, Ljm$e;->r:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_1
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 27
    if-eqz v0, :cond_2

    .line 29
    iget-object v0, v0, Ljm$e;->v:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 31
    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :cond_2
    return-void
.end method

.method public u(Lgh;)V
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, " \u5de1\u822a\u4fe1\u606f\uff1a"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Lgh;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v2, v1, [Ljava/lang/Object;

    .line 25
    const-string v3, "FloatLayoutStyle"

    .line 27
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 32
    if-eqz v0, :cond_22

    .line 34
    iget-object v0, v0, Ljm$e;->j:Landroid/view/View;

    .line 36
    const/16 v2, 0x8

    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 43
    iget-object v0, v0, Ljm$e;->i:Landroid/view/View;

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    invoke-virtual {p1}, Lgh;->k()Z

    .line 51
    move-result v0

    .line 52
    const/16 v4, 0x63

    .line 54
    const-string v5, ""

    .line 56
    if-eqz v0, :cond_5

    .line 58
    invoke-virtual {p1}, Lgh;->g()Ljava/lang/Integer;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 65
    move-result v0

    .line 66
    if-gtz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lgh;->e()I

    .line 71
    move-result v0

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lgh;->e()I

    .line 76
    move-result v0

    .line 77
    if-gtz v0, :cond_1

    .line 79
    invoke-virtual {p1}, Lgh;->g()Ljava/lang/Integer;

    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 86
    move-result v0

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1}, Lgh;->g()Ljava/lang/Integer;

    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 95
    move-result v0

    .line 96
    invoke-virtual {p1}, Lgh;->e()I

    .line 99
    move-result v6

    .line 100
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    .line 103
    move-result v0

    .line 104
    :goto_0
    const/4 v6, 0x2

    .line 105
    new-array v6, v6, [Ljava/lang/Object;

    .line 107
    invoke-virtual {p1}, Lgh;->j()Ljava/lang/Integer;

    .line 110
    move-result-object v7

    .line 111
    aput-object v7, v6, v1

    .line 113
    const/4 v7, 0x1

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v8

    .line 118
    aput-object v8, v6, v7

    .line 120
    const-string v7, "GuideInfo curSpeed:{?}, cameraSpeed:{?}"

    .line 122
    invoke-static {v3, v7, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p1}, Lgh;->j()Ljava/lang/Integer;

    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 132
    move-result v3

    .line 133
    if-le v3, v0, :cond_2

    .line 135
    iget-boolean v0, p0, Lfc;->q:Z

    .line 137
    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 141
    iget-object v0, v0, Ljm$e;->g:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 148
    iget-object v0, v0, Ljm$e;->h:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 150
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 155
    iget-object v0, v0, Ljm$e;->f:Lcom/autonavi/skin/view/SkinTextView;

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    .line 159
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    invoke-virtual {p1}, Lgh;->j()Ljava/lang/Integer;

    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    goto/16 :goto_3

    .line 181
    :cond_2
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 183
    iget-object v0, v0, Ljm$e;->g:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 185
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 190
    iget-object v0, v0, Ljm$e;->h:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-boolean v0, p0, Lfc;->q:Z

    .line 197
    if-eqz v0, :cond_8

    .line 199
    invoke-static {}, Lib;->l()Z

    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_4

    .line 205
    invoke-virtual {p1}, Lgh;->j()Ljava/lang/Integer;

    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 212
    move-result v0

    .line 213
    if-le v0, v4, :cond_3

    .line 215
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 217
    iget-object v0, v0, Ljm$e;->e:Lcom/autonavi/skin/view/SkinTextView;

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 222
    move-result-object v3

    .line 223
    sget v6, Lq80;->v:I

    .line 225
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 228
    move-result v3

    .line 229
    int-to-float v3, v3

    .line 230
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 233
    goto :goto_1

    .line 234
    :cond_3
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 236
    iget-object v0, v0, Ljm$e;->e:Lcom/autonavi/skin/view/SkinTextView;

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 241
    move-result-object v3

    .line 242
    sget v6, Lq80;->w:I

    .line 244
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 247
    move-result v3

    .line 248
    int-to-float v3, v3

    .line 249
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 252
    :cond_4
    :goto_1
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 254
    iget-object v0, v0, Ljm$e;->e:Lcom/autonavi/skin/view/SkinTextView;

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    .line 258
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    invoke-virtual {p1}, Lgh;->j()Ljava/lang/Integer;

    .line 264
    move-result-object v6

    .line 265
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    goto :goto_3

    .line 279
    :cond_5
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 281
    iget-object v0, v0, Ljm$e;->h:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 283
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 288
    iget-object v0, v0, Ljm$e;->g:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 290
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-boolean v0, p0, Lfc;->q:Z

    .line 295
    if-eqz v0, :cond_8

    .line 297
    invoke-static {}, Lib;->l()Z

    .line 300
    move-result v0

    .line 301
    if-eqz v0, :cond_7

    .line 303
    invoke-virtual {p1}, Lgh;->j()Ljava/lang/Integer;

    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 310
    move-result v0

    .line 311
    if-le v0, v4, :cond_6

    .line 313
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 315
    iget-object v0, v0, Ljm$e;->e:Lcom/autonavi/skin/view/SkinTextView;

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 320
    move-result-object v3

    .line 321
    sget v6, Lq80;->v:I

    .line 323
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 326
    move-result v3

    .line 327
    int-to-float v3, v3

    .line 328
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 331
    goto :goto_2

    .line 332
    :cond_6
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 334
    iget-object v0, v0, Ljm$e;->e:Lcom/autonavi/skin/view/SkinTextView;

    .line 336
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 339
    move-result-object v3

    .line 340
    sget v6, Lq80;->w:I

    .line 342
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 345
    move-result v3

    .line 346
    int-to-float v3, v3

    .line 347
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 350
    :cond_7
    :goto_2
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 352
    iget-object v0, v0, Ljm$e;->e:Lcom/autonavi/skin/view/SkinTextView;

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    .line 356
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    invoke-virtual {p1}, Lgh;->j()Ljava/lang/Integer;

    .line 362
    move-result-object v6

    .line 363
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    move-result-object v3

    .line 373
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_8
    :goto_3
    invoke-virtual {p1}, Lgh;->i()Ljava/lang/String;

    .line 379
    move-result-object v0

    .line 380
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 383
    move-result v3

    .line 384
    const/4 v6, 0x0

    .line 385
    const/16 v7, 0x2d0

    .line 387
    if-eqz v3, :cond_a

    .line 389
    invoke-static {v7}, Lib;->u(I)Z

    .line 392
    move-result v0

    .line 393
    if-eqz v0, :cond_9

    .line 395
    iget-boolean v0, p0, Ljm;->v:Z

    .line 397
    if-nez v0, :cond_9

    .line 399
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 401
    iget-object v0, v0, Ljm$e;->d:Lcom/autonavi/skin/view/SkinTextView;

    .line 403
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 406
    invoke-virtual {p0}, Lfc;->getmContext()Landroid/content/Context;

    .line 409
    move-result-object v0

    .line 410
    const/4 v3, -0x8

    .line 411
    invoke-static {p0, v0, v6, v3}, Lcom/autonavi/floatwindow/FloatViewHelper;->refreshLightsGroup(Landroid/view/View;Landroid/content/Context;Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;I)V

    .line 414
    :cond_9
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 416
    iget-object v0, v0, Ljm$e;->c:Lcom/autonavi/skin/view/SkinTextView;

    .line 418
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 421
    goto :goto_4

    .line 422
    :cond_a
    iget-boolean v3, p0, Lfc;->q:Z

    .line 424
    if-eqz v3, :cond_c

    .line 426
    invoke-static {v7}, Lib;->u(I)Z

    .line 429
    move-result v3

    .line 430
    if-eqz v3, :cond_b

    .line 432
    iget-object v3, p0, Ljm;->t:Ljm$e;

    .line 434
    iget-object v3, v3, Ljm$e;->d:Lcom/autonavi/skin/view/SkinTextView;

    .line 436
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 439
    invoke-virtual {p0}, Lfc;->getmContext()Landroid/content/Context;

    .line 442
    move-result-object v3

    .line 443
    invoke-static {p0, v3, v6, v1}, Lcom/autonavi/floatwindow/FloatViewHelper;->refreshLightsGroup(Landroid/view/View;Landroid/content/Context;Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;I)V

    .line 446
    :cond_b
    iget-object v3, p0, Ljm;->t:Ljm$e;

    .line 448
    iget-object v3, v3, Ljm$e;->c:Lcom/autonavi/skin/view/SkinTextView;

    .line 450
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v3, p0, Ljm;->t:Ljm$e;

    .line 455
    iget-object v3, v3, Ljm$e;->c:Lcom/autonavi/skin/view/SkinTextView;

    .line 457
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :cond_c
    :goto_4
    invoke-virtual {p1}, Lgh;->b()I

    .line 463
    move-result v0

    .line 464
    invoke-virtual {p0}, Ljm;->t()V

    .line 467
    invoke-static {v7}, Lib;->u(I)Z

    .line 470
    move-result v3

    .line 471
    if-eqz v3, :cond_d

    .line 473
    const/high16 v3, 0x3f400000    # 0.75f

    .line 475
    goto :goto_5

    .line 476
    :cond_d
    const/high16 v3, 0x3f800000    # 1.0f

    .line 478
    :goto_5
    iput v0, p0, Ljm;->w:I

    .line 480
    const/4 v8, -0x4

    .line 481
    const/4 v9, -0x1

    .line 482
    const/4 v10, 0x4

    .line 483
    if-eq v0, v10, :cond_1d

    .line 485
    const/4 v11, 0x5

    .line 486
    const-string v12, "\u7c73"

    .line 488
    if-eq v0, v11, :cond_17

    .line 490
    const/4 v11, 0x6

    .line 491
    if-eq v0, v11, :cond_e

    .line 493
    const/4 v11, 0x7

    .line 494
    if-eq v0, v11, :cond_17

    .line 496
    iput v9, p0, Ljm;->w:I

    .line 498
    sget p1, Ly80;->y:I

    .line 500
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 503
    move-result-object p1

    .line 504
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 507
    goto/16 :goto_e

    .line 509
    :cond_e
    const v0, 0x3f638e39

    .line 512
    mul-float v3, v3, v0

    .line 514
    sget v0, Ly80;->y:I

    .line 516
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 519
    move-result-object v0

    .line 520
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 523
    invoke-virtual {p1}, Lgh;->g()Ljava/lang/Integer;

    .line 526
    move-result-object v0

    .line 527
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 530
    move-result v0

    .line 531
    invoke-static {v7}, Lib;->u(I)Z

    .line 534
    move-result v2

    .line 535
    if-eqz v2, :cond_f

    .line 537
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 539
    iget-object v11, v2, Ljm$e;->l:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 541
    iget-object v2, v2, Ljm$e;->m:Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 543
    invoke-virtual {p0, v11, v2}, Ljm;->p(Lig;Landroid/view/View;)V

    .line 546
    :cond_f
    if-lez v0, :cond_11

    .line 548
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 550
    iget-object v2, v2, Ljm$e;->n:Lcom/autonavi/skin/view/SkinTextView;

    .line 552
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 555
    move-result v11

    .line 556
    invoke-virtual {v2, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 559
    if-le v0, v4, :cond_10

    .line 561
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 563
    iget-object v2, v2, Ljm$e;->n:Lcom/autonavi/skin/view/SkinTextView;

    .line 565
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 568
    move-result-object v11

    .line 569
    sget v13, Lq80;->B:I

    .line 571
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimension(I)F

    .line 574
    move-result v11

    .line 575
    mul-float v11, v11, v3

    .line 577
    invoke-virtual {v2, v1, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 580
    goto :goto_6

    .line 581
    :cond_10
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 583
    iget-object v2, v2, Ljm$e;->n:Lcom/autonavi/skin/view/SkinTextView;

    .line 585
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 588
    move-result-object v11

    .line 589
    sget v13, Lq80;->C:I

    .line 591
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimension(I)F

    .line 594
    move-result v11

    .line 595
    mul-float v11, v11, v3

    .line 597
    invoke-virtual {v2, v1, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 600
    :goto_6
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 602
    iget-object v2, v2, Ljm$e;->n:Lcom/autonavi/skin/view/SkinTextView;

    .line 604
    new-instance v11, Ljava/lang/StringBuilder;

    .line 606
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    move-result-object v0

    .line 619
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    goto :goto_7

    .line 623
    :cond_11
    invoke-virtual {p1}, Lgh;->h()I

    .line 626
    move-result v0

    .line 627
    invoke-virtual {p0, v0, v1}, Ljm;->q(II)I

    .line 630
    move-result v0

    .line 631
    if-eq v0, v9, :cond_12

    .line 633
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 635
    iget-object v2, v2, Ljm$e;->n:Lcom/autonavi/skin/view/SkinTextView;

    .line 637
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 642
    iget-object v2, v2, Ljm$e;->n:Lcom/autonavi/skin/view/SkinTextView;

    .line 644
    invoke-virtual {v2, v0}, Lcom/autonavi/skin/view/SkinTextView;->setBackgroundResource(I)V

    .line 647
    :cond_12
    :goto_7
    invoke-virtual {p1}, Lgh;->e()I

    .line 650
    move-result v0

    .line 651
    if-lez v0, :cond_14

    .line 653
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 655
    iget-object v2, v2, Ljm$e;->p:Lcom/autonavi/skin/view/SkinTextView;

    .line 657
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 660
    move-result v9

    .line 661
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 664
    if-le v0, v4, :cond_13

    .line 666
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 668
    iget-object v2, v2, Ljm$e;->p:Lcom/autonavi/skin/view/SkinTextView;

    .line 670
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 673
    move-result-object v4

    .line 674
    sget v9, Lq80;->B:I

    .line 676
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 679
    move-result v4

    .line 680
    mul-float v4, v4, v3

    .line 682
    invoke-virtual {v2, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 685
    goto :goto_8

    .line 686
    :cond_13
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 688
    iget-object v2, v2, Ljm$e;->p:Lcom/autonavi/skin/view/SkinTextView;

    .line 690
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 693
    move-result-object v4

    .line 694
    sget v9, Lq80;->C:I

    .line 696
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 699
    move-result v4

    .line 700
    mul-float v4, v4, v3

    .line 702
    invoke-virtual {v2, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 705
    :goto_8
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 707
    iget-object v2, v2, Ljm$e;->p:Lcom/autonavi/skin/view/SkinTextView;

    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    .line 711
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 723
    move-result-object v0

    .line 724
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    goto :goto_9

    .line 728
    :cond_14
    invoke-virtual {p1}, Lgh;->f()I

    .line 731
    move-result v0

    .line 732
    invoke-virtual {p0, v0, v1}, Ljm;->q(II)I

    .line 735
    move-result v0

    .line 736
    if-eq v0, v9, :cond_15

    .line 738
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 740
    iget-object v2, v2, Ljm$e;->p:Lcom/autonavi/skin/view/SkinTextView;

    .line 742
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 747
    iget-object v2, v2, Ljm$e;->p:Lcom/autonavi/skin/view/SkinTextView;

    .line 749
    invoke-virtual {v2, v0}, Lcom/autonavi/skin/view/SkinTextView;->setBackgroundResource(I)V

    .line 752
    :cond_15
    :goto_9
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 754
    iget-object v0, v0, Ljm$e;->q:Lcom/autonavi/skin/view/SkinTextView;

    .line 756
    new-instance v2, Ljava/lang/StringBuilder;

    .line 758
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    invoke-virtual {p1}, Lgh;->d()I

    .line 764
    move-result p1

    .line 765
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 774
    move-result-object p1

    .line 775
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object p1, p0, Ljm;->t:Ljm$e;

    .line 780
    iget-object p1, p1, Ljm$e;->l:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 782
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 785
    invoke-static {v7}, Lib;->u(I)Z

    .line 788
    move-result p1

    .line 789
    if-eqz p1, :cond_16

    .line 791
    iget-object p1, p0, Ljm;->t:Ljm$e;

    .line 793
    iget-object p1, p1, Ljm$e;->d:Lcom/autonavi/skin/view/SkinTextView;

    .line 795
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 798
    invoke-virtual {p0}, Lfc;->getmContext()Landroid/content/Context;

    .line 801
    move-result-object p1

    .line 802
    invoke-static {p0, p1, v6, v8}, Lcom/autonavi/floatwindow/FloatViewHelper;->refreshLightsGroup(Landroid/view/View;Landroid/content/Context;Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;I)V

    .line 805
    :cond_16
    iget-object p1, p0, Ljm;->t:Ljm$e;

    .line 807
    iget-object p1, p1, Ljm$e;->c:Lcom/autonavi/skin/view/SkinTextView;

    .line 809
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 812
    goto/16 :goto_e

    .line 814
    :cond_17
    sget v0, Ly80;->y:I

    .line 816
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 819
    move-result-object v0

    .line 820
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 823
    invoke-virtual {p1}, Lgh;->g()Ljava/lang/Integer;

    .line 826
    move-result-object v0

    .line 827
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 830
    move-result v0

    .line 831
    invoke-static {v7}, Lib;->u(I)Z

    .line 834
    move-result v2

    .line 835
    if-eqz v2, :cond_18

    .line 837
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 839
    iget-object v11, v2, Ljm$e;->r:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 841
    iget-object v2, v2, Ljm$e;->s:Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 843
    invoke-virtual {p0, v11, v2}, Ljm;->p(Lig;Landroid/view/View;)V

    .line 846
    :cond_18
    if-lez v0, :cond_1a

    .line 848
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 850
    iget-object v2, v2, Ljm$e;->t:Lcom/autonavi/skin/view/SkinTextView;

    .line 852
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 855
    move-result v9

    .line 856
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 859
    if-le v0, v4, :cond_19

    .line 861
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 863
    iget-object v2, v2, Ljm$e;->t:Lcom/autonavi/skin/view/SkinTextView;

    .line 865
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 868
    move-result-object v4

    .line 869
    sget v9, Lq80;->B:I

    .line 871
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 874
    move-result v4

    .line 875
    mul-float v4, v4, v3

    .line 877
    invoke-virtual {v2, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 880
    goto :goto_a

    .line 881
    :cond_19
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 883
    iget-object v2, v2, Ljm$e;->t:Lcom/autonavi/skin/view/SkinTextView;

    .line 885
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 888
    move-result-object v4

    .line 889
    sget v9, Lq80;->C:I

    .line 891
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 894
    move-result v4

    .line 895
    mul-float v4, v4, v3

    .line 897
    invoke-virtual {v2, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 900
    :goto_a
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 902
    iget-object v2, v2, Ljm$e;->t:Lcom/autonavi/skin/view/SkinTextView;

    .line 904
    new-instance v3, Ljava/lang/StringBuilder;

    .line 906
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 909
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 918
    move-result-object v0

    .line 919
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    goto :goto_b

    .line 923
    :cond_1a
    invoke-virtual {p1}, Lgh;->h()I

    .line 926
    move-result v0

    .line 927
    invoke-virtual {p0, v0, v1}, Ljm;->q(II)I

    .line 930
    move-result v0

    .line 931
    if-eq v0, v9, :cond_1b

    .line 933
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 935
    iget-object v2, v2, Ljm$e;->t:Lcom/autonavi/skin/view/SkinTextView;

    .line 937
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 942
    iget-object v2, v2, Ljm$e;->t:Lcom/autonavi/skin/view/SkinTextView;

    .line 944
    invoke-virtual {v2, v0}, Lcom/autonavi/skin/view/SkinTextView;->setBackgroundResource(I)V

    .line 947
    :cond_1b
    :goto_b
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 949
    iget-object v0, v0, Ljm$e;->u:Lcom/autonavi/skin/view/SkinTextView;

    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    .line 953
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 956
    invoke-virtual {p1}, Lgh;->d()I

    .line 959
    move-result p1

    .line 960
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 963
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 969
    move-result-object p1

    .line 970
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    iget-object p1, p0, Ljm;->t:Ljm$e;

    .line 975
    iget-object p1, p1, Ljm$e;->r:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 977
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 980
    invoke-static {v7}, Lib;->u(I)Z

    .line 983
    move-result p1

    .line 984
    if-eqz p1, :cond_1c

    .line 986
    iget-object p1, p0, Ljm;->t:Ljm$e;

    .line 988
    iget-object p1, p1, Ljm$e;->d:Lcom/autonavi/skin/view/SkinTextView;

    .line 990
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 993
    invoke-virtual {p0}, Lfc;->getmContext()Landroid/content/Context;

    .line 996
    move-result-object p1

    .line 997
    invoke-static {p0, p1, v6, v8}, Lcom/autonavi/floatwindow/FloatViewHelper;->refreshLightsGroup(Landroid/view/View;Landroid/content/Context;Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;I)V

    .line 1000
    :cond_1c
    iget-object p1, p0, Ljm;->t:Ljm$e;

    .line 1002
    iget-object p1, p1, Ljm$e;->c:Lcom/autonavi/skin/view/SkinTextView;

    .line 1004
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1007
    goto/16 :goto_e

    .line 1009
    :cond_1d
    sget v0, Ly80;->y:I

    .line 1011
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1014
    move-result-object v0

    .line 1015
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    invoke-virtual {p1}, Lgh;->h()I

    .line 1021
    move-result v0

    .line 1022
    invoke-virtual {p0, v0, v1}, Ljm;->q(II)I

    .line 1025
    move-result v0

    .line 1026
    invoke-static {v7}, Lib;->u(I)Z

    .line 1029
    move-result v2

    .line 1030
    if-eqz v2, :cond_1e

    .line 1032
    iget-object v2, p0, Ljm;->t:Ljm$e;

    .line 1034
    iget-object v11, v2, Ljm$e;->v:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 1036
    iget-object v2, v2, Ljm$e;->w:Lcom/autonavi/view/custom/CustomElectroniceyeView;

    .line 1038
    invoke-virtual {p0, v11, v2}, Ljm;->p(Lig;Landroid/view/View;)V

    .line 1041
    :cond_1e
    if-eq v0, v9, :cond_1f

    .line 1043
    iget-object p1, p0, Ljm;->t:Ljm$e;

    .line 1045
    iget-object p1, p1, Ljm$e;->x:Lcom/autonavi/skin/view/SkinTextView;

    .line 1047
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    iget-object p1, p0, Ljm;->t:Ljm$e;

    .line 1052
    iget-object p1, p1, Ljm$e;->x:Lcom/autonavi/skin/view/SkinTextView;

    .line 1054
    invoke-virtual {p1, v0}, Lcom/autonavi/skin/view/SkinTextView;->setBackgroundResource(I)V

    .line 1057
    goto :goto_d

    .line 1058
    :cond_1f
    invoke-virtual {p1}, Lgh;->g()Ljava/lang/Integer;

    .line 1061
    move-result-object p1

    .line 1062
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 1065
    move-result p1

    .line 1066
    if-le p1, v4, :cond_20

    .line 1068
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 1070
    iget-object v0, v0, Ljm$e;->x:Lcom/autonavi/skin/view/SkinTextView;

    .line 1072
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1075
    move-result-object v2

    .line 1076
    sget v4, Lq80;->B:I

    .line 1078
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 1081
    move-result v2

    .line 1082
    mul-float v2, v2, v3

    .line 1084
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1087
    goto :goto_c

    .line 1088
    :cond_20
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 1090
    iget-object v0, v0, Ljm$e;->x:Lcom/autonavi/skin/view/SkinTextView;

    .line 1092
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1095
    move-result-object v2

    .line 1096
    sget v4, Lq80;->C:I

    .line 1098
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 1101
    move-result v2

    .line 1102
    mul-float v2, v2, v3

    .line 1104
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1107
    :goto_c
    iget-object v0, p0, Ljm;->t:Ljm$e;

    .line 1109
    iget-object v0, v0, Ljm$e;->x:Lcom/autonavi/skin/view/SkinTextView;

    .line 1111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1113
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1116
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1119
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1125
    move-result-object p1

    .line 1126
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    :goto_d
    iget-object p1, p0, Ljm;->t:Ljm$e;

    .line 1131
    iget-object p1, p1, Ljm$e;->v:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 1133
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    invoke-static {v7}, Lib;->u(I)Z

    .line 1139
    move-result p1

    .line 1140
    if-eqz p1, :cond_21

    .line 1142
    iget-object p1, p0, Ljm;->t:Ljm$e;

    .line 1144
    iget-object p1, p1, Ljm$e;->d:Lcom/autonavi/skin/view/SkinTextView;

    .line 1146
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    invoke-virtual {p0}, Lfc;->getmContext()Landroid/content/Context;

    .line 1152
    move-result-object p1

    .line 1153
    invoke-static {p0, p1, v6, v8}, Lcom/autonavi/floatwindow/FloatViewHelper;->refreshLightsGroup(Landroid/view/View;Landroid/content/Context;Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;I)V

    .line 1156
    :cond_21
    iget-object p1, p0, Ljm;->t:Ljm$e;

    .line 1158
    iget-object p1, p1, Ljm$e;->c:Lcom/autonavi/skin/view/SkinTextView;

    .line 1160
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    :cond_22
    :goto_e
    return-void
.end method
