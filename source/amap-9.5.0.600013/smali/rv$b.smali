.class public Lrv$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrv;


# direct methods
.method public constructor <init>(Lrv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrv$b;->a:Lrv;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .line 1
    const/4 p6, 0x2

    .line 2
    new-array p7, p6, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 7
    move-result p8

    .line 8
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p8

    .line 12
    const/4 p9, 0x0

    .line 13
    aput-object p8, p7, p9

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 18
    move-result p8

    .line 19
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p8

    .line 23
    const/4 v0, 0x1

    .line 24
    aput-object p8, p7, v0

    .line 26
    const-string p8, "JNIContext"

    .line 28
    const-string v1, "onLayoutChange wid ={?}, hei = {?}"

    .line 30
    invoke-static {p8, v1, p7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    new-array p6, p6, [Ljava/lang/Object;

    .line 35
    sub-int/2addr p4, p2

    .line 36
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p2

    .line 40
    aput-object p2, p6, p9

    .line 42
    sub-int/2addr p5, p3

    .line 43
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p2

    .line 47
    aput-object p2, p6, v0

    .line 49
    const-string p2, "onScreenSizeChange wid ={?}, hei = {?}"

    .line 51
    invoke-static {p8, p2, p6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string p3, "onLayoutChange, width="

    .line 61
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string p3, ", height="

    .line 69
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p2

    .line 79
    invoke-static {p8, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p2, p0, Lrv$b;->a:Lrv;

    .line 84
    invoke-virtual {p2}, Lrv;->z()Landroid/content/Context;

    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 95
    move-result-object p2

    .line 96
    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 98
    invoke-static {}, Lrv;->H()Lrv;

    .line 101
    move-result-object p3

    .line 102
    invoke-virtual {p3}, Lrv;->C()I

    .line 105
    move-result p3

    .line 106
    if-lez p3, :cond_0

    .line 108
    invoke-static {}, Lrv;->H()Lrv;

    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p2}, Lrv;->C()I

    .line 115
    move-result p2

    .line 116
    :cond_0
    iget-object p3, p0, Lrv$b;->a:Lrv;

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 121
    move-result p4

    .line 122
    invoke-static {p3, p4}, Lrv;->n(Lrv;I)I

    .line 125
    iget-object p3, p0, Lrv$b;->a:Lrv;

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 130
    move-result p1

    .line 131
    invoke-static {p3, p1}, Lrv;->p(Lrv;I)I

    .line 134
    new-array p1, v0, [Ljava/lang/Object;

    .line 136
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    move-result-object p3

    .line 140
    aput-object p3, p1, p9

    .line 142
    const-string p3, "getDisplayMetrics defalutDpi ={?}"

    .line 144
    invoke-static {p8, p3, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object p1, p0, Lrv$b;->a:Lrv;

    .line 149
    invoke-static {p1}, Lrv;->m(Lrv;)I

    .line 152
    move-result p1

    .line 153
    iget-object p3, p0, Lrv$b;->a:Lrv;

    .line 155
    invoke-static {p3}, Lrv;->o(Lrv;)I

    .line 158
    move-result p3

    .line 159
    invoke-static {p1, p3, p2}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeOnLayoutChange(III)V

    .line 162
    return-void
.end method
