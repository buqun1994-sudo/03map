.class public Ljm$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljm;->a([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljm;


# direct methods
.method public constructor <init>(Ljm;[BII)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljm$d;->d:Ljm;

    .line 3
    iput-object p2, p0, Ljm$d;->a:[B

    .line 5
    iput p3, p0, Ljm$d;->b:I

    .line 7
    iput p4, p0, Ljm$d;->c:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Ljm$d;->d:Ljm;

    .line 3
    invoke-static {v0}, Ljm;->l(Ljm;)Ljm$e;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Ljm$d;->d:Ljm;

    .line 11
    invoke-static {v0}, Ljm;->l(Ljm;)Ljm$e;

    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Ljm$e;->y:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Ljm$d;->d:Ljm;

    .line 21
    invoke-static {v0}, Ljm;->l(Ljm;)Ljm$e;

    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Ljm$e;->z:Landroid/widget/LinearLayout;

    .line 27
    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Ljm$d;->a:[B

    .line 31
    if-eqz v0, :cond_1

    .line 33
    array-length v0, v0

    .line 34
    if-lez v0, :cond_1

    .line 36
    iget-object v0, p0, Ljm$d;->d:Ljm;

    .line 38
    invoke-static {v0}, Ljm;->l(Ljm;)Ljm$e;

    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, Ljm$e;->z:Landroid/widget/LinearLayout;

    .line 44
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 47
    iget-object v0, p0, Ljm$d;->d:Ljm;

    .line 49
    invoke-static {v0}, Ljm;->l(Ljm;)Ljm$e;

    .line 52
    move-result-object v0

    .line 53
    iget-object v0, v0, Ljm$e;->A:Landroid/view/View;

    .line 55
    const/16 v1, 0x8

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    const/4 v0, 0x1

    .line 61
    new-array v1, v0, [Ljava/lang/Object;

    .line 63
    const-string v2, "ARGB_8888"

    .line 65
    const/4 v3, 0x0

    .line 66
    aput-object v2, v1, v3

    .line 68
    const-string v2, "FloatLayoutStyleCruise"

    .line 70
    const-string v4, "execute in new version~  true config:{?}"

    .line 72
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 77
    iget v4, p0, Ljm$d;->b:I

    .line 79
    iget v5, p0, Ljm$d;->c:I

    .line 81
    invoke-static {v4, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 84
    move-result-object v4

    .line 85
    if-eqz v4, :cond_0

    .line 87
    :try_start_0
    iget-object v5, p0, Ljm$d;->a:[B

    .line 89
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 100
    iget v5, p0, Ljm$d;->b:I

    .line 102
    if-lez v5, :cond_0

    .line 104
    iget v6, p0, Ljm$d;->c:I

    .line 106
    if-lez v6, :cond_0

    .line 108
    if-eqz v1, :cond_0

    .line 110
    const-string v1, "Bitmap.createBitmap width={?},height={?}"

    .line 112
    const/4 v6, 0x2

    .line 113
    new-array v6, v6, [Ljava/lang/Object;

    .line 115
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v5

    .line 119
    aput-object v5, v6, v3

    .line 121
    iget v5, p0, Ljm$d;->c:I

    .line 123
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object v5

    .line 127
    aput-object v5, v6, v0

    .line 129
    invoke-static {v2, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string v1, "occur an error~"

    .line 136
    new-array v5, v3, [Ljava/lang/Object;

    .line 138
    invoke-static {v2, v1, v0, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 141
    :cond_0
    :goto_0
    new-instance v0, Lcom/autonavi/skin/view/SkinImageView;

    .line 143
    iget-object v1, p0, Ljm$d;->d:Ljm;

    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 148
    move-result-object v1

    .line 149
    invoke-direct {v0, v1}, Lcom/autonavi/skin/view/SkinImageView;-><init>(Landroid/content/Context;)V

    .line 152
    if-eqz v4, :cond_1

    .line 154
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_1

    .line 160
    iget-object v1, p0, Ljm$d;->d:Ljm;

    .line 162
    invoke-static {v1}, Ljm;->m(Ljm;)Landroid/graphics/Bitmap;

    .line 165
    move-result-object v1

    .line 166
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/RoadMapInteract;->recycle(Landroid/graphics/Bitmap;)V

    .line 169
    iget-object v1, p0, Ljm$d;->d:Ljm;

    .line 171
    invoke-static {v1, v4}, Ljm;->n(Ljm;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 174
    iget-object v1, p0, Ljm$d;->d:Ljm;

    .line 176
    invoke-static {v1}, Ljm;->m(Ljm;)Landroid/graphics/Bitmap;

    .line 179
    move-result-object v1

    .line 180
    iget v2, p0, Ljm$d;->b:I

    .line 182
    iget v4, p0, Ljm$d;->c:I

    .line 184
    invoke-static {v1, v2, v4}, Lcom/autonavi/amapauto/jni/RoadMapInteract;->getCustomRoundBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 187
    move-result-object v1

    .line 188
    const/4 v2, 0x0

    .line 189
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 197
    const/4 v2, -0x1

    .line 198
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v1, p0, Ljm$d;->d:Ljm;

    .line 206
    invoke-static {v1}, Ljm;->l(Ljm;)Ljm$e;

    .line 209
    move-result-object v1

    .line 210
    iget-object v1, v1, Ljm$e;->z:Landroid/widget/LinearLayout;

    .line 212
    const/16 v2, 0x11

    .line 214
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 217
    iget-object v1, p0, Ljm$d;->d:Ljm;

    .line 219
    invoke-static {v1}, Ljm;->l(Ljm;)Ljm$e;

    .line 222
    move-result-object v1

    .line 223
    iget-object v1, v1, Ljm$e;->z:Landroid/widget/LinearLayout;

    .line 225
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    iget-object v0, p0, Ljm$d;->d:Ljm;

    .line 230
    invoke-static {v0}, Ljm;->l(Ljm;)Ljm$e;

    .line 233
    move-result-object v0

    .line 234
    iget-object v0, v0, Ljm$e;->y:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 236
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Ljm$d;->d:Ljm;

    .line 241
    invoke-static {v0}, Ljm;->l(Ljm;)Ljm$e;

    .line 244
    move-result-object v0

    .line 245
    iget-object v0, v0, Ljm$e;->k:Landroid/view/View;

    .line 247
    iget-object v1, p0, Ljm$d;->d:Ljm;

    .line 249
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 252
    move-result-object v1

    .line 253
    sget v2, Lt80;->L2:I

    .line 255
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 262
    :cond_1
    return-void
.end method
