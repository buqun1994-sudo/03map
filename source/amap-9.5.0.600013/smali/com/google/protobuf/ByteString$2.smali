.class final Lcom/google/protobuf/ByteString$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/protobuf/ByteString;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;

    .line 8
    move-result-object v1

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 21
    invoke-interface {v0}, Lcom/google/protobuf/ByteString$ByteIterator;->nextByte()B

    .line 24
    move-result v2

    .line 25
    invoke-static {v2}, Lcom/google/protobuf/ByteString;->access$200(B)I

    .line 28
    move-result v2

    .line 29
    invoke-interface {v1}, Lcom/google/protobuf/ByteString$ByteIterator;->nextByte()B

    .line 32
    move-result v3

    .line 33
    invoke-static {v3}, Lcom/google/protobuf/ByteString;->access$200(B)I

    .line 36
    move-result v3

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 43
    return v2

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    .line 47
    move-result p1

    .line 48
    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    .line 51
    move-result p2

    .line 52
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 55
    move-result p1

    .line 56
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/ByteString;

    .line 3
    check-cast p2, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ByteString$2;->a(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
