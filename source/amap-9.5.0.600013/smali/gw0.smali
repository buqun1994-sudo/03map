.class public Lgw0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgw0$e;
    }
.end annotation


# instance fields
.field public final a:J

.field public b:Lcom/amap/location/support/handler/AmapHandler;

.field public c:Z

.field public d:I

.field public e:Ljava/lang/StringBuffer;

.field public f:Ljava/lang/Runnable;

.field public g:Lgw0$e;

.field public h:Lgw0$e;

.field public i:Lgw0$e;


# direct methods
.method public constructor <init>(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x7d0

    .line 6
    iput-wide v0, p0, Lgw0;->a:J

    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lgw0;->d:I

    .line 11
    new-instance v0, Ljava/lang/StringBuffer;

    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 16
    iput-object v0, p0, Lgw0;->e:Ljava/lang/StringBuffer;

    .line 18
    new-instance v0, Lgw0$a;

    .line 20
    invoke-direct {v0, p0}, Lgw0$a;-><init>(Lgw0;)V

    .line 23
    iput-object v0, p0, Lgw0;->f:Ljava/lang/Runnable;

    .line 25
    new-instance v0, Lgw0$b;

    .line 27
    const/16 v1, 0xa

    .line 29
    invoke-direct {v0, p0, v1}, Lgw0$b;-><init>(Lgw0;I)V

    .line 32
    iput-object v0, p0, Lgw0;->g:Lgw0$e;

    .line 34
    new-instance v0, Lgw0$c;

    .line 36
    const/16 v2, 0x14

    .line 38
    invoke-direct {v0, p0, v2}, Lgw0$c;-><init>(Lgw0;I)V

    .line 41
    iput-object v0, p0, Lgw0;->h:Lgw0$e;

    .line 43
    new-instance v0, Lgw0$d;

    .line 45
    invoke-direct {v0, p0, v1}, Lgw0$d;-><init>(Lgw0;I)V

    .line 48
    iput-object v0, p0, Lgw0;->i:Lgw0$e;

    .line 50
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-interface {v0, p1, v1}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lgw0;->b:Lcom/amap/location/support/handler/AmapHandler;

    .line 61
    return-void
.end method

.method public static synthetic f(Lgw0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lgw0;->c:Z

    .line 3
    return p0
.end method

.method public static synthetic g(Lgw0;)Lcom/amap/location/support/handler/AmapHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lgw0;->b:Lcom/amap/location/support/handler/AmapHandler;

    .line 3
    return-object p0
.end method

.method public static synthetic i(Lgw0;)Lgw0$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lgw0;->g:Lgw0$e;

    .line 3
    return-object p0
.end method

.method public static synthetic j(Lgw0;)Lgw0$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lgw0;->h:Lgw0$e;

    .line 3
    return-object p0
.end method

.method public static synthetic k(Lgw0;)Lgw0$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lgw0;->i:Lgw0$e;

    .line 3
    return-object p0
.end method

.method public static synthetic l(Lgw0;)Ljava/lang/StringBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lgw0;->e:Ljava/lang/StringBuffer;

    .line 3
    return-object p0
.end method

.method public static synthetic m(Lgw0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lgw0;->f:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lgw0;->c:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lgw0;->b:Lcom/amap/location/support/handler/AmapHandler;

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lgw0;->f:Ljava/lang/Runnable;

    .line 12
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lgw0;->b:Lcom/amap/location/support/handler/AmapHandler;

    .line 17
    iget-object v1, p0, Lgw0;->f:Ljava/lang/Runnable;

    .line 19
    const-wide/16 v2, 0x7d0

    .line 21
    invoke-interface {v0, v1, v2, v3}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    invoke-static {}, Lew0;->a()V

    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lgw0;->d:I

    .line 30
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lgw0;->c:Z

    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public b(I[BI)V
    .locals 3

    .line 1
    if-eqz p2, :cond_2

    .line 3
    if-lez p3, :cond_2

    .line 5
    new-instance v0, Lcr0;

    .line 7
    invoke-direct {v0}, Lcr0;-><init>()V

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, v0, Lcr0;->a:Ljava/lang/Object;

    .line 16
    array-length p1, p2

    .line 17
    if-gt p1, p3, :cond_0

    .line 19
    iput-object p2, v0, Lcr0;->b:Ljava/lang/Object;

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-array p1, p3, [B

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-ge v1, p3, :cond_1

    .line 27
    aget-byte v2, p2, v1

    .line 29
    aput-byte v2, p1, v1

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iput-object p1, v0, Lcr0;->b:Ljava/lang/Object;

    .line 36
    :goto_1
    iget-object p1, p0, Lgw0;->i:Lgw0$e;

    .line 38
    invoke-virtual {p1, v0}, Lgw0$e;->c(Ljava/lang/Object;)V

    .line 41
    :cond_2
    return-void
.end method

.method public c(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 1

    .line 1
    new-instance v0, Llp0;

    .line 3
    invoke-direct {v0}, Llp0;-><init>()V

    .line 6
    iput-object p1, v0, Llp0;->a:Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lgw0;->g:Lgw0$e;

    .line 10
    invoke-virtual {p1, v0}, Lgw0$e;->c(Ljava/lang/Object;)V

    .line 13
    return-void
.end method

.method public d(Ljava/lang/String;JJ)V
    .locals 2

    .line 1
    const-string v0, "#"

    .line 3
    :try_start_0
    iget-object v1, p0, Lgw0;->e:Ljava/lang/StringBuffer;

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    const-string p1, "&"

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 30
    :goto_0
    return-void
.end method

.method public e(Ljava/util/List;Lcom/amap/location/support/bean/gnss/AmapGnssClock;J)V
    .locals 1

    .line 1
    new-instance v0, Lcr0;

    .line 3
    invoke-direct {v0}, Lcr0;-><init>()V

    .line 6
    iput-wide p3, v0, Lcr0;->d:J

    .line 8
    iput-object p1, v0, Lcr0;->a:Ljava/lang/Object;

    .line 10
    iput-object p2, v0, Lcr0;->b:Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lgw0;->h:Lgw0$e;

    .line 14
    invoke-virtual {p1, v0}, Lgw0$e;->c(Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lgw0;->c:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lgw0;->b:Lcom/amap/location/support/handler/AmapHandler;

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lgw0;->f:Ljava/lang/Runnable;

    .line 12
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lgw0;->c:Z

    .line 18
    :cond_1
    :goto_0
    return-void
.end method
