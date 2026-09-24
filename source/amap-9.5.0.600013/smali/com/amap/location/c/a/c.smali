.class public Lcom/amap/location/c/a/c;
.super Lcom/google/flatbuffers/FlatBufferBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(Ljava/nio/ByteBuffer;)V

    .line 4
    return-void
.end method


# virtual methods
.method public createString(Ljava/lang/CharSequence;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 4
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return p1

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    if-nez p1, :cond_0

    .line 9
    const-string p1, "null"

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    :goto_0
    const-string v1, "RobustFlatBufferBuilder"

    .line 18
    invoke-static {v1, p1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    const-string p1, ""

    .line 23
    invoke-super {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 26
    move-result p1

    .line 27
    return p1
.end method
