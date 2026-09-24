.class public Lsu$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsu;


# direct methods
.method public constructor <init>(Lsu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsu$h;->a:Lsu;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .line 1
    iget-object v0, p0, Lsu$h;->a:Lsu;

    .line 3
    invoke-static {v0}, Lsu;->l(Lsu;)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 15
    iget-object v1, p0, Lsu$h;->a:Lsu;

    .line 17
    invoke-static {v1}, Lsu;->l(Lsu;)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 24
    iget-object v1, p0, Lsu$h;->a:Lsu;

    .line 26
    invoke-static {v1}, Lsu;->f(Lsu;)Landroid/view/ViewGroup;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 33
    move-result v1

    .line 34
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 36
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 38
    sub-int/2addr v2, v0

    .line 39
    sub-int/2addr v1, v2

    .line 40
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->isInDysmorphismState()Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 46
    const/16 v0, 0x7532

    .line 48
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->jniGetIntValue(I)I

    .line 51
    move-result v0

    .line 52
    :goto_0
    sub-int/2addr v1, v0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-static {}, Ltu;->c()Ltu;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ltu;->a()I

    .line 61
    move-result v0

    .line 62
    if-lez v0, :cond_2

    .line 64
    invoke-static {}, Ltu;->c()Ltu;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ltu;->a()I

    .line 71
    move-result v0

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    :goto_1
    invoke-static {}, Ltu;->c()Ltu;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ltu;->d()I

    .line 80
    move-result v0

    .line 81
    const/4 v2, 0x1

    .line 82
    const/4 v3, 0x0

    .line 83
    if-le v1, v0, :cond_3

    .line 85
    const/4 v0, 0x1

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    const/4 v0, 0x0

    .line 88
    :goto_2
    iget-object v4, p0, Lsu$h;->a:Lsu;

    .line 90
    invoke-static {v4}, Lsu;->c(Lsu;)Z

    .line 93
    move-result v4

    .line 94
    const-string v5, "InputMethodWrapper"

    .line 96
    if-eq v0, v4, :cond_5

    .line 98
    iget-object v4, p0, Lsu$h;->a:Lsu;

    .line 100
    invoke-static {v4, v0}, Lsu;->d(Lsu;Z)Z

    .line 103
    new-array v4, v2, [Ljava/lang/Object;

    .line 105
    iget-object v6, p0, Lsu$h;->a:Lsu;

    .line 107
    invoke-static {v6}, Lsu;->c(Lsu;)Z

    .line 110
    move-result v6

    .line 111
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    move-result-object v6

    .line 115
    aput-object v6, v4, v3

    .line 117
    const-string v6, "status change SoftKeyboard:{?}"

    .line 119
    invoke-static {v5, v6, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v4, p0, Lsu$h;->a:Lsu;

    .line 124
    invoke-static {v4}, Lsu;->c(Lsu;)Z

    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_4

    .line 130
    iget-object v4, p0, Lsu$h;->a:Lsu;

    .line 132
    invoke-virtual {v4}, Lsu;->p()V

    .line 135
    goto :goto_3

    .line 136
    :cond_4
    iget-object v4, p0, Lsu$h;->a:Lsu;

    .line 138
    invoke-static {v4}, Lsu;->h(Lsu;)Lsu$j;

    .line 141
    move-result-object v4

    .line 142
    if-eqz v4, :cond_5

    .line 144
    iget-object v4, p0, Lsu$h;->a:Lsu;

    .line 146
    invoke-static {v4}, Lsu;->h(Lsu;)Lsu$j;

    .line 149
    move-result-object v4

    .line 150
    iget-object v6, p0, Lsu$h;->a:Lsu;

    .line 152
    invoke-static {v6}, Lsu;->c(Lsu;)Z

    .line 155
    move-result v6

    .line 156
    invoke-interface {v4, v6}, Lsu$j;->a(Z)V

    .line 159
    :cond_5
    :goto_3
    const/4 v4, 0x3

    .line 160
    new-array v4, v4, [Ljava/lang/Object;

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    move-result-object v1

    .line 166
    aput-object v1, v4, v3

    .line 168
    invoke-static {}, Ltu;->c()Ltu;

    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1}, Ltu;->d()I

    .line 175
    move-result v1

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    move-result-object v1

    .line 180
    aput-object v1, v4, v2

    .line 182
    const/4 v1, 0x2

    .line 183
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 186
    move-result-object v0

    .line 187
    aput-object v0, v4, v1

    .line 189
    const-string v0, "keyboard Size: {?} & StatusBarHeight:{?} & showstatus:{?}"

    .line 191
    invoke-static {v5, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    return-void
.end method
