.class Lcom/google/protobuf/am$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/am$a;->a:Ljava/util/ArrayDeque;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/am$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/am$a;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 1

    .line 16
    sget-object v0, Lcom/google/protobuf/am;->a:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method private a(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/am$a;->a(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-direct {p0, p2}, Lcom/google/protobuf/am$a;->a(Lcom/google/protobuf/ByteString;)V

    .line 4
    iget-object p1, p0, Lcom/google/protobuf/am$a;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    .line 5
    :goto_0
    iget-object p2, p0, Lcom/google/protobuf/am$a;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/google/protobuf/am$a;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/ByteString;

    .line 7
    new-instance v0, Lcom/google/protobuf/am;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/google/protobuf/am;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/am$1;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static synthetic a(Lcom/google/protobuf/am$a;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/am$a;->a(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/google/protobuf/ByteString;)V
    .locals 3

    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->isBalanced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/am$a;->b(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 10
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/am;

    if-eqz v0, :cond_1

    .line 11
    check-cast p1, Lcom/google/protobuf/am;

    .line 12
    invoke-static {p1}, Lcom/google/protobuf/am;->a(Lcom/google/protobuf/am;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/am$a;->a(Lcom/google/protobuf/ByteString;)V

    .line 13
    invoke-static {p1}, Lcom/google/protobuf/am;->b(Lcom/google/protobuf/am;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/am$a;->a(Lcom/google/protobuf/ByteString;)V

    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcom/google/protobuf/ByteString;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/protobuf/am$a;->a(I)I

    .line 8
    move-result v0

    .line 9
    sget-object v1, Lcom/google/protobuf/am;->a:[I

    .line 11
    add-int/lit8 v2, v0, 0x1

    .line 13
    aget v2, v1, v2

    .line 15
    iget-object v3, p0, Lcom/google/protobuf/am$a;->a:Ljava/util/ArrayDeque;

    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_3

    .line 23
    iget-object v3, p0, Lcom/google/protobuf/am$a;->a:Ljava/util/ArrayDeque;

    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 31
    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    .line 34
    move-result v3

    .line 35
    if-lt v3, v2, :cond_0

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    aget v0, v1, v0

    .line 40
    iget-object v1, p0, Lcom/google/protobuf/am$a;->a:Ljava/util/ArrayDeque;

    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 48
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/am$a;->a:Ljava/util/ArrayDeque;

    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 53
    move-result v2

    .line 54
    const/4 v3, 0x0

    .line 55
    if-nez v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/google/protobuf/am$a;->a:Ljava/util/ArrayDeque;

    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/google/protobuf/ByteString;

    .line 65
    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    .line 68
    move-result v2

    .line 69
    if-ge v2, v0, :cond_1

    .line 71
    iget-object v2, p0, Lcom/google/protobuf/am$a;->a:Ljava/util/ArrayDeque;

    .line 73
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lcom/google/protobuf/ByteString;

    .line 79
    new-instance v4, Lcom/google/protobuf/am;

    .line 81
    invoke-direct {v4, v2, v1, v3}, Lcom/google/protobuf/am;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/am$1;)V

    .line 84
    move-object v1, v4

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Lcom/google/protobuf/am;

    .line 88
    invoke-direct {v0, v1, p1, v3}, Lcom/google/protobuf/am;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/am$1;)V

    .line 91
    :goto_1
    iget-object p1, p0, Lcom/google/protobuf/am$a;->a:Ljava/util/ArrayDeque;

    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_2

    .line 99
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    .line 102
    move-result p1

    .line 103
    invoke-direct {p0, p1}, Lcom/google/protobuf/am$a;->a(I)I

    .line 106
    move-result p1

    .line 107
    sget-object v1, Lcom/google/protobuf/am;->a:[I

    .line 109
    add-int/lit8 p1, p1, 0x1

    .line 111
    aget p1, v1, p1

    .line 113
    iget-object v1, p0, Lcom/google/protobuf/am$a;->a:Ljava/util/ArrayDeque;

    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 121
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->size()I

    .line 124
    move-result v1

    .line 125
    if-ge v1, p1, :cond_2

    .line 127
    iget-object p1, p0, Lcom/google/protobuf/am$a;->a:Ljava/util/ArrayDeque;

    .line 129
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lcom/google/protobuf/ByteString;

    .line 135
    new-instance v1, Lcom/google/protobuf/am;

    .line 137
    invoke-direct {v1, p1, v0, v3}, Lcom/google/protobuf/am;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/am$1;)V

    .line 140
    move-object v0, v1

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/am$a;->a:Ljava/util/ArrayDeque;

    .line 144
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 147
    goto :goto_3

    .line 148
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/am$a;->a:Ljava/util/ArrayDeque;

    .line 150
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 153
    :goto_3
    return-void
.end method
