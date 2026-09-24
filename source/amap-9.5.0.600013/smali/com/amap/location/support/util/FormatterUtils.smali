.class public Lcom/amap/location/support/util/FormatterUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatIpAddress(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/amap/location/support/util/FormatterUtils;->intToInet4AddressHTH(I)Ljava/net/Inet4Address;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static intToInet4AddressHTH(I)Ljava/net/Inet4Address;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 4
    shr-int/lit8 v1, p0, 0x18

    .line 6
    and-int/lit16 v1, v1, 0xff

    .line 8
    int-to-byte v1, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-byte v1, v0, v2

    .line 12
    shr-int/lit8 v1, p0, 0x10

    .line 14
    and-int/lit16 v1, v1, 0xff

    .line 16
    int-to-byte v1, v1

    .line 17
    const/4 v2, 0x1

    .line 18
    aput-byte v1, v0, v2

    .line 20
    shr-int/lit8 v1, p0, 0x8

    .line 22
    and-int/lit16 v1, v1, 0xff

    .line 24
    int-to-byte v1, v1

    .line 25
    const/4 v2, 0x2

    .line 26
    aput-byte v1, v0, v2

    .line 28
    and-int/lit16 p0, p0, 0xff

    .line 30
    int-to-byte p0, p0

    .line 31
    const/4 v1, 0x3

    .line 32
    aput-byte p0, v0, v1

    .line 34
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object p0

    .line 41
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 43
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 46
    throw p0
.end method
