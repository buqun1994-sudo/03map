.class public Lcom/amap/location/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/e/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/amap/location/support/fence/FenceLoader;

.field private final b:Lcom/amap/location/support/fence/FenceState;

.field private final c:Lcom/amap/location/support/network/FileLoader;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/location/e/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:Z

.field private final f:Lcom/amap/location/support/handler/AmapLooper;

.field private final g:Lcom/amap/location/support/handler/AmapHandler;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/amap/location/e/a;->d:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/amap/location/e/a;->e:Z

    .line 14
    const-string v1, ""

    .line 16
    iput-object v1, p0, Lcom/amap/location/e/a;->i:Ljava/lang/String;

    .line 18
    iput-boolean v0, p0, Lcom/amap/location/e/a;->j:Z

    .line 20
    iput-object p1, p0, Lcom/amap/location/e/a;->f:Lcom/amap/location/support/handler/AmapLooper;

    .line 22
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-interface {v0, p1, v1}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/amap/location/e/a;->g:Lcom/amap/location/support/handler/AmapHandler;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-static {}, Lcom/amap/location/support/util/FileUtils;->getInnerStoragePath()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "/3dma/model/"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    sget-object v1, Lcom/amap/location/e/a/d;->J:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Lcom/amap/location/e/a$1;

    .line 61
    const-string v2, "3dmaMode"

    .line 63
    invoke-direct {v1, p0, v2, v0, p1}, Lcom/amap/location/e/a$1;-><init>(Lcom/amap/location/e/a;Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 66
    iput-object v1, p0, Lcom/amap/location/e/a;->c:Lcom/amap/location/support/network/FileLoader;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-static {}, Lcom/amap/location/support/util/FileUtils;->getInnerStoragePath()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "/3dma/fences"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    new-instance v1, Lcom/amap/location/e/a$2;

    .line 91
    const-string v2, "3dmaFence"

    .line 93
    invoke-direct {v1, p0, v2, v0, p1}, Lcom/amap/location/e/a$2;-><init>(Lcom/amap/location/e/a;Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 96
    iput-object v1, p0, Lcom/amap/location/e/a;->a:Lcom/amap/location/support/fence/FenceLoader;

    .line 98
    new-instance p1, Lcom/amap/location/support/fence/FenceState;

    .line 100
    const-string v0, "3dma"

    .line 102
    const/4 v1, 0x2

    .line 103
    invoke-direct {p1, v0, v1, v1}, Lcom/amap/location/support/fence/FenceState;-><init>(Ljava/lang/String;II)V

    .line 106
    iput-object p1, p0, Lcom/amap/location/e/a;->b:Lcom/amap/location/support/fence/FenceState;

    .line 108
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/e/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/location/e/a;->k:I

    return p1
.end method

.method public static synthetic a(Lcom/amap/location/e/a;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/amap/location/e/a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/amap/location/e/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/amap/location/e/a;->i:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/e/a;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/amap/location/e/a;->j:Z

    return p1
.end method

.method public static synthetic b(Lcom/amap/location/e/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/location/e/a;->j:Z

    return p0
.end method

.method public static synthetic b(Lcom/amap/location/e/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/amap/location/e/a;->e:Z

    return p1
.end method

.method public static synthetic c(Lcom/amap/location/e/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/location/e/a;->k:I

    return p0
.end method

.method public static synthetic c(Lcom/amap/location/e/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/amap/location/e/a;->h:Z

    return p1
.end method

.method public static synthetic d(Lcom/amap/location/e/a;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/location/e/a;->k:I

    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 5
    iput v1, p0, Lcom/amap/location/e/a;->k:I

    .line 7
    return v0
.end method

.method public static synthetic e(Lcom/amap/location/e/a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/e/a;->d:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/amap/location/e/a;)Lcom/amap/location/support/fence/FenceState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/e/a;->b:Lcom/amap/location/support/fence/FenceState;

    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/amap/location/e/a;)Lcom/amap/location/support/fence/FenceLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/e/a;->a:Lcom/amap/location/support/fence/FenceLoader;

    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/amap/location/e/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/location/e/a;->e:Z

    .line 3
    return p0
.end method

.method public static synthetic i(Lcom/amap/location/e/a;)Lcom/amap/location/support/network/FileLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/e/a;->c:Lcom/amap/location/support/network/FileLoader;

    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/amap/location/e/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/location/e/a;->h:Z

    .line 3
    return p0
.end method


# virtual methods
.method public a(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/amap/location/e/a;->g:Lcom/amap/location/support/handler/AmapHandler;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/amap/location/e/a$3;

    invoke-direct {v1, p0, p1}, Lcom/amap/location/e/a$3;-><init>(Lcom/amap/location/e/a;Lcom/amap/location/support/bean/location/AmapLocation;)V

    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/amap/location/e/a;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/location/e/a;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/amap/location/e/a;->b:Lcom/amap/location/support/fence/FenceState;

    invoke-virtual {v0}, Lcom/amap/location/support/fence/FenceState;->getCurrentFence()Lcom/amap/location/support/fence/RectangleFence;

    move-result-object v0

    check-cast v0, Lcom/amap/location/e/a$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lcom/amap/location/e/a$a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
