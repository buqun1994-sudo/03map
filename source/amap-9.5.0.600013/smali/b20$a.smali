.class public Lb20$a;
.super Lgs$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb20;


# direct methods
.method public constructor <init>(Lb20;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb20$a;->a:Lb20;

    .line 3
    invoke-direct {p0}, Lgs$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public q1(ILandroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb20$a;->a:Lb20;

    .line 3
    invoke-static {v0}, Lb20;->a(Lb20;)Ljava/util/TreeMap;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lrt;

    .line 17
    if-nez p1, :cond_0

    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-interface {p1, p2}, Lrt;->a(Landroid/view/MotionEvent;)Z

    .line 24
    move-result p1

    .line 25
    return p1
.end method
