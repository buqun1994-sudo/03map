.class public Lcom/amap/location/c/h/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 3
    new-array v0, v0, [B

    .line 5
    fill-array-data v0, :array_0

    .line 8
    sput-object v0, Lcom/amap/location/c/h/c;->a:[B

    .line 10
    return-void

    .line 11
    :array_0
    .array-data 1
        0x3dt
        0x3dt
        0x51t
        0x41t
        0x41t
        0x45t
        0x77t
        0x41t
        0x43t
        0x30t
        0x4at
        0x50t
        0x73t
        0x74t
        0x36t
        0x4bt
        0x68t
        0x4ct
        0x7at
        0x61t
        0x58t
        0x63t
        0x35t
        0x47t
        0x31t
        0x7at
        0x44t
        0x46t
        0x4ft
        0x68t
        0x71t
        0x71t
        0x41t
        0x61t
        0x4ct
        0x36t
        0x41t
        0x42t
        0x57t
        0x35t
        0x67t
        0x55t
        0x54t
        0x71t
        0x47t
        0x44t
        0x45t
        0x4ct
        0x50t
        0x52t
        0x6at
        0x33t
        0x42t
        0x4bt
        0x4bt
        0x45t
        0x62t
        0x37t
        0x54t
        0x6ct
        0x73t
        0x7at
        0x33t
        0x6at
        0x4ct
        0x37t
        0x58t
        0x7at
        0x46t
        0x79t
        0x49t
        0x4bt
        0x34t
        0x32t
        0x2bt
        0x65t
        0x46t
        0x79t
        0x38t
        0x69t
        0x73t
        0x69t
        0x59t
        0x78t
        0x75t
        0x70t
        0x35t
        0x30t
        0x4ct
        0x51t
        0x46t
        0x56t
        0x6ct
        0x6et
        0x49t
        0x41t
        0x42t
        0x4at
        0x41t
        0x53t
        0x77t
        0x41t
        0x77t
        0x53t
        0x44t
        0x41t
        0x51t
        0x42t
        0x42t
        0x45t
        0x51t
        0x41t
        0x4et
        0x63t
        0x76t
        0x68t
        0x49t
        0x5at
        0x6ft
        0x4bt
        0x4at
        0x59t
        0x51t
        0x44t
        0x77t
        0x77t
        0x46t
        0x4dt
    .end array-data
.end method

.method public static a([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    new-instance v1, Ljava/lang/String;

    .line 5
    sget-object v2, Lcom/amap/location/c/h/c;->a:[B

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x2

    .line 26
    invoke-static {v0, v1}, Lcom/amap/location/support/security/Base64;->decode([BI)[B

    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    .line 32
    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 35
    const-string v0, "RSA"

    .line 37
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 44
    move-result-object v0

    .line 45
    const-string v1, "RSA/ECB/OAEPWITHSHA-1ANDMGF1PADDING"

    .line 47
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 55
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method
