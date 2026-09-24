.class final Lcom/google/protobuf/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/an;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/an<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/MessageLite;

.field private final b:Lcom/google/protobuf/as;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/as<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lcom/google/protobuf/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/k<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/protobuf/as;Lcom/google/protobuf/k;Lcom/google/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/as<",
            "**>;",
            "Lcom/google/protobuf/k<",
            "*>;",
            "Lcom/google/protobuf/MessageLite;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/ab;->b:Lcom/google/protobuf/as;

    .line 6
    invoke-virtual {p2, p3}, Lcom/google/protobuf/k;->a(Lcom/google/protobuf/MessageLite;)Z

    .line 9
    move-result p1

    .line 10
    iput-boolean p1, p0, Lcom/google/protobuf/ab;->c:Z

    .line 12
    iput-object p2, p0, Lcom/google/protobuf/ab;->d:Lcom/google/protobuf/k;

    .line 14
    iput-object p3, p0, Lcom/google/protobuf/ab;->a:Lcom/google/protobuf/MessageLite;

    .line 16
    return-void
.end method

.method private a(Lcom/google/protobuf/as;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/as<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 98
    invoke-virtual {p1, p2}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 99
    invoke-virtual {p1, p2}, Lcom/google/protobuf/as;->e(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public static a(Lcom/google/protobuf/as;Lcom/google/protobuf/k;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/ab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/as<",
            "**>;",
            "Lcom/google/protobuf/k<",
            "*>;",
            "Lcom/google/protobuf/MessageLite;",
            ")",
            "Lcom/google/protobuf/ab<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/ab;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/ab;-><init>(Lcom/google/protobuf/as;Lcom/google/protobuf/k;Lcom/google/protobuf/MessageLite;)V

    return-object v0
.end method

.method private a(Lcom/google/protobuf/as;Lcom/google/protobuf/k;Ljava/lang/Object;Lcom/google/protobuf/al;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/google/protobuf/as<",
            "TUT;TUB;>;",
            "Lcom/google/protobuf/k<",
            "TET;>;TT;",
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

    .line 68
    invoke-virtual {p1, p3}, Lcom/google/protobuf/as;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 69
    invoke-virtual {p2, p3}, Lcom/google/protobuf/k;->b(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v8

    .line 70
    :goto_0
    :try_start_0
    invoke-interface {p4}, Lcom/google/protobuf/al;->a()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-object v4, v8

    move-object v5, p1

    move-object v6, v7

    .line 72
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/ab;->a(Lcom/google/protobuf/al;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/k;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/as;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    throw p2
.end method

.method private a(Lcom/google/protobuf/as;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/as<",
            "TUT;TUB;>;TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p1, p2}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method private a(Lcom/google/protobuf/al;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/k;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/as;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/google/protobuf/al;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/k<",
            "TET;>;",
            "Lcom/google/protobuf/FieldSet<",
            "TET;>;",
            "Lcom/google/protobuf/as<",
            "TUT;TUB;>;TUB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-interface {p1}, Lcom/google/protobuf/al;->b()I

    move-result v0

    .line 76
    sget v1, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    .line 77
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 78
    iget-object v1, p0, Lcom/google/protobuf/ab;->a:Lcom/google/protobuf/MessageLite;

    .line 79
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 80
    invoke-virtual {p3, p2, v1, v0}, Lcom/google/protobuf/k;->a(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p3, p1, v0, p2, p4}, Lcom/google/protobuf/k;->a(Lcom/google/protobuf/al;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V

    return v2

    .line 82
    :cond_0
    invoke-virtual {p5, p6, p1}, Lcom/google/protobuf/as;->a(Ljava/lang/Object;Lcom/google/protobuf/al;)Z

    move-result p1

    return p1

    .line 83
    :cond_1
    invoke-interface {p1}, Lcom/google/protobuf/al;->c()Z

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v1, v0

    const/4 v3, 0x0

    .line 84
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/google/protobuf/al;->a()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_4

    goto :goto_1

    .line 85
    :cond_4
    invoke-interface {p1}, Lcom/google/protobuf/al;->b()I

    move-result v4

    .line 86
    sget v5, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v4, v5, :cond_5

    .line 87
    invoke-interface {p1}, Lcom/google/protobuf/al;->o()I

    move-result v3

    .line 88
    iget-object v0, p0, Lcom/google/protobuf/ab;->a:Lcom/google/protobuf/MessageLite;

    .line 89
    invoke-virtual {p3, p2, v0, v3}, Lcom/google/protobuf/k;->a(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_5
    sget v5, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v4, v5, :cond_7

    if-eqz v0, :cond_6

    .line 91
    invoke-virtual {p3, p1, v0, p2, p4}, Lcom/google/protobuf/k;->a(Lcom/google/protobuf/al;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V

    goto :goto_0

    .line 92
    :cond_6
    invoke-interface {p1}, Lcom/google/protobuf/al;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_7
    invoke-interface {p1}, Lcom/google/protobuf/al;->c()Z

    move-result v4

    if-nez v4, :cond_3

    .line 94
    :goto_1
    invoke-interface {p1}, Lcom/google/protobuf/al;->b()I

    move-result p1

    sget v4, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    if-ne p1, v4, :cond_a

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    .line 95
    invoke-virtual {p3, v1, v0, p2, p4}, Lcom/google/protobuf/k;->a(Lcom/google/protobuf/ByteString;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V

    goto :goto_2

    .line 96
    :cond_8
    invoke-virtual {p5, p6, v3, v1}, Lcom/google/protobuf/as;->a(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    :cond_9
    :goto_2
    return v2

    .line 97
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/protobuf/ab;->b:Lcom/google/protobuf/as;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 11
    iget-boolean v1, p0, Lcom/google/protobuf/ab;->c:Z

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/google/protobuf/ab;->d:Lcom/google/protobuf/k;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/k;->a(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/ab;->a:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->buildPartial()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/protobuf/ab;->d:Lcom/google/protobuf/k;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/k;->a(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->g()Ljava/util/Iterator;

    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 19
    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 20
    instance-of v3, v1, Lcom/google/protobuf/LazyField$a;

    if-eqz v3, :cond_0

    .line 21
    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    check-cast v1, Lcom/google/protobuf/LazyField$a;

    invoke-virtual {v1}, Lcom/google/protobuf/LazyField$a;->a()Lcom/google/protobuf/LazyField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/LazyFieldLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 22
    invoke-interface {p2, v2, v1}, Lcom/google/protobuf/Writer;->b(ILjava/lang/Object;)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/protobuf/Writer;->b(ILjava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/ab;->b:Lcom/google/protobuf/as;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/ab;->a(Lcom/google/protobuf/as;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/google/protobuf/al;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
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

    .line 67
    iget-object v1, p0, Lcom/google/protobuf/ab;->b:Lcom/google/protobuf/as;

    iget-object v2, p0, Lcom/google/protobuf/ab;->d:Lcom/google/protobuf/k;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/ab;->a(Lcom/google/protobuf/as;Lcom/google/protobuf/k;Ljava/lang/Object;Lcom/google/protobuf/al;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public a(Ljava/lang/Object;[BIILcom/google/protobuf/c$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/protobuf/c$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 28
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 29
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    .line 30
    iput-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 31
    :cond_0
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 32
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/google/protobuf/FieldSet;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_b

    .line 33
    invoke-static {p2, p3, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v4

    .line 34
    iget p3, p5, Lcom/google/protobuf/c$a;->a:I

    .line 35
    sget v3, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    .line 36
    invoke-static {p3}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 37
    iget-object v2, p0, Lcom/google/protobuf/ab;->d:Lcom/google/protobuf/k;

    iget-object v3, p5, Lcom/google/protobuf/c$a;->d:Lcom/google/protobuf/ExtensionRegistryLite;

    iget-object v5, p0, Lcom/google/protobuf/ab;->a:Lcom/google/protobuf/MessageLite;

    .line 38
    invoke-static {p3}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v6

    .line 39
    invoke-virtual {v2, v3, v5, v6}, Lcom/google/protobuf/k;->a(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    if-eqz v8, :cond_1

    .line 40
    invoke-static {}, Lcom/google/protobuf/ai;->a()Lcom/google/protobuf/ai;

    move-result-object p3

    .line 41
    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 42
    invoke-virtual {p3, v2}, Lcom/google/protobuf/ai;->a(Ljava/lang/Class;)Lcom/google/protobuf/an;

    move-result-object p3

    .line 43
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/an;[BIILcom/google/protobuf/c$a;)I

    move-result p3

    .line 44
    iget-object v2, v8, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    iget-object v3, p5, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/FieldSet;->a(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 45
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/c;->a(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/c$a;)I

    move-result p3

    :goto_1
    move-object v2, v8

    goto :goto_0

    .line 46
    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/protobuf/c;->a(I[BIILcom/google/protobuf/c$a;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_9

    .line 47
    invoke-static {p2, v4, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v4

    .line 48
    iget v6, p5, Lcom/google/protobuf/c$a;->a:I

    .line 49
    invoke-static {v6}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v7

    .line 50
    invoke-static {v6}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v8

    if-eq v7, v5, :cond_6

    const/4 v9, 0x3

    if-eq v7, v9, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 51
    invoke-static {}, Lcom/google/protobuf/ai;->a()Lcom/google/protobuf/ai;

    move-result-object v6

    .line 52
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 53
    invoke-virtual {v6, v7}, Lcom/google/protobuf/ai;->a(Ljava/lang/Class;)Lcom/google/protobuf/an;

    move-result-object v6

    .line 54
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/an;[BIILcom/google/protobuf/c$a;)I

    move-result v4

    .line 55
    iget-object v6, v2, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    iget-object v7, p5, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcom/google/protobuf/FieldSet;->a(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v8, v5, :cond_7

    .line 56
    invoke-static {p2, v4, p5}, Lcom/google/protobuf/c;->e([BILcom/google/protobuf/c$a;)I

    move-result v4

    .line 57
    iget-object v3, p5, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/ByteString;

    goto :goto_2

    :cond_6
    if-nez v8, :cond_7

    .line 58
    invoke-static {p2, v4, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v4

    .line 59
    iget p3, p5, Lcom/google/protobuf/c$a;->a:I

    .line 60
    iget-object v2, p0, Lcom/google/protobuf/ab;->d:Lcom/google/protobuf/k;

    iget-object v6, p5, Lcom/google/protobuf/c$a;->d:Lcom/google/protobuf/ExtensionRegistryLite;

    iget-object v7, p0, Lcom/google/protobuf/ab;->a:Lcom/google/protobuf/MessageLite;

    .line 61
    invoke-virtual {v2, v6, v7, p3}, Lcom/google/protobuf/k;->a(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    goto :goto_2

    .line 62
    :cond_7
    :goto_3
    sget v7, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    if-ne v6, v7, :cond_8

    goto :goto_4

    .line 63
    :cond_8
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/protobuf/c;->a(I[BIILcom/google/protobuf/c$a;)I

    move-result v4

    goto :goto_2

    :cond_9
    :goto_4
    if-eqz v3, :cond_a

    .line 64
    invoke-static {p3, v5}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p3

    .line 65
    invoke-virtual {v1, p3, v3}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    :cond_a
    move p3, v4

    goto/16 :goto_0

    :cond_b
    if-ne p3, p4, :cond_c

    return-void

    .line 66
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/ab;->b:Lcom/google/protobuf/as;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/ab;->b:Lcom/google/protobuf/as;

    invoke-virtual {v1, p2}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/ab;->c:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/protobuf/ab;->d:Lcom/google/protobuf/k;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/k;->a(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/ab;->d:Lcom/google/protobuf/k;

    invoke-virtual {v0, p2}, Lcom/google/protobuf/k;->a(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/ab;->b:Lcom/google/protobuf/as;

    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/ab;->a(Lcom/google/protobuf/as;Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 5
    iget-boolean v1, p0, Lcom/google/protobuf/ab;->c:Z

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/google/protobuf/ab;->d:Lcom/google/protobuf/k;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/k;->a(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->k()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ab;->b:Lcom/google/protobuf/as;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/ap;->a(Lcom/google/protobuf/as;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/protobuf/ab;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/ab;->d:Lcom/google/protobuf/k;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/ap;->a(Lcom/google/protobuf/k;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ab;->b:Lcom/google/protobuf/as;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/as;->d(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/ab;->d:Lcom/google/protobuf/k;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/protobuf/k;->c(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ab;->d:Lcom/google/protobuf/k;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/k;->a(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->i()Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method
