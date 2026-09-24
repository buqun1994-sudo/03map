.class final Lcom/google/protobuf/aa;
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


# static fields
.field private static final a:[I

.field private static final b:Lsun/misc/Unsafe;


# instance fields
.field private final c:[I

.field private final d:[Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:Lcom/google/protobuf/MessageLite;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:[I

.field private final m:I

.field private final n:I

.field private final o:Lcom/google/protobuf/ac;

.field private final p:Lcom/google/protobuf/r;

.field private final q:Lcom/google/protobuf/as;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/as<",
            "**>;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/protobuf/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/k<",
            "*>;"
        }
    .end annotation
.end field

.field private final s:Lcom/google/protobuf/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 4
    sput-object v0, Lcom/google/protobuf/aa;->a:[I

    .line 6
    invoke-static {}, Lcom/google/protobuf/au;->c()Lsun/misc/Unsafe;

    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/protobuf/aa;->b:Lsun/misc/Unsafe;

    .line 12
    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;ZZ[IIILcom/google/protobuf/ac;Lcom/google/protobuf/r;Lcom/google/protobuf/as;Lcom/google/protobuf/k;Lcom/google/protobuf/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/protobuf/MessageLite;",
            "ZZ[III",
            "Lcom/google/protobuf/ac;",
            "Lcom/google/protobuf/r;",
            "Lcom/google/protobuf/as<",
            "**>;",
            "Lcom/google/protobuf/k<",
            "*>;",
            "Lcom/google/protobuf/u;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/aa;->c:[I

    .line 3
    iput-object p2, p0, Lcom/google/protobuf/aa;->d:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/protobuf/aa;->e:I

    .line 5
    iput p4, p0, Lcom/google/protobuf/aa;->f:I

    .line 6
    instance-of p1, p5, Lcom/google/protobuf/GeneratedMessageLite;

    iput-boolean p1, p0, Lcom/google/protobuf/aa;->i:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/protobuf/aa;->j:Z

    if-eqz p14, :cond_0

    .line 8
    invoke-virtual {p14, p5}, Lcom/google/protobuf/k;->a(Lcom/google/protobuf/MessageLite;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/protobuf/aa;->h:Z

    .line 9
    iput-boolean p7, p0, Lcom/google/protobuf/aa;->k:Z

    .line 10
    iput-object p8, p0, Lcom/google/protobuf/aa;->l:[I

    .line 11
    iput p9, p0, Lcom/google/protobuf/aa;->m:I

    .line 12
    iput p10, p0, Lcom/google/protobuf/aa;->n:I

    .line 13
    iput-object p11, p0, Lcom/google/protobuf/aa;->o:Lcom/google/protobuf/ac;

    .line 14
    iput-object p12, p0, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 15
    iput-object p13, p0, Lcom/google/protobuf/aa;->q:Lcom/google/protobuf/as;

    .line 16
    iput-object p14, p0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    .line 17
    iput-object p5, p0, Lcom/google/protobuf/aa;->g:Lcom/google/protobuf/MessageLite;

    .line 18
    iput-object p15, p0, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    return-void
.end method

.method private a(II)I
    .locals 1

    .line 872
    iget v0, p0, Lcom/google/protobuf/aa;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/aa;->f:I

    if-gt p1, v0, :cond_0

    .line 873
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/aa;->b(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
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

    .line 275
    invoke-virtual {p1, p2}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 276
    invoke-virtual {p1, p2}, Lcom/google/protobuf/as;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/c$a;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    .line 642
    sget-object v12, Lcom/google/protobuf/aa;->b:Lsun/misc/Unsafe;

    .line 643
    iget-object v7, v0, Lcom/google/protobuf/aa;->c:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 644
    invoke-direct {v0, v6}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    .line 645
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/an;[BIIILcom/google/protobuf/c$a;)I

    move-result v2

    .line 646
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 647
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    .line 648
    iget-object v3, v11, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 649
    :cond_1
    iget-object v3, v11, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    .line 650
    invoke-static {v15, v3}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 651
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 652
    :goto_1
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_1
    if-nez v5, :cond_a

    .line 653
    invoke-static {v3, v4, v11}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result v2

    .line 654
    iget-wide v3, v11, Lcom/google/protobuf/c$a;->b:J

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 655
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_2
    if-nez v5, :cond_a

    .line 656
    invoke-static {v3, v4, v11}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v2

    .line 657
    iget v3, v11, Lcom/google/protobuf/c$a;->a:I

    invoke-static {v3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 658
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_3
    if-nez v5, :cond_a

    .line 659
    invoke-static {v3, v4, v11}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v3

    .line 660
    iget v4, v11, Lcom/google/protobuf/c$a;->a:I

    .line 661
    invoke-direct {v0, v6}, Lcom/google/protobuf/aa;->c(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 662
    invoke-interface {v5, v4}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 663
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_3

    .line 664
    :cond_3
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 665
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3
    move v2, v3

    goto/16 :goto_a

    :pswitch_4
    if-ne v5, v15, :cond_a

    .line 666
    invoke-static {v3, v4, v11}, Lcom/google/protobuf/c;->e([BILcom/google/protobuf/c$a;)I

    move-result v2

    .line 667
    iget-object v3, v11, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 668
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_5
    if-ne v5, v15, :cond_a

    .line 669
    invoke-direct {v0, v6}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v2

    move/from16 v5, p4

    .line 670
    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/an;[BIILcom/google/protobuf/c$a;)I

    move-result v2

    .line 671
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 672
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    if-nez v15, :cond_5

    .line 673
    iget-object v3, v11, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 674
    :cond_5
    iget-object v3, v11, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    .line 675
    invoke-static {v15, v3}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 676
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 677
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_6
    if-ne v5, v15, :cond_a

    .line 678
    invoke-static {v3, v4, v11}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v2

    .line 679
    iget v4, v11, Lcom/google/protobuf/c$a;->a:I

    if-nez v4, :cond_6

    const-string v3, ""

    .line 680
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :cond_6
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_8

    add-int v5, v2, v4

    .line 681
    invoke-static {v3, v2, v5}, Lcom/google/protobuf/av;->a([BII)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_6

    .line 682
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 683
    :cond_8
    :goto_6
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 684
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 685
    :goto_7
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_7
    if-nez v5, :cond_a

    .line 686
    invoke-static {v3, v4, v11}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result v2

    .line 687
    iget-wide v3, v11, Lcom/google/protobuf/c$a;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_9

    const/4 v15, 0x1

    goto :goto_8

    :cond_9
    const/4 v15, 0x0

    :goto_8
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 688
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_8
    if-ne v5, v7, :cond_a

    .line 689
    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/c;->a([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    .line 690
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_9
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 691
    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/c;->b([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    .line 692
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_a
    if-nez v5, :cond_a

    .line 693
    invoke-static {v3, v4, v11}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v2

    .line 694
    iget v3, v11, Lcom/google/protobuf/c$a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 695
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_b
    if-nez v5, :cond_a

    .line 696
    invoke-static {v3, v4, v11}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result v2

    .line 697
    iget-wide v3, v11, Lcom/google/protobuf/c$a;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 698
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_c
    if-ne v5, v7, :cond_a

    .line 699
    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/c;->d([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    .line 700
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 701
    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/c;->c([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    .line 702
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :cond_a
    :goto_9
    move v2, v4

    :goto_a
    return v2

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/c$a;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v2, p7

    move/from16 v8, p8

    move-wide/from16 v5, p12

    move-object/from16 v7, p14

    .line 594
    sget-object v9, Lcom/google/protobuf/aa;->b:Lsun/misc/Unsafe;

    invoke-virtual {v9, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/protobuf/Internal$ProtobufList;

    .line 595
    invoke-interface {v10}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v11

    const/4 v12, 0x2

    if-nez v11, :cond_1

    .line 596
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_0

    const/16 v11, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v11, v11, 0x2

    .line 597
    :goto_0
    invoke-interface {v10, v11}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v10

    .line 598
    invoke-virtual {v9, p1, v5, v6, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v5, 0x5

    const/4 v6, 0x1

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/4 v1, 0x3

    if-ne v2, v1, :cond_f

    .line 599
    invoke-direct {p0, v8}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    .line 600
    invoke-static/range {p6 .. p12}, Lcom/google/protobuf/c;->b(Lcom/google/protobuf/an;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_1
    if-ne v2, v12, :cond_2

    .line 601
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->i([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto/16 :goto_3

    :cond_2
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 602
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->i(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_2
    if-ne v2, v12, :cond_3

    .line 603
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->h([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto/16 :goto_3

    :cond_3
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 604
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->h(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_3
    if-ne v2, v12, :cond_4

    .line 605
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v2

    goto :goto_1

    :cond_4
    if-nez v2, :cond_f

    move/from16 v2, p5

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v10

    move-object/from16 v7, p14

    .line 606
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/c;->a(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v2

    .line 607
    :goto_1
    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v3, v1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 608
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    .line 609
    :cond_5
    invoke-direct {p0, v8}, Lcom/google/protobuf/aa;->c(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v4

    iget-object v5, v0, Lcom/google/protobuf/aa;->q:Lcom/google/protobuf/as;

    move/from16 v6, p6

    .line 610
    invoke-static {v6, v10, v4, v3, v5}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/UnknownFieldSetLite;

    if-eqz v3, :cond_6

    .line 611
    iput-object v3, v1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    :cond_6
    move v1, v2

    goto/16 :goto_3

    :pswitch_4
    if-ne v2, v12, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 612
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->l(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_5
    if-ne v2, v12, :cond_f

    .line 613
    invoke-direct {p0, v8}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    .line 614
    invoke-static/range {p6 .. p12}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/an;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_6
    if-ne v2, v12, :cond_f

    const-wide/32 v1, 0x20000000

    and-long v1, p9, v1

    const-wide/16 v5, 0x0

    cmp-long v8, v1, v5

    if-nez v8, :cond_7

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 615
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->j(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto/16 :goto_3

    :cond_7
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 616
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->k(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_7
    if-ne v2, v12, :cond_8

    .line 617
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->g([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto/16 :goto_3

    :cond_8
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 618
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->g(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_8
    if-ne v2, v12, :cond_9

    .line 619
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->c([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto/16 :goto_3

    :cond_9
    if-ne v2, v5, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 620
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->c(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_9
    if-ne v2, v12, :cond_a

    .line 621
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->d([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto/16 :goto_3

    :cond_a
    if-ne v2, v6, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 622
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->d(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_a
    if-ne v2, v12, :cond_b

    .line 623
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto/16 :goto_3

    :cond_b
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 624
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->a(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto :goto_3

    :pswitch_b
    if-ne v2, v12, :cond_c

    .line 625
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto :goto_3

    :cond_c
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 626
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->b(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto :goto_3

    :pswitch_c
    if-ne v2, v12, :cond_d

    .line 627
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->e([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto :goto_3

    :cond_d
    if-ne v2, v5, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 628
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->e(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto :goto_3

    :pswitch_d
    if-ne v2, v12, :cond_e

    .line 629
    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/c;->f([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto :goto_3

    :cond_e
    if-ne v2, v6, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 630
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/c;->f(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v1

    goto :goto_3

    :cond_f
    :goto_2
    move v1, v4

    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;[BIIIJLcom/google/protobuf/c$a;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-wide v1, p6

    .line 631
    sget-object v3, Lcom/google/protobuf/aa;->b:Lsun/misc/Unsafe;

    move v4, p5

    .line 632
    invoke-direct {p0, p5}, Lcom/google/protobuf/aa;->b(I)Ljava/lang/Object;

    move-result-object v4

    .line 633
    invoke-virtual {v3, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 634
    iget-object v6, v7, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    invoke-interface {v6, v5}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 635
    iget-object v6, v7, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    invoke-interface {v6, v4}, Lcom/google/protobuf/u;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 636
    iget-object v8, v7, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    invoke-interface {v8, v6, v5}, Lcom/google/protobuf/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-virtual {v3, p1, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v6

    .line 638
    :cond_0
    iget-object v0, v7, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    .line 639
    invoke-interface {v0, v4}, Lcom/google/protobuf/u;->f(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$a;

    move-result-object v4

    iget-object v0, v7, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    .line 640
    invoke-interface {v0, v5}, Lcom/google/protobuf/u;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v6, p8

    .line 641
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/aa;->a([BIILcom/google/protobuf/MapEntryLite$a;Ljava/util/Map;Lcom/google/protobuf/c$a;)I

    move-result v0

    return v0
.end method

.method private a([BIILcom/google/protobuf/MapEntryLite$a;Ljava/util/Map;Lcom/google/protobuf/c$a;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lcom/google/protobuf/MapEntryLite$a<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v0, p2

    move-object/from16 v10, p6

    .line 574
    invoke-static {p1, v0, v10}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 575
    iget v1, v10, Lcom/google/protobuf/c$a;->a:I

    if-ltz v1, :cond_6

    sub-int v2, v8, v0

    if-gt v1, v2, :cond_6

    add-int v11, v0, v1

    .line 576
    iget-object v1, v9, Lcom/google/protobuf/MapEntryLite$a;->b:Ljava/lang/Object;

    .line 577
    iget-object v2, v9, Lcom/google/protobuf/MapEntryLite$a;->d:Ljava/lang/Object;

    move-object v12, v1

    move-object v13, v2

    :goto_0
    if-ge v0, v11, :cond_4

    add-int/lit8 v1, v0, 0x1

    .line 578
    aget-byte v0, v7, v0

    if-gez v0, :cond_0

    .line 579
    invoke-static {v0, p1, v1, v10}, Lcom/google/protobuf/c;->a(I[BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 580
    iget v1, v10, Lcom/google/protobuf/c$a;->a:I

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v3, v0, 0x7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    goto :goto_2

    .line 581
    :cond_1
    iget-object v1, v9, Lcom/google/protobuf/MapEntryLite$a;->c:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v1

    if-ne v3, v1, :cond_3

    .line 582
    iget-object v4, v9, Lcom/google/protobuf/MapEntryLite$a;->c:Lcom/google/protobuf/WireFormat$FieldType;

    iget-object v0, v9, Lcom/google/protobuf/MapEntryLite$a;->d:Ljava/lang/Object;

    .line 583
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p3

    move-object/from16 v6, p6

    .line 584
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/aa;->a([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/c$a;)I

    move-result v0

    .line 585
    iget-object v13, v10, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    goto :goto_0

    .line 586
    :cond_2
    iget-object v1, v9, Lcom/google/protobuf/MapEntryLite$a;->a:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v1

    if-ne v3, v1, :cond_3

    .line 587
    iget-object v4, v9, Lcom/google/protobuf/MapEntryLite$a;->a:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p3

    move-object/from16 v6, p6

    .line 588
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/aa;->a([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/c$a;)I

    move-result v0

    .line 589
    iget-object v12, v10, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    goto :goto_0

    .line 590
    :cond_3
    :goto_2
    invoke-static {v0, p1, v2, v8, v10}, Lcom/google/protobuf/c;->a(I[BIILcom/google/protobuf/c$a;)I

    move-result v0

    goto :goto_0

    :cond_4
    if-ne v0, v11, :cond_5

    move-object/from16 v0, p5

    .line 591
    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v11

    .line 592
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 593
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private a([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/c$a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    sget-object v0, Lcom/google/protobuf/aa$1;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    packed-switch p4, :pswitch_data_0

    .line 555
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 556
    :pswitch_0
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/c;->d([BILcom/google/protobuf/c$a;)I

    move-result p1

    goto/16 :goto_3

    .line 557
    :pswitch_1
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 558
    iget-wide p2, p6, Lcom/google/protobuf/c$a;->b:J

    invoke-static {p2, p3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 559
    :pswitch_2
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 560
    iget p2, p6, Lcom/google/protobuf/c$a;->a:I

    invoke-static {p2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 561
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/ai;->a()Lcom/google/protobuf/ai;

    move-result-object p4

    invoke-virtual {p4, p5}, Lcom/google/protobuf/ai;->a(Ljava/lang/Class;)Lcom/google/protobuf/an;

    move-result-object p4

    .line 562
    invoke-static {p4, p1, p2, p3, p6}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/an;[BIILcom/google/protobuf/c$a;)I

    move-result p1

    goto :goto_3

    .line 563
    :pswitch_4
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 564
    iget-wide p2, p6, Lcom/google/protobuf/c$a;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    goto :goto_3

    .line 565
    :pswitch_5
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 566
    iget p2, p6, Lcom/google/protobuf/c$a;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    goto :goto_3

    .line 567
    :pswitch_6
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->d([BI)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p6, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    goto :goto_0

    .line 568
    :pswitch_7
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->b([BI)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p6, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    goto :goto_1

    .line 569
    :pswitch_8
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->a([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p6, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    :goto_0
    add-int/lit8 p1, p2, 0x4

    goto :goto_3

    .line 570
    :pswitch_9
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->c([BI)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p6, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    :goto_1
    add-int/lit8 p1, p2, 0x8

    goto :goto_3

    .line 571
    :pswitch_a
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/c;->e([BILcom/google/protobuf/c$a;)I

    move-result p1

    goto :goto_3

    .line 572
    :pswitch_b
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 573
    iget-wide p2, p6, Lcom/google/protobuf/c$a;->b:J

    const-wide/16 p4, 0x0

    cmp-long v0, p2, p4

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    :goto_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    :goto_3
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/google/protobuf/StructuralMessageInfo;Lcom/google/protobuf/ac;Lcom/google/protobuf/r;Lcom/google/protobuf/as;Lcom/google/protobuf/k;Lcom/google/protobuf/u;)Lcom/google/protobuf/aa;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/StructuralMessageInfo;",
            "Lcom/google/protobuf/ac;",
            "Lcom/google/protobuf/r;",
            "Lcom/google/protobuf/as<",
            "**>;",
            "Lcom/google/protobuf/k<",
            "*>;",
            "Lcom/google/protobuf/u;",
            ")",
            "Lcom/google/protobuf/aa<",
            "TT;>;"
        }
    .end annotation

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->a()Lcom/google/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 87
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->e()[Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    .line 88
    array-length v1, v0

    if-nez v1, :cond_1

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_1

    .line 89
    :cond_1
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->a()I

    move-result v1

    .line 90
    array-length v4, v0

    sub-int/2addr v4, v2

    aget-object v2, v0, v4

    invoke-virtual {v2}, Lcom/google/protobuf/FieldInfo;->a()I

    move-result v2

    move v7, v1

    move v8, v2

    .line 91
    :goto_1
    array-length v1, v0

    mul-int/lit8 v2, v1, 0x3

    .line 92
    new-array v5, v2, [I

    mul-int/lit8 v1, v1, 0x2

    .line 93
    new-array v6, v1, [Ljava/lang/Object;

    .line 94
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_2
    const/16 v11, 0x31

    const/16 v12, 0x12

    if-ge v2, v1, :cond_4

    aget-object v13, v0, v2

    .line 95
    invoke-virtual {v13}, Lcom/google/protobuf/FieldInfo;->c()Lcom/google/protobuf/FieldType;

    move-result-object v14

    sget-object v15, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

    if-ne v14, v15, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 96
    :cond_2
    invoke-virtual {v13}, Lcom/google/protobuf/FieldInfo;->c()Lcom/google/protobuf/FieldType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/FieldType;->id()I

    move-result v14

    if-lt v14, v12, :cond_3

    invoke-virtual {v13}, Lcom/google/protobuf/FieldInfo;->c()Lcom/google/protobuf/FieldType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/protobuf/FieldType;->id()I

    move-result v12

    if-gt v12, v11, :cond_3

    add-int/lit8 v9, v9, 0x1

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    if-lez v4, :cond_5

    .line 97
    new-array v2, v4, [I

    goto :goto_4

    :cond_5
    move-object v2, v1

    :goto_4
    if-lez v9, :cond_6

    .line 98
    new-array v1, v9, [I

    .line 99
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->d()[I

    move-result-object v4

    if-nez v4, :cond_7

    .line 100
    sget-object v4, Lcom/google/protobuf/aa;->a:[I

    :cond_7
    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 101
    :goto_5
    array-length v3, v0

    if-ge v9, v3, :cond_b

    .line 102
    aget-object v3, v0, v9

    .line 103
    invoke-virtual {v3}, Lcom/google/protobuf/FieldInfo;->a()I

    move-result v11

    .line 104
    invoke-static {v3, v5, v13, v10, v6}, Lcom/google/protobuf/aa;->a(Lcom/google/protobuf/FieldInfo;[IIZ[Ljava/lang/Object;)V

    .line 105
    array-length v12, v4

    if-ge v14, v12, :cond_8

    aget v12, v4, v14

    if-ne v12, v11, :cond_8

    add-int/lit8 v11, v14, 0x1

    .line 106
    aput v13, v4, v14

    move v14, v11

    .line 107
    :cond_8
    invoke-virtual {v3}, Lcom/google/protobuf/FieldInfo;->c()Lcom/google/protobuf/FieldType;

    move-result-object v11

    sget-object v12, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

    if-ne v11, v12, :cond_a

    add-int/lit8 v3, v15, 0x1

    .line 108
    aput v13, v2, v15

    move v15, v3

    :cond_9
    move/from16 v18, v13

    goto :goto_6

    .line 109
    :cond_a
    invoke-virtual {v3}, Lcom/google/protobuf/FieldInfo;->c()Lcom/google/protobuf/FieldType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/protobuf/FieldType;->id()I

    move-result v11

    const/16 v12, 0x12

    if-lt v11, v12, :cond_9

    invoke-virtual {v3}, Lcom/google/protobuf/FieldInfo;->c()Lcom/google/protobuf/FieldType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/protobuf/FieldType;->id()I

    move-result v11

    const/16 v12, 0x31

    if-gt v11, v12, :cond_9

    add-int/lit8 v11, v16, 0x1

    .line 110
    invoke-virtual {v3}, Lcom/google/protobuf/FieldInfo;->b()Ljava/lang/reflect/Field;

    move-result-object v3

    move/from16 v18, v13

    invoke-static {v3}, Lcom/google/protobuf/au;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v12

    long-to-int v3, v12

    aput v3, v1, v16

    move/from16 v16, v11

    :goto_6
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v18, 0x3

    const/16 v11, 0x31

    const/16 v12, 0x12

    goto :goto_5

    :cond_b
    if-nez v2, :cond_c

    .line 111
    sget-object v2, Lcom/google/protobuf/aa;->a:[I

    :cond_c
    if-nez v1, :cond_d

    .line 112
    sget-object v1, Lcom/google/protobuf/aa;->a:[I

    .line 113
    :cond_d
    array-length v0, v4

    array-length v3, v2

    add-int/2addr v0, v3

    array-length v3, v1

    add-int/2addr v0, v3

    new-array v12, v0, [I

    .line 114
    array-length v0, v4

    const/4 v3, 0x0

    invoke-static {v4, v3, v12, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    array-length v0, v4

    array-length v9, v2

    invoke-static {v2, v3, v12, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    array-length v0, v4

    array-length v9, v2

    add-int/2addr v0, v9

    array-length v9, v1

    invoke-static {v1, v3, v12, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    new-instance v0, Lcom/google/protobuf/aa;

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->c()Lcom/google/protobuf/MessageLite;

    move-result-object v9

    const/4 v11, 0x1

    array-length v13, v4

    array-length v1, v4

    array-length v2, v2

    add-int v14, v1, v2

    move-object v4, v0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Lcom/google/protobuf/aa;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;ZZ[IIILcom/google/protobuf/ac;Lcom/google/protobuf/r;Lcom/google/protobuf/as;Lcom/google/protobuf/k;Lcom/google/protobuf/u;)V

    return-object v0
.end method

.method public static a(Lcom/google/protobuf/ak;Lcom/google/protobuf/ac;Lcom/google/protobuf/r;Lcom/google/protobuf/as;Lcom/google/protobuf/k;Lcom/google/protobuf/u;)Lcom/google/protobuf/aa;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/ak;",
            "Lcom/google/protobuf/ac;",
            "Lcom/google/protobuf/r;",
            "Lcom/google/protobuf/as<",
            "**>;",
            "Lcom/google/protobuf/k<",
            "*>;",
            "Lcom/google/protobuf/u;",
            ")",
            "Lcom/google/protobuf/aa<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/ak;->a()Lcom/google/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 5
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/ak;->d()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    const/4 v7, 0x1

    const/16 v8, 0xd

    :goto_1
    add-int/lit8 v9, v7, 0x1

    .line 8
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_1

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v8

    or-int/2addr v4, v7

    add-int/lit8 v8, v8, 0xd

    move v7, v9

    goto :goto_1

    :cond_1
    shl-int/2addr v7, v8

    or-int/2addr v4, v7

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    :goto_2
    add-int/lit8 v7, v9, 0x1

    .line 9
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_4

    and-int/lit16 v8, v8, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v11, v7, 0x1

    .line 10
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v8, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v11

    goto :goto_3

    :cond_3
    shl-int/2addr v7, v9

    or-int/2addr v8, v7

    move v7, v11

    :cond_4
    if-nez v8, :cond_5

    .line 11
    sget-object v8, Lcom/google/protobuf/aa;->a:[I

    move-object v13, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_c

    :cond_5
    add-int/lit8 v8, v7, 0x1

    .line 12
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_7

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v11, v8, 0x1

    .line 13
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_6

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_4

    :cond_6
    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    move v8, v11

    :cond_7
    add-int/lit8 v9, v8, 0x1

    .line 14
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_9

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    .line 15
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_8

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_5

    :cond_8
    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    move v9, v12

    :cond_9
    add-int/lit8 v11, v9, 0x1

    .line 16
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_b

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v11, 0x1

    .line 17
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_a

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_6

    :cond_a
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_b
    add-int/lit8 v12, v11, 0x1

    .line 18
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_d

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    .line 19
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_c

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_c
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_d
    add-int/lit8 v13, v12, 0x1

    .line 20
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_f

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    .line 21
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_e

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_e
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_f
    add-int/lit8 v14, v13, 0x1

    .line 22
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    .line 23
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_10

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_10
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_11
    add-int/lit8 v15, v14, 0x1

    .line 24
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_13

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    .line 25
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_13
    add-int/lit8 v16, v15, 0x1

    .line 26
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_15

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v2, v16

    const/16 v16, 0xd

    :goto_b
    add-int/lit8 v18, v2, 0x1

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_14

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v16

    or-int/2addr v15, v2

    add-int/lit8 v16, v16, 0xd

    move/from16 v2, v18

    goto :goto_b

    :cond_14
    shl-int v2, v2, v16

    or-int/2addr v15, v2

    move/from16 v16, v18

    :cond_15
    add-int v2, v15, v13

    add-int/2addr v2, v14

    .line 28
    new-array v2, v2, [I

    mul-int/lit8 v14, v7, 0x2

    add-int/2addr v14, v8

    move v8, v7

    move/from16 v7, v16

    move/from16 v35, v13

    move-object v13, v2

    move v2, v9

    move/from16 v9, v35

    .line 29
    :goto_c
    sget-object v5, Lcom/google/protobuf/aa;->b:Lsun/misc/Unsafe;

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/ak;->e()[Ljava/lang/Object;

    move-result-object v18

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/ak;->c()Lcom/google/protobuf/MessageLite;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    mul-int/lit8 v6, v12, 0x3

    .line 32
    new-array v6, v6, [I

    mul-int/lit8 v12, v12, 0x2

    .line 33
    new-array v12, v12, [Ljava/lang/Object;

    add-int v21, v15, v9

    move/from16 v23, v15

    move/from16 v24, v21

    const/4 v9, 0x0

    const/16 v22, 0x0

    :goto_d
    if-ge v7, v1, :cond_34

    add-int/lit8 v25, v7, 0x1

    .line 34
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v26, v1

    const v1, 0xd800

    if-lt v7, v1, :cond_17

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v1, v25

    const/16 v25, 0xd

    :goto_e
    add-int/lit8 v27, v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v28, v15

    const v15, 0xd800

    if-lt v1, v15, :cond_16

    and-int/lit16 v1, v1, 0x1fff

    shl-int v1, v1, v25

    or-int/2addr v7, v1

    add-int/lit8 v25, v25, 0xd

    move/from16 v1, v27

    move/from16 v15, v28

    goto :goto_e

    :cond_16
    shl-int v1, v1, v25

    or-int/2addr v7, v1

    move/from16 v1, v27

    goto :goto_f

    :cond_17
    move/from16 v28, v15

    move/from16 v1, v25

    :goto_f
    add-int/lit8 v15, v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v25, v15

    const v15, 0xd800

    if-lt v1, v15, :cond_19

    and-int/lit16 v1, v1, 0x1fff

    move/from16 v15, v25

    const/16 v25, 0xd

    :goto_10
    add-int/lit8 v27, v15, 0x1

    .line 37
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v29, v10

    const v10, 0xd800

    if-lt v15, v10, :cond_18

    and-int/lit16 v10, v15, 0x1fff

    shl-int v10, v10, v25

    or-int/2addr v1, v10

    add-int/lit8 v25, v25, 0xd

    move/from16 v15, v27

    move/from16 v10, v29

    goto :goto_10

    :cond_18
    shl-int v10, v15, v25

    or-int/2addr v1, v10

    move/from16 v15, v27

    goto :goto_11

    :cond_19
    move/from16 v29, v10

    move/from16 v15, v25

    :goto_11
    and-int/lit16 v10, v1, 0xff

    move/from16 v25, v11

    and-int/lit16 v11, v1, 0x400

    if-eqz v11, :cond_1a

    add-int/lit8 v11, v9, 0x1

    .line 38
    aput v22, v13, v9

    move v9, v11

    :cond_1a
    const/16 v11, 0x33

    move/from16 v31, v9

    if-lt v10, v11, :cond_22

    add-int/lit8 v11, v15, 0x1

    .line 39
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const v9, 0xd800

    if-lt v15, v9, :cond_1c

    and-int/lit16 v15, v15, 0x1fff

    const/16 v33, 0xd

    :goto_12
    add-int/lit8 v34, v11, 0x1

    .line 40
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v9, :cond_1b

    and-int/lit16 v9, v11, 0x1fff

    shl-int v9, v9, v33

    or-int/2addr v15, v9

    add-int/lit8 v33, v33, 0xd

    move/from16 v11, v34

    const v9, 0xd800

    goto :goto_12

    :cond_1b
    shl-int v9, v11, v33

    or-int/2addr v15, v9

    move/from16 v11, v34

    :cond_1c
    add-int/lit8 v9, v10, -0x33

    move/from16 v33, v11

    const/16 v11, 0x9

    if-eq v9, v11, :cond_1e

    const/16 v11, 0x11

    if-ne v9, v11, :cond_1d

    goto :goto_13

    :cond_1d
    const/16 v11, 0xc

    if-ne v9, v11, :cond_1f

    and-int/lit8 v9, v4, 0x1

    const/4 v11, 0x1

    if-ne v9, v11, :cond_1f

    .line 41
    div-int/lit8 v9, v22, 0x3

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v11

    add-int/lit8 v11, v14, 0x1

    aget-object v14, v18, v14

    aput-object v14, v12, v9

    goto :goto_14

    .line 42
    :cond_1e
    :goto_13
    div-int/lit8 v9, v22, 0x3

    mul-int/lit8 v9, v9, 0x2

    const/4 v11, 0x1

    add-int/2addr v9, v11

    add-int/lit8 v11, v14, 0x1

    aget-object v14, v18, v14

    aput-object v14, v12, v9

    :goto_14
    move v14, v11

    :cond_1f
    mul-int/lit8 v15, v15, 0x2

    .line 43
    aget-object v9, v18, v15

    .line 44
    instance-of v11, v9, Ljava/lang/reflect/Field;

    if-eqz v11, :cond_20

    .line 45
    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_15

    .line 46
    :cond_20
    check-cast v9, Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/google/protobuf/aa;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 47
    aput-object v9, v18, v15

    :goto_15
    move-object v11, v6

    move/from16 v34, v7

    .line 48
    invoke-virtual {v5, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v7, v6

    add-int/lit8 v15, v15, 0x1

    .line 49
    aget-object v6, v18, v15

    .line 50
    instance-of v9, v6, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_21

    .line 51
    check-cast v6, Ljava/lang/reflect/Field;

    goto :goto_16

    .line 52
    :cond_21
    check-cast v6, Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/google/protobuf/aa;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 53
    aput-object v6, v18, v15

    :goto_16
    move v9, v7

    .line 54
    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v7, v6

    move-object/from16 v32, v0

    move-object/from16 v19, v3

    move v0, v4

    move v4, v7

    move v7, v9

    move v9, v10

    move v6, v14

    move/from16 v14, v33

    const/4 v15, 0x0

    goto/16 :goto_21

    :cond_22
    move-object v11, v6

    move/from16 v34, v7

    add-int/lit8 v6, v14, 0x1

    .line 55
    aget-object v7, v18, v14

    check-cast v7, Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/google/protobuf/aa;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/16 v9, 0x31

    const/16 v14, 0x9

    if-eq v10, v14, :cond_2a

    const/16 v14, 0x11

    if-ne v10, v14, :cond_23

    goto :goto_1a

    :cond_23
    const/16 v14, 0x1b

    if-eq v10, v14, :cond_29

    if-ne v10, v9, :cond_24

    goto :goto_18

    :cond_24
    const/16 v14, 0xc

    if-eq v10, v14, :cond_28

    const/16 v14, 0x1e

    if-eq v10, v14, :cond_28

    const/16 v14, 0x2c

    if-ne v10, v14, :cond_25

    goto :goto_17

    :cond_25
    const/16 v14, 0x32

    if-ne v10, v14, :cond_27

    add-int/lit8 v14, v23, 0x1

    .line 56
    aput v22, v13, v23

    .line 57
    div-int/lit8 v23, v22, 0x3

    mul-int/lit8 v23, v23, 0x2

    add-int/lit8 v27, v6, 0x1

    aget-object v6, v18, v6

    aput-object v6, v12, v23

    and-int/lit16 v6, v1, 0x800

    if-eqz v6, :cond_26

    add-int/lit8 v23, v23, 0x1

    add-int/lit8 v6, v27, 0x1

    .line 58
    aget-object v27, v18, v27

    aput-object v27, v12, v23

    move/from16 v23, v14

    goto :goto_1b

    :cond_26
    move/from16 v23, v14

    move/from16 v6, v27

    goto :goto_1b

    :cond_27
    const/4 v9, 0x1

    goto :goto_1b

    :cond_28
    :goto_17
    and-int/lit8 v14, v4, 0x1

    const/4 v9, 0x1

    if-ne v14, v9, :cond_2b

    .line 59
    div-int/lit8 v14, v22, 0x3

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v9

    add-int/lit8 v20, v6, 0x1

    aget-object v6, v18, v6

    aput-object v6, v12, v14

    goto :goto_19

    :cond_29
    :goto_18
    const/4 v9, 0x1

    .line 60
    div-int/lit8 v14, v22, 0x3

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v9

    add-int/lit8 v20, v6, 0x1

    aget-object v6, v18, v6

    aput-object v6, v12, v14

    :goto_19
    move v14, v10

    move/from16 v6, v20

    goto :goto_1c

    :cond_2a
    :goto_1a
    const/4 v9, 0x1

    .line 61
    div-int/lit8 v14, v22, 0x3

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v9

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v20

    aput-object v20, v12, v14

    :cond_2b
    :goto_1b
    move v14, v10

    .line 62
    :goto_1c
    invoke-virtual {v5, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v7, v9

    and-int/lit8 v9, v4, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_30

    move v9, v14

    const/16 v14, 0x11

    if-gt v9, v14, :cond_2f

    add-int/lit8 v14, v15, 0x1

    .line 63
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const v10, 0xd800

    if-lt v15, v10, :cond_2d

    and-int/lit16 v15, v15, 0x1fff

    const/16 v19, 0xd

    :goto_1d
    add-int/lit8 v30, v14, 0x1

    .line 64
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v10, :cond_2c

    and-int/lit16 v14, v14, 0x1fff

    shl-int v14, v14, v19

    or-int/2addr v15, v14

    add-int/lit8 v19, v19, 0xd

    move/from16 v14, v30

    goto :goto_1d

    :cond_2c
    shl-int v14, v14, v19

    or-int/2addr v15, v14

    move/from16 v14, v30

    :cond_2d
    mul-int/lit8 v19, v8, 0x2

    .line 65
    div-int/lit8 v30, v15, 0x20

    add-int v19, v19, v30

    .line 66
    aget-object v10, v18, v19

    move-object/from16 v32, v0

    .line 67
    instance-of v0, v10, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2e

    .line 68
    check-cast v10, Ljava/lang/reflect/Field;

    goto :goto_1e

    .line 69
    :cond_2e
    check-cast v10, Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 70
    aput-object v10, v18, v19

    :goto_1e
    move-object/from16 v19, v3

    move v0, v4

    .line 71
    invoke-virtual {v5, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v4, v3

    .line 72
    rem-int/lit8 v15, v15, 0x20

    goto :goto_20

    :cond_2f
    move-object/from16 v32, v0

    move-object/from16 v19, v3

    move v0, v4

    goto :goto_1f

    :cond_30
    move-object/from16 v32, v0

    move-object/from16 v19, v3

    move v0, v4

    move v9, v14

    :goto_1f
    move v14, v15

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_20
    const/16 v3, 0x12

    if-lt v9, v3, :cond_31

    const/16 v3, 0x31

    if-gt v9, v3, :cond_31

    add-int/lit8 v3, v24, 0x1

    .line 73
    aput v7, v13, v24

    move/from16 v24, v3

    :cond_31
    :goto_21
    add-int/lit8 v3, v22, 0x1

    .line 74
    aput v34, v11, v22

    add-int/lit8 v10, v3, 0x1

    move/from16 v22, v0

    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_32

    const/high16 v0, 0x20000000

    goto :goto_22

    :cond_32
    const/4 v0, 0x0

    :goto_22
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_33

    const/high16 v1, 0x10000000

    goto :goto_23

    :cond_33
    const/4 v1, 0x0

    :goto_23
    or-int/2addr v0, v1

    shl-int/lit8 v1, v9, 0x14

    or-int/2addr v0, v1

    or-int/2addr v0, v7

    .line 75
    aput v0, v11, v3

    add-int/lit8 v0, v10, 0x1

    shl-int/lit8 v1, v15, 0x14

    or-int/2addr v1, v4

    .line 76
    aput v1, v11, v10

    move v7, v14

    move-object/from16 v3, v19

    move/from16 v4, v22

    move/from16 v1, v26

    move/from16 v15, v28

    move/from16 v10, v29

    move/from16 v9, v31

    move/from16 v22, v0

    move v14, v6

    move-object v6, v11

    move/from16 v11, v25

    move-object/from16 v0, v32

    goto/16 :goto_d

    :cond_34
    move/from16 v29, v10

    move/from16 v25, v11

    move/from16 v28, v15

    move-object v11, v6

    .line 77
    new-instance v0, Lcom/google/protobuf/aa;

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/ak;->c()Lcom/google/protobuf/MessageLite;

    move-result-object v9

    const/4 v1, 0x0

    move-object v4, v0

    move-object v5, v11

    move-object v6, v12

    move v7, v2

    move/from16 v8, v25

    move v11, v1

    move-object v12, v13

    move/from16 v13, v28

    move/from16 v14, v21

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Lcom/google/protobuf/aa;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;ZZ[IIILcom/google/protobuf/ac;Lcom/google/protobuf/r;Lcom/google/protobuf/as;Lcom/google/protobuf/k;Lcom/google/protobuf/u;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Lcom/google/protobuf/x;Lcom/google/protobuf/ac;Lcom/google/protobuf/r;Lcom/google/protobuf/as;Lcom/google/protobuf/k;Lcom/google/protobuf/u;)Lcom/google/protobuf/aa;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/x;",
            "Lcom/google/protobuf/ac;",
            "Lcom/google/protobuf/r;",
            "Lcom/google/protobuf/as<",
            "**>;",
            "Lcom/google/protobuf/k<",
            "*>;",
            "Lcom/google/protobuf/u;",
            ")",
            "Lcom/google/protobuf/aa<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of p0, p1, Lcom/google/protobuf/ak;

    if-eqz p0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/ak;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/aa;->a(Lcom/google/protobuf/ak;Lcom/google/protobuf/ac;Lcom/google/protobuf/r;Lcom/google/protobuf/as;Lcom/google/protobuf/k;Lcom/google/protobuf/u;)Lcom/google/protobuf/aa;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/StructuralMessageInfo;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/aa;->a(Lcom/google/protobuf/StructuralMessageInfo;Lcom/google/protobuf/ac;Lcom/google/protobuf/r;Lcom/google/protobuf/as;Lcom/google/protobuf/k;Lcom/google/protobuf/u;)Lcom/google/protobuf/aa;

    move-result-object p0

    return-object p0
.end method

.method private a(I)Lcom/google/protobuf/an;
    .locals 3

    .line 703
    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    .line 704
    iget-object v0, p0, Lcom/google/protobuf/aa;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/protobuf/an;

    if-eqz v0, :cond_0

    return-object v0

    .line 705
    :cond_0
    invoke-static {}, Lcom/google/protobuf/ai;->a()Lcom/google/protobuf/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/aa;->d:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ai;->a(Ljava/lang/Class;)Lcom/google/protobuf/an;

    move-result-object v0

    .line 706
    iget-object v1, p0, Lcom/google/protobuf/aa;->d:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final a(IILjava/util/Map;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Lcom/google/protobuf/as<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    .line 805
    invoke-direct {p0, p1}, Lcom/google/protobuf/aa;->b(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/u;->f(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$a;

    move-result-object p1

    .line 806
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 807
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 808
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p5, :cond_1

    .line 809
    invoke-virtual {p6}, Lcom/google/protobuf/as;->a()Ljava/lang/Object;

    move-result-object p5

    .line 810
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/protobuf/MapEntryLite$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 811
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->newCodedBuilder(I)Lcom/google/protobuf/ByteString$e;

    move-result-object v1

    .line 812
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString$e;->b()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v2

    .line 813
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/protobuf/MapEntryLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/MapEntryLite$a;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString$e;->a()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/protobuf/as;->a(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    .line 815
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 816
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p5
.end method

.method private final a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/protobuf/as<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 798
    invoke-direct {p0, p2}, Lcom/google/protobuf/aa;->d(I)I

    move-result v2

    .line 799
    invoke-direct {p0, p2}, Lcom/google/protobuf/aa;->e(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v0

    .line 800
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 801
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/protobuf/aa;->c(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v4

    if-nez v4, :cond_1

    return-object p3

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    invoke-interface {v0, p1}, Lcom/google/protobuf/u;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    move v1, p2

    move-object v5, p3

    move-object v6, p4

    .line 803
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/aa;->a(IILjava/util/Map;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 80
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 81
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 82
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 277
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private a(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 825
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 826
    check-cast p2, Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lcom/google/protobuf/Writer;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 827
    :cond_0
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-interface {p3, p1, p2}, Lcom/google/protobuf/Writer;->a(ILcom/google/protobuf/ByteString;)V

    :goto_0
    return-void
.end method

.method private static a(Lcom/google/protobuf/FieldInfo;[IIZ[Ljava/lang/Object;)V
    .locals 8

    .line 119
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->d()Lcom/google/protobuf/ag;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->c()Lcom/google/protobuf/FieldType;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/FieldType;->id()I

    move-result p3

    add-int/lit8 p3, p3, 0x33

    .line 121
    invoke-virtual {v0}, Lcom/google/protobuf/ag;->b()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/au;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v3, v2

    .line 122
    invoke-virtual {v0}, Lcom/google/protobuf/ag;->a()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/au;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v0, v4

    :goto_0
    move v2, v0

    const/4 v0, 0x0

    goto :goto_1

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->c()Lcom/google/protobuf/FieldType;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->b()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/au;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v3, v2

    .line 125
    invoke-virtual {v0}, Lcom/google/protobuf/FieldType;->id()I

    move-result v2

    if-nez p3, :cond_1

    .line 126
    invoke-virtual {v0}, Lcom/google/protobuf/FieldType;->isList()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/FieldType;->isMap()Z

    move-result p3

    if-nez p3, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->f()Ljava/lang/reflect/Field;

    move-result-object p3

    invoke-static {p3}, Lcom/google/protobuf/au;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 128
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->h()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p3

    move v7, v0

    move v0, p3

    move p3, v2

    move v2, v7

    goto :goto_1

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->k()Ljava/lang/reflect/Field;

    move-result-object p3

    if-nez p3, :cond_2

    move p3, v2

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_1

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->k()Ljava/lang/reflect/Field;

    move-result-object p3

    invoke-static {p3}, Lcom/google/protobuf/au;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v0, v4

    move p3, v2

    goto :goto_0

    .line 131
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->a()I

    move-result v4

    aput v4, p1, p2

    add-int/lit8 v4, p2, 0x1

    .line 132
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->j()Z

    move-result v5

    if-eqz v5, :cond_3

    const/high16 v5, 0x20000000

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 133
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->i()Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v1, 0x10000000

    :cond_4
    or-int/2addr v1, v5

    shl-int/lit8 p3, p3, 0x14

    or-int/2addr p3, v1

    or-int/2addr p3, v3

    aput p3, p1, v4

    add-int/lit8 p3, p2, 0x2

    shl-int/lit8 v0, v0, 0x14

    or-int/2addr v0, v2

    .line 134
    aput v0, p1, p3

    .line 135
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->l()Ljava/lang/Class;

    move-result-object p1

    .line 136
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->g()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 137
    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->g()Ljava/lang/Object;

    move-result-object p3

    aput-object p3, p4, p2

    if-eqz p1, :cond_5

    add-int/lit8 p2, p2, 0x1

    .line 138
    aput-object p1, p4, p2

    goto :goto_3

    .line 139
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->e()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p1

    if-eqz p1, :cond_8

    add-int/lit8 p2, p2, 0x1

    .line 140
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->e()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p0

    aput-object p0, p4, p2

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    .line 141
    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    aput-object p1, p4, p2

    goto :goto_3

    .line 142
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->e()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 143
    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->e()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p0

    aput-object p0, p4, p2

    :cond_8
    :goto_3
    return-void
.end method

.method private a(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Writer;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 283
    iget-object v0, p0, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    .line 284
    invoke-direct {p0, p4}, Lcom/google/protobuf/aa;->b(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/protobuf/u;->f(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$a;

    move-result-object p4

    iget-object v0, p0, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    .line 285
    invoke-interface {v0, p3}, Lcom/google/protobuf/u;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 286
    invoke-interface {p1, p2, p4, p3}, Lcom/google/protobuf/Writer;->a(ILcom/google/protobuf/MapEntryLite$a;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/protobuf/as;Lcom/google/protobuf/k;Ljava/lang/Object;Lcom/google/protobuf/al;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 16
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

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v0, p4

    move-object/from16 v11, p5

    const/4 v12, 0x0

    move-object v13, v12

    move-object v14, v13

    .line 290
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->a()I

    move-result v1

    .line 291
    invoke-direct {v8, v1}, Lcom/google/protobuf/aa;->k(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v3, :cond_c

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    .line 292
    iget v0, v8, Lcom/google/protobuf/aa;->m:I

    :goto_1
    iget v1, v8, Lcom/google/protobuf/aa;->n:I

    if-ge v0, v1, :cond_1

    .line 293
    iget-object v1, v8, Lcom/google/protobuf/aa;->l:[I

    aget v1, v1, v0

    .line 294
    invoke-direct {v8, v10, v1, v13, v9}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-eqz v13, :cond_2

    .line 295
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 296
    :cond_3
    :try_start_1
    iget-boolean v2, v8, Lcom/google/protobuf/aa;->h:Z

    if-nez v2, :cond_4

    move-object/from16 v15, p2

    move-object v3, v12

    goto :goto_2

    :cond_4
    iget-object v2, v8, Lcom/google/protobuf/aa;->g:Lcom/google/protobuf/MessageLite;

    move-object/from16 v15, p2

    .line 297
    invoke-virtual {v15, v11, v2, v1}, Lcom/google/protobuf/k;->a(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_6

    if-nez v14, :cond_5

    .line 298
    invoke-virtual/range {p2 .. p3}, Lcom/google/protobuf/k;->b(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    move-object v14, v1

    :cond_5
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move-object v5, v14

    move-object v6, v13

    move-object/from16 v7, p1

    .line 299
    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/k;->a(Lcom/google/protobuf/al;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;Ljava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_0

    .line 300
    :cond_6
    invoke-virtual {v9, v0}, Lcom/google/protobuf/as;->a(Lcom/google/protobuf/al;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 301
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->c()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_7
    if-nez v13, :cond_8

    .line 302
    invoke-virtual {v9, v10}, Lcom/google/protobuf/as;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    .line 303
    :cond_8
    invoke-virtual {v9, v13, v0}, Lcom/google/protobuf/as;->a(Ljava/lang/Object;Lcom/google/protobuf/al;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_9

    goto :goto_0

    .line 304
    :cond_9
    iget v0, v8, Lcom/google/protobuf/aa;->m:I

    :goto_3
    iget v1, v8, Lcom/google/protobuf/aa;->n:I

    if-ge v0, v1, :cond_a

    .line 305
    iget-object v1, v8, Lcom/google/protobuf/aa;->l:[I

    aget v1, v1, v0

    .line 306
    invoke-direct {v8, v10, v1, v13, v9}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    if-eqz v13, :cond_b

    .line 307
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    return-void

    :cond_c
    move-object/from16 v15, p2

    .line 308
    :try_start_2
    invoke-direct {v8, v3}, Lcom/google/protobuf/aa;->e(I)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    :try_start_3
    invoke-static {v4}, Lcom/google/protobuf/aa;->g(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    if-nez v13, :cond_14

    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/as;->a()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_7

    .line 311
    :pswitch_0
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    .line 312
    invoke-direct {v8, v3}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v2

    invoke-interface {v0, v2, v11}, Lcom/google/protobuf/al;->b(Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 313
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 314
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 315
    :pswitch_1
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->t()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 316
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 317
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 318
    :pswitch_2
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->s()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 319
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 320
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 321
    :pswitch_3
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->r()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 322
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 323
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 324
    :pswitch_4
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 325
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 326
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 327
    :pswitch_5
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->p()I

    move-result v2

    .line 328
    invoke-direct {v8, v3}, Lcom/google/protobuf/aa;->c(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 329
    invoke-interface {v5, v2}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_4

    .line 330
    :cond_d
    invoke-static {v1, v2, v13, v9}, Lcom/google/protobuf/ap;->a(IILjava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    .line 331
    :cond_e
    :goto_4
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 332
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 333
    :pswitch_6
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 334
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 335
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 336
    :pswitch_7
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->n()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 337
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 338
    :pswitch_8
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 339
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v5

    invoke-static {v10, v5, v6}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 340
    invoke-direct {v8, v3}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v5

    .line 341
    invoke-interface {v0, v5, v11}, Lcom/google/protobuf/al;->a(Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v5

    .line 342
    invoke-static {v2, v5}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 343
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 344
    :cond_f
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    .line 345
    invoke-direct {v8, v3}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v2

    .line 346
    invoke-interface {v0, v2, v11}, Lcom/google/protobuf/al;->a(Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 347
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 348
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    .line 349
    :goto_5
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 350
    :pswitch_9
    invoke-direct {v8, v10, v4, v0}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;ILcom/google/protobuf/al;)V

    .line 351
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 352
    :pswitch_a
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->k()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 353
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 354
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 355
    :pswitch_b
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 356
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 357
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 358
    :pswitch_c
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->i()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 359
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 360
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 361
    :pswitch_d
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 362
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 363
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 364
    :pswitch_e
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 365
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 366
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 367
    :pswitch_f
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 368
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 369
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 370
    :pswitch_10
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->e()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 371
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 372
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 373
    :pswitch_11
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->d()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 374
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 375
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 376
    :pswitch_12
    invoke-direct {v8, v3}, Lcom/google/protobuf/aa;->b(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/al;)V

    goto/16 :goto_0

    .line 377
    :pswitch_13
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    .line 378
    invoke-direct {v8, v3}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide v3, v4

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    .line 379
    invoke-direct/range {v1 .. v7}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;JLcom/google/protobuf/al;Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 380
    :pswitch_14
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 381
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 382
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->q(Ljava/util/List;)V

    goto/16 :goto_0

    .line 383
    :pswitch_15
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 384
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 385
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->p(Ljava/util/List;)V

    goto/16 :goto_0

    .line 386
    :pswitch_16
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 387
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 388
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->o(Ljava/util/List;)V

    goto/16 :goto_0

    .line 389
    :pswitch_17
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 390
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 391
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->n(Ljava/util/List;)V

    goto/16 :goto_0

    .line 392
    :pswitch_18
    iget-object v2, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 393
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-virtual {v2, v10, v4, v5}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 394
    invoke-interface {v0, v2}, Lcom/google/protobuf/al;->m(Ljava/util/List;)V

    .line 395
    invoke-direct {v8, v3}, Lcom/google/protobuf/aa;->c(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v3

    .line 396
    invoke-static {v1, v2, v3, v13, v9}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    .line 397
    :pswitch_19
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 398
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 399
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->l(Ljava/util/List;)V

    goto/16 :goto_0

    .line 400
    :pswitch_1a
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 401
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 402
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->h(Ljava/util/List;)V

    goto/16 :goto_0

    .line 403
    :pswitch_1b
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 404
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 405
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->g(Ljava/util/List;)V

    goto/16 :goto_0

    .line 406
    :pswitch_1c
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 407
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 408
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->f(Ljava/util/List;)V

    goto/16 :goto_0

    .line 409
    :pswitch_1d
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 410
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 411
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->e(Ljava/util/List;)V

    goto/16 :goto_0

    .line 412
    :pswitch_1e
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 413
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 414
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 415
    :pswitch_1f
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 416
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 417
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->d(Ljava/util/List;)V

    goto/16 :goto_0

    .line 418
    :pswitch_20
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 419
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 420
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 421
    :pswitch_21
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 422
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 423
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 424
    :pswitch_22
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 425
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 426
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->q(Ljava/util/List;)V

    goto/16 :goto_0

    .line 427
    :pswitch_23
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 428
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 429
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->p(Ljava/util/List;)V

    goto/16 :goto_0

    .line 430
    :pswitch_24
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 431
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 432
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->o(Ljava/util/List;)V

    goto/16 :goto_0

    .line 433
    :pswitch_25
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 434
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 435
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->n(Ljava/util/List;)V

    goto/16 :goto_0

    .line 436
    :pswitch_26
    iget-object v2, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 437
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-virtual {v2, v10, v4, v5}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 438
    invoke-interface {v0, v2}, Lcom/google/protobuf/al;->m(Ljava/util/List;)V

    .line 439
    invoke-direct {v8, v3}, Lcom/google/protobuf/aa;->c(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v3

    .line 440
    invoke-static {v1, v2, v3, v13, v9}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    .line 441
    :pswitch_27
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 442
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 443
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->l(Ljava/util/List;)V

    goto/16 :goto_0

    .line 444
    :pswitch_28
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 445
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 446
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->k(Ljava/util/List;)V

    goto/16 :goto_0

    .line 447
    :pswitch_29
    invoke-direct {v8, v3}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v4

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    .line 448
    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;ILcom/google/protobuf/al;Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 449
    :pswitch_2a
    invoke-direct {v8, v10, v4, v0}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;ILcom/google/protobuf/al;)V

    goto/16 :goto_0

    .line 450
    :pswitch_2b
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 451
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 452
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->h(Ljava/util/List;)V

    goto/16 :goto_0

    .line 453
    :pswitch_2c
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 454
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 455
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->g(Ljava/util/List;)V

    goto/16 :goto_0

    .line 456
    :pswitch_2d
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 457
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 458
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->f(Ljava/util/List;)V

    goto/16 :goto_0

    .line 459
    :pswitch_2e
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 460
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 461
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->e(Ljava/util/List;)V

    goto/16 :goto_0

    .line 462
    :pswitch_2f
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 463
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 464
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 465
    :pswitch_30
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 466
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 467
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->d(Ljava/util/List;)V

    goto/16 :goto_0

    .line 468
    :pswitch_31
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 469
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 470
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 471
    :pswitch_32
    iget-object v1, v8, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 472
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 473
    invoke-interface {v0, v1}, Lcom/google/protobuf/al;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 474
    :pswitch_33
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 475
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-static {v10, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 476
    invoke-direct {v8, v3}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v2

    .line 477
    invoke-interface {v0, v2, v11}, Lcom/google/protobuf/al;->b(Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 478
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 479
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3, v1}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    .line 480
    :cond_10
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    .line 481
    invoke-direct {v8, v3}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v4

    .line 482
    invoke-interface {v0, v4, v11}, Lcom/google/protobuf/al;->b(Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 483
    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 484
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 485
    :pswitch_34
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->t()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JJ)V

    .line 486
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 487
    :pswitch_35
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->s()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JI)V

    .line 488
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 489
    :pswitch_36
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->r()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JJ)V

    .line 490
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 491
    :pswitch_37
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->q()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JI)V

    .line 492
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 493
    :pswitch_38
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->p()I

    move-result v2

    .line 494
    invoke-direct {v8, v3}, Lcom/google/protobuf/aa;->c(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 495
    invoke-interface {v5, v2}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_6

    .line 496
    :cond_11
    invoke-static {v1, v2, v13, v9}, Lcom/google/protobuf/ap;->a(IILjava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    .line 497
    :cond_12
    :goto_6
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JI)V

    .line 498
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 499
    :pswitch_39
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->o()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JI)V

    .line 500
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 501
    :pswitch_3a
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->n()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 502
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 503
    :pswitch_3b
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 504
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-static {v10, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 505
    invoke-direct {v8, v3}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v2

    .line 506
    invoke-interface {v0, v2, v11}, Lcom/google/protobuf/al;->a(Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 507
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 508
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3, v1}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    .line 509
    :cond_13
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    .line 510
    invoke-direct {v8, v3}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v4

    .line 511
    invoke-interface {v0, v4, v11}, Lcom/google/protobuf/al;->a(Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 512
    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 513
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 514
    :pswitch_3c
    invoke-direct {v8, v10, v4, v0}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;ILcom/google/protobuf/al;)V

    .line 515
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 516
    :pswitch_3d
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->k()Z

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JZ)V

    .line 517
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 518
    :pswitch_3e
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->j()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JI)V

    .line 519
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 520
    :pswitch_3f
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->i()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JJ)V

    .line 521
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 522
    :pswitch_40
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->h()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JI)V

    .line 523
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 524
    :pswitch_41
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->f()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JJ)V

    .line 525
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 526
    :pswitch_42
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->g()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JJ)V

    .line 527
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 528
    :pswitch_43
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->e()F

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JF)V

    .line 529
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 530
    :pswitch_44
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->d()D

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JD)V

    .line 531
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :goto_7
    move-object v13, v1

    .line 532
    :cond_14
    invoke-virtual {v9, v13, v0}, Lcom/google/protobuf/as;->a(Ljava/lang/Object;Lcom/google/protobuf/al;)Z

    move-result v1
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_0

    .line 533
    iget v0, v8, Lcom/google/protobuf/aa;->m:I

    :goto_8
    iget v1, v8, Lcom/google/protobuf/aa;->n:I

    if-ge v0, v1, :cond_15

    .line 534
    iget-object v1, v8, Lcom/google/protobuf/aa;->l:[I

    aget v1, v1, v0

    .line 535
    invoke-direct {v8, v10, v1, v13, v9}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    if-eqz v13, :cond_16

    .line 536
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    return-void

    .line 537
    :catch_0
    :try_start_4
    invoke-virtual {v9, v0}, Lcom/google/protobuf/as;->a(Lcom/google/protobuf/al;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 538
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/al;->c()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_0

    .line 539
    iget v0, v8, Lcom/google/protobuf/aa;->m:I

    :goto_9
    iget v1, v8, Lcom/google/protobuf/aa;->n:I

    if-ge v0, v1, :cond_17

    .line 540
    iget-object v1, v8, Lcom/google/protobuf/aa;->l:[I

    aget v1, v1, v0

    .line 541
    invoke-direct {v8, v10, v1, v13, v9}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    if-eqz v13, :cond_18

    .line 542
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    return-void

    :cond_19
    if-nez v13, :cond_1a

    .line 543
    :try_start_5
    invoke-virtual {v9, v10}, Lcom/google/protobuf/as;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    .line 544
    :cond_1a
    invoke-virtual {v9, v13, v0}, Lcom/google/protobuf/as;->a(Ljava/lang/Object;Lcom/google/protobuf/al;)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_0

    .line 545
    iget v0, v8, Lcom/google/protobuf/aa;->m:I

    :goto_a
    iget v1, v8, Lcom/google/protobuf/aa;->n:I

    if-ge v0, v1, :cond_1b

    .line 546
    iget-object v1, v8, Lcom/google/protobuf/aa;->l:[I

    aget v1, v1, v0

    .line 547
    invoke-direct {v8, v10, v1, v13, v9}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1b
    if-eqz v13, :cond_1c

    .line 548
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    return-void

    :catchall_0
    move-exception v0

    .line 549
    iget v1, v8, Lcom/google/protobuf/aa;->m:I

    :goto_b
    iget v2, v8, Lcom/google/protobuf/aa;->n:I

    if-ge v1, v2, :cond_1d

    .line 550
    iget-object v2, v8, Lcom/google/protobuf/aa;->l:[I

    aget v2, v2, v1

    .line 551
    invoke-direct {v8, v10, v2, v13, v9}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1d
    if-eqz v13, :cond_1e

    .line 552
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 553
    :cond_1e
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 287
    invoke-virtual {p1, p2}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/as;->a(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method private a(Ljava/lang/Object;ILcom/google/protobuf/al;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 828
    invoke-static {p2}, Lcom/google/protobuf/aa;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    invoke-static {p2}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/al;->m()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 830
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/aa;->i:Z

    if-eqz v0, :cond_1

    .line 831
    invoke-static {p2}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/al;->l()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 832
    :cond_1
    invoke-static {p2}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/al;->n()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Object;ILcom/google/protobuf/al;Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/google/protobuf/al;",
            "Lcom/google/protobuf/an<",
            "TE;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    invoke-static {p2}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v0

    .line 834
    iget-object p2, p0, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 835
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 836
    invoke-interface {p3, p1, p4, p5}, Lcom/google/protobuf/al;->a(Ljava/util/List;Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private final a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/al;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/al;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 786
    invoke-direct {p0, p2}, Lcom/google/protobuf/aa;->e(I)I

    move-result p2

    invoke-static {p2}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v0

    .line 787
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 788
    iget-object p2, p0, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    invoke-interface {p2, p3}, Lcom/google/protobuf/u;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 789
    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 790
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    invoke-interface {v2, p2}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 791
    iget-object v2, p0, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    invoke-interface {v2, p3}, Lcom/google/protobuf/u;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 792
    iget-object v3, p0, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    invoke-interface {v3, v2, p2}, Lcom/google/protobuf/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v2

    .line 794
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    .line 795
    invoke-interface {p1, p2}, Lcom/google/protobuf/u;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    .line 796
    invoke-interface {p2, p3}, Lcom/google/protobuf/u;->f(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$a;

    move-result-object p2

    .line 797
    invoke-interface {p5, p1, p2, p4}, Lcom/google/protobuf/al;->a(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$a;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private a(Ljava/lang/Object;JLcom/google/protobuf/al;Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Lcom/google/protobuf/al;",
            "Lcom/google/protobuf/an<",
            "TE;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 837
    iget-object v0, p0, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 838
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 839
    invoke-interface {p4, p1, p5, p6}, Lcom/google/protobuf/al;->b(Ljava/util/List;Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private a(Ljava/lang/Object;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 842
    iget-boolean v0, p0, Lcom/google/protobuf/aa;->j:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 843
    invoke-direct {p0, p2}, Lcom/google/protobuf/aa;->e(I)I

    move-result p2

    .line 844
    invoke-static {p2}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v3

    .line 845
    invoke-static {p2}, Lcom/google/protobuf/aa;->g(I)I

    move-result p2

    const-wide/16 v5, 0x0

    packed-switch p2, :pswitch_data_0

    .line 846
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 847
    :pswitch_0
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 848
    :pswitch_1
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 849
    :pswitch_2
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 850
    :pswitch_3
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 851
    :pswitch_4
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 852
    :pswitch_5
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    .line 853
    :pswitch_6
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    .line 854
    :pswitch_7
    sget-object p2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 855
    :pswitch_8
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    .line 856
    :pswitch_9
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 857
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 858
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 859
    :cond_8
    instance-of p2, p1, Lcom/google/protobuf/ByteString;

    if-eqz p2, :cond_9

    .line 860
    sget-object p2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {p2, p1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 861
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 862
    :pswitch_a
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->c(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 863
    :pswitch_b
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    .line 864
    :pswitch_c
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1

    .line 865
    :pswitch_d
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1

    .line 866
    :pswitch_e
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1

    .line 867
    :pswitch_f
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1

    .line 868
    :pswitch_10
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->d(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 869
    :pswitch_11
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->e(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmpl-double v0, p1, v3

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1

    .line 870
    :cond_11
    invoke-direct {p0, p2}, Lcom/google/protobuf/aa;->f(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v2, v0

    const v3, 0xfffff

    and-int/2addr p2, v3

    int-to-long v3, p2

    .line 871
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    .line 819
    invoke-static {p2}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 820
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 821
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v1, 0x0

    .line 822
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 823
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 824
    invoke-interface {p2, v2}, Lcom/google/protobuf/an;->e(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return p3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private a(Ljava/lang/Object;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    .line 840
    iget-boolean v0, p0, Lcom/google/protobuf/aa;->j:Z

    if-eqz v0, :cond_0

    .line 841
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p3, p4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static a(Ljava/lang/Object;ILcom/google/protobuf/an;)Z
    .locals 2

    .line 817
    invoke-static {p1}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 818
    invoke-interface {p2, p0}, Lcom/google/protobuf/an;->e(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 154
    invoke-direct {p0, p3}, Lcom/google/protobuf/aa;->e(I)I

    move-result v0

    .line 155
    invoke-static {v0}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    .line 156
    invoke-static {v0}, Lcom/google/protobuf/aa;->g(I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    return v4

    .line 157
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->f(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 158
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 159
    invoke-static {p1, p2}, Lcom/google/protobuf/ap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 160
    :pswitch_1
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 161
    invoke-static {p1, p2}, Lcom/google/protobuf/ap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 162
    :pswitch_2
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 163
    invoke-static {p1, p2}, Lcom/google/protobuf/ap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 164
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 165
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 166
    invoke-static {p1, p2}, Lcom/google/protobuf/ap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 167
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 168
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    .line 169
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 170
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    .line 171
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 172
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3

    .line 173
    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 174
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_5

    const/4 v3, 0x1

    :cond_5
    return v3

    .line 175
    :pswitch_8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 176
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_6

    const/4 v3, 0x1

    :cond_6
    return v3

    .line 177
    :pswitch_9
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 178
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_7

    const/4 v3, 0x1

    :cond_7
    return v3

    .line 179
    :pswitch_a
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 180
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 181
    invoke-static {p1, p2}, Lcom/google/protobuf/ap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v3, 0x1

    :cond_8
    return v3

    .line 182
    :pswitch_b
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 183
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 184
    invoke-static {p1, p2}, Lcom/google/protobuf/ap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v3, 0x1

    :cond_9
    return v3

    .line 185
    :pswitch_c
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 186
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 187
    invoke-static {p1, p2}, Lcom/google/protobuf/ap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 v3, 0x1

    :cond_a
    return v3

    .line 188
    :pswitch_d
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 189
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->c(Ljava/lang/Object;J)Z

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->c(Ljava/lang/Object;J)Z

    move-result p2

    if-ne p1, p2, :cond_b

    const/4 v3, 0x1

    :cond_b
    return v3

    .line 190
    :pswitch_e
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 191
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 v3, 0x1

    :cond_c
    return v3

    .line 192
    :pswitch_f
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 193
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_d

    const/4 v3, 0x1

    :cond_d
    return v3

    .line 194
    :pswitch_10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 195
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_e

    const/4 v3, 0x1

    :cond_e
    return v3

    .line 196
    :pswitch_11
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 197
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_f

    const/4 v3, 0x1

    :cond_f
    return v3

    .line 198
    :pswitch_12
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 199
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_10

    const/4 v3, 0x1

    :cond_10
    return v3

    .line 200
    :pswitch_13
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 201
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->d(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 202
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->d(Ljava/lang/Object;J)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    if-ne p1, p2, :cond_11

    const/4 v3, 0x1

    :cond_11
    return v3

    .line 203
    :pswitch_14
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 204
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->e(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 205
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->e(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_12

    const/4 v3, 0x1

    :cond_12
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 288
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/au;->e(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method private b(II)I
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/google/protobuf/aa;->c:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 294
    invoke-direct {p0, v2}, Lcom/google/protobuf/aa;->d(I)I

    move-result v3

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move p2, v1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private b(Ljava/lang/Object;[BIILcom/google/protobuf/c$a;)I
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 221
    sget-object v9, Lcom/google/protobuf/aa;->b:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v13, :cond_10

    add-int/lit8 v3, v0, 0x1

    .line 222
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 223
    invoke-static {v0, v12, v3, v11}, Lcom/google/protobuf/c;->a(I[BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 224
    iget v3, v11, Lcom/google/protobuf/c$a;->a:I

    move v8, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v8, v3

    :goto_1
    ushr-int/lit8 v7, v17, 0x3

    and-int/lit8 v6, v17, 0x7

    if-le v7, v1, :cond_1

    .line 225
    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v7, v2}, Lcom/google/protobuf/aa;->a(II)I

    move-result v0

    goto :goto_2

    .line 226
    :cond_1
    invoke-direct {v15, v7}, Lcom/google/protobuf/aa;->k(I)I

    move-result v0

    :goto_2
    move v4, v0

    if-ne v4, v10, :cond_2

    move/from16 v24, v7

    move v2, v8

    move-object/from16 v18, v9

    const/16 v19, 0x0

    const/16 v26, -0x1

    goto/16 :goto_e

    .line 227
    :cond_2
    iget-object v0, v15, Lcom/google/protobuf/aa;->c:[I

    add-int/lit8 v1, v4, 0x1

    aget v5, v0, v1

    .line 228
    invoke-static {v5}, Lcom/google/protobuf/aa;->g(I)I

    move-result v3

    .line 229
    invoke-static {v5}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    const/16 v0, 0x11

    const/4 v10, 0x2

    if-gt v3, v0, :cond_7

    const/4 v0, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    if-nez v6, :cond_a

    .line 230
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result v6

    move-wide/from16 v19, v1

    .line 231
    iget-wide v0, v11, Lcom/google/protobuf/c$a;->b:J

    .line 232
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v21

    move-object v0, v9

    move-wide/from16 v2, v19

    move-object/from16 v1, p1

    move v10, v4

    move-wide/from16 v4, v21

    .line 233
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_6

    :pswitch_1
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 234
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 235
    iget v1, v11, Lcom/google/protobuf/c$a;->a:I

    .line 236
    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    .line 237
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_2
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 238
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 239
    iget v1, v11, Lcom/google/protobuf/c$a;->a:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_3
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 240
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/c;->e([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 241
    iget-object v1, v11, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_4
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 242
    invoke-direct {v15, v4}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v0

    .line 243
    invoke-static {v0, v12, v8, v13, v11}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/an;[BIILcom/google/protobuf/c$a;)I

    move-result v0

    .line 244
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 245
    iget-object v1, v11, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 246
    :cond_3
    iget-object v5, v11, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    .line 247
    invoke-static {v1, v5}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 248
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_4

    .line 249
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/c;->c([BILcom/google/protobuf/c$a;)I

    move-result v0

    goto :goto_3

    .line 250
    :cond_4
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/c;->d([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 251
    :goto_3
    iget-object v1, v11, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_6
    move-wide v2, v1

    if-nez v6, :cond_a

    .line 252
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result v1

    .line 253
    iget-wide v5, v11, Lcom/google/protobuf/c$a;->b:J

    const-wide/16 v19, 0x0

    cmp-long v8, v5, v19

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-static {v14, v2, v3, v0}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JZ)V

    move v0, v1

    goto :goto_5

    :pswitch_7
    move-wide v2, v1

    const/4 v0, 0x5

    if-ne v6, v0, :cond_a

    .line 254
    invoke-static {v12, v8}, Lcom/google/protobuf/c;->a([BI)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v8, 0x4

    :goto_5
    move v2, v4

    move v1, v7

    goto/16 :goto_10

    :pswitch_8
    move-wide v2, v1

    if-ne v6, v0, :cond_a

    .line 255
    invoke-static {v12, v8}, Lcom/google/protobuf/c;->b([BI)J

    move-result-wide v5

    move-object v0, v9

    move-object/from16 v1, p1

    move v10, v4

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_7

    :pswitch_9
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 256
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 257
    iget v1, v11, Lcom/google/protobuf/c$a;->a:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_a
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 258
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result v6

    .line 259
    iget-wide v4, v11, Lcom/google/protobuf/c$a;->b:J

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_6
    move v0, v6

    goto :goto_8

    :pswitch_b
    move-wide v2, v1

    move v10, v4

    const/4 v0, 0x5

    if-ne v6, v0, :cond_6

    .line 260
    invoke-static {v12, v8}, Lcom/google/protobuf/c;->d([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v8, 0x4

    goto :goto_8

    :pswitch_c
    move-wide v2, v1

    move v10, v4

    if-ne v6, v0, :cond_6

    .line 261
    invoke-static {v12, v8}, Lcom/google/protobuf/c;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JD)V

    :goto_7
    add-int/lit8 v0, v8, 0x8

    :goto_8
    move v1, v7

    move v2, v10

    goto/16 :goto_10

    :cond_6
    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    goto :goto_b

    :cond_7
    const/16 v0, 0x1b

    if-ne v3, v0, :cond_b

    if-ne v6, v10, :cond_a

    .line 262
    invoke-virtual {v9, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Internal$ProtobufList;

    .line 263
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_9

    .line 264
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0xa

    goto :goto_9

    :cond_8
    mul-int/lit8 v3, v3, 0x2

    .line 265
    :goto_9
    invoke-interface {v0, v3}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 266
    invoke-virtual {v9, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_9
    move-object v5, v0

    .line 267
    invoke-direct {v15, v4}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v19, v4

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 268
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/an;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v0

    move v1, v7

    move/from16 v2, v19

    goto/16 :goto_10

    :cond_a
    :goto_a
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    :goto_b
    const/16 v26, -0x1

    goto/16 :goto_d

    :cond_b
    move/from16 v19, v4

    const/16 v0, 0x31

    if-gt v3, v0, :cond_c

    int-to-long v4, v5

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v10, v3

    move v3, v8

    move-wide/from16 v22, v4

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 p3, v6

    move v6, v7

    move/from16 v24, v7

    move/from16 v7, p3

    move v15, v8

    move/from16 v8, v19

    move-object/from16 v18, v9

    move/from16 v25, v10

    const/16 v26, -0x1

    move-wide/from16 v9, v22

    move/from16 v11, v25

    move-wide/from16 v12, v20

    move-object/from16 v14, p5

    .line 269
    invoke-direct/range {v0 .. v14}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/c$a;)I

    move-result v0

    if-eq v0, v15, :cond_f

    :goto_c
    goto/16 :goto_f

    :cond_c
    move-wide/from16 v20, v1

    move/from16 v25, v3

    move/from16 p3, v6

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    const/16 v0, 0x32

    move/from16 v9, v25

    if-ne v9, v0, :cond_e

    move/from16 v7, p3

    if-ne v7, v10, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v20

    move-object/from16 v8, p5

    .line 270
    invoke-direct/range {v0 .. v8}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;[BIIIJLcom/google/protobuf/c$a;)I

    move-result v0

    if-eq v0, v15, :cond_f

    goto :goto_c

    :cond_d
    :goto_d
    move v2, v15

    goto :goto_e

    :cond_e
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v17

    move/from16 v6, v24

    move-wide/from16 v10, v20

    move/from16 v12, v19

    move-object/from16 v13, p5

    .line 271
    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/c$a;)I

    move-result v0

    if-eq v0, v15, :cond_f

    goto :goto_c

    :cond_f
    move v2, v0

    .line 272
    :goto_e
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 273
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/c;->a(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/c$a;)I

    move-result v0

    :goto_f
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v9, v18

    move/from16 v2, v19

    move/from16 v1, v24

    :goto_10
    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_10
    move v1, v13

    if-ne v0, v1, :cond_11

    return v0

    .line 274
    :cond_11
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(I)Ljava/lang/Object;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/google/protobuf/aa;->d:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    return-object p1
.end method

.method private b(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 289
    iget-boolean v0, p0, Lcom/google/protobuf/aa;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/protobuf/aa;->f(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    .line 291
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    .line 292
    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private b(Ljava/lang/Object;ILcom/google/protobuf/al;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-static {p2}, Lcom/google/protobuf/aa;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    .line 285
    invoke-static {p2}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 286
    invoke-interface {p3, p1}, Lcom/google/protobuf/al;->j(Ljava/util/List;)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    invoke-static {p2}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/protobuf/al;->i(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 17
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 73
    iget-boolean v3, v0, Lcom/google/protobuf/aa;->h:Z

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, v0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/k;->a(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Lcom/google/protobuf/FieldSet;->c()Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    invoke-virtual {v3}, Lcom/google/protobuf/FieldSet;->g()Ljava/util/Iterator;

    move-result-object v3

    .line 77
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 78
    :goto_0
    iget-object v6, v0, Lcom/google/protobuf/aa;->c:[I

    array-length v6, v6

    .line 79
    sget-object v7, Lcom/google/protobuf/aa;->b:Lsun/misc/Unsafe;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v6, :cond_7

    .line 80
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->e(I)I

    move-result v12

    .line 81
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v13

    .line 82
    invoke-static {v12}, Lcom/google/protobuf/aa;->g(I)I

    move-result v14

    .line 83
    iget-boolean v15, v0, Lcom/google/protobuf/aa;->j:Z

    if-nez v15, :cond_2

    const/16 v15, 0x11

    if-gt v14, v15, :cond_2

    .line 84
    iget-object v15, v0, Lcom/google/protobuf/aa;->c:[I

    add-int/lit8 v16, v10, 0x2

    aget v15, v15, v16

    const v16, 0xfffff

    and-int v8, v15, v16

    move-object/from16 v16, v5

    if-eq v8, v9, :cond_1

    int-to-long v4, v8

    .line 85
    invoke-virtual {v7, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v9, v8

    :cond_1
    ushr-int/lit8 v4, v15, 0x14

    const/4 v5, 0x1

    shl-int v4, v5, v4

    move-object/from16 v5, v16

    goto :goto_2

    :cond_2
    move-object/from16 v16, v5

    move-object/from16 v5, v16

    const/4 v4, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 86
    iget-object v8, v0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {v8, v5}, Lcom/google/protobuf/k;->a(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v13, :cond_4

    .line 87
    iget-object v8, v0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {v8, v2, v5}, Lcom/google/protobuf/k;->a(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 88
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    move-object v15, v5

    move v8, v6

    .line 89
    invoke-static {v12}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v5

    packed-switch v14, :pswitch_data_0

    :cond_5
    :goto_3
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 90
    :pswitch_0
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 91
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v5

    .line 92
    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->b(ILjava/lang/Object;Lcom/google/protobuf/an;)V

    goto :goto_3

    .line 93
    :pswitch_1
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 94
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->e(IJ)V

    goto :goto_3

    .line 95
    :pswitch_2
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 96
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->f(II)V

    goto :goto_3

    .line 97
    :pswitch_3
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 98
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->b(IJ)V

    goto :goto_3

    .line 99
    :pswitch_4
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 100
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->a(II)V

    goto :goto_3

    .line 101
    :pswitch_5
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 102
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->b(II)V

    goto :goto_3

    .line 103
    :pswitch_6
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 104
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->e(II)V

    goto :goto_3

    .line 105
    :pswitch_7
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 106
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->a(ILcom/google/protobuf/ByteString;)V

    goto :goto_3

    .line 107
    :pswitch_8
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 108
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 109
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v5

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->a(ILjava/lang/Object;Lcom/google/protobuf/an;)V

    goto/16 :goto_3

    .line 110
    :pswitch_9
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 111
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v13, v4, v2}, Lcom/google/protobuf/aa;->a(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 112
    :pswitch_a
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 113
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/aa;->k(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->a(IZ)V

    goto/16 :goto_3

    .line 114
    :pswitch_b
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 115
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->d(II)V

    goto/16 :goto_3

    .line 116
    :pswitch_c
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 117
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->d(IJ)V

    goto/16 :goto_3

    .line 118
    :pswitch_d
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 119
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->c(II)V

    goto/16 :goto_3

    .line 120
    :pswitch_e
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 121
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->c(IJ)V

    goto/16 :goto_3

    .line 122
    :pswitch_f
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 123
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->a(IJ)V

    goto/16 :goto_3

    .line 124
    :pswitch_10
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 125
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/aa;->h(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->a(IF)V

    goto/16 :goto_3

    .line 126
    :pswitch_11
    invoke-direct {v0, v1, v13, v10}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 127
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/aa;->g(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->a(ID)V

    goto/16 :goto_3

    .line 128
    :pswitch_12
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v13, v4, v10}, Lcom/google/protobuf/aa;->a(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 129
    :pswitch_13
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    .line 130
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 131
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v6

    .line 132
    invoke-static {v4, v5, v2, v6}, Lcom/google/protobuf/ap;->b(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/an;)V

    goto/16 :goto_3

    .line 133
    :pswitch_14
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v12, 0x1

    .line 134
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->e(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v12, 0x1

    .line 135
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 136
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->j(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v12, 0x1

    .line 137
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 138
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->g(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v12, 0x1

    .line 139
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 140
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->l(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v12, 0x1

    .line 141
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 142
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->m(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v12, 0x1

    .line 143
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 144
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->i(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v12, 0x1

    .line 145
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 146
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->n(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v12, 0x1

    .line 147
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 148
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->k(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v12, 0x1

    .line 149
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 150
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->f(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v12, 0x1

    .line 151
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 152
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->h(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v12, 0x1

    .line 153
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 154
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->d(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v12, 0x1

    .line 155
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 156
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->c(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v12, 0x1

    .line 157
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 158
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->b(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v12, 0x1

    .line 159
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 160
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 161
    :pswitch_22
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v12, 0x0

    .line 162
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->e(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/4 v12, 0x0

    .line 163
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 164
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->j(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/4 v12, 0x0

    .line 165
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 166
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->g(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/4 v12, 0x0

    .line 167
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 168
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->l(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/4 v12, 0x0

    .line 169
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 170
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->m(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/4 v12, 0x0

    .line 171
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 172
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->i(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    .line 173
    :pswitch_28
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 174
    invoke-static {v4, v5, v2}, Lcom/google/protobuf/ap;->b(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 175
    :pswitch_29
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    .line 176
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 177
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v6

    .line 178
    invoke-static {v4, v5, v2, v6}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/an;)V

    goto/16 :goto_3

    .line 179
    :pswitch_2a
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 180
    invoke-static {v4, v5, v2}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 181
    :pswitch_2b
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v12, 0x0

    .line 182
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->n(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v12, 0x0

    .line 183
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 184
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->k(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v12, 0x0

    .line 185
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 186
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->f(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v12, 0x0

    .line 187
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 188
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->h(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v12, 0x0

    .line 189
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 190
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->d(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v12, 0x0

    .line 191
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 192
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->c(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v12, 0x0

    .line 193
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 194
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->b(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v12, 0x0

    .line 195
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 196
    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 197
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v5

    .line 198
    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->b(ILjava/lang/Object;Lcom/google/protobuf/an;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 199
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->e(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 200
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->f(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 201
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->b(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 202
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->a(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 203
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->b(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 204
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->e(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 205
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->a(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 206
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 207
    invoke-direct {v0, v10}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v5

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->a(ILjava/lang/Object;Lcom/google/protobuf/an;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 208
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v13, v4, v2}, Lcom/google/protobuf/aa;->a(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_4

    :pswitch_3d
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 209
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/aa;->f(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->a(IZ)V

    goto :goto_4

    :pswitch_3e
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 210
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->d(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 211
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->d(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 212
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->c(II)V

    goto :goto_4

    :pswitch_41
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 213
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->c(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 214
    invoke-virtual {v7, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->a(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 215
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->a(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 216
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->a(ID)V

    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x3

    move v6, v8

    move-object v5, v15

    goto/16 :goto_1

    :cond_7
    move-object/from16 v16, v5

    :goto_5
    if-eqz v5, :cond_9

    .line 217
    iget-object v4, v0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {v4, v2, v5}, Lcom/google/protobuf/k;->a(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 218
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 219
    :cond_9
    iget-object v3, v0, Lcom/google/protobuf/aa;->q:Lcom/google/protobuf/as;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/protobuf/aa;->a(Lcom/google/protobuf/as;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p3}, Lcom/google/protobuf/aa;->e(I)I

    move-result v0

    .line 9
    invoke-static {v0}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    .line 10
    invoke-direct {p0, p3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v3

    .line 11
    invoke-static {v0}, Lcom/google/protobuf/aa;->g(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 12
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 13
    :pswitch_1
    invoke-direct {p0, p2, v3, p3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 15
    invoke-direct {p0, p1, v3, p3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 16
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 17
    :pswitch_3
    invoke-direct {p0, p2, v3, p3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 19
    invoke-direct {p0, p1, v3, p3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 20
    :pswitch_4
    iget-object p3, p0, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    invoke-static {p3, p1, p2, v1, v2}, Lcom/google/protobuf/ap;->a(Lcom/google/protobuf/u;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_0

    .line 21
    :pswitch_5
    iget-object p3, p0, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    invoke-virtual {p3, p1, p2, v1, v2}, Lcom/google/protobuf/r;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_0

    .line 22
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 23
    :pswitch_7
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JJ)V

    .line 25
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 26
    :pswitch_8
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JI)V

    .line 28
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 29
    :pswitch_9
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JJ)V

    .line 31
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 32
    :pswitch_a
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JI)V

    .line 34
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 35
    :pswitch_b
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JI)V

    .line 37
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 38
    :pswitch_c
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JI)V

    .line 40
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 41
    :pswitch_d
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 43
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 44
    :pswitch_e
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 45
    :pswitch_f
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 47
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 48
    :pswitch_10
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->c(Ljava/lang/Object;J)Z

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JZ)V

    .line 50
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 51
    :pswitch_11
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JI)V

    .line 53
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto :goto_0

    .line 54
    :pswitch_12
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JJ)V

    .line 56
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto :goto_0

    .line 57
    :pswitch_13
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JI)V

    .line 59
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto :goto_0

    .line 60
    :pswitch_14
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JJ)V

    .line 62
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto :goto_0

    .line 63
    :pswitch_15
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JJ)V

    .line 65
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto :goto_0

    .line 66
    :pswitch_16
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->d(Ljava/lang/Object;J)F

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JF)V

    .line 68
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto :goto_0

    .line 69
    :pswitch_17
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/au;->e(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JD)V

    .line 71
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Ljava/lang/Object;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    invoke-static {p2}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/u;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 276
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 277
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/protobuf/aa;->b(I)Ljava/lang/Object;

    move-result-object p2

    .line 278
    iget-object p3, p0, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    invoke-interface {p3, p2}, Lcom/google/protobuf/u;->f(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$a;

    move-result-object p2

    .line 279
    iget-object p2, p2, Lcom/google/protobuf/MapEntryLite$a;->c:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {p2}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object p2

    sget-object p3, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-eq p2, p3, :cond_1

    return v0

    .line 280
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    if-nez p2, :cond_3

    .line 281
    invoke-static {}, Lcom/google/protobuf/ai;->a()Lcom/google/protobuf/ai;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/protobuf/ai;->a(Ljava/lang/Class;)Lcom/google/protobuf/an;

    move-result-object p2

    .line 282
    :cond_3
    invoke-interface {p2, p3}, Lcom/google/protobuf/an;->e(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_4
    return v0
.end method

.method private static c(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 210
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/au;->d(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method private c(I)Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/google/protobuf/aa;->d:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/protobuf/Internal$EnumVerifier;

    return-object p1
.end method

.method public static c(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 2

    .line 205
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 206
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 207
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    .line 208
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    :cond_0
    return-object v0
.end method

.method private c(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 12
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

    .line 11
    iget-boolean v0, p0, Lcom/google/protobuf/aa;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/k;->a(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->g()Ljava/util/Iterator;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/aa;->c:[I

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    .line 17
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->e(I)I

    move-result v6

    .line 18
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    :goto_2
    if-eqz v2, :cond_2

    .line 19
    iget-object v8, p0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {v8, v2}, Lcom/google/protobuf/k;->a(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v7, :cond_2

    .line 20
    iget-object v8, p0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {v8, p2, v2}, Lcom/google/protobuf/k;->a(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v2, v1

    goto :goto_2

    .line 22
    :cond_2
    invoke-static {v6}, Lcom/google/protobuf/aa;->g(I)I

    move-result v8

    const/4 v9, 0x1

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    .line 23
    :pswitch_0
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 24
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 25
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v8

    .line 26
    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->b(ILjava/lang/Object;Lcom/google/protobuf/an;)V

    goto/16 :goto_3

    .line 27
    :pswitch_1
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 28
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->e(IJ)V

    goto/16 :goto_3

    .line 29
    :pswitch_2
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 30
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->f(II)V

    goto/16 :goto_3

    .line 31
    :pswitch_3
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 32
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->b(IJ)V

    goto/16 :goto_3

    .line 33
    :pswitch_4
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 34
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->a(II)V

    goto/16 :goto_3

    .line 35
    :pswitch_5
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 36
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->b(II)V

    goto/16 :goto_3

    .line 37
    :pswitch_6
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 38
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->e(II)V

    goto/16 :goto_3

    .line 39
    :pswitch_7
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 40
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    .line 41
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->a(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 42
    :pswitch_8
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 43
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 44
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->a(ILjava/lang/Object;Lcom/google/protobuf/an;)V

    goto/16 :goto_3

    .line 45
    :pswitch_9
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 46
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v7, v6, p2}, Lcom/google/protobuf/aa;->a(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 47
    :pswitch_a
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 48
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->k(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->a(IZ)V

    goto/16 :goto_3

    .line 49
    :pswitch_b
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 50
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->d(II)V

    goto/16 :goto_3

    .line 51
    :pswitch_c
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 52
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->d(IJ)V

    goto/16 :goto_3

    .line 53
    :pswitch_d
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 54
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->c(II)V

    goto/16 :goto_3

    .line 55
    :pswitch_e
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 56
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->c(IJ)V

    goto/16 :goto_3

    .line 57
    :pswitch_f
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 58
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->a(IJ)V

    goto/16 :goto_3

    .line 59
    :pswitch_10
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 60
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->h(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->a(IF)V

    goto/16 :goto_3

    .line 61
    :pswitch_11
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 62
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->g(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->a(ID)V

    goto/16 :goto_3

    .line 63
    :pswitch_12
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, p2, v7, v6, v5}, Lcom/google/protobuf/aa;->a(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 64
    :pswitch_13
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 65
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 66
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v8

    .line 67
    invoke-static {v7, v6, p2, v8}, Lcom/google/protobuf/ap;->b(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/an;)V

    goto/16 :goto_3

    .line 68
    :pswitch_14
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 69
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 70
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/ap;->e(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 71
    :pswitch_15
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 72
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 73
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/ap;->j(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 74
    :pswitch_16
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 75
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 76
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/ap;->g(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 77
    :pswitch_17
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 78
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 79
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/ap;->l(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 80
    :pswitch_18
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 81
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 82
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/ap;->m(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 83
    :pswitch_19
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 84
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 85
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/ap;->i(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 86
    :pswitch_1a
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 87
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 88
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/ap;->n(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 89
    :pswitch_1b
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 90
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 91
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/ap;->k(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 92
    :pswitch_1c
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 93
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 94
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/ap;->f(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 95
    :pswitch_1d
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 96
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 97
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/ap;->h(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 98
    :pswitch_1e
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 99
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 100
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/ap;->d(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 101
    :pswitch_1f
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 102
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 103
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/ap;->c(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 104
    :pswitch_20
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 105
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 106
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/ap;->b(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 107
    :pswitch_21
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 108
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 109
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 110
    :pswitch_22
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 111
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 112
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/ap;->e(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 113
    :pswitch_23
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 114
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 115
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/ap;->j(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 116
    :pswitch_24
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 117
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 118
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/ap;->g(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 119
    :pswitch_25
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 120
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 121
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/ap;->l(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 122
    :pswitch_26
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 123
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 124
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/ap;->m(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 125
    :pswitch_27
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 126
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 127
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/ap;->i(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 128
    :pswitch_28
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 129
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 130
    invoke-static {v7, v6, p2}, Lcom/google/protobuf/ap;->b(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 131
    :pswitch_29
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 132
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 133
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v8

    .line 134
    invoke-static {v7, v6, p2, v8}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/an;)V

    goto/16 :goto_3

    .line 135
    :pswitch_2a
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 136
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 137
    invoke-static {v7, v6, p2}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 138
    :pswitch_2b
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 139
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 140
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/ap;->n(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 141
    :pswitch_2c
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 142
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 143
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/ap;->k(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 144
    :pswitch_2d
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 145
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 146
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/ap;->f(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 147
    :pswitch_2e
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 148
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 149
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/ap;->h(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 150
    :pswitch_2f
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 151
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 152
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/ap;->d(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 153
    :pswitch_30
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 154
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 155
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/ap;->c(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 156
    :pswitch_31
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 157
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 158
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/ap;->b(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 159
    :pswitch_32
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v7

    .line 160
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 161
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 162
    :pswitch_33
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 163
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 164
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v8

    .line 165
    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->b(ILjava/lang/Object;Lcom/google/protobuf/an;)V

    goto/16 :goto_3

    .line 166
    :pswitch_34
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 167
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->e(IJ)V

    goto/16 :goto_3

    .line 168
    :pswitch_35
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 169
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->f(II)V

    goto/16 :goto_3

    .line 170
    :pswitch_36
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 171
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->b(IJ)V

    goto/16 :goto_3

    .line 172
    :pswitch_37
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 173
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->a(II)V

    goto/16 :goto_3

    .line 174
    :pswitch_38
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 175
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->b(II)V

    goto/16 :goto_3

    .line 176
    :pswitch_39
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 177
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->e(II)V

    goto/16 :goto_3

    .line 178
    :pswitch_3a
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 179
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    .line 180
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->a(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 181
    :pswitch_3b
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 182
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 183
    invoke-direct {p0, v5}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->a(ILjava/lang/Object;Lcom/google/protobuf/an;)V

    goto/16 :goto_3

    .line 184
    :pswitch_3c
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 185
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v7, v6, p2}, Lcom/google/protobuf/aa;->a(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 186
    :pswitch_3d
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 187
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->f(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->a(IZ)V

    goto/16 :goto_3

    .line 188
    :pswitch_3e
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 189
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->d(II)V

    goto :goto_3

    .line 190
    :pswitch_3f
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 191
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->d(IJ)V

    goto :goto_3

    .line 192
    :pswitch_40
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 193
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->c(II)V

    goto :goto_3

    .line 194
    :pswitch_41
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 195
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->c(IJ)V

    goto :goto_3

    .line 196
    :pswitch_42
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 197
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->a(IJ)V

    goto :goto_3

    .line 198
    :pswitch_43
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 199
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->a(IF)V

    goto :goto_3

    .line 200
    :pswitch_44
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 201
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->a(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v2, :cond_6

    .line 202
    iget-object v3, p0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {v3, p2, v2}, Lcom/google/protobuf/k;->a(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_4

    :cond_5
    move-object v2, v1

    goto :goto_4

    .line 204
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/aa;->q:Lcom/google/protobuf/as;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/aa;->a(Lcom/google/protobuf/as;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/protobuf/aa;->e(I)I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v0

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 6
    invoke-static {v2, p2}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 10
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 211
    invoke-direct {p0, p3}, Lcom/google/protobuf/aa;->f(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 212
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(I)I
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/google/protobuf/aa;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method private static d(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 216
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method private d(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 217
    invoke-direct {p0, p3}, Lcom/google/protobuf/aa;->f(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 218
    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private d(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 10
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

    .line 12
    iget-object v0, p0, Lcom/google/protobuf/aa;->q:Lcom/google/protobuf/as;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/aa;->a(Lcom/google/protobuf/as;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 13
    iget-boolean v0, p0, Lcom/google/protobuf/aa;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/k;->a(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->h()Ljava/util/Iterator;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/aa;->c:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x3

    :goto_1
    if-ltz v3, :cond_4

    .line 19
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->e(I)I

    move-result v4

    .line 20
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    :goto_2
    if-eqz v2, :cond_2

    .line 21
    iget-object v6, p0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {v6, v2}, Lcom/google/protobuf/k;->a(Ljava/util/Map$Entry;)I

    move-result v6

    if-le v6, v5, :cond_2

    .line 22
    iget-object v6, p0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {v6, p2, v2}, Lcom/google/protobuf/k;->a(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v2, v1

    goto :goto_2

    .line 24
    :cond_2
    invoke-static {v4}, Lcom/google/protobuf/aa;->g(I)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    .line 25
    :pswitch_0
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 26
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 27
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v6

    .line 28
    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/Writer;->b(ILjava/lang/Object;Lcom/google/protobuf/an;)V

    goto/16 :goto_3

    .line 29
    :pswitch_1
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 30
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->e(IJ)V

    goto/16 :goto_3

    .line 31
    :pswitch_2
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 32
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->f(II)V

    goto/16 :goto_3

    .line 33
    :pswitch_3
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 34
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->b(IJ)V

    goto/16 :goto_3

    .line 35
    :pswitch_4
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 36
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->a(II)V

    goto/16 :goto_3

    .line 37
    :pswitch_5
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 38
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->b(II)V

    goto/16 :goto_3

    .line 39
    :pswitch_6
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 40
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->e(II)V

    goto/16 :goto_3

    .line 41
    :pswitch_7
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 42
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 43
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->a(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 44
    :pswitch_8
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 45
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 46
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/Writer;->a(ILjava/lang/Object;Lcom/google/protobuf/an;)V

    goto/16 :goto_3

    .line 47
    :pswitch_9
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 48
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v5, v4, p2}, Lcom/google/protobuf/aa;->a(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 49
    :pswitch_a
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 50
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->k(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->a(IZ)V

    goto/16 :goto_3

    .line 51
    :pswitch_b
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 52
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->d(II)V

    goto/16 :goto_3

    .line 53
    :pswitch_c
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 54
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->d(IJ)V

    goto/16 :goto_3

    .line 55
    :pswitch_d
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 56
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->c(II)V

    goto/16 :goto_3

    .line 57
    :pswitch_e
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 58
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->c(IJ)V

    goto/16 :goto_3

    .line 59
    :pswitch_f
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 60
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->a(IJ)V

    goto/16 :goto_3

    .line 61
    :pswitch_10
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 62
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->h(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->a(IF)V

    goto/16 :goto_3

    .line 63
    :pswitch_11
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 64
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->g(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->a(ID)V

    goto/16 :goto_3

    .line 65
    :pswitch_12
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p2, v5, v4, v3}, Lcom/google/protobuf/aa;->a(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 66
    :pswitch_13
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 67
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 68
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v6

    .line 69
    invoke-static {v5, v4, p2, v6}, Lcom/google/protobuf/ap;->b(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/an;)V

    goto/16 :goto_3

    .line 70
    :pswitch_14
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 71
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 72
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/ap;->e(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 73
    :pswitch_15
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 74
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 75
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/ap;->j(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 76
    :pswitch_16
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 77
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 78
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/ap;->g(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 79
    :pswitch_17
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 80
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 81
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/ap;->l(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 82
    :pswitch_18
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 83
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 84
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/ap;->m(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 85
    :pswitch_19
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 86
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 87
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/ap;->i(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 88
    :pswitch_1a
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 89
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 90
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/ap;->n(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 91
    :pswitch_1b
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 92
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 93
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/ap;->k(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 94
    :pswitch_1c
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 95
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 96
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/ap;->f(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 97
    :pswitch_1d
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 98
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 99
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/ap;->h(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 100
    :pswitch_1e
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 101
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 102
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/ap;->d(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 103
    :pswitch_1f
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 104
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 105
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/ap;->c(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 106
    :pswitch_20
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 107
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 108
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/ap;->b(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 109
    :pswitch_21
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 110
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 111
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 112
    :pswitch_22
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 113
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 114
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/ap;->e(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 115
    :pswitch_23
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 116
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 117
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/ap;->j(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 118
    :pswitch_24
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 119
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 120
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/ap;->g(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 121
    :pswitch_25
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 122
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 123
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/ap;->l(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 124
    :pswitch_26
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 125
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 126
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/ap;->m(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 127
    :pswitch_27
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 128
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 129
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/ap;->i(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 130
    :pswitch_28
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 131
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 132
    invoke-static {v5, v4, p2}, Lcom/google/protobuf/ap;->b(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 133
    :pswitch_29
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 134
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 135
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v6

    .line 136
    invoke-static {v5, v4, p2, v6}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/an;)V

    goto/16 :goto_3

    .line 137
    :pswitch_2a
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 138
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 139
    invoke-static {v5, v4, p2}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 140
    :pswitch_2b
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 141
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 142
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/ap;->n(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 143
    :pswitch_2c
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 144
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 145
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/ap;->k(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 146
    :pswitch_2d
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 147
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 148
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/ap;->f(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 149
    :pswitch_2e
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 150
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 151
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/ap;->h(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 152
    :pswitch_2f
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 153
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 154
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/ap;->d(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 155
    :pswitch_30
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 156
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 157
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/ap;->c(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 158
    :pswitch_31
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 159
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 160
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/ap;->b(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 161
    :pswitch_32
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v5

    .line 162
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 163
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 164
    :pswitch_33
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 165
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 166
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v6

    .line 167
    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/Writer;->b(ILjava/lang/Object;Lcom/google/protobuf/an;)V

    goto/16 :goto_3

    .line 168
    :pswitch_34
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 169
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->e(IJ)V

    goto/16 :goto_3

    .line 170
    :pswitch_35
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 171
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->f(II)V

    goto/16 :goto_3

    .line 172
    :pswitch_36
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 173
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->b(IJ)V

    goto/16 :goto_3

    .line 174
    :pswitch_37
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 175
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->a(II)V

    goto/16 :goto_3

    .line 176
    :pswitch_38
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 177
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->b(II)V

    goto/16 :goto_3

    .line 178
    :pswitch_39
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 179
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->e(II)V

    goto/16 :goto_3

    .line 180
    :pswitch_3a
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 181
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 182
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->a(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 183
    :pswitch_3b
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 184
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 185
    invoke-direct {p0, v3}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/Writer;->a(ILjava/lang/Object;Lcom/google/protobuf/an;)V

    goto/16 :goto_3

    .line 186
    :pswitch_3c
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 187
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v5, v4, p2}, Lcom/google/protobuf/aa;->a(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 188
    :pswitch_3d
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 189
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->f(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->a(IZ)V

    goto/16 :goto_3

    .line 190
    :pswitch_3e
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 191
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->d(II)V

    goto :goto_3

    .line 192
    :pswitch_3f
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 193
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->d(IJ)V

    goto :goto_3

    .line 194
    :pswitch_40
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 195
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->c(II)V

    goto :goto_3

    .line 196
    :pswitch_41
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 197
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->c(IJ)V

    goto :goto_3

    .line 198
    :pswitch_42
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 199
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->a(IJ)V

    goto :goto_3

    .line 200
    :pswitch_43
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 201
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->a(IF)V

    goto :goto_3

    .line 202
    :pswitch_44
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 203
    invoke-static {v4}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->a(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, -0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v2, :cond_6

    .line 204
    iget-object p1, p0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {p1, p2, v2}, Lcom/google/protobuf/k;->a(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v2, p1

    goto :goto_4

    :cond_5
    move-object v2, v1

    goto :goto_4

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/protobuf/aa;->e(I)I

    move-result v0

    .line 2
    invoke-direct {p0, p3}, Lcom/google/protobuf/aa;->d(I)I

    move-result v1

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v2

    .line 4
    invoke-direct {p0, p2, v1, p3}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 7
    invoke-static {v0, p2}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    invoke-static {p1, v2, v3, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1, v1, p3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 10
    invoke-static {p1, v2, v3, p2}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, v1, p3}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private e(I)I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/protobuf/aa;->c:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static e(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 20
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private e(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private f(I)I
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/protobuf/aa;->c:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private f(Ljava/lang/Object;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/google/protobuf/aa;->b:Lsun/misc/Unsafe;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2
    :goto_0
    iget-object v8, v0, Lcom/google/protobuf/aa;->c:[I

    array-length v8, v8

    if-ge v5, v8, :cond_15

    .line 3
    invoke-direct {v0, v5}, Lcom/google/protobuf/aa;->e(I)I

    move-result v8

    .line 4
    invoke-direct {v0, v5}, Lcom/google/protobuf/aa;->d(I)I

    move-result v9

    .line 5
    invoke-static {v8}, Lcom/google/protobuf/aa;->g(I)I

    move-result v10

    const/16 v11, 0x11

    const v12, 0xfffff

    const/4 v13, 0x1

    if-gt v10, v11, :cond_1

    .line 6
    iget-object v11, v0, Lcom/google/protobuf/aa;->c:[I

    add-int/lit8 v14, v5, 0x2

    aget v11, v11, v14

    and-int/2addr v12, v11

    ushr-int/lit8 v14, v11, 0x14

    shl-int v14, v13, v14

    move v15, v14

    if-eq v12, v4, :cond_0

    int-to-long v13, v12

    .line 7
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    move v4, v12

    :cond_0
    move v14, v15

    goto :goto_2

    .line 8
    :cond_1
    iget-boolean v11, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v11, :cond_2

    sget-object v11, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 9
    invoke-virtual {v11}, Lcom/google/protobuf/FieldType;->id()I

    move-result v11

    if-lt v10, v11, :cond_2

    sget-object v11, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 10
    invoke-virtual {v11}, Lcom/google/protobuf/FieldType;->id()I

    move-result v11

    if-gt v10, v11, :cond_2

    .line 11
    iget-object v11, v0, Lcom/google/protobuf/aa;->c:[I

    add-int/lit8 v13, v5, 0x2

    aget v11, v11, v13

    and-int/2addr v11, v12

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    const/4 v14, 0x0

    .line 12
    :goto_2
    invoke-static {v8}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v12

    const/4 v8, 0x0

    move/from16 v16, v4

    const-wide/16 v3, 0x0

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_5

    .line 13
    :pswitch_0
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 14
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 15
    invoke-direct {v0, v5}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v4

    .line 16
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/an;)I

    move-result v3

    goto/16 :goto_4

    .line 17
    :pswitch_1
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 18
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v9, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v3

    goto/16 :goto_4

    .line 19
    :pswitch_2
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 20
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v3

    goto/16 :goto_4

    .line 21
    :pswitch_3
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 22
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v3

    goto/16 :goto_4

    .line 23
    :pswitch_4
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    .line 24
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v4

    goto/16 :goto_6

    .line 25
    :pswitch_5
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 26
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    goto/16 :goto_4

    .line 27
    :pswitch_6
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 28
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    goto/16 :goto_4

    .line 29
    :pswitch_7
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 30
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 31
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_4

    .line 32
    :pswitch_8
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 33
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 34
    invoke-direct {v0, v5}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v4

    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->a(ILjava/lang/Object;Lcom/google/protobuf/an;)I

    move-result v3

    goto/16 :goto_4

    .line 35
    :pswitch_9
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 36
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 37
    instance-of v4, v3, Lcom/google/protobuf/ByteString;

    if-eqz v4, :cond_3

    .line 38
    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_4

    .line 39
    :cond_3
    check-cast v3, Ljava/lang/String;

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_4

    .line 40
    :pswitch_a
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    .line 41
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    goto/16 :goto_4

    .line 42
    :pswitch_b
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    .line 43
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v4

    goto/16 :goto_6

    .line 44
    :pswitch_c
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 45
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v3

    goto/16 :goto_4

    .line 46
    :pswitch_d
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 47
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    goto/16 :goto_4

    .line 48
    :pswitch_e
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 49
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v9, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    goto/16 :goto_4

    .line 50
    :pswitch_f
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 51
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v9, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    goto/16 :goto_4

    .line 52
    :pswitch_10
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 53
    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v3

    goto/16 :goto_4

    .line 54
    :pswitch_11
    invoke-direct {v0, v1, v9, v5}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12

    const-wide/16 v3, 0x0

    .line 55
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    goto/16 :goto_4

    .line 56
    :pswitch_12
    iget-object v3, v0, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    .line 57
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/protobuf/aa;->b(I)Ljava/lang/Object;

    move-result-object v8

    .line 58
    invoke-interface {v3, v9, v4, v8}, Lcom/google/protobuf/u;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_4

    .line 59
    :pswitch_13
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 60
    invoke-direct {v0, v5}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v4

    .line 61
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->b(ILjava/util/List;Lcom/google/protobuf/an;)I

    move-result v3

    goto/16 :goto_4

    .line 62
    :pswitch_14
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 63
    invoke-static {v3}, Lcom/google/protobuf/ap;->c(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_12

    .line 64
    iget-boolean v4, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v4, :cond_4

    int-to-long v10, v11

    .line 65
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 66
    :cond_4
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 67
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_3

    .line 68
    :pswitch_15
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 69
    invoke-static {v3}, Lcom/google/protobuf/ap;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_12

    .line 70
    iget-boolean v4, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v4, :cond_5

    int-to-long v10, v11

    .line 71
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 72
    :cond_5
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 73
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_3

    .line 74
    :pswitch_16
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 75
    invoke-static {v3}, Lcom/google/protobuf/ap;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_12

    .line 76
    iget-boolean v4, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v4, :cond_6

    int-to-long v10, v11

    .line 77
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 78
    :cond_6
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 79
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_3

    .line 80
    :pswitch_17
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 81
    invoke-static {v3}, Lcom/google/protobuf/ap;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_12

    .line 82
    iget-boolean v4, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v4, :cond_7

    int-to-long v10, v11

    .line 83
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 84
    :cond_7
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 85
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_3

    .line 86
    :pswitch_18
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 87
    invoke-static {v3}, Lcom/google/protobuf/ap;->d(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_12

    .line 88
    iget-boolean v4, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v4, :cond_8

    int-to-long v10, v11

    .line 89
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 90
    :cond_8
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 91
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_3

    .line 92
    :pswitch_19
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 93
    invoke-static {v3}, Lcom/google/protobuf/ap;->f(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_12

    .line 94
    iget-boolean v4, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v4, :cond_9

    int-to-long v10, v11

    .line 95
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 96
    :cond_9
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 97
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_3

    .line 98
    :pswitch_1a
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 99
    invoke-static {v3}, Lcom/google/protobuf/ap;->j(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_12

    .line 100
    iget-boolean v4, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v4, :cond_a

    int-to-long v10, v11

    .line 101
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 102
    :cond_a
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 103
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_3

    .line 104
    :pswitch_1b
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 105
    invoke-static {v3}, Lcom/google/protobuf/ap;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_12

    .line 106
    iget-boolean v4, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v4, :cond_b

    int-to-long v10, v11

    .line 107
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 108
    :cond_b
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 109
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_3

    .line 110
    :pswitch_1c
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 111
    invoke-static {v3}, Lcom/google/protobuf/ap;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_12

    .line 112
    iget-boolean v4, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v4, :cond_c

    int-to-long v10, v11

    .line 113
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 114
    :cond_c
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 115
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_3

    .line 116
    :pswitch_1d
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 117
    invoke-static {v3}, Lcom/google/protobuf/ap;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_12

    .line 118
    iget-boolean v4, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v4, :cond_d

    int-to-long v10, v11

    .line 119
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 120
    :cond_d
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 121
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_3

    .line 122
    :pswitch_1e
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 123
    invoke-static {v3}, Lcom/google/protobuf/ap;->b(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_12

    .line 124
    iget-boolean v4, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v4, :cond_e

    int-to-long v10, v11

    .line 125
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 126
    :cond_e
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 127
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto :goto_3

    .line 128
    :pswitch_1f
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 129
    invoke-static {v3}, Lcom/google/protobuf/ap;->a(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_12

    .line 130
    iget-boolean v4, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v4, :cond_f

    int-to-long v10, v11

    .line 131
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 132
    :cond_f
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 133
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto :goto_3

    .line 134
    :pswitch_20
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 135
    invoke-static {v3}, Lcom/google/protobuf/ap;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_12

    .line 136
    iget-boolean v4, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v4, :cond_10

    int-to-long v10, v11

    .line 137
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 138
    :cond_10
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 139
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto :goto_3

    .line 140
    :pswitch_21
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 141
    invoke-static {v3}, Lcom/google/protobuf/ap;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_12

    .line 142
    iget-boolean v4, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v4, :cond_11

    int-to-long v10, v11

    .line 143
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 144
    :cond_11
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 145
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    :goto_3
    add-int/2addr v4, v8

    add-int/2addr v4, v3

    goto/16 :goto_6

    .line 146
    :pswitch_22
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    .line 147
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->c(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_4

    :pswitch_23
    const/4 v4, 0x0

    .line 148
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 149
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->g(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_4

    :pswitch_24
    const/4 v4, 0x0

    .line 150
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 151
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->i(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_4

    :pswitch_25
    const/4 v4, 0x0

    .line 152
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 153
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->h(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_4

    :pswitch_26
    const/4 v4, 0x0

    .line 154
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 155
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->d(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_4

    :pswitch_27
    const/4 v4, 0x0

    .line 156
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 157
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->f(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_4

    .line 158
    :pswitch_28
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 159
    invoke-static {v9, v3}, Lcom/google/protobuf/ap;->b(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_4

    .line 160
    :pswitch_29
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v4

    .line 161
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/an;)I

    move-result v3

    goto :goto_4

    .line 162
    :pswitch_2a
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v9, v3}, Lcom/google/protobuf/ap;->a(ILjava/util/List;)I

    move-result v3

    goto :goto_4

    .line 163
    :pswitch_2b
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    .line 164
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->j(ILjava/util/List;Z)I

    move-result v3

    goto :goto_4

    :pswitch_2c
    const/4 v4, 0x0

    .line 165
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 166
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->h(ILjava/util/List;Z)I

    move-result v3

    goto :goto_4

    :pswitch_2d
    const/4 v4, 0x0

    .line 167
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 168
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->i(ILjava/util/List;Z)I

    move-result v3

    goto :goto_4

    :pswitch_2e
    const/4 v4, 0x0

    .line 169
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 170
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->e(ILjava/util/List;Z)I

    move-result v3

    goto :goto_4

    :pswitch_2f
    const/4 v4, 0x0

    .line 171
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 172
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->b(ILjava/util/List;Z)I

    move-result v3

    goto :goto_4

    :pswitch_30
    const/4 v4, 0x0

    .line 173
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 174
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Z)I

    move-result v3

    goto :goto_4

    :pswitch_31
    const/4 v4, 0x0

    .line 175
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 176
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->h(ILjava/util/List;Z)I

    move-result v3

    goto :goto_4

    :pswitch_32
    const/4 v4, 0x0

    .line 177
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 178
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->i(ILjava/util/List;Z)I

    move-result v3

    :goto_4
    add-int/2addr v6, v3

    :cond_12
    :goto_5
    const/4 v10, 0x0

    goto/16 :goto_8

    :pswitch_33
    and-int v3, v7, v14

    if-eqz v3, :cond_12

    .line 179
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 180
    invoke-direct {v0, v5}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v4

    .line 181
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/an;)I

    move-result v3

    goto :goto_4

    :pswitch_34
    and-int v3, v7, v14

    if-eqz v3, :cond_12

    .line 182
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v9, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v3

    goto :goto_4

    :pswitch_35
    and-int v3, v7, v14

    if-eqz v3, :cond_12

    .line 183
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v3

    goto :goto_4

    :pswitch_36
    and-int v8, v7, v14

    if-eqz v8, :cond_12

    .line 184
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v3

    goto :goto_4

    :pswitch_37
    and-int v3, v7, v14

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    .line 185
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v4

    :goto_6
    add-int/2addr v6, v4

    goto :goto_5

    :pswitch_38
    and-int v3, v7, v14

    if-eqz v3, :cond_12

    .line 186
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    goto :goto_4

    :pswitch_39
    and-int v3, v7, v14

    if-eqz v3, :cond_12

    .line 187
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    goto :goto_4

    :pswitch_3a
    and-int v3, v7, v14

    if-eqz v3, :cond_12

    .line 188
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 189
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    goto :goto_4

    :pswitch_3b
    and-int v3, v7, v14

    if-eqz v3, :cond_12

    .line 190
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 191
    invoke-direct {v0, v5}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v4

    invoke-static {v9, v3, v4}, Lcom/google/protobuf/ap;->a(ILjava/lang/Object;Lcom/google/protobuf/an;)I

    move-result v3

    goto :goto_4

    :pswitch_3c
    and-int v3, v7, v14

    if-eqz v3, :cond_12

    .line 192
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 193
    instance-of v4, v3, Lcom/google/protobuf/ByteString;

    if-eqz v4, :cond_13

    .line 194
    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_4

    .line 195
    :cond_13
    check-cast v3, Ljava/lang/String;

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_4

    :pswitch_3d
    and-int v3, v7, v14

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    .line 196
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    goto/16 :goto_4

    :pswitch_3e
    and-int v3, v7, v14

    if-eqz v3, :cond_12

    const/4 v10, 0x0

    .line 197
    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v3

    goto :goto_7

    :pswitch_3f
    const/4 v10, 0x0

    and-int v8, v7, v14

    if-eqz v8, :cond_14

    .line 198
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v3

    goto :goto_7

    :pswitch_40
    const/4 v10, 0x0

    and-int v3, v7, v14

    if-eqz v3, :cond_14

    .line 199
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    goto :goto_7

    :pswitch_41
    const/4 v10, 0x0

    and-int v3, v7, v14

    if-eqz v3, :cond_14

    .line 200
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v9, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    goto :goto_7

    :pswitch_42
    const/4 v10, 0x0

    and-int v3, v7, v14

    if-eqz v3, :cond_14

    .line 201
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v9, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    goto :goto_7

    :pswitch_43
    const/4 v10, 0x0

    and-int v3, v7, v14

    if-eqz v3, :cond_14

    .line 202
    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v3

    goto :goto_7

    :pswitch_44
    const/4 v10, 0x0

    and-int v3, v7, v14

    if-eqz v3, :cond_14

    const-wide/16 v3, 0x0

    .line 203
    invoke-static {v9, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    :goto_7
    add-int/2addr v6, v3

    :cond_14
    :goto_8
    add-int/lit8 v5, v5, 0x3

    move/from16 v4, v16

    goto/16 :goto_0

    .line 204
    :cond_15
    iget-object v2, v0, Lcom/google/protobuf/aa;->q:Lcom/google/protobuf/as;

    invoke-direct {v0, v2, v1}, Lcom/google/protobuf/aa;->a(Lcom/google/protobuf/as;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v6, v2

    .line 205
    iget-boolean v2, v0, Lcom/google/protobuf/aa;->h:Z

    if-eqz v2, :cond_16

    .line 206
    iget-object v2, v0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/k;->a(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->j()I

    move-result v1

    add-int/2addr v6, v1

    :cond_16
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static f(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 208
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/au;->c(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method private f(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 209
    invoke-direct {p0, p3}, Lcom/google/protobuf/aa;->f(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 210
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p1

    .line 211
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static g(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 210
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static g(I)I
    .locals 1

    .line 1
    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method private g(Ljava/lang/Object;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 2
    sget-object v2, Lcom/google/protobuf/aa;->b:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3
    :goto_0
    iget-object v6, v0, Lcom/google/protobuf/aa;->c:[I

    array-length v6, v6

    if-ge v4, v6, :cond_12

    .line 4
    invoke-direct {p0, v4}, Lcom/google/protobuf/aa;->e(I)I

    move-result v6

    .line 5
    invoke-static {v6}, Lcom/google/protobuf/aa;->g(I)I

    move-result v7

    .line 6
    invoke-direct {p0, v4}, Lcom/google/protobuf/aa;->d(I)I

    move-result v8

    .line 7
    invoke-static {v6}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v9

    .line 8
    sget-object v6, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 9
    invoke-virtual {v6}, Lcom/google/protobuf/FieldType;->id()I

    move-result v6

    if-lt v7, v6, :cond_0

    sget-object v6, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 10
    invoke-virtual {v6}, Lcom/google/protobuf/FieldType;->id()I

    move-result v6

    if-gt v7, v6, :cond_0

    iget-object v6, v0, Lcom/google/protobuf/aa;->c:[I

    add-int/lit8 v11, v4, 0x2

    aget v6, v6, v11

    const v11, 0xfffff

    and-int/2addr v6, v11

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_4

    .line 11
    :pswitch_0
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 12
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/MessageLite;

    .line 13
    invoke-direct {p0, v4}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v7

    .line 14
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/an;)I

    move-result v6

    goto/16 :goto_3

    .line 15
    :pswitch_1
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 16
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v6

    goto/16 :goto_3

    .line 17
    :pswitch_2
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 18
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v6

    goto/16 :goto_3

    .line 19
    :pswitch_3
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 20
    invoke-static {v8, v13, v14}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v6

    goto/16 :goto_3

    .line 21
    :pswitch_4
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 22
    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v6

    goto/16 :goto_3

    .line 23
    :pswitch_5
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 24
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v6

    goto/16 :goto_3

    .line 25
    :pswitch_6
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 26
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v6

    goto/16 :goto_3

    .line 27
    :pswitch_7
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 28
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    .line 29
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v6

    goto/16 :goto_3

    .line 30
    :pswitch_8
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 31
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 32
    invoke-direct {p0, v4}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/ap;->a(ILjava/lang/Object;Lcom/google/protobuf/an;)I

    move-result v6

    goto/16 :goto_3

    .line 33
    :pswitch_9
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 34
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 35
    instance-of v7, v6, Lcom/google/protobuf/ByteString;

    if-eqz v7, :cond_1

    .line 36
    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v6

    goto/16 :goto_3

    .line 37
    :cond_1
    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_3

    .line 38
    :pswitch_a
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 39
    invoke-static {v8, v11}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v6

    goto/16 :goto_3

    .line 40
    :pswitch_b
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 41
    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v6

    goto/16 :goto_3

    .line 42
    :pswitch_c
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 43
    invoke-static {v8, v13, v14}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v6

    goto/16 :goto_3

    .line 44
    :pswitch_d
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 45
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v6

    goto/16 :goto_3

    .line 46
    :pswitch_e
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 47
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v6

    goto/16 :goto_3

    .line 48
    :pswitch_f
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 49
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v6

    goto/16 :goto_3

    .line 50
    :pswitch_10
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 51
    invoke-static {v8, v12}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v6

    goto/16 :goto_3

    .line 52
    :pswitch_11
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    const-wide/16 v6, 0x0

    .line 53
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v6

    goto/16 :goto_3

    .line 54
    :pswitch_12
    iget-object v6, v0, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    .line 55
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v4}, Lcom/google/protobuf/aa;->b(I)Ljava/lang/Object;

    move-result-object v9

    .line 56
    invoke-interface {v6, v8, v7, v9}, Lcom/google/protobuf/u;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    goto/16 :goto_3

    .line 57
    :pswitch_13
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v7

    .line 58
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/ap;->b(ILjava/util/List;Lcom/google/protobuf/an;)I

    move-result v6

    goto/16 :goto_3

    .line 59
    :pswitch_14
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 60
    invoke-static {v7}, Lcom/google/protobuf/ap;->c(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 61
    iget-boolean v9, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v9, :cond_2

    int-to-long v9, v6

    .line 62
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 63
    :cond_2
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 64
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_2

    .line 65
    :pswitch_15
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 66
    invoke-static {v7}, Lcom/google/protobuf/ap;->g(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 67
    iget-boolean v9, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v9, :cond_3

    int-to-long v9, v6

    .line 68
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 69
    :cond_3
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 70
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_2

    .line 71
    :pswitch_16
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 72
    invoke-static {v7}, Lcom/google/protobuf/ap;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 73
    iget-boolean v9, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v9, :cond_4

    int-to-long v9, v6

    .line 74
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 75
    :cond_4
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 76
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_2

    .line 77
    :pswitch_17
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 78
    invoke-static {v7}, Lcom/google/protobuf/ap;->h(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 79
    iget-boolean v9, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v9, :cond_5

    int-to-long v9, v6

    .line 80
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 81
    :cond_5
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 82
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_2

    .line 83
    :pswitch_18
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 84
    invoke-static {v7}, Lcom/google/protobuf/ap;->d(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 85
    iget-boolean v9, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v9, :cond_6

    int-to-long v9, v6

    .line 86
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 87
    :cond_6
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 88
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_2

    .line 89
    :pswitch_19
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 90
    invoke-static {v7}, Lcom/google/protobuf/ap;->f(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 91
    iget-boolean v9, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v9, :cond_7

    int-to-long v9, v6

    .line 92
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 93
    :cond_7
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 94
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_2

    .line 95
    :pswitch_1a
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 96
    invoke-static {v7}, Lcom/google/protobuf/ap;->j(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 97
    iget-boolean v9, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v9, :cond_8

    int-to-long v9, v6

    .line 98
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 99
    :cond_8
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 100
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_2

    .line 101
    :pswitch_1b
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 102
    invoke-static {v7}, Lcom/google/protobuf/ap;->h(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 103
    iget-boolean v9, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v9, :cond_9

    int-to-long v9, v6

    .line 104
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 105
    :cond_9
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 106
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_2

    .line 107
    :pswitch_1c
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 108
    invoke-static {v7}, Lcom/google/protobuf/ap;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 109
    iget-boolean v9, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v9, :cond_a

    int-to-long v9, v6

    .line 110
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 111
    :cond_a
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 112
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_2

    .line 113
    :pswitch_1d
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 114
    invoke-static {v7}, Lcom/google/protobuf/ap;->e(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 115
    iget-boolean v9, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v9, :cond_b

    int-to-long v9, v6

    .line 116
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 117
    :cond_b
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 118
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_2

    .line 119
    :pswitch_1e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 120
    invoke-static {v7}, Lcom/google/protobuf/ap;->b(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 121
    iget-boolean v9, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v9, :cond_c

    int-to-long v9, v6

    .line 122
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 123
    :cond_c
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 124
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto :goto_2

    .line 125
    :pswitch_1f
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 126
    invoke-static {v7}, Lcom/google/protobuf/ap;->a(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 127
    iget-boolean v9, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v9, :cond_d

    int-to-long v9, v6

    .line 128
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 129
    :cond_d
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 130
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto :goto_2

    .line 131
    :pswitch_20
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 132
    invoke-static {v7}, Lcom/google/protobuf/ap;->h(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 133
    iget-boolean v9, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v9, :cond_e

    int-to-long v9, v6

    .line 134
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 135
    :cond_e
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 136
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto :goto_2

    .line 137
    :pswitch_21
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 138
    invoke-static {v7}, Lcom/google/protobuf/ap;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 139
    iget-boolean v9, v0, Lcom/google/protobuf/aa;->k:Z

    if-eqz v9, :cond_f

    int-to-long v9, v6

    .line 140
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 141
    :cond_f
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 142
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    :goto_2
    add-int/2addr v6, v8

    add-int/2addr v6, v7

    goto/16 :goto_3

    .line 143
    :pswitch_22
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/ap;->c(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_3

    .line 144
    :pswitch_23
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 145
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/ap;->g(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_3

    .line 146
    :pswitch_24
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/ap;->i(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_3

    .line 147
    :pswitch_25
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/ap;->h(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_3

    .line 148
    :pswitch_26
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 149
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/ap;->d(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_3

    .line 150
    :pswitch_27
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 151
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/ap;->f(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3

    .line 152
    :pswitch_28
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 153
    invoke-static {v8, v6}, Lcom/google/protobuf/ap;->b(ILjava/util/List;)I

    move-result v6

    goto :goto_3

    .line 154
    :pswitch_29
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v7

    .line 155
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/an;)I

    move-result v6

    goto :goto_3

    .line 156
    :pswitch_2a
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/google/protobuf/ap;->a(ILjava/util/List;)I

    move-result v6

    goto :goto_3

    .line 157
    :pswitch_2b
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/ap;->j(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3

    .line 158
    :pswitch_2c
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/ap;->h(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3

    .line 159
    :pswitch_2d
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/ap;->i(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3

    .line 160
    :pswitch_2e
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 161
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/ap;->e(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3

    .line 162
    :pswitch_2f
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/ap;->b(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3

    .line 163
    :pswitch_30
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3

    .line 164
    :pswitch_31
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/ap;->h(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3

    .line 165
    :pswitch_32
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/ap;->i(ILjava/util/List;Z)I

    move-result v6

    :goto_3
    add-int/2addr v5, v6

    goto/16 :goto_4

    .line 166
    :pswitch_33
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 167
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/MessageLite;

    .line 168
    invoke-direct {p0, v4}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v7

    .line 169
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/an;)I

    move-result v6

    goto :goto_3

    .line 170
    :pswitch_34
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 171
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v6

    goto :goto_3

    .line 172
    :pswitch_35
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 173
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v6

    goto :goto_3

    .line 174
    :pswitch_36
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 175
    invoke-static {v8, v13, v14}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v6

    goto :goto_3

    .line 176
    :pswitch_37
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 177
    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v6

    goto :goto_3

    .line 178
    :pswitch_38
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 179
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v6

    goto :goto_3

    .line 180
    :pswitch_39
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 181
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v6

    goto :goto_3

    .line 182
    :pswitch_3a
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 183
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    .line 184
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v6

    goto :goto_3

    .line 185
    :pswitch_3b
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 186
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 187
    invoke-direct {p0, v4}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/ap;->a(ILjava/lang/Object;Lcom/google/protobuf/an;)I

    move-result v6

    goto/16 :goto_3

    .line 188
    :pswitch_3c
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 189
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 190
    instance-of v7, v6, Lcom/google/protobuf/ByteString;

    if-eqz v7, :cond_10

    .line 191
    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v6

    goto/16 :goto_3

    .line 192
    :cond_10
    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_3

    .line 193
    :pswitch_3d
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 194
    invoke-static {v8, v11}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v6

    goto/16 :goto_3

    .line 195
    :pswitch_3e
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 196
    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v6

    goto/16 :goto_3

    .line 197
    :pswitch_3f
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 198
    invoke-static {v8, v13, v14}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v6

    goto/16 :goto_3

    .line 199
    :pswitch_40
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 200
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v6

    goto/16 :goto_3

    .line 201
    :pswitch_41
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 202
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v6

    goto/16 :goto_3

    .line 203
    :pswitch_42
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 204
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v6

    goto/16 :goto_3

    .line 205
    :pswitch_43
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 206
    invoke-static {v8, v12}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v6

    goto/16 :goto_3

    .line 207
    :pswitch_44
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    const-wide/16 v6, 0x0

    .line 208
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v6

    goto/16 :goto_3

    :cond_11
    :goto_4
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_0

    .line 209
    :cond_12
    iget-object v2, v0, Lcom/google/protobuf/aa;->q:Lcom/google/protobuf/as;

    invoke-direct {p0, v2, v1}, Lcom/google/protobuf/aa;->a(Lcom/google/protobuf/as;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v5, v1

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static h(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static h(I)Z
    .locals 1

    .line 1
    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static i(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static i(I)Z
    .locals 1

    .line 1
    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static j(I)J
    .locals 2

    .line 1
    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static j(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private k(I)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/protobuf/aa;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/aa;->f:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/aa;->b(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private static k(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/google/protobuf/aa;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 207
    invoke-direct {p0, v1}, Lcom/google/protobuf/aa;->e(I)I

    move-result v3

    .line 208
    invoke-direct {p0, v1}, Lcom/google/protobuf/aa;->d(I)I

    move-result v4

    .line 209
    invoke-static {v3}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v5

    .line 210
    invoke-static {v3}, Lcom/google/protobuf/aa;->g(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 211
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 213
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 214
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 215
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2

    .line 216
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 217
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 218
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 219
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2

    .line 220
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 221
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 222
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 223
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 224
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 225
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 226
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 227
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 228
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 230
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 231
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 232
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 233
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 234
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/aa;->k(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v3

    goto/16 :goto_2

    .line 235
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 236
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 237
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 238
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2

    .line 239
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 240
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/aa;->i(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 241
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 242
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2

    .line 243
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 244
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/aa;->j(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2

    .line 245
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 246
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/aa;->h(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    .line 247
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 248
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/aa;->g(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 249
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 250
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 251
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 252
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 253
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 254
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 255
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 256
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 257
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 258
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 259
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 260
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 261
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 262
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 263
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->c(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 264
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 265
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 266
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 267
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 268
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 269
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->d(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 270
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/au;->e(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 271
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    .line 272
    iget-object v0, p0, Lcom/google/protobuf/aa;->q:Lcom/google/protobuf/as;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 273
    iget-boolean v0, p0, Lcom/google/protobuf/aa;->h:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    .line 274
    iget-object v0, p0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/k;->a(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;[BIIILcom/google/protobuf/c$a;)I
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    .line 707
    sget-object v10, Lcom/google/protobuf/aa;->b:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_0
    if-ge v0, v13, :cond_1c

    add-int/lit8 v3, v0, 0x1

    .line 708
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 709
    invoke-static {v0, v12, v3, v9}, Lcom/google/protobuf/c;->a(I[BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 710
    iget v3, v9, Lcom/google/protobuf/c$a;->a:I

    move v4, v0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v5, 0x3

    and-int/lit8 v0, v5, 0x7

    const/4 v8, 0x3

    if-le v3, v1, :cond_1

    .line 711
    div-int/2addr v2, v8

    invoke-direct {v15, v3, v2}, Lcom/google/protobuf/aa;->a(II)I

    move-result v1

    goto :goto_2

    .line 712
    :cond_1
    invoke-direct {v15, v3}, Lcom/google/protobuf/aa;->k(I)I

    move-result v1

    :goto_2
    move v2, v1

    const/4 v1, -0x1

    if-ne v2, v1, :cond_2

    move/from16 v17, v3

    move v2, v4

    move v8, v5

    move/from16 v22, v6

    move/from16 v19, v7

    move-object/from16 v28, v10

    move v0, v11

    const/16 v20, 0x0

    goto/16 :goto_17

    .line 713
    :cond_2
    iget-object v1, v15, Lcom/google/protobuf/aa;->c:[I

    add-int/lit8 v18, v2, 0x1

    aget v1, v1, v18

    .line 714
    invoke-static {v1}, Lcom/google/protobuf/aa;->g(I)I

    move-result v8

    .line 715
    invoke-static {v1}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v11

    move/from16 v18, v5

    const/16 v5, 0x11

    move/from16 v19, v1

    if-gt v8, v5, :cond_11

    .line 716
    iget-object v5, v15, Lcom/google/protobuf/aa;->c:[I

    add-int/lit8 v20, v2, 0x2

    aget v5, v5, v20

    ushr-int/lit8 v20, v5, 0x14

    const/4 v1, 0x1

    shl-int v20, v1, v20

    const v22, 0xfffff

    and-int v5, v5, v22

    if-eq v5, v7, :cond_4

    const/4 v13, -0x1

    move/from16 v17, v2

    if-eq v7, v13, :cond_3

    int-to-long v1, v7

    .line 717
    invoke-virtual {v10, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v1, v5

    .line 718
    invoke-virtual {v10, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v7, v5

    goto :goto_3

    :cond_4
    move/from16 v17, v2

    const/4 v13, -0x1

    :goto_3
    const/4 v1, 0x5

    packed-switch v8, :pswitch_data_0

    move-object/from16 v12, p2

    move v11, v4

    move/from16 v8, v17

    move/from16 v13, v18

    const/16 v18, -0x1

    move/from16 v17, v3

    goto/16 :goto_11

    :pswitch_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v5, v0, 0x4

    move/from16 v2, v17

    .line 719
    invoke-direct {v15, v2}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v0

    move-object/from16 v1, p2

    move v8, v2

    move v2, v4

    move/from16 v17, v3

    move/from16 v3, p4

    move v4, v5

    move/from16 v13, v18

    move-object/from16 v5, p6

    .line 720
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/an;[BIIILcom/google/protobuf/c$a;)I

    move-result v0

    and-int v1, v6, v20

    if-nez v1, :cond_5

    .line 721
    iget-object v1, v9, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    .line 722
    :cond_5
    invoke-virtual {v10, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    .line 723
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 724
    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    or-int v6, v6, v20

    move-object/from16 v12, p2

    goto/16 :goto_10

    :cond_6
    move/from16 v8, v17

    move/from16 v13, v18

    move/from16 v17, v3

    goto :goto_5

    :pswitch_1
    move/from16 v8, v17

    move/from16 v13, v18

    move/from16 v17, v3

    if-nez v0, :cond_7

    move-wide v2, v11

    move-object/from16 v12, p2

    .line 725
    invoke-static {v12, v4, v9}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result v11

    .line 726
    iget-wide v0, v9, Lcom/google/protobuf/c$a;->b:J

    .line 727
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p1

    .line 728
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_c

    :cond_7
    :goto_5
    move-object/from16 v12, p2

    goto/16 :goto_7

    :pswitch_2
    move/from16 v8, v17

    move/from16 v13, v18

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    if-nez v0, :cond_a

    .line 729
    invoke-static {v12, v4, v9}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 730
    iget v1, v9, Lcom/google/protobuf/c$a;->a:I

    .line 731
    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    .line 732
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_f

    :pswitch_3
    move/from16 v8, v17

    move/from16 v13, v18

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    if-nez v0, :cond_a

    .line 733
    invoke-static {v12, v4, v9}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 734
    iget v1, v9, Lcom/google/protobuf/c$a;->a:I

    .line 735
    invoke-direct {v15, v8}, Lcom/google/protobuf/aa;->c(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 736
    invoke-interface {v4, v1}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_6

    .line 737
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto/16 :goto_10

    .line 738
    :cond_9
    :goto_6
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_f

    :pswitch_4
    move/from16 v8, v17

    move/from16 v13, v18

    const/4 v1, 0x2

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    if-ne v0, v1, :cond_a

    .line 739
    invoke-static {v12, v4, v9}, Lcom/google/protobuf/c;->e([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 740
    iget-object v1, v9, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_f

    :cond_a
    :goto_7
    move v11, v4

    const/16 v18, -0x1

    goto/16 :goto_11

    :pswitch_5
    move/from16 v8, v17

    move/from16 v13, v18

    const/4 v1, 0x2

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    if-ne v0, v1, :cond_c

    .line 741
    invoke-direct {v15, v8}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v0

    move/from16 v11, p4

    const/16 v18, -0x1

    .line 742
    invoke-static {v0, v12, v4, v11, v9}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/an;[BIILcom/google/protobuf/c$a;)I

    move-result v0

    and-int v1, v6, v20

    if-nez v1, :cond_b

    .line 743
    iget-object v1, v9, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    .line 744
    :cond_b
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v9, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    .line 745
    invoke-static {v1, v4}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 746
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :cond_c
    move/from16 v11, p4

    const/16 v18, -0x1

    goto/16 :goto_b

    :pswitch_6
    move/from16 v8, v17

    move/from16 v13, v18

    const/4 v1, 0x2

    const/16 v18, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move/from16 v11, p4

    if-ne v0, v1, :cond_f

    const/high16 v0, 0x20000000

    and-int v0, v19, v0

    if-nez v0, :cond_d

    .line 747
    invoke-static {v12, v4, v9}, Lcom/google/protobuf/c;->c([BILcom/google/protobuf/c$a;)I

    move-result v0

    goto :goto_8

    .line 748
    :cond_d
    invoke-static {v12, v4, v9}, Lcom/google/protobuf/c;->d([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 749
    :goto_8
    iget-object v1, v9, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_7
    move/from16 v8, v17

    move/from16 v13, v18

    const/16 v18, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move/from16 v11, p4

    if-nez v0, :cond_f

    .line 750
    invoke-static {v12, v4, v9}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 751
    iget-wide v4, v9, Lcom/google/protobuf/c$a;->b:J

    const-wide/16 v23, 0x0

    cmp-long v1, v4, v23

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    :goto_9
    invoke-static {v14, v2, v3, v1}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JZ)V

    goto :goto_a

    :pswitch_8
    move/from16 v8, v17

    move/from16 v13, v18

    const/16 v18, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move/from16 v11, p4

    if-ne v0, v1, :cond_f

    .line 752
    invoke-static {v12, v4}, Lcom/google/protobuf/c;->a([BI)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    :goto_a
    or-int v6, v6, v20

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move v13, v11

    goto/16 :goto_d

    :pswitch_9
    move/from16 v8, v17

    move/from16 v13, v18

    const/4 v1, 0x1

    const/16 v18, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move/from16 v11, p4

    if-ne v0, v1, :cond_f

    .line 753
    invoke-static {v12, v4}, Lcom/google/protobuf/c;->b([BI)J

    move-result-wide v21

    move-object v0, v10

    move-object/from16 v1, p1

    move v11, v4

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_e

    :cond_f
    :goto_b
    move v11, v4

    goto/16 :goto_11

    :pswitch_a
    move/from16 v8, v17

    move/from16 v13, v18

    const/16 v18, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move v11, v4

    if-nez v0, :cond_10

    .line 754
    invoke-static {v12, v11, v9}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 755
    iget v1, v9, Lcom/google/protobuf/c$a;->a:I

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_f

    :pswitch_b
    move/from16 v8, v17

    move/from16 v13, v18

    const/16 v18, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move v11, v4

    if-nez v0, :cond_10

    .line 756
    invoke-static {v12, v11, v9}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result v11

    .line 757
    iget-wide v4, v9, Lcom/google/protobuf/c$a;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_c
    or-int v6, v6, v20

    move v2, v8

    move v0, v11

    move v3, v13

    move/from16 v1, v17

    move/from16 v13, p4

    :goto_d
    move/from16 v11, p5

    goto/16 :goto_0

    :pswitch_c
    move/from16 v8, v17

    move/from16 v13, v18

    const/16 v18, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move v11, v4

    if-ne v0, v1, :cond_10

    .line 758
    invoke-static {v12, v11}, Lcom/google/protobuf/c;->d([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v11, 0x4

    goto :goto_f

    :pswitch_d
    move/from16 v8, v17

    move/from16 v13, v18

    const/4 v1, 0x1

    const/16 v18, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move v11, v4

    if-ne v0, v1, :cond_10

    .line 759
    invoke-static {v12, v11}, Lcom/google/protobuf/c;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JD)V

    :goto_e
    add-int/lit8 v0, v11, 0x8

    :goto_f
    or-int v6, v6, v20

    :goto_10
    move/from16 v11, p5

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    goto/16 :goto_13

    :cond_10
    :goto_11
    move/from16 v0, p5

    move/from16 v22, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v28, v10

    move v2, v11

    move v8, v13

    goto/16 :goto_17

    :cond_11
    move v5, v2

    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v13, v18

    const/16 v18, -0x1

    move-object/from16 v12, p2

    move v11, v4

    const/16 v1, 0x1b

    if-ne v8, v1, :cond_15

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 760
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Internal$ProtobufList;

    .line 761
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_13

    .line 762
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, 0xa

    goto :goto_12

    :cond_12
    mul-int/lit8 v1, v1, 0x2

    .line 763
    :goto_12
    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 764
    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_13
    move-object v8, v0

    .line 765
    invoke-direct {v15, v5}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v0

    move v1, v13

    move-object/from16 v2, p2

    move v3, v11

    move/from16 v4, p4

    move/from16 v20, v5

    move-object v5, v8

    move/from16 v22, v6

    move-object/from16 v6, p6

    .line 766
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/an;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result v0

    move/from16 v11, p5

    move v3, v13

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v6, v22

    :goto_13
    move/from16 v13, p4

    goto/16 :goto_0

    :cond_14
    move/from16 v20, v5

    move/from16 v22, v6

    move/from16 v19, v7

    move-object/from16 v28, v10

    move v15, v11

    move/from16 v18, v13

    goto/16 :goto_16

    :cond_15
    move/from16 v20, v5

    move/from16 v22, v6

    const/16 v1, 0x31

    if-gt v8, v1, :cond_16

    move/from16 v1, v19

    int-to-long v5, v1

    move v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v23, v2

    move-object/from16 v2, p2

    move v3, v11

    move/from16 p3, v4

    move/from16 v4, p4

    move-wide/from16 v25, v5

    move v5, v13

    move/from16 v6, v17

    move/from16 v19, v7

    move/from16 v7, p3

    move/from16 v27, v8

    move/from16 v8, v20

    move-object/from16 v28, v10

    move-wide/from16 v9, v25

    move v15, v11

    move/from16 v11, v27

    move/from16 v18, v13

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    .line 767
    invoke-direct/range {v0 .. v14}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/c$a;)I

    move-result v0

    if-eq v0, v15, :cond_19

    :goto_14
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v1, v17

    move/from16 v3, v18

    move/from16 v7, v19

    move/from16 v2, v20

    move/from16 v6, v22

    :goto_15
    move-object/from16 v10, v28

    goto/16 :goto_0

    :cond_16
    move/from16 p3, v0

    move-wide/from16 v23, v2

    move/from16 v27, v8

    move-object/from16 v28, v10

    move v15, v11

    move/from16 v18, v13

    move/from16 v1, v19

    move/from16 v19, v7

    const/16 v0, 0x32

    move/from16 v9, v27

    if-ne v9, v0, :cond_18

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    .line 768
    invoke-direct/range {v0 .. v8}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;[BIIIJLcom/google/protobuf/c$a;)I

    move-result v0

    if-eq v0, v15, :cond_19

    goto :goto_14

    :cond_17
    :goto_16
    move/from16 v0, p5

    move v2, v15

    move/from16 v8, v18

    goto :goto_17

    :cond_18
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v18

    move/from16 v6, v17

    move-wide/from16 v10, v23

    move/from16 v12, v20

    move-object/from16 v13, p6

    .line 769
    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/c$a;)I

    move-result v0

    if-eq v0, v15, :cond_19

    goto :goto_14

    :cond_19
    move v2, v0

    move/from16 v8, v18

    move/from16 v0, p5

    :goto_17
    if-ne v8, v0, :cond_1a

    if-eqz v0, :cond_1a

    move-object/from16 v9, p0

    move v10, v0

    move v0, v2

    move v3, v8

    move/from16 v7, v19

    move/from16 v6, v22

    goto :goto_19

    :cond_1a
    move-object/from16 v9, p0

    move v10, v0

    .line 770
    iget-boolean v0, v9, Lcom/google/protobuf/aa;->h:Z

    move-object/from16 v11, p6

    if-eqz v0, :cond_1b

    iget-object v0, v11, Lcom/google/protobuf/c$a;->d:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 771
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v1

    if-eq v0, v1, :cond_1b

    .line 772
    iget-object v5, v9, Lcom/google/protobuf/aa;->g:Lcom/google/protobuf/MessageLite;

    iget-object v6, v9, Lcom/google/protobuf/aa;->q:Lcom/google/protobuf/as;

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/google/protobuf/c;->a(I[BIILjava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/as;Lcom/google/protobuf/c$a;)I

    move-result v0

    goto :goto_18

    .line 773
    :cond_1b
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 774
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/c;->a(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/c$a;)I

    move-result v0

    :goto_18
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v8

    move-object v15, v9

    move-object v9, v11

    move/from16 v1, v17

    move/from16 v7, v19

    move/from16 v2, v20

    move/from16 v6, v22

    move v11, v10

    goto/16 :goto_15

    :cond_1c
    move/from16 v22, v6

    move/from16 v19, v7

    move-object/from16 v28, v10

    move v10, v11

    move-object v9, v15

    :goto_19
    const/4 v1, -0x1

    if-eq v7, v1, :cond_1d

    int-to-long v1, v7

    move-object/from16 v4, p1

    move-object/from16 v5, v28

    .line 775
    invoke-virtual {v5, v4, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1a

    :cond_1d
    move-object/from16 v4, p1

    .line 776
    :goto_1a
    iget v1, v9, Lcom/google/protobuf/aa;->m:I

    const/4 v2, 0x0

    :goto_1b
    iget v5, v9, Lcom/google/protobuf/aa;->n:I

    if-ge v1, v5, :cond_1e

    .line 777
    iget-object v5, v9, Lcom/google/protobuf/aa;->l:[I

    aget v5, v5, v1

    iget-object v6, v9, Lcom/google/protobuf/aa;->q:Lcom/google/protobuf/as;

    .line 778
    invoke-direct {v9, v4, v5, v2, v6}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UnknownFieldSetLite;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_1e
    if-eqz v2, :cond_1f

    .line 779
    iget-object v1, v9, Lcom/google/protobuf/aa;->q:Lcom/google/protobuf/as;

    .line 780
    invoke-virtual {v1, v4, v2}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    if-nez v10, :cond_21

    move/from16 v1, p4

    if-ne v0, v1, :cond_20

    goto :goto_1c

    .line 781
    :cond_20
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_21
    move/from16 v1, p4

    if-gt v0, v1, :cond_22

    if-ne v3, v10, :cond_22

    :goto_1c
    return v0

    .line 782
    :cond_22
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/google/protobuf/aa;->o:Lcom/google/protobuf/ac;

    iget-object v1, p0, Lcom/google/protobuf/aa;->g:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0, v1}, Lcom/google/protobuf/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 2
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

    .line 278
    invoke-interface {p2}, Lcom/google/protobuf/Writer;->a()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_0

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_0

    .line 280
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/aa;->j:Z

    if-eqz v0, :cond_1

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_0

    .line 282
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    :goto_0
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

    .line 288
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    iget-object v1, p0, Lcom/google/protobuf/aa;->q:Lcom/google/protobuf/as;

    iget-object v2, p0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/aa;->a(Lcom/google/protobuf/as;Lcom/google/protobuf/k;Ljava/lang/Object;Lcom/google/protobuf/al;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public a(Ljava/lang/Object;[BIILcom/google/protobuf/c$a;)V
    .locals 8
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

    .line 783
    iget-boolean v0, p0, Lcom/google/protobuf/aa;->j:Z

    if-eqz v0, :cond_0

    .line 784
    invoke-direct/range {p0 .. p5}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;[BIILcom/google/protobuf/c$a;)I

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    .line 785
    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;[BIIILcom/google/protobuf/c$a;)I

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/google/protobuf/aa;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 146
    invoke-direct {p0, p1, p2, v2}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/aa;->q:Lcom/google/protobuf/as;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    iget-object v2, p0, Lcom/google/protobuf/aa;->q:Lcom/google/protobuf/as;

    invoke-virtual {v2, p2}, Lcom/google/protobuf/as;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 150
    :cond_2
    iget-boolean v0, p0, Lcom/google/protobuf/aa;->h:Z

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/k;->a(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {v0, p2}, Lcom/google/protobuf/k;->a(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p2

    .line 153
    invoke-virtual {p1, p2}, Lcom/google/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 72
    iget-boolean v0, p0, Lcom/google/protobuf/aa;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/aa;->g(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/protobuf/aa;->f(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/aa;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/aa;->j:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/aa;->q:Lcom/google/protobuf/as;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/ap;->a(Lcom/google/protobuf/as;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-boolean v0, p0, Lcom/google/protobuf/aa;->h:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/ap;->a(Lcom/google/protobuf/k;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 206
    iget v0, p0, Lcom/google/protobuf/aa;->m:I

    :goto_0
    iget v1, p0, Lcom/google/protobuf/aa;->n:I

    if-ge v0, v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/google/protobuf/aa;->l:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/protobuf/aa;->e(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/aa;->j(I)J

    move-result-wide v1

    .line 208
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/au;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 209
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/aa;->s:Lcom/google/protobuf/u;

    invoke-interface {v4, v3}, Lcom/google/protobuf/u;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/protobuf/au;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/aa;->l:[I

    array-length v0, v0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 211
    iget-object v2, p0, Lcom/google/protobuf/aa;->p:Lcom/google/protobuf/r;

    iget-object v3, p0, Lcom/google/protobuf/aa;->l:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/protobuf/r;->b(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/aa;->q:Lcom/google/protobuf/as;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/as;->d(Ljava/lang/Object;)V

    .line 213
    iget-boolean v0, p0, Lcom/google/protobuf/aa;->h:Z

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/k;->c(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_0
    iget v4, p0, Lcom/google/protobuf/aa;->m:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_8

    .line 2
    iget-object v4, p0, Lcom/google/protobuf/aa;->l:[I

    aget v4, v4, v2

    .line 3
    invoke-direct {p0, v4}, Lcom/google/protobuf/aa;->d(I)I

    move-result v6

    .line 4
    invoke-direct {p0, v4}, Lcom/google/protobuf/aa;->e(I)I

    move-result v7

    .line 5
    iget-boolean v8, p0, Lcom/google/protobuf/aa;->j:Z

    if-nez v8, :cond_0

    .line 6
    iget-object v8, p0, Lcom/google/protobuf/aa;->c:[I

    add-int/lit8 v9, v4, 0x2

    aget v8, v8, v9

    const v9, 0xfffff

    and-int/2addr v9, v8

    ushr-int/lit8 v8, v8, 0x14

    shl-int/2addr v5, v8

    if-eq v9, v0, :cond_1

    .line 7
    sget-object v0, Lcom/google/protobuf/aa;->b:Lsun/misc/Unsafe;

    int-to-long v10, v9

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v0, v9

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 8
    :cond_1
    :goto_1
    invoke-static {v7}, Lcom/google/protobuf/aa;->h(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 9
    invoke-direct {p0, p1, v4, v3, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;III)Z

    move-result v8

    if-nez v8, :cond_2

    return v1

    .line 10
    :cond_2
    invoke-static {v7}, Lcom/google/protobuf/aa;->g(I)I

    move-result v8

    const/16 v9, 0x9

    if-eq v8, v9, :cond_6

    const/16 v9, 0x11

    if-eq v8, v9, :cond_6

    const/16 v5, 0x1b

    if-eq v8, v5, :cond_5

    const/16 v5, 0x3c

    if-eq v8, v5, :cond_4

    const/16 v5, 0x44

    if-eq v8, v5, :cond_4

    const/16 v5, 0x31

    if-eq v8, v5, :cond_5

    const/16 v5, 0x32

    if-eq v8, v5, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    invoke-direct {p0, p1, v7, v4}, Lcom/google/protobuf/aa;->b(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_7

    return v1

    .line 12
    :cond_4
    invoke-direct {p0, p1, v6, v4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 13
    invoke-direct {p0, v4}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;ILcom/google/protobuf/an;)Z

    move-result v4

    if-nez v4, :cond_7

    return v1

    .line 14
    :cond_5
    invoke-direct {p0, p1, v7, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_7

    return v1

    .line 15
    :cond_6
    invoke-direct {p0, p1, v4, v3, v5}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 16
    invoke-direct {p0, v4}, Lcom/google/protobuf/aa;->a(I)Lcom/google/protobuf/an;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;ILcom/google/protobuf/an;)Z

    move-result v4

    if-nez v4, :cond_7

    return v1

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 17
    :cond_8
    iget-boolean v0, p0, Lcom/google/protobuf/aa;->h:Z

    if-eqz v0, :cond_9

    .line 18
    iget-object v0, p0, Lcom/google/protobuf/aa;->r:Lcom/google/protobuf/k;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/k;->a(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->i()Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v5
.end method
