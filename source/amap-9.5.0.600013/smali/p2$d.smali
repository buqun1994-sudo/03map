.class public Lp2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp2;->n(Landroid/view/MotionEvent;)V
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

.field public final synthetic f:Lp2;


# direct methods
.method public constructor <init>(Lp2;II[I[F[F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp2$d;->f:Lp2;

    .line 3
    iput p2, p0, Lp2$d;->a:I

    .line 5
    iput p3, p0, Lp2$d;->b:I

    .line 7
    iput-object p4, p0, Lp2$d;->c:[I

    .line 9
    iput-object p5, p0, Lp2$d;->d:[F

    .line 11
    iput-object p6, p0, Lp2$d;->e:[F

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
    iget-object v1, p0, Lp2$d;->f:Lp2;

    .line 6
    invoke-virtual {v1}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 9
    move-result-object v1

    .line 10
    iget v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v1, v0, v2

    .line 19
    iget v1, p0, Lp2$d;->a:I

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x1

    .line 26
    aput-object v1, v0, v2

    .line 28
    iget v1, p0, Lp2$d;->b:I

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x2

    .line 35
    aput-object v1, v0, v2

    .line 37
    const-string v1, "AidlWidgetExternalScreen"

    .line 39
    const-string v2, "MultiScreenNative.onTouchEventNative id={?}, action={?}, pointerNumber={?}"

    .line 41
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lp2$d;->f:Lp2;

    .line 46
    invoke-virtual {v0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 49
    move-result-object v0

    .line 50
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 52
    iget-object v1, p0, Lp2$d;->c:[I

    .line 54
    iget-object v2, p0, Lp2$d;->d:[F

    .line 56
    iget-object v3, p0, Lp2$d;->e:[F

    .line 58
    iget v4, p0, Lp2$d;->a:I

    .line 60
    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onTouchEvent(I[I[F[FI)V

    .line 63
    return-void
.end method
