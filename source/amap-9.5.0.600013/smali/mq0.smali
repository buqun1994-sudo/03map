.class public Lmq0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Ljava/util/Map;

.field public static e:Ljava/util/Map;


# instance fields
.field public a:Ldq0;

.field public b:Lyq0;

.field public c:Lyp0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lmq0;->d:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lmq0;->e:Ljava/util/Map;

    .line 15
    sget-object v0, Lmq0;->d:Ljava/util/Map;

    .line 17
    sget-object v1, Lvq0;->x:Lvq0;

    .line 19
    invoke-static {}, Ldp0;->m()Ldp0;

    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lmq0;->d:Ljava/util/Map;

    .line 28
    sget-object v2, Lvq0;->y:Lvq0;

    .line 30
    invoke-static {}, Lgp0;->m()Lgp0;

    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lmq0;->e:Ljava/util/Map;

    .line 39
    invoke-static {}, Lhq0;->k()Lhq0;

    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lmq0;->e:Ljava/util/Map;

    .line 48
    invoke-static {}, Lkq0;->k()Lkq0;

    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ldq0;

    .line 6
    invoke-direct {v0}, Ldq0;-><init>()V

    .line 9
    iput-object v0, p0, Lmq0;->a:Ldq0;

    .line 11
    new-instance v0, Lyq0;

    .line 13
    invoke-direct {v0}, Lyq0;-><init>()V

    .line 16
    iput-object v0, p0, Lmq0;->b:Lyq0;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Ljp0;)Lrp0;
    .locals 2

    .line 1
    sget-object v0, Lmq0;->d:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Ljp0;->u()Lvq0;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Leq0;

    .line 13
    invoke-virtual {v0, p1}, Leq0;->e(Ljp0;)Lsp0;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lmq0;->c(Lsp0;)Lwq0;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lrp0;

    .line 23
    return-object p1
.end method

.method public b(Lnu0;)Lvp0;
    .locals 1

    .line 1
    iget-object v0, p0, Lmq0;->b:Lyq0;

    .line 3
    invoke-virtual {v0, p1}, Lyq0;->a(Lnu0;)Lvp0;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c(Lsp0;)Lwq0;
    .locals 1

    .line 1
    iget-object v0, p0, Lmq0;->a:Ldq0;

    .line 3
    invoke-virtual {v0, p1}, Ldq0;->a(Lsp0;)Lwq0;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public d(Lyp0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lmq0;->c:Lyp0;

    .line 3
    iget-object v0, p0, Lmq0;->b:Lyq0;

    .line 5
    invoke-virtual {v0, p1}, Lyq0;->b(Lyp0;)V

    .line 8
    iget-object v0, p0, Lmq0;->a:Ldq0;

    .line 10
    sget-object v1, Lmq0;->d:Ljava/util/Map;

    .line 12
    invoke-virtual {v0, v1}, Ldq0;->c(Ljava/util/Map;)V

    .line 15
    iget-object v0, p0, Lmq0;->a:Ldq0;

    .line 17
    invoke-virtual {v0, p1}, Ldq0;->b(Lyp0;)V

    .line 20
    iget-object p1, p0, Lmq0;->b:Lyq0;

    .line 22
    sget-object v0, Lmq0;->e:Ljava/util/Map;

    .line 24
    invoke-virtual {p1, v0}, Lyq0;->c(Ljava/util/Map;)V

    .line 27
    return-void
.end method
