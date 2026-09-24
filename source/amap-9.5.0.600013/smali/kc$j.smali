.class public Lkc$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public final synthetic a:Lkc;


# direct methods
.method public constructor <init>(Lkc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkc$j;->a:Lkc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkc;Lkc$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lkc$j;-><init>(Lkc;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget-object p1, p0, Lkc$j;->a:Lkc;

    .line 3
    invoke-virtual {p1, p2}, Lkc;->A(Landroid/view/MotionEvent;)Z

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 9
    move-result p1

    .line 10
    new-array v0, p1, [I

    .line 12
    new-array v1, p1, [F

    .line 14
    new-array v2, p1, [F

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    if-ge v4, p1, :cond_0

    .line 20
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 23
    move-result v5

    .line 24
    aput v5, v0, v4

    .line 26
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 29
    move-result v5

    .line 30
    aput v5, v1, v4

    .line 32
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 35
    move-result v5

    .line 36
    aput v5, v2, v4

    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x1

    .line 42
    new-array v4, v0, [Ljava/lang/Object;

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object p1

    .line 48
    aput-object p1, v4, v3

    .line 50
    const-string p1, "Activity"

    .line 52
    const-string v5, "onTouch pointerNumber= {?} "

    .line 54
    invoke-static {p1, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_1

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    aget v1, v1, v3

    .line 70
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, " , "

    .line 75
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    aget v1, v2, v3

    .line 80
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, " "

    .line 85
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1}, Lb7;->e(Ljava/lang/String;)V

    .line 95
    :cond_1
    new-array v1, v0, [Ljava/lang/Object;

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v2

    .line 101
    aput-object v2, v1, v3

    .line 103
    const-string v2, "onTouch action= {?} "

    .line 105
    invoke-static {p1, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lh7;->a()Lh7;

    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1, p2}, Lh7;->p(Landroid/view/MotionEvent;)V

    .line 115
    iget-object p1, p0, Lkc$j;->a:Lkc;

    .line 117
    invoke-static {p1}, Lkc;->g(Lkc;)I

    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_2

    .line 123
    iget-object p1, p0, Lkc$j;->a:Lkc;

    .line 125
    invoke-static {p1}, Lkc;->i(Lkc;)I

    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_3

    .line 131
    :cond_2
    iget-object p1, p0, Lkc$j;->a:Lkc;

    .line 133
    invoke-static {}, Lzi;->a()Lzi$a;

    .line 136
    move-result-object v1

    .line 137
    iget v1, v1, Lzi$a;->b:I

    .line 139
    invoke-static {p1, v1}, Lkc;->h(Lkc;I)I

    .line 142
    iget-object p1, p0, Lkc$j;->a:Lkc;

    .line 144
    invoke-static {}, Lzi;->a()Lzi$a;

    .line 147
    move-result-object v1

    .line 148
    iget v1, v1, Lzi$a;->a:I

    .line 150
    invoke-static {p1, v1}, Lkc;->j(Lkc;I)I

    .line 153
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 156
    move-result p1

    .line 157
    const/16 v1, 0xa

    .line 159
    if-nez p1, :cond_7

    .line 161
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 164
    move-result p1

    .line 165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 168
    move-result v2

    .line 169
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 172
    move-result-wide v4

    .line 173
    iget-object v6, p0, Lkc$j;->a:Lkc;

    .line 175
    invoke-static {v6}, Lkc;->g(Lkc;)I

    .line 178
    move-result v6

    .line 179
    div-int/2addr v6, v1

    .line 180
    const/16 v7, 0x96

    .line 182
    if-le v7, v6, :cond_4

    .line 184
    iget-object v6, p0, Lkc$j;->a:Lkc;

    .line 186
    invoke-static {v6}, Lkc;->g(Lkc;)I

    .line 189
    move-result v6

    .line 190
    div-int/2addr v6, v1

    .line 191
    goto :goto_1

    .line 192
    :cond_4
    const/16 v6, 0x96

    .line 194
    :goto_1
    iget-object v8, p0, Lkc$j;->a:Lkc;

    .line 196
    invoke-static {v8}, Lkc;->k(Lkc;)J

    .line 199
    move-result-wide v8

    .line 200
    sub-long/2addr v4, v8

    .line 201
    const-wide/16 v8, 0x5dc

    .line 203
    cmp-long v10, v4, v8

    .line 205
    if-gez v10, :cond_6

    .line 207
    iget-object v4, p0, Lkc$j;->a:Lkc;

    .line 209
    invoke-static {v4}, Lkc;->i(Lkc;)I

    .line 212
    move-result v4

    .line 213
    div-int/lit8 v4, v4, 0x2

    .line 215
    sub-int/2addr v4, v7

    .line 216
    int-to-float v4, v4

    .line 217
    cmpl-float v4, p1, v4

    .line 219
    if-lez v4, :cond_5

    .line 221
    iget-object v4, p0, Lkc$j;->a:Lkc;

    .line 223
    invoke-static {v4}, Lkc;->i(Lkc;)I

    .line 226
    move-result v4

    .line 227
    div-int/lit8 v4, v4, 0x2

    .line 229
    add-int/2addr v4, v7

    .line 230
    int-to-float v4, v4

    .line 231
    cmpg-float p1, p1, v4

    .line 233
    if-gez p1, :cond_5

    .line 235
    const/4 p1, 0x0

    .line 236
    cmpl-float p1, v2, p1

    .line 238
    if-lez p1, :cond_5

    .line 240
    int-to-float p1, v6

    .line 241
    cmpg-float p1, v2, p1

    .line 243
    if-gez p1, :cond_5

    .line 245
    iget-object p1, p0, Lkc$j;->a:Lkc;

    .line 247
    invoke-static {p1}, Lkc;->o(Lkc;)I

    .line 250
    goto :goto_2

    .line 251
    :cond_5
    iget-object p1, p0, Lkc$j;->a:Lkc;

    .line 253
    invoke-static {p1, v3}, Lkc;->n(Lkc;I)I

    .line 256
    goto :goto_2

    .line 257
    :cond_6
    iget-object p1, p0, Lkc$j;->a:Lkc;

    .line 259
    invoke-static {p1, v3}, Lkc;->n(Lkc;I)I

    .line 262
    :goto_2
    iget-object p1, p0, Lkc$j;->a:Lkc;

    .line 264
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 267
    move-result-wide v4

    .line 268
    invoke-static {p1, v4, v5}, Lkc;->l(Lkc;J)J

    .line 271
    :cond_7
    iget-object p1, p0, Lkc$j;->a:Lkc;

    .line 273
    invoke-static {p1}, Lkc;->m(Lkc;)I

    .line 276
    move-result p1

    .line 277
    if-lt p1, v1, :cond_9

    .line 279
    iget-object p1, p0, Lkc$j;->a:Lkc;

    .line 281
    invoke-static {p1, v3}, Lkc;->n(Lkc;I)I

    .line 284
    invoke-static {}, Lse;->c()Lse;

    .line 287
    move-result-object p1

    .line 288
    const p2, 0xea61

    .line 291
    invoke-virtual {p1, p2}, Lse;->getOptionalValue(I)Leq$a;

    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {p1}, Leq$a;->b()Z

    .line 298
    move-result p1

    .line 299
    if-eqz p1, :cond_8

    .line 301
    return v0

    .line 302
    :cond_8
    iget-object p1, p0, Lkc$j;->a:Lkc;

    .line 304
    invoke-static {p1}, Lbi;->t(Landroid/content/Context;)V

    .line 307
    :cond_9
    return v0
.end method
