.class public Lgw0$d;
.super Lgw0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lgw0;


# direct methods
.method public constructor <init>(Lgw0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgw0$d;->d:Lgw0;

    .line 3
    invoke-direct {p0, p1, p2}, Lgw0$e;-><init>(Lgw0;I)V

    .line 6
    return-void
.end method


# virtual methods
.method public b(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)I
    .locals 13

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 5
    move-result v1

    .line 6
    new-array v2, v1, [I

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 11
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lcr0;

    .line 17
    iget-object v5, v4, Lcr0;->b:Ljava/lang/Object;

    .line 19
    check-cast v5, [B

    .line 21
    iget-wide v9, v4, Lcr0;->c:J

    .line 23
    iget-wide v7, v4, Lcr0;->d:J

    .line 25
    invoke-static {p1, v5}, Lhw0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;[B)I

    .line 28
    move-result v11

    .line 29
    iget-object v4, v4, Lcr0;->a:Ljava/lang/Object;

    .line 31
    check-cast v4, Ljava/lang/Integer;

    .line 33
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v12

    .line 37
    move-object v6, p1

    .line 38
    invoke-static/range {v6 .. v12}, Lhw0;->b(Lcom/google/flatbuffers/FlatBufferBuilder;JJII)I

    .line 41
    move-result v4

    .line 42
    aput v4, v2, v3

    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p1, v2}, Lwp0;->d(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    .line 50
    move-result v0

    .line 51
    invoke-interface {p2}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 59
    :goto_1
    return v0
.end method
