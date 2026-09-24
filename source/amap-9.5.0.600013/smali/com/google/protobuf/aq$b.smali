.class Lcom/google/protobuf/aq$b;
.super Lcom/google/protobuf/aq$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/aq<",
        "TK;TV;>.f;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/protobuf/aq;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/aq;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/aq$b;->a:Lcom/google/protobuf/aq;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/aq$f;-><init>(Lcom/google/protobuf/aq;Lcom/google/protobuf/aq$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/aq;Lcom/google/protobuf/aq$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/aq$b;-><init>(Lcom/google/protobuf/aq;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/aq$a;

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/aq$b;->a:Lcom/google/protobuf/aq;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/aq$a;-><init>(Lcom/google/protobuf/aq;Lcom/google/protobuf/aq$1;)V

    .line 9
    return-object v0
.end method
