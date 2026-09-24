.class Lcom/google/protobuf/ByteString$1;
.super Lcom/google/protobuf/ByteString$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/ByteString;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/protobuf/ByteString;

.field private b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/ByteString$1;->a:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/ByteString$a;-><init>()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/protobuf/ByteString$1;->b:I

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/google/protobuf/ByteString$1;->c:I

    .line 15
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/ByteString$1;->b:I

    .line 3
    iget v1, p0, Lcom/google/protobuf/ByteString$1;->c:I

    .line 5
    if-ge v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public nextByte()B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/ByteString$1;->b:I

    .line 3
    iget v1, p0, Lcom/google/protobuf/ByteString$1;->c:I

    .line 5
    if-ge v0, v1, :cond_0

    .line 7
    add-int/lit8 v1, v0, 0x1

    .line 9
    iput v1, p0, Lcom/google/protobuf/ByteString$1;->b:I

    .line 11
    iget-object v1, p0, Lcom/google/protobuf/ByteString$1;->a:Lcom/google/protobuf/ByteString;

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/protobuf/ByteString;->internalByteAt(I)B

    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 20
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 23
    throw v0
.end method
