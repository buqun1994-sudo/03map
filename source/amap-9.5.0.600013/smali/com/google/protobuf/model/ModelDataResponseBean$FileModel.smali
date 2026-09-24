.class public final Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/model/ModelDataResponseBean$FileModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/model/ModelDataResponseBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/model/ModelDataResponseBean$FileModel$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;",
        "Lcom/google/protobuf/model/ModelDataResponseBean$FileModel$Builder;",
        ">;",
        "Lcom/google/protobuf/model/ModelDataResponseBean$FileModelOrBuilder;"
    }
.end annotation


# static fields
.field public static final CRC_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final SK_FIELD_NUMBER:I = 0x4

.field public static final URL_FIELD_NUMBER:I = 0x1

.field public static final VERSION_FIELD_NUMBER:I = 0x3


# instance fields
.field private crc_:Ljava/lang/String;

.field private sk_:Ljava/lang/String;

.field private url_:Ljava/lang/String;

.field private version_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    .line 3
    invoke-direct {v0}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;-><init>()V

    .line 6
    sput-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    .line 8
    const-class v1, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->url_:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->crc_:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->version_:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->sk_:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static synthetic access$10000(Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->setUrlBytes(Lcom/google/protobuf/ByteString;)V

    .line 4
    return-void
.end method

.method public static synthetic access$10100(Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->setCrc(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$10200(Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->clearCrc()V

    .line 4
    return-void
.end method

.method public static synthetic access$10300(Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->setCrcBytes(Lcom/google/protobuf/ByteString;)V

    .line 4
    return-void
.end method

.method public static synthetic access$10400(Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->setVersion(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$10500(Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->clearVersion()V

    .line 4
    return-void
.end method

.method public static synthetic access$10600(Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->setVersionBytes(Lcom/google/protobuf/ByteString;)V

    .line 4
    return-void
.end method

.method public static synthetic access$10700(Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->setSk(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$10800(Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->clearSk()V

    .line 4
    return-void
.end method

.method public static synthetic access$10900(Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->setSkBytes(Lcom/google/protobuf/ByteString;)V

    .line 4
    return-void
.end method

.method public static synthetic access$9700()Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    .line 3
    return-object v0
.end method

.method public static synthetic access$9800(Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->setUrl(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$9900(Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->clearUrl()V

    .line 4
    return-void
.end method

.method private clearCrc()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->getDefaultInstance()Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->getCrc()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->crc_:Ljava/lang/String;

    .line 11
    return-void
.end method

.method private clearSk()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->getDefaultInstance()Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->getSk()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->sk_:Ljava/lang/String;

    .line 11
    return-void
.end method

.method private clearUrl()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->getDefaultInstance()Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->getUrl()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->url_:Ljava/lang/String;

    .line 11
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->getDefaultInstance()Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->getVersion()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->version_:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/model/ModelDataResponseBean$FileModel$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;)Lcom/google/protobuf/model/ModelDataResponseBean$FileModel$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private setCrc(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->crc_:Ljava/lang/String;

    .line 6
    return-void
.end method

.method private setCrcBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->crc_:Ljava/lang/String;

    .line 13
    return-void
.end method

.method private setSk(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->sk_:Ljava/lang/String;

    .line 6
    return-void
.end method

.method private setSkBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->sk_:Ljava/lang/String;

    .line 13
    return-void
.end method

.method private setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->url_:Ljava/lang/String;

    .line 6
    return-void
.end method

.method private setUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->url_:Ljava/lang/String;

    .line 13
    return-void
.end method

.method private setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->version_:Ljava/lang/String;

    .line 6
    return-void
.end method

.method private setVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->version_:Ljava/lang/String;

    .line 13
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
    sget-object p1, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->PARSER:Lcom/google/protobuf/Parser;

    .line 28
    if-nez p1, :cond_1

    .line 30
    const-class p2, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->PARSER:Lcom/google/protobuf/Parser;

    .line 35
    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 39
    sget-object p3, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 44
    sput-object p1, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    .line 54
    return-object p1

    .line 55
    :pswitch_4
    const/4 p1, 0x4

    .line 56
    new-array p1, p1, [Ljava/lang/Object;

    .line 58
    const/4 p3, 0x0

    .line 59
    const-string v0, "url_"

    .line 61
    aput-object v0, p1, p3

    .line 63
    const-string p3, "crc_"

    .line 65
    aput-object p3, p1, p2

    .line 67
    const/4 p2, 0x2

    .line 68
    const-string p3, "version_"

    .line 70
    aput-object p3, p1, p2

    .line 72
    const/4 p2, 0x3

    .line 73
    const-string p3, "sk_"

    .line 75
    aput-object p3, p1, p2

    .line 77
    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208"

    .line 79
    sget-object p3, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->DEFAULT_INSTANCE:Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    .line 81
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :pswitch_5
    new-instance p1, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel$Builder;

    .line 88
    invoke-direct {p1, p3}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel$Builder;-><init>(Lcom/google/protobuf/model/ModelDataResponseBean$1;)V

    .line 91
    return-object p1

    .line 92
    :pswitch_6
    new-instance p1, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;

    .line 94
    invoke-direct {p1}, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;-><init>()V

    .line 97
    return-object p1

    .line 98
    nop

    .line 99
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

.method public getCrc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->crc_:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCrcBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->crc_:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->sk_:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSkBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->sk_:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->url_:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->url_:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->version_:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/model/ModelDataResponseBean$FileModel;->version_:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
