.class public Lup0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lup0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/Byte;

.field public f:Ljava/lang/Short;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;

.field public i:Low0;

.field public j:Ldw0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lup0$a;->b:Z

    .line 7
    iput-boolean v0, p0, Lup0$a;->c:Z

    .line 9
    iput-boolean v0, p0, Lup0$a;->d:Z

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lup0$a;->e:Ljava/lang/Byte;

    .line 14
    iput-object v0, p0, Lup0$a;->g:Ljava/lang/String;

    .line 16
    new-instance v1, Ljava/util/HashMap;

    .line 18
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    iput-object v1, p0, Lup0$a;->h:Ljava/util/Map;

    .line 23
    iput-object v0, p0, Lup0$a;->i:Low0;

    .line 25
    iput-object v0, p0, Lup0$a;->j:Ldw0;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lup0$a;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public b(Ljava/lang/Byte;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lup0$a;->e:Ljava/lang/Byte;

    .line 6
    return-void

    .line 7
    :cond_0
    iput-object p1, p0, Lup0$a;->e:Ljava/lang/Byte;

    .line 9
    iget-object v0, p0, Lup0$a;->h:Ljava/util/Map;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const-string v1, "retype"

    .line 21
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public c(Ljava/lang/Short;)V
    .locals 2

    .line 1
    const-string v0, "rdesc"

    .line 3
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lup0$a;->f:Ljava/lang/Short;

    .line 8
    iget-object p1, p0, Lup0$a;->h:Ljava/util/Map;

    .line 10
    const-string v1, ""

    .line 12
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v1, Ldw0;->c:Ldw0;

    .line 18
    invoke-virtual {v1}, Ldw0;->a()Ljava/lang/Short;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/Short;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 28
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    .line 31
    move-result v1

    .line 32
    invoke-virtual {p0, v1}, Lup0$a;->e(S)Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 38
    sget-object v1, Low0;->j:Low0;

    .line 40
    invoke-virtual {v1}, Low0;->c()Ljava/lang/Byte;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p0, v1}, Lup0$a;->b(Ljava/lang/Byte;)V

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object v1, Low0;->k:Low0;

    .line 50
    invoke-virtual {v1}, Low0;->c()Ljava/lang/Byte;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p0, v1}, Lup0$a;->b(Ljava/lang/Byte;)V

    .line 57
    :cond_2
    :goto_0
    iput-object p1, p0, Lup0$a;->f:Ljava/lang/Short;

    .line 59
    iget-object v1, p0, Lup0$a;->h:Ljava/util/Map;

    .line 61
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    .line 64
    move-result p1

    .line 65
    invoke-static {p1}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lup0$a;->a:Ljava/lang/String;

    .line 3
    const-string v0, "rt"

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object v1, p0, Lup0$a;->h:Ljava/util/Map;

    .line 9
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lup0$a;->h:Ljava/util/Map;

    .line 15
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :goto_0
    return-void
.end method

.method public e(S)Z
    .locals 1

    .line 1
    sget-object v0, Ldw0;->y:Ldw0;

    .line 3
    invoke-virtual {v0}, Ldw0;->a()Ljava/lang/Short;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    .line 10
    move-result v0

    .line 11
    if-eq p1, v0, :cond_1

    .line 13
    sget-object v0, Ldw0;->z:Ldw0;

    .line 15
    invoke-virtual {v0}, Ldw0;->a()Ljava/lang/Short;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    .line 22
    move-result v0

    .line 23
    if-ne p1, v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 29
    :goto_1
    return p1
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lup0$a;->b:Z

    .line 3
    return v0
.end method

.method public g()Ljava/lang/Short;
    .locals 1

    .line 1
    iget-object v0, p0, Lup0$a;->f:Ljava/lang/Short;

    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/Byte;
    .locals 1

    .line 1
    iget-object v0, p0, Lup0$a;->e:Ljava/lang/Byte;

    .line 3
    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lup0$a;->d:Z

    .line 3
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lup0$a;->c:Z

    .line 3
    return v0
.end method
