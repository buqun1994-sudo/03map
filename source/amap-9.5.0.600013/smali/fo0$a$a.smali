.class public Lfo0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfo0$a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:[I

.field public final synthetic d:[F

.field public final synthetic e:[F

.field public final synthetic f:Lfo0$a;


# direct methods
.method public constructor <init>(Lfo0$a;II[I[F[F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfo0$a$a;->f:Lfo0$a;

    .line 3
    iput p2, p0, Lfo0$a$a;->a:I

    .line 5
    iput p3, p0, Lfo0$a$a;->b:I

    .line 7
    iput-object p4, p0, Lfo0$a$a;->c:[I

    .line 9
    iput-object p5, p0, Lfo0$a$a;->d:[F

    .line 11
    iput-object p6, p0, Lfo0$a$a;->e:[F

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lfo0$a$a;->f:Lfo0$a;

    .line 6
    iget-object v1, v1, Lfo0$a;->a:Lfo0;

    .line 8
    invoke-static {v1}, Lfo0;->a(Lfo0;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 11
    move-result-object v1

    .line 12
    iget v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object v1, v0, v2

    .line 21
    iget v1, p0, Lfo0$a$a;->a:I

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x1

    .line 28
    aput-object v1, v0, v2

    .line 30
    iget v1, p0, Lfo0$a$a;->b:I

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x2

    .line 37
    aput-object v1, v0, v2

    .line 39
    const-string v1, "WindowWidgetProcessor"

    .line 41
    const-string v2, "MultiScreenNative.onTouchEventNative id={?}, action={?}, pointerNumber={?}"

    .line 43
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lfo0$a$a;->f:Lfo0$a;

    .line 48
    iget-object v0, v0, Lfo0$a;->a:Lfo0;

    .line 50
    invoke-static {v0}, Lfo0;->a(Lfo0;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 53
    move-result-object v0

    .line 54
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 56
    iget-object v1, p0, Lfo0$a$a;->c:[I

    .line 58
    iget-object v2, p0, Lfo0$a$a;->d:[F

    .line 60
    iget-object v3, p0, Lfo0$a$a;->e:[F

    .line 62
    iget v4, p0, Lfo0$a$a;->a:I

    .line 64
    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onTouchEvent(I[I[F[FI)V

    .line 67
    return-void
.end method
