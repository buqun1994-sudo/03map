.class public Ljm$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljm;->h(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljm;


# direct methods
.method public constructor <init>(Ljm;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljm$b;->b:Ljm;

    .line 3
    iput-boolean p2, p0, Ljm$b;->a:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Ljm$b;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    goto/16 :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Ljm$b;->b:Ljm;

    .line 9
    invoke-static {v0}, Ljm;->l(Ljm;)Ljm$e;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Ljm$b;->b:Ljm;

    .line 17
    invoke-static {v0}, Ljm;->l(Ljm;)Ljm$e;

    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Ljm$e;->j:Landroid/view/View;

    .line 23
    const/16 v1, 0x8

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Ljm$b;->b:Ljm;

    .line 30
    invoke-static {v0}, Ljm;->l(Ljm;)Ljm$e;

    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Ljm$e;->i:Landroid/view/View;

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    const/16 v0, 0x2d0

    .line 42
    invoke-static {v0}, Lib;->u(I)Z

    .line 45
    move-result v0

    .line 46
    const/4 v3, 0x0

    .line 47
    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Ljm$b;->b:Ljm;

    .line 51
    iget-boolean v4, v0, Ljm;->v:Z

    .line 53
    if-nez v4, :cond_1

    .line 55
    invoke-static {v0}, Ljm;->l(Ljm;)Ljm$e;

    .line 58
    move-result-object v0

    .line 59
    iget-object v0, v0, Ljm$e;->d:Lcom/autonavi/skin/view/SkinTextView;

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Ljm$b;->b:Ljm;

    .line 66
    invoke-virtual {v0}, Lfc;->getmContext()Landroid/content/Context;

    .line 69
    move-result-object v4

    .line 70
    const/4 v5, -0x8

    .line 71
    invoke-static {v0, v4, v3, v5}, Lcom/autonavi/floatwindow/FloatViewHelper;->refreshLightsGroup(Landroid/view/View;Landroid/content/Context;Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;I)V

    .line 74
    :cond_1
    iget-object v0, p0, Ljm$b;->b:Ljm;

    .line 76
    invoke-static {v0}, Ljm;->l(Ljm;)Ljm$e;

    .line 79
    move-result-object v0

    .line 80
    iget-object v0, v0, Ljm$e;->c:Lcom/autonavi/skin/view/SkinTextView;

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Ljm$b;->b:Ljm;

    .line 87
    invoke-static {v0}, Ljm;->l(Ljm;)Ljm$e;

    .line 90
    move-result-object v0

    .line 91
    iget-object v0, v0, Ljm$e;->h:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 93
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Ljm$b;->b:Ljm;

    .line 98
    invoke-static {v0}, Ljm;->l(Ljm;)Ljm$e;

    .line 101
    move-result-object v0

    .line 102
    iget-object v0, v0, Ljm$e;->g:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Ljm$b;->b:Ljm;

    .line 109
    invoke-static {v0}, Ljm;->l(Ljm;)Ljm$e;

    .line 112
    move-result-object v0

    .line 113
    iget-object v0, v0, Ljm$e;->e:Lcom/autonavi/skin/view/SkinTextView;

    .line 115
    const-string v2, "--"

    .line 117
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Ljm$b;->b:Ljm;

    .line 122
    invoke-static {v0}, Ljm;->l(Ljm;)Ljm$e;

    .line 125
    move-result-object v0

    .line 126
    iget-object v0, v0, Ljm$e;->y:Lcom/autonavi/skin/view/SkinConstraintLayout;

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Ljm$b;->b:Ljm;

    .line 133
    invoke-static {v0}, Ljm;->m(Ljm;)Landroid/graphics/Bitmap;

    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/RoadMapInteract;->recycle(Landroid/graphics/Bitmap;)V

    .line 140
    iget-object v0, p0, Ljm$b;->b:Ljm;

    .line 142
    invoke-static {v0, v3}, Ljm;->n(Ljm;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 145
    invoke-static {}, Lib;->l()Z

    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Ljm$b;->b:Ljm;

    .line 153
    invoke-static {v0}, Ljm;->l(Ljm;)Ljm$e;

    .line 156
    move-result-object v0

    .line 157
    iget-object v0, v0, Ljm$e;->k:Landroid/view/View;

    .line 159
    iget-object v1, p0, Ljm$b;->b:Ljm;

    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 164
    move-result-object v1

    .line 165
    sget v2, Lt80;->K2:I

    .line 167
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_2
    :goto_0
    return-void
.end method
