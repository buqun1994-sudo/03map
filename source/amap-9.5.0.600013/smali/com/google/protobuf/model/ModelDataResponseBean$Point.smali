.class public final Lcom/google/protobuf/model/ModelDataResponseBean$Point;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/model/ModelDataResponseBean$PointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/model/ModelDataResponseBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Point"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/model/ModelDataResponseBean$Point$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/protobuf/model/ModelDataResponseBean$Point;",
        "Lcom/google/protobuf/model/ModelDataResponseBean$Point$Builder;",
        ">;",
        "Lcom/google/protobuf/model/ModelDataResponseBean$PointOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

.field public static final LATITUDE_FIELD_NUMBER:I = 0x2

.field public static final LONGITUDE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/model/ModelDataResponseBean$Point;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private latitude_:I

.field private longitude_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    .line 3
    invoke-direct {v0}, Lcom/google/protobuf/model/ModelDataResponseBean$Point;-><init>()V

    .line 6
    sput-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    .line 8
    const-class v1, Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$9100()Lcom/google/protobuf/model/ModelDataResponseBean$Point;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    .line 3
    return-object v0
.end method

.method public static synthetic access$9200(Lcom/google/protobuf/model/ModelDataResponseBean$Point;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->setLongitude(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$9300(Lcom/google/protobuf/model/ModelDataResponseBean$Point;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->clearLongitude()V

    .line 4
    return-void
.end method

.method public static synthetic access$9400(Lcom/google/protobuf/model/ModelDataResponseBean$Point;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->setLatitude(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$9500(Lcom/google/protobuf/model/ModelDataResponseBean$Point;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->clearLatitude()V

    .line 4
    return-void
.end method

.method private clearLatitude()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->latitude_:I

    .line 4
    return-void
.end method

.method private clearLongitude()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->longitude_:I

    .line 4
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/model/ModelDataResponseBean$Point;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/model/ModelDataResponseBean$Point$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/model/ModelDataResponseBean$Point;)Lcom/google/protobuf/model/ModelDataResponseBean$Point$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/model/ModelDataResponseBean$Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/model/ModelDataResponseBean$Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/model/ModelDataResponseBean$Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/model/ModelDataResponseBean$Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/model/ModelDataResponseBean$Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/model/ModelDataResponseBean$Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/model/ModelDataResponseBean$Point;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private setLatitude(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->latitude_:I

    .line 3
    return-void
.end method

.method private setLongitude(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->longitude_:I

    .line 3
    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/protobuf/model/ModelDataResponseBean$1;->a:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    aget p1, p2, p1

    .line 9
    const/4 p2, 0x1

    .line 10
    const/4 p3, 0x0

    .line 11
    packed-switch p1, :pswitch_data_0

    .line 14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 16
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 19
    throw p1

    .line 20
    :pswitch_0
    return-object p3

    .line 21
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :pswitch_2
    sget-object p1, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->PARSER:Lcom/google/protobuf/Parser;

    .line 28
    if-nez p1, :cond_1

    .line 30
    const-class p2, Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->PARSER:Lcom/google/protobuf/Parser;

    .line 35
    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 39
    sget-object p3, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 44
    sput-object p1, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->PARSER:Lcom/google/protobuf/Parser;

    .line 46
    :cond_0
    monitor-exit p2

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_0
    return-object p1

    .line 52
    :pswitch_3
    sget-object p1, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    .line 54
    return-object p1

    .line 55
    :pswitch_4
    const/4 p1, 0x2

    .line 56
    new-array p1, p1, [Ljava/lang/Object;

    .line 58
    const/4 p3, 0x0

    .line 59
    const-string v0, "longitude_"

    .line 61
    aput-object v0, p1, p3

    .line 63
    const-string p3, "latitude_"

    .line 65
    aput-object p3, p1, p2

    .line 67
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b"

    .line 69
    sget-object p3, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    .line 71
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :pswitch_5
    new-instance p1, Lcom/google/protobuf/model/ModelDataResponseBean$Point$Builder;

    .line 78
    invoke-direct {p1, p3}, Lcom/google/protobuf/model/ModelDataResponseBean$Point$Builder;-><init>(Lcom/google/protobuf/model/ModelDataResponseBean$1;)V

    .line 81
    return-object p1

    .line 82
    :pswitch_6
    new-instance p1, Lcom/google/protobuf/model/ModelDataResponseBean$Point;

    .line 84
    invoke-direct {p1}, Lcom/google/protobuf/model/ModelDataResponseBean$Point;-><init>()V

    .line 87
    return-object p1

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLatitude()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->latitude_:I

    .line 3
    return v0
.end method

.method public getLongitude()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$Point;->longitude_:I

    .line 3
    return v0
.end method
