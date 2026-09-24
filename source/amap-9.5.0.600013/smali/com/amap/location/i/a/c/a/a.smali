.class public abstract Lcom/amap/location/i/a/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/amap/location/i/a/c/a/c;

.field private b:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/amap/location/i/a/c/a/a;->b:Ljava/nio/ByteBuffer;

    .line 10
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    new-instance p1, Lcom/amap/location/i/a/c/a/c;

    .line 17
    iget-object v0, p0, Lcom/amap/location/i/a/c/a/a;->b:Ljava/nio/ByteBuffer;

    .line 19
    invoke-direct {p1, v0}, Lcom/amap/location/i/a/c/a/c;-><init>(Ljava/nio/ByteBuffer;)V

    .line 22
    iput-object p1, p0, Lcom/amap/location/i/a/c/a/a;->a:Lcom/amap/location/i/a/c/a/c;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Lcom/amap/location/i/a/c/a/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/i/a/c/a/a;->a:Lcom/amap/location/i/a/c/a/c;

    .line 3
    iget-object v1, p0, Lcom/amap/location/i/a/c/a/a;->b:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->init(Ljava/nio/ByteBuffer;)Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 8
    return-object p0
.end method
