.class final Lcom/google/protobuf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/c$a;
    }
.end annotation


# direct methods
.method public static a(I[BIILcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/google/protobuf/as;Lcom/google/protobuf/c$a;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "**>;",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;",
            "Lcom/google/protobuf/as<",
            "Lcom/google/protobuf/UnknownFieldSetLite;",
            "Lcom/google/protobuf/UnknownFieldSetLite;",
            ">;",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p4, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    ushr-int/lit8 p0, p0, 0x3

    .line 57
    iget-object v1, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$a;->isRepeated()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$a;->isPacked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    sget-object p3, Lcom/google/protobuf/c$1;->a:[I

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p3, p3, v1

    packed-switch p3, :pswitch_data_0

    .line 59
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Type cannot be packed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    .line 60
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$a;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :pswitch_0
    new-instance p3, Lcom/google/protobuf/p;

    invoke-direct {p3}, Lcom/google/protobuf/p;-><init>()V

    .line 62
    invoke-static {p1, p2, p3, p7}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result p1

    .line 63
    iget-object p2, p4, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 64
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object p7

    if-ne p2, p7, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p2

    .line 65
    :goto_0
    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    .line 66
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$a;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object p2

    .line 67
    invoke-static {p0, p3, p2, v2, p6}, Lcom/google/protobuf/ap;->a(ILjava/util/List;Lcom/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/UnknownFieldSetLite;

    if-eqz p0, :cond_1

    .line 68
    iput-object p0, p4, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 69
    :cond_1
    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {v0, p0, p3}, Lcom/google/protobuf/FieldSet;->a(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 70
    :pswitch_1
    new-instance p0, Lcom/google/protobuf/s;

    invoke-direct {p0}, Lcom/google/protobuf/s;-><init>()V

    .line 71
    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/c;->i([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result p1

    .line 72
    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->a(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 73
    :pswitch_2
    new-instance p0, Lcom/google/protobuf/p;

    invoke-direct {p0}, Lcom/google/protobuf/p;-><init>()V

    .line 74
    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/c;->h([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result p1

    .line 75
    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->a(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 76
    :pswitch_3
    new-instance p0, Lcom/google/protobuf/e;

    invoke-direct {p0}, Lcom/google/protobuf/e;-><init>()V

    .line 77
    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/c;->g([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result p1

    .line 78
    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->a(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 79
    :pswitch_4
    new-instance p0, Lcom/google/protobuf/p;

    invoke-direct {p0}, Lcom/google/protobuf/p;-><init>()V

    .line 80
    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/c;->c([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result p1

    .line 81
    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->a(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 82
    :pswitch_5
    new-instance p0, Lcom/google/protobuf/s;

    invoke-direct {p0}, Lcom/google/protobuf/s;-><init>()V

    .line 83
    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/c;->d([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result p1

    .line 84
    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->a(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 85
    :pswitch_6
    new-instance p0, Lcom/google/protobuf/p;

    invoke-direct {p0}, Lcom/google/protobuf/p;-><init>()V

    .line 86
    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result p1

    .line 87
    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->a(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 88
    :pswitch_7
    new-instance p0, Lcom/google/protobuf/s;

    invoke-direct {p0}, Lcom/google/protobuf/s;-><init>()V

    .line 89
    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result p1

    .line 90
    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->a(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 91
    :pswitch_8
    new-instance p0, Lcom/google/protobuf/n;

    invoke-direct {p0}, Lcom/google/protobuf/n;-><init>()V

    .line 92
    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/c;->e([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result p1

    .line 93
    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->a(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 94
    :pswitch_9
    new-instance p0, Lcom/google/protobuf/i;

    invoke-direct {p0}, Lcom/google/protobuf/i;-><init>()V

    .line 95
    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/c;->f([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I

    move-result p1

    .line 96
    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->a(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 97
    :cond_2
    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v1

    sget-object v3, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v1, v3, :cond_5

    .line 98
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 99
    iget-object p1, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$a;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object p1

    iget p3, p7, Lcom/google/protobuf/c$a;->a:I

    invoke-interface {p1, p3}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object p1

    if-nez p1, :cond_4

    .line 100
    iget-object p1, p4, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 101
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object p3

    if-ne p1, p3, :cond_3

    .line 102
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object p1

    .line 103
    iput-object p1, p4, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 104
    :cond_3
    iget p3, p7, Lcom/google/protobuf/c$a;->a:I

    invoke-static {p0, p3, p1, p6}, Lcom/google/protobuf/ap;->a(IILjava/lang/Object;Lcom/google/protobuf/as;)Ljava/lang/Object;

    return p2

    .line 105
    :cond_4
    iget p0, p7, Lcom/google/protobuf/c$a;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_4

    .line 106
    :cond_5
    sget-object p4, Lcom/google/protobuf/c$1;->a:[I

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result p6

    aget p4, p4, p6

    packed-switch p4, :pswitch_data_1

    goto/16 :goto_4

    .line 107
    :pswitch_a
    invoke-static {}, Lcom/google/protobuf/ai;->a()Lcom/google/protobuf/ai;

    move-result-object p0

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/google/protobuf/ai;->a(Ljava/lang/Class;)Lcom/google/protobuf/an;

    move-result-object p0

    .line 108
    invoke-static {p0, p1, p2, p3, p7}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/an;[BIILcom/google/protobuf/c$a;)I

    move-result p2

    .line 109
    iget-object v2, p7, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_b
    shl-int/lit8 p0, p0, 0x3

    or-int/lit8 v5, p0, 0x4

    .line 110
    invoke-static {}, Lcom/google/protobuf/ai;->a()Lcom/google/protobuf/ai;

    move-result-object p0

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/google/protobuf/ai;->a(Ljava/lang/Class;)Lcom/google/protobuf/an;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p7

    .line 111
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/an;[BIIILcom/google/protobuf/c$a;)I

    move-result p2

    .line 112
    iget-object v2, p7, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    goto/16 :goto_4

    .line 113
    :pswitch_c
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/c;->c([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 114
    iget-object v2, p7, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    goto/16 :goto_4

    .line 115
    :pswitch_d
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/c;->e([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 116
    iget-object v2, p7, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    goto/16 :goto_4

    .line 117
    :pswitch_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shouldn\'t reach here."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :pswitch_f
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 119
    iget-wide p0, p7, Lcom/google/protobuf/c$a;->b:J

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_4

    .line 120
    :pswitch_10
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 121
    iget p0, p7, Lcom/google/protobuf/c$a;->a:I

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    .line 122
    :pswitch_11
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 123
    iget-wide p0, p7, Lcom/google/protobuf/c$a;->b:J

    const-wide/16 p3, 0x0

    cmp-long p6, p0, p3

    if-eqz p6, :cond_6

    const/4 p0, 0x1

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_4

    .line 124
    :pswitch_12
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->a([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    .line 125
    :pswitch_13
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->b([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_3

    .line 126
    :pswitch_14
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 127
    iget p0, p7, Lcom/google/protobuf/c$a;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    .line 128
    :pswitch_15
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 129
    iget-wide p0, p7, Lcom/google/protobuf/c$a;->b:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_4

    .line 130
    :pswitch_16
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->d([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_2
    add-int/lit8 p2, p2, 0x4

    goto :goto_4

    .line 131
    :pswitch_17
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->c([BI)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_3
    add-int/lit8 p2, p2, 0x8

    .line 132
    :goto_4
    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 133
    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {v0, p0, v2}, Lcom/google/protobuf/FieldSet;->b(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_6

    .line 134
    :cond_7
    sget-object p0, Lcom/google/protobuf/c$1;->a:[I

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/16 p1, 0x11

    if-eq p0, p1, :cond_8

    const/16 p1, 0x12

    if-eq p0, p1, :cond_8

    goto :goto_5

    .line 135
    :cond_8
    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/FieldSet;->b(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 136
    invoke-static {p0, v2}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 137
    :cond_9
    :goto_5
    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {v0, p0, v2}, Lcom/google/protobuf/FieldSet;->a(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    :goto_6
    move p1, p2

    :goto_7
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static a(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .line 31
    check-cast p4, Lcom/google/protobuf/p;

    .line 32
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 33
    iget v0, p5, Lcom/google/protobuf/c$a;->a:I

    invoke-virtual {p4, v0}, Lcom/google/protobuf/p;->addInt(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    .line 34
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 35
    iget v1, p5, Lcom/google/protobuf/c$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 37
    iget v0, p5, Lcom/google/protobuf/c$a;->a:I

    invoke-virtual {p4, v0}, Lcom/google/protobuf/p;->addInt(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static a(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/c$a;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 138
    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_b

    .line 139
    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    .line 140
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->a([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 141
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 142
    :cond_1
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v6

    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v7, v0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    .line 143
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v2

    .line 144
    iget p2, p5, Lcom/google/protobuf/c$a;->a:I

    if-ne p2, v7, :cond_2

    move v0, p2

    move p2, v2

    goto :goto_1

    :cond_2
    move v0, p2

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, p5

    .line 145
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/c;->a(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/c$a;)I

    move-result v0

    move v8, v0

    move v0, p2

    move p2, v8

    goto :goto_0

    :cond_3
    :goto_1
    if-gt p2, p3, :cond_4

    if-ne v0, v7, :cond_4

    .line 146
    invoke-virtual {p4, p0, v6}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return p2

    .line 147
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 148
    :cond_5
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 149
    iget p3, p5, Lcom/google/protobuf/c$a;->a:I

    if-ltz p3, :cond_8

    .line 150
    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_7

    if-nez p3, :cond_6

    .line 151
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_2

    .line 152
    :cond_6
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    :goto_2
    add-int/2addr p2, p3

    return p2

    .line 153
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 154
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 155
    :cond_9
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->b([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    .line 156
    :cond_a
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 157
    iget-wide p2, p5, Lcom/google/protobuf/c$a;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return p1

    .line 158
    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static a(I[BIILcom/google/protobuf/c$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 159
    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 161
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    .line 162
    invoke-static {p1, p2, p4}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 163
    iget v0, p4, Lcom/google/protobuf/c$a;->a:I

    if-ne v0, p0, :cond_2

    goto :goto_1

    .line 164
    :cond_2
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/protobuf/c;->a(I[BIILcom/google/protobuf/c$a;)I

    move-result p2

    goto :goto_0

    :cond_3
    :goto_1
    if-gt p2, p3, :cond_4

    if-ne v0, p0, :cond_4

    return p2

    .line 165
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 166
    :cond_5
    invoke-static {p1, p2, p4}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p0

    .line 167
    iget p1, p4, Lcom/google/protobuf/c$a;->a:I

    add-int/2addr p0, p1

    return p0

    :cond_6
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 168
    :cond_7
    invoke-static {p1, p2, p4}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result p0

    return p0

    .line 169
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static a(I[BIILjava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/as;Lcom/google/protobuf/c$a;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/MessageLite;",
            "Lcom/google/protobuf/as<",
            "Lcom/google/protobuf/UnknownFieldSetLite;",
            "Lcom/google/protobuf/UnknownFieldSetLite;",
            ">;",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    .line 50
    iget-object v1, p7, Lcom/google/protobuf/c$a;->d:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 51
    invoke-virtual {v1, p5, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v5

    if-nez v5, :cond_0

    .line 52
    invoke-static {p4}, Lcom/google/protobuf/aa;->c(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p7

    .line 53
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/c;->a(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/c$a;)I

    move-result v0

    return v0

    .line 54
    :cond_0
    move-object v4, p4

    check-cast v4, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/google/protobuf/FieldSet;

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p6

    move-object v7, p7

    .line 55
    invoke-static/range {v0 .. v7}, Lcom/google/protobuf/c;->a(I[BIILcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/google/protobuf/as;Lcom/google/protobuf/c$a;)I

    move-result v0

    return v0
.end method

.method public static a(I[BILcom/google/protobuf/c$a;)I
    .locals 1

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    .line 4
    aget-byte p2, p1, p2

    if-ltz p2, :cond_0

    shl-int/lit8 p1, p2, 0x7

    or-int/2addr p0, p1

    .line 5
    iput p0, p3, Lcom/google/protobuf/c$a;->a:I

    return v0

    :cond_0
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 6
    aget-byte v0, p1, v0

    if-ltz v0, :cond_1

    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    .line 7
    iput p0, p3, Lcom/google/protobuf/c$a;->a:I

    return p2

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    .line 8
    aget-byte p2, p1, p2

    if-ltz p2, :cond_2

    shl-int/lit8 p1, p2, 0x15

    or-int/2addr p0, p1

    .line 9
    iput p0, p3, Lcom/google/protobuf/c$a;->a:I

    return v0

    :cond_2
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 10
    aget-byte v0, p1, v0

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    .line 11
    iput p0, p3, Lcom/google/protobuf/c$a;->a:I

    return p2

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 12
    aget-byte p2, p1, p2

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_0

    .line 13
    :cond_4
    iput p0, p3, Lcom/google/protobuf/c$a;->a:I

    return v0
.end method

.method public static a(J[BILcom/google/protobuf/c$a;)I
    .locals 7

    const-wide/16 v0, 0x7f

    and-long/2addr p0, v0

    add-int/lit8 v0, p3, 0x1

    .line 14
    aget-byte p3, p2, p3

    and-int/lit8 v1, p3, 0x7f

    int-to-long v1, v1

    const/4 v3, 0x7

    shl-long/2addr v1, v3

    or-long/2addr p0, v1

    const/4 v1, 0x7

    :goto_0
    if-gez p3, :cond_0

    add-int/lit8 p3, v0, 0x1

    .line 15
    aget-byte v0, p2, v0

    add-int/2addr v1, v3

    and-int/lit8 v2, v0, 0x7f

    int-to-long v4, v2

    shl-long/2addr v4, v1

    or-long/2addr p0, v4

    move v6, v0

    move v0, p3

    move p3, v6

    goto :goto_0

    .line 16
    :cond_0
    iput-wide p0, p4, Lcom/google/protobuf/c$a;->b:J

    return v0
.end method

.method public static a(Lcom/google/protobuf/an;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/an<",
            "*>;I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
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

    .line 44
    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/an;[BIILcom/google/protobuf/c$a;)I

    move-result p3

    .line 45
    iget-object v0, p6, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    .line 46
    invoke-static {p2, p3, p6}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 47
    iget v1, p6, Lcom/google/protobuf/c$a;->a:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/an;[BIILcom/google/protobuf/c$a;)I

    move-result p3

    .line 49
    iget-object v0, p6, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method public static a(Lcom/google/protobuf/an;[BIIILcom/google/protobuf/c$a;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    check-cast p0, Lcom/google/protobuf/aa;

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/aa;->a()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 28
    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/aa;->a(Ljava/lang/Object;[BIIILcom/google/protobuf/c$a;)I

    move-result p1

    .line 29
    invoke-virtual {p0, v7}, Lcom/google/protobuf/aa;->d(Ljava/lang/Object;)V

    .line 30
    iput-object v7, p5, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    return p1
.end method

.method public static a(Lcom/google/protobuf/an;[BIILcom/google/protobuf/c$a;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 18
    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    .line 19
    invoke-static {p2, p1, v0, p4}, Lcom/google/protobuf/c;->a(I[BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 20
    iget p2, p4, Lcom/google/protobuf/c$a;->a:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    .line 21
    invoke-interface {p0}, Lcom/google/protobuf/an;->a()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    .line 22
    invoke-interface/range {v0 .. v5}, Lcom/google/protobuf/an;->a(Ljava/lang/Object;[BIILcom/google/protobuf/c$a;)V

    .line 23
    invoke-interface {p0, p3}, Lcom/google/protobuf/an;->d(Ljava/lang/Object;)V

    .line 24
    iput-object p3, p4, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    return p2

    .line 25
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static a([BI)I
    .locals 2

    .line 17
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static a([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
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

    .line 38
    check-cast p2, Lcom/google/protobuf/p;

    .line 39
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 40
    iget v0, p3, Lcom/google/protobuf/c$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 41
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 42
    iget v1, p3, Lcom/google/protobuf/c$a;->a:I

    invoke-virtual {p2, v1}, Lcom/google/protobuf/p;->addInt(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 43
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static a([BILcom/google/protobuf/c$a;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 1
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 2
    iput p1, p2, Lcom/google/protobuf/c$a;->a:I

    return v0

    .line 3
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/google/protobuf/c;->a(I[BILcom/google/protobuf/c$a;)I

    move-result p0

    return p0
.end method

.method public static b(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .line 5
    check-cast p4, Lcom/google/protobuf/s;

    .line 6
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 7
    iget-wide v0, p5, Lcom/google/protobuf/c$a;->b:J

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/s;->addLong(J)V

    :goto_0
    if-ge p2, p3, :cond_1

    .line 8
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 9
    iget v1, p5, Lcom/google/protobuf/c$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 11
    iget-wide v0, p5, Lcom/google/protobuf/c$a;->b:J

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/s;->addLong(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static b(Lcom/google/protobuf/an;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/an;",
            "I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
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

    and-int/lit8 v0, p1, -0x8

    or-int/lit8 v0, v0, 0x4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, v0

    move-object v6, p6

    .line 18
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/an;[BIIILcom/google/protobuf/c$a;)I

    move-result p3

    .line 19
    iget-object v1, p6, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    .line 20
    invoke-static {p2, p3, p6}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v3

    .line 21
    iget v1, p6, Lcom/google/protobuf/c$a;->a:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p0

    move-object v2, p2

    move v4, p4

    move v5, v0

    move-object v6, p6

    .line 22
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/c;->a(Lcom/google/protobuf/an;[BIIILcom/google/protobuf/c$a;)I

    move-result p3

    .line 23
    iget-object v1, p6, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method public static b([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
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

    .line 12
    check-cast p2, Lcom/google/protobuf/s;

    .line 13
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 14
    iget v0, p3, Lcom/google/protobuf/c$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 15
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 16
    iget-wide v1, p3, Lcom/google/protobuf/c$a;->b:J

    invoke-virtual {p2, v1, v2}, Lcom/google/protobuf/s;->addLong(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 17
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static b([BILcom/google/protobuf/c$a;)I
    .locals 5

    add-int/lit8 v0, p1, 0x1

    .line 1
    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    .line 2
    iput-wide v1, p2, Lcom/google/protobuf/c$a;->b:J

    return v0

    .line 3
    :cond_0
    invoke-static {v1, v2, p0, v0, p2}, Lcom/google/protobuf/c;->a(J[BILcom/google/protobuf/c$a;)I

    move-result p0

    return p0
.end method

.method public static b([BI)J
    .locals 7

    .line 4
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static c([BI)D
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/protobuf/c;->b([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static c(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .line 7
    check-cast p4, Lcom/google/protobuf/p;

    .line 8
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->a([BI)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/protobuf/p;->addInt(I)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-ge p2, p3, :cond_1

    .line 9
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 10
    iget v1, p5, Lcom/google/protobuf/c$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-static {p1, v0}, Lcom/google/protobuf/c;->a([BI)I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/google/protobuf/p;->addInt(I)V

    add-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static c([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
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

    .line 12
    check-cast p2, Lcom/google/protobuf/p;

    .line 13
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 14
    iget p3, p3, Lcom/google/protobuf/c$a;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    .line 15
    invoke-static {p0, p1}, Lcom/google/protobuf/c;->a([BI)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/p;->addInt(I)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    .line 16
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static c([BILcom/google/protobuf/c$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 3
    iget v0, p2, Lcom/google/protobuf/c$a;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    .line 4
    iput-object p0, p2, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    return p1

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static d([BI)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/protobuf/c;->a([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static d(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .line 7
    check-cast p4, Lcom/google/protobuf/s;

    .line 8
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->b([BI)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/s;->addLong(J)V

    add-int/lit8 p2, p2, 0x8

    :goto_0
    if-ge p2, p3, :cond_1

    .line 9
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 10
    iget v1, p5, Lcom/google/protobuf/c$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-static {p1, v0}, Lcom/google/protobuf/c;->b([BI)J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/google/protobuf/s;->addLong(J)V

    add-int/lit8 p2, v0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static d([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
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

    .line 12
    check-cast p2, Lcom/google/protobuf/s;

    .line 13
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 14
    iget p3, p3, Lcom/google/protobuf/c$a;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    .line 15
    invoke-static {p0, p1}, Lcom/google/protobuf/c;->b([BI)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/s;->addLong(J)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    .line 16
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static d([BILcom/google/protobuf/c$a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 3
    iget v0, p2, Lcom/google/protobuf/c$a;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    .line 4
    iput-object p0, p2, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    return p1

    .line 5
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/av;->b([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static e(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .line 8
    check-cast p4, Lcom/google/protobuf/n;

    .line 9
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->d([BI)F

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/protobuf/n;->addFloat(F)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-ge p2, p3, :cond_1

    .line 10
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 11
    iget v1, p5, Lcom/google/protobuf/c$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    invoke-static {p1, v0}, Lcom/google/protobuf/c;->d([BI)F

    move-result p2

    invoke-virtual {p4, p2}, Lcom/google/protobuf/n;->addFloat(F)V

    add-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static e([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
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

    .line 13
    check-cast p2, Lcom/google/protobuf/n;

    .line 14
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 15
    iget p3, p3, Lcom/google/protobuf/c$a;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    .line 16
    invoke-static {p0, p1}, Lcom/google/protobuf/c;->d([BI)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/n;->addFloat(F)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    .line 17
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static e([BILcom/google/protobuf/c$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 2
    iget v0, p2, Lcom/google/protobuf/c$a;->a:I

    if-ltz v0, :cond_2

    .line 3
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p0, p2, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    return p1

    .line 5
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object p0

    iput-object p0, p2, Lcom/google/protobuf/c$a;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 7
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static f(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .line 1
    check-cast p4, Lcom/google/protobuf/i;

    .line 2
    invoke-static {p1, p2}, Lcom/google/protobuf/c;->c([BI)D

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/i;->addDouble(D)V

    add-int/lit8 p2, p2, 0x8

    :goto_0
    if-ge p2, p3, :cond_1

    .line 3
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 4
    iget v1, p5, Lcom/google/protobuf/c$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p1, v0}, Lcom/google/protobuf/c;->c([BI)D

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/google/protobuf/i;->addDouble(D)V

    add-int/lit8 p2, v0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static f([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
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

    .line 6
    check-cast p2, Lcom/google/protobuf/i;

    .line 7
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 8
    iget p3, p3, Lcom/google/protobuf/c$a;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    .line 9
    invoke-static {p0, p1}, Lcom/google/protobuf/c;->c([BI)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/i;->addDouble(D)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    .line 10
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static g(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .line 1
    check-cast p4, Lcom/google/protobuf/e;

    .line 2
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 3
    iget-wide v0, p5, Lcom/google/protobuf/c$a;->b:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p4, v0}, Lcom/google/protobuf/e;->addBoolean(Z)V

    :goto_1
    if-ge p2, p3, :cond_3

    .line 4
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 5
    iget v1, p5, Lcom/google/protobuf/c$a;->a:I

    if-eq p0, v1, :cond_1

    goto :goto_3

    .line 6
    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 7
    iget-wide v0, p5, Lcom/google/protobuf/c$a;->b:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p4, v0}, Lcom/google/protobuf/e;->addBoolean(Z)V

    goto :goto_1

    :cond_3
    :goto_3
    return p2
.end method

.method public static g([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
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

    .line 8
    check-cast p2, Lcom/google/protobuf/e;

    .line 9
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 10
    iget v0, p3, Lcom/google/protobuf/c$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_1

    .line 11
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 12
    iget-wide v1, p3, Lcom/google/protobuf/c$a;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Lcom/google/protobuf/e;->addBoolean(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    return p1

    .line 13
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static h(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .line 1
    check-cast p4, Lcom/google/protobuf/p;

    .line 2
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 3
    iget v0, p5, Lcom/google/protobuf/c$a;->a:I

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/protobuf/p;->addInt(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    .line 4
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 5
    iget v1, p5, Lcom/google/protobuf/c$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 7
    iget v0, p5, Lcom/google/protobuf/c$a;->a:I

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/protobuf/p;->addInt(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static h([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
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

    .line 8
    check-cast p2, Lcom/google/protobuf/p;

    .line 9
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 10
    iget v0, p3, Lcom/google/protobuf/c$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 11
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 12
    iget v1, p3, Lcom/google/protobuf/c$a;->a:I

    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/protobuf/p;->addInt(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 13
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static i(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .line 1
    check-cast p4, Lcom/google/protobuf/s;

    .line 2
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 3
    iget-wide v0, p5, Lcom/google/protobuf/c$a;->b:J

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/s;->addLong(J)V

    :goto_0
    if-ge p2, p3, :cond_1

    .line 4
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result v0

    .line 5
    iget v1, p5, Lcom/google/protobuf/c$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result p2

    .line 7
    iget-wide v0, p5, Lcom/google/protobuf/c$a;->b:J

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/s;->addLong(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static i([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
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

    .line 8
    check-cast p2, Lcom/google/protobuf/s;

    .line 9
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 10
    iget v0, p3, Lcom/google/protobuf/c$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 11
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/c;->b([BILcom/google/protobuf/c$a;)I

    move-result p1

    .line 12
    iget-wide v1, p3, Lcom/google/protobuf/c$a;->b:J

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/protobuf/s;->addLong(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 13
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static j(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    .line 4
    move-result p2

    .line 5
    iget v0, p5, Lcom/google/protobuf/c$a;->a:I

    .line 7
    if-ltz v0, :cond_5

    .line 9
    const-string v1, ""

    .line 11
    if-nez v0, :cond_0

    .line 13
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    new-instance v2, Ljava/lang/String;

    .line 19
    sget-object v3, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 21
    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 24
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :goto_0
    add-int/2addr p2, v0

    .line 28
    :goto_1
    if-ge p2, p3, :cond_4

    .line 30
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    .line 33
    move-result v0

    .line 34
    iget v2, p5, Lcom/google/protobuf/c$a;->a:I

    .line 36
    if-eq p0, v2, :cond_1

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    .line 42
    move-result p2

    .line 43
    iget v0, p5, Lcom/google/protobuf/c$a;->a:I

    .line 45
    if-ltz v0, :cond_3

    .line 47
    if-nez v0, :cond_2

    .line 49
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    new-instance v2, Ljava/lang/String;

    .line 55
    sget-object v3, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 57
    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 60
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 67
    move-result-object p0

    .line 68
    throw p0

    .line 69
    :cond_4
    :goto_2
    return p2

    .line 70
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 73
    move-result-object p0

    .line 74
    throw p0
.end method

.method public static k(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    .line 4
    move-result p2

    .line 5
    iget v0, p5, Lcom/google/protobuf/c$a;->a:I

    .line 7
    if-ltz v0, :cond_7

    .line 9
    const-string v1, ""

    .line 11
    if-nez v0, :cond_0

    .line 13
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    add-int v2, p2, v0

    .line 19
    invoke-static {p1, p2, v2}, Lcom/google/protobuf/av;->a([BII)Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_6

    .line 25
    new-instance v3, Ljava/lang/String;

    .line 27
    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 29
    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 32
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :goto_0
    move p2, v2

    .line 36
    :goto_1
    if-ge p2, p3, :cond_5

    .line 38
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    .line 41
    move-result v0

    .line 42
    iget v2, p5, Lcom/google/protobuf/c$a;->a:I

    .line 44
    if-eq p0, v2, :cond_1

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    .line 50
    move-result p2

    .line 51
    iget v0, p5, Lcom/google/protobuf/c$a;->a:I

    .line 53
    if-ltz v0, :cond_4

    .line 55
    if-nez v0, :cond_2

    .line 57
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    add-int v2, p2, v0

    .line 63
    invoke-static {p1, p2, v2}, Lcom/google/protobuf/av;->a([BII)Z

    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_3

    .line 69
    new-instance v3, Ljava/lang/String;

    .line 71
    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 73
    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 76
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 83
    move-result-object p0

    .line 84
    throw p0

    .line 85
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 88
    move-result-object p0

    .line 89
    throw p0

    .line 90
    :cond_5
    :goto_2
    return p2

    .line 91
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 94
    move-result-object p0

    .line 95
    throw p0

    .line 96
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 99
    move-result-object p0

    .line 100
    throw p0
.end method

.method public static l(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/c$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/c$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    .line 4
    move-result p2

    .line 5
    iget v0, p5, Lcom/google/protobuf/c$a;->a:I

    .line 7
    if-ltz v0, :cond_7

    .line 9
    array-length v1, p1

    .line 10
    sub-int/2addr v1, p2

    .line 11
    if-gt v0, v1, :cond_6

    .line 13
    if-nez v0, :cond_0

    .line 15
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 17
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {p1, p2, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :goto_0
    add-int/2addr p2, v0

    .line 29
    :goto_1
    if-ge p2, p3, :cond_5

    .line 31
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    .line 34
    move-result v0

    .line 35
    iget v1, p5, Lcom/google/protobuf/c$a;->a:I

    .line 37
    if-eq p0, v1, :cond_1

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/c;->a([BILcom/google/protobuf/c$a;)I

    .line 43
    move-result p2

    .line 44
    iget v0, p5, Lcom/google/protobuf/c$a;->a:I

    .line 46
    if-ltz v0, :cond_4

    .line 48
    array-length v1, p1

    .line 49
    sub-int/2addr v1, p2

    .line 50
    if-gt v0, v1, :cond_3

    .line 52
    if-nez v0, :cond_2

    .line 54
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 56
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-static {p1, p2, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    .line 63
    move-result-object v1

    .line 64
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 71
    move-result-object p0

    .line 72
    throw p0

    .line 73
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 76
    move-result-object p0

    .line 77
    throw p0

    .line 78
    :cond_5
    :goto_2
    return p2

    .line 79
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 82
    move-result-object p0

    .line 83
    throw p0

    .line 84
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 87
    move-result-object p0

    .line 88
    throw p0
.end method
