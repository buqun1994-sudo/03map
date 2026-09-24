.class Lcom/amap/location/fusion/a/c/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/a/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/a/c/d;

.field private final b:I

.field private final c:Lcom/amap/location/support/fence/FenceState;

.field private final d:Lcom/amap/location/fusion/a/c/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/a/c/d;I)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/a/c/d$c;->a:Lcom/amap/location/fusion/a/c/d;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p2, p0, Lcom/amap/location/fusion/a/c/d$c;->b:I

    .line 8
    new-instance v0, Lcom/amap/location/support/fence/FenceState;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v2, "specific_"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x2

    .line 28
    const/4 v3, 0x3

    .line 29
    invoke-direct {v0, v1, v2, v3}, Lcom/amap/location/support/fence/FenceState;-><init>(Ljava/lang/String;II)V

    .line 32
    iput-object v0, p0, Lcom/amap/location/fusion/a/c/d$c;->c:Lcom/amap/location/support/fence/FenceState;

    .line 34
    new-instance v1, Lcom/amap/location/fusion/a/c/a;

    .line 36
    new-instance v2, Lcom/amap/location/support/location/LocationFilterCallback;

    .line 38
    invoke-static {p1}, Lcom/amap/location/fusion/a/c/d;->a(Lcom/amap/location/fusion/a/c/d;)Lcom/amap/location/fusion/a/c/d$a;

    .line 41
    move-result-object v3

    .line 42
    invoke-direct {v2, p2, v3}, Lcom/amap/location/support/location/LocationFilterCallback;-><init>(ILcom/amap/location/support/location/AbstractPriorityLocationFilter;)V

    .line 45
    invoke-static {p1}, Lcom/amap/location/fusion/a/c/d;->b(Lcom/amap/location/fusion/a/c/d;)Lcom/amap/location/support/handler/AmapLooper;

    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v1, v0, v2, p1}, Lcom/amap/location/fusion/a/c/a;-><init>(Lcom/amap/location/support/fence/FenceState;Lcom/amap/location/support/location/AbstractLocationCallback;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 52
    iput-object v1, p0, Lcom/amap/location/fusion/a/c/d$c;->d:Lcom/amap/location/fusion/a/c/a;

    .line 54
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/fusion/a/c/d$c;)Lcom/amap/location/support/fence/FenceState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/fusion/a/c/d$c;->c:Lcom/amap/location/support/fence/FenceState;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/amap/location/fusion/a/c/d$c;)Lcom/amap/location/fusion/a/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/fusion/a/c/d$c;->d:Lcom/amap/location/fusion/a/c/a;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/amap/location/fusion/a/c/d$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/location/fusion/a/c/d$c;->b:I

    .line 3
    return p0
.end method
