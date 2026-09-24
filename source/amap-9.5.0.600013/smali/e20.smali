.class public Le20;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:Landroid/view/WindowManager;

.field public f:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    const-string v0, "window"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/view/WindowManager;

    .line 20
    iput-object p1, p0, Le20;->e:Landroid/view/WindowManager;

    .line 22
    invoke-static {}, Lgo0;->a()Landroid/view/WindowManager$LayoutParams;

    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Le20;->f:Landroid/view/WindowManager$LayoutParams;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le20;->f:Landroid/view/WindowManager$LayoutParams;

    .line 3
    iget v1, p0, Le20;->c:F

    .line 5
    iget v2, p0, Le20;->a:F

    .line 7
    sub-float/2addr v1, v2

    .line 8
    float-to-int v1, v1

    .line 9
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 11
    iget v1, p0, Le20;->d:F

    .line 13
    iget v2, p0, Le20;->b:F

    .line 15
    sub-float/2addr v1, v2

    .line 16
    float-to-int v1, v1

    .line 17
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 19
    iget-object v1, p0, Le20;->e:Landroid/view/WindowManager;

    .line 21
    invoke-interface {v1, p0, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Le20;->c:F

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 10
    move-result v0

    .line 11
    const/high16 v1, 0x41c80000    # 25.0f

    .line 13
    sub-float/2addr v0, v1

    .line 14
    iput v0, p0, Le20;->d:F

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-string v1, "currX"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Le20;->c:F

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "====currY"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Le20;->d:F

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    const-string v1, "currP"

    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 53
    move-result v0

    .line 54
    const/4 v1, 0x1

    .line 55
    if-eqz v0, :cond_2

    .line 57
    if-eq v0, v1, :cond_1

    .line 59
    const/4 p1, 0x2

    .line 60
    if-eq v0, p1, :cond_0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Le20;->a()V

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Le20;->a()V

    .line 70
    const/4 p1, 0x0

    .line 71
    iput p1, p0, Le20;->b:F

    .line 73
    iput p1, p0, Le20;->a:F

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 79
    move-result v0

    .line 80
    iput v0, p0, Le20;->a:F

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 85
    move-result p1

    .line 86
    iput p1, p0, Le20;->b:F

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    const-string v0, "startX"

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v0, p0, Le20;->a:F

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 103
    const-string v0, "====startY"

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v0, p0, Le20;->b:F

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    const-string v0, "startP"

    .line 119
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return v1
.end method
