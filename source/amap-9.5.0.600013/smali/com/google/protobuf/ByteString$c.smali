.class final Lcom/google/protobuf/ByteString$c;
.super Lcom/google/protobuf/ByteString$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/ByteString$g;-><init>([B)V

    .line 4
    add-int v0, p2, p3

    .line 6
    array-length p1, p1

    .line 7
    invoke-static {p2, v0, p1}, Lcom/google/protobuf/ByteString;->checkRange(III)I

    .line 10
    iput p2, p0, Lcom/google/protobuf/ByteString$c;->b:I

    .line 12
    iput p3, p0, Lcom/google/protobuf/ByteString$c;->c:I

    .line 14
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/ByteString$c;->b:I

    .line 3
    return v0
.end method

.method public byteAt(I)B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$c;->size()I

    .line 4
    move-result v0

    .line 5
    invoke-static {p1, v0}, Lcom/google/protobuf/ByteString;->checkIndex(II)V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/ByteString$g;->a:[B

    .line 10
    iget v1, p0, Lcom/google/protobuf/ByteString$c;->b:I

    .line 12
    add-int/2addr v1, p1

    .line 13
    aget-byte p1, v0, v1

    .line 15
    return p1
.end method

.method public copyToInternal([BIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ByteString$g;->a:[B

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$c;->a()I

    .line 6
    move-result v1

    .line 7
    add-int/2addr v1, p2

    .line 8
    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    return-void
.end method

.method public internalByteAt(I)B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ByteString$g;->a:[B

    .line 3
    iget v1, p0, Lcom/google/protobuf/ByteString$c;->b:I

    .line 5
    add-int/2addr v1, p1

    .line 6
    aget-byte p1, v0, v1

    .line 8
    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/ByteString$c;->c:I

    .line 3
    return v0
.end method
