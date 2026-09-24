.class public Lfo0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfo0;->c(Lcom/autonavi/amapauto/jni/ViewInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lfo0;


# direct methods
.method public constructor <init>(Lfo0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfo0$a;->a:Lfo0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 4
    move-result v3

    .line 5
    new-array v4, v3, [I

    .line 7
    new-array v5, v3, [F

    .line 9
    new-array v6, v3, [F

    .line 11
    const/4 p1, 0x0

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-ge v0, v3, :cond_0

    .line 15
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 18
    move-result v1

    .line 19
    aput v1, v4, v0

    .line 21
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 24
    move-result v1

    .line 25
    aput v1, v5, v0

    .line 27
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 30
    move-result v1

    .line 31
    aput v1, v6, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 39
    move-result v2

    .line 40
    const/4 p2, 0x3

    .line 41
    new-array p2, p2, [Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lfo0$a;->a:Lfo0;

    .line 45
    invoke-static {v0}, Lfo0;->a(Lfo0;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 48
    move-result-object v0

    .line 49
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v0

    .line 55
    aput-object v0, p2, p1

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object p1

    .line 61
    const/4 v7, 0x1

    .line 62
    aput-object p1, p2, v7

    .line 64
    const/4 p1, 0x2

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v0

    .line 69
    aput-object v0, p2, p1

    .line 71
    const-string p1, "WindowWidgetProcessor"

    .line 73
    const-string v0, "onTouch id={?}, action={?}, pointerNumber={?}"

    .line 75
    invoke-static {p1, v0, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lvo;->a()Landroid/os/Handler;

    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_1

    .line 84
    new-instance p2, Lfo0$a$a;

    .line 86
    move-object v0, p2

    .line 87
    move-object v1, p0

    .line 88
    invoke-direct/range {v0 .. v6}, Lfo0$a$a;-><init>(Lfo0$a;II[I[F[F)V

    .line 91
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    :cond_1
    return v7
.end method
