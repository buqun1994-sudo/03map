.class final Lcom/google/protobuf/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/protobuf/ai;


# instance fields
.field private final b:Lcom/google/protobuf/ao;

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/an<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/ai;

    .line 3
    invoke-direct {v0}, Lcom/google/protobuf/ai;-><init>()V

    .line 6
    sput-object v0, Lcom/google/protobuf/ai;->a:Lcom/google/protobuf/ai;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/protobuf/ai;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 11
    new-instance v0, Lcom/google/protobuf/t;

    .line 13
    invoke-direct {v0}, Lcom/google/protobuf/t;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/google/protobuf/ai;->b:Lcom/google/protobuf/ao;

    .line 18
    return-void
.end method

.method public static a()Lcom/google/protobuf/ai;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/ai;->a:Lcom/google/protobuf/ai;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/google/protobuf/an;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/protobuf/an<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    .line 3
    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/ai;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/an;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/ai;->b:Lcom/google/protobuf/ao;

    invoke-interface {v0, p1}, Lcom/google/protobuf/ao;->a(Ljava/lang/Class;)Lcom/google/protobuf/an;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/ai;->a(Ljava/lang/Class;Lcom/google/protobuf/an;)Lcom/google/protobuf/an;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/Class;Lcom/google/protobuf/an;)Lcom/google/protobuf/an;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/an<",
            "*>;)",
            "Lcom/google/protobuf/an<",
            "*>;"
        }
    .end annotation

    const-string v0, "messageType"

    .line 8
    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    .line 9
    invoke-static {p2, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/google/protobuf/ai;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/an;

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Lcom/google/protobuf/an;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/protobuf/an<",
            "TT;>;"
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ai;->a(Ljava/lang/Class;)Lcom/google/protobuf/an;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Lcom/google/protobuf/al;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/al;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/ai;->a(Ljava/lang/Object;)Lcom/google/protobuf/an;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/protobuf/an;->a(Ljava/lang/Object;Lcom/google/protobuf/al;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method
