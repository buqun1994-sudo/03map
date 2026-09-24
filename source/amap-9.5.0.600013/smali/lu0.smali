.class public abstract Llu0;
.super Lcom/google/flatbuffers/Table;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result p0

    return p0
.end method

.method public static a(Lcom/google/flatbuffers/FlatBufferBuilder;B)V
    .locals 2

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static a(Lcom/google/flatbuffers/FlatBufferBuilder;D)V
    .locals 6

    const/4 v1, 0x3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->addDouble(IDD)V

    return-void
.end method

.method public static a(Lcom/google/flatbuffers/FlatBufferBuilder;F)V
    .locals 3

    const/4 v0, 0x6

    const-wide/16 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addFloat(IFD)V

    return-void
.end method

.method public static a(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static a(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->addLong(IJJ)V

    return-void
.end method

.method public static b(Lcom/google/flatbuffers/FlatBufferBuilder;JJJDDDFFFFFFIIBI)I
    .locals 3

    move-object v0, p0

    const/16 v1, 0x10

    .line 1
    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    move-wide v1, p11

    .line 2
    invoke-static {p0, p11, p12}, Llu0;->c(Lcom/google/flatbuffers/FlatBufferBuilder;D)V

    move-wide v1, p9

    .line 3
    invoke-static {p0, p9, p10}, Llu0;->b(Lcom/google/flatbuffers/FlatBufferBuilder;D)V

    move-wide v1, p7

    .line 4
    invoke-static {p0, p7, p8}, Llu0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;D)V

    move-wide v1, p5

    .line 5
    invoke-static {p0, p5, p6}, Llu0;->c(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move-wide v1, p3

    .line 6
    invoke-static {p0, p3, p4}, Llu0;->b(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 7
    invoke-static {p0, p1, p2}, Llu0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move/from16 v1, p22

    .line 8
    invoke-static {p0, v1}, Llu0;->c(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v1, p20

    .line 9
    invoke-static {p0, v1}, Llu0;->b(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v1, p19

    .line 10
    invoke-static {p0, v1}, Llu0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v1, p18

    .line 11
    invoke-static {p0, v1}, Llu0;->f(Lcom/google/flatbuffers/FlatBufferBuilder;F)V

    move/from16 v1, p17

    .line 12
    invoke-static {p0, v1}, Llu0;->e(Lcom/google/flatbuffers/FlatBufferBuilder;F)V

    move/from16 v1, p16

    .line 13
    invoke-static {p0, v1}, Llu0;->d(Lcom/google/flatbuffers/FlatBufferBuilder;F)V

    move/from16 v1, p15

    .line 14
    invoke-static {p0, v1}, Llu0;->c(Lcom/google/flatbuffers/FlatBufferBuilder;F)V

    move/from16 v1, p14

    .line 15
    invoke-static {p0, v1}, Llu0;->b(Lcom/google/flatbuffers/FlatBufferBuilder;F)V

    move/from16 v1, p13

    .line 16
    invoke-static {p0, v1}, Llu0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;F)V

    move/from16 v1, p21

    .line 17
    invoke-static {p0, v1}, Llu0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 18
    invoke-static {p0}, Llu0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static b(Lcom/google/flatbuffers/FlatBufferBuilder;D)V
    .locals 6

    const/4 v1, 0x4

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->addDouble(IDD)V

    return-void
.end method

.method public static b(Lcom/google/flatbuffers/FlatBufferBuilder;F)V
    .locals 3

    const/4 v0, 0x7

    const-wide/16 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addFloat(IFD)V

    return-void
.end method

.method public static b(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static b(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 6

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->addLong(IJJ)V

    return-void
.end method

.method public static c(Lcom/google/flatbuffers/FlatBufferBuilder;D)V
    .locals 6

    const/4 v1, 0x5

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->addDouble(IDD)V

    return-void
.end method

.method public static c(Lcom/google/flatbuffers/FlatBufferBuilder;F)V
    .locals 3

    const/16 v0, 0x8

    const-wide/16 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addFloat(IFD)V

    return-void
.end method

.method public static c(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static c(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 6

    const/4 v1, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->addLong(IJJ)V

    return-void
.end method

.method public static d(Lcom/google/flatbuffers/FlatBufferBuilder;F)V
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addFloat(IFD)V

    .line 8
    return-void
.end method

.method public static e(Lcom/google/flatbuffers/FlatBufferBuilder;F)V
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addFloat(IFD)V

    .line 8
    return-void
.end method

.method public static f(Lcom/google/flatbuffers/FlatBufferBuilder;F)V
    .locals 3

    .line 1
    const/16 v0, 0xb

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addFloat(IFD)V

    .line 8
    return-void
.end method
