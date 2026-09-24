.class public Lcom/amap/location/k/d/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/k/d/d/a$d;,
        Lcom/amap/location/k/d/d/a$b;,
        Lcom/amap/location/k/d/d/a$c;,
        Lcom/amap/location/k/d/d/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amap/location/k/d/a/a;

.field private c:Lcom/amap/location/k/d/b;

.field private d:Lcom/amap/location/k/b/a;

.field private e:I

.field private f:Lcom/amap/location/k/c/b;

.field private g:Lcom/amap/location/k/c/a;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/amap/location/k/d/d/a;->h:Ljava/util/Map;

    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/k/d/d/a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/location/k/d/d/a;->i:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/amap/location/k/d/d/a;)Lcom/amap/location/k/b/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/amap/location/k/d/d/a;->d:Lcom/amap/location/k/b/a;

    return-object p0
.end method

.method public static synthetic b(Lcom/amap/location/k/d/d/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/k/d/d/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/amap/location/k/d/d/a;)Lcom/amap/location/k/d/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/k/d/d/a;->b:Lcom/amap/location/k/d/a/a;

    return-object p0
.end method

.method public static synthetic d(Lcom/amap/location/k/d/d/a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/k/d/d/a;->h:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/amap/location/k/d/d/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/k/d/d/a;->i:J

    .line 3
    return-wide v0
.end method

.method public static synthetic f(Lcom/amap/location/k/d/d/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/location/k/d/d/a;->e:I

    .line 3
    return p0
.end method

.method public static synthetic g(Lcom/amap/location/k/d/d/a;)Lcom/amap/location/k/d/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/k/d/d/a;->c:Lcom/amap/location/k/d/b;

    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amap/location/k/d/d/a;->f:Lcom/amap/location/k/c/b;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/amap/location/k/c/b;->b()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/amap/location/k/d/d/a;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/location/k/d/d/a;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/amap/location/k/d/d/a;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/amap/location/k/d/d/a;->d:Lcom/amap/location/k/b/a;

    invoke-interface {p1}, Lcom/amap/location/k/b/a;->a()V

    .line 18
    iget-object p1, p0, Lcom/amap/location/k/d/d/a;->g:Lcom/amap/location/k/c/a;

    invoke-static {}, Lcom/amap/location/k/d/d/a$c;->b()Lcom/amap/location/k/d/d/a$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/location/k/c/a;->a(Lcom/amap/location/k/c/a$a;)V

    return-void
.end method

.method public a(Lcom/amap/location/k/d/b;Lcom/amap/location/k/b/a;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/amap/location/k/d/d/a;->c:Lcom/amap/location/k/d/b;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/amap/location/k/d/d/a;->e:I

    .line 5
    iput-object p2, p0, Lcom/amap/location/k/d/d/a;->d:Lcom/amap/location/k/b/a;

    .line 6
    invoke-virtual {p1}, Lcom/amap/location/k/d/b;->a()Lcom/amap/location/k/d/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/location/k/d/d/a;->b:Lcom/amap/location/k/d/a/a;

    .line 7
    iget p1, p0, Lcom/amap/location/k/d/d/a;->e:I

    invoke-static {p1}, Lcom/amap/location/k/d/b;->b(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/location/k/d/d/a;->a:Ljava/lang/String;

    .line 8
    new-instance p1, Lcom/amap/location/k/c/a;

    invoke-direct {p1}, Lcom/amap/location/k/c/a;-><init>()V

    iput-object p1, p0, Lcom/amap/location/k/d/d/a;->g:Lcom/amap/location/k/c/a;

    .line 9
    new-instance p2, Lcom/amap/location/k/d/d/a$a;

    invoke-direct {p2, p0}, Lcom/amap/location/k/d/d/a$a;-><init>(Lcom/amap/location/k/d/d/a;)V

    invoke-virtual {p1, p2, p3}, Lcom/amap/location/k/c/a;->a(Lcom/amap/location/k/c/a$b;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 10
    new-instance p1, Lcom/amap/location/k/c/b;

    invoke-direct {p1}, Lcom/amap/location/k/c/b;-><init>()V

    iput-object p1, p0, Lcom/amap/location/k/d/d/a;->f:Lcom/amap/location/k/c/b;

    .line 11
    new-instance p2, Lcom/amap/location/k/d/d/a$b;

    invoke-direct {p2, p0}, Lcom/amap/location/k/d/d/a$b;-><init>(Lcom/amap/location/k/d/d/a;)V

    invoke-virtual {p1, p2, p3}, Lcom/amap/location/k/c/b;->a(Lcom/amap/location/k/c/b$a;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 12
    iget-object p1, p0, Lcom/amap/location/k/d/d/a;->f:Lcom/amap/location/k/c/b;

    const-wide/16 p2, 0x4e20

    invoke-virtual {p1, p2, p3}, Lcom/amap/location/k/c/b;->a(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/location/k/d/d/a;->f:Lcom/amap/location/k/c/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/k/c/b;->c()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/amap/location/k/d/d/a;->d:Lcom/amap/location/k/b/a;

    invoke-interface {p1}, Lcom/amap/location/k/b/a;->a()V

    .line 5
    iget-object p1, p0, Lcom/amap/location/k/d/d/a;->f:Lcom/amap/location/k/c/b;

    const-wide/16 v0, 0x4e20

    invoke-virtual {p1, v0, v1}, Lcom/amap/location/k/c/b;->a(J)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/location/k/d/d/a;->g:Lcom/amap/location/k/c/a;

    invoke-virtual {v0}, Lcom/amap/location/k/c/a;->a()V

    .line 3
    iget-object v0, p0, Lcom/amap/location/k/d/d/a;->f:Lcom/amap/location/k/c/b;

    invoke-virtual {v0}, Lcom/amap/location/k/c/b;->a()V

    return-void
.end method
