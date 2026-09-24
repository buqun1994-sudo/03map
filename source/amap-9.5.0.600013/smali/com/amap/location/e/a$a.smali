.class Lcom/amap/location/e/a$a;
.super Lcom/amap/location/support/fence/RectangleFence;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/amap/location/support/fence/RectangleFence;-><init>(DDDD)V

    .line 4
    const-string p1, ""

    .line 6
    iput-object p1, p0, Lcom/amap/location/e/a$a;->a:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Lcom/amap/location/e/a$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/amap/location/e/a$a;->b(Ljava/lang/String;)Lcom/amap/location/e/a$a;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static b(Ljava/lang/String;)Lcom/amap/location/e/a$a;
    .locals 12

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v1, "getLocationFenceFromString"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "GnssAlgo3DMADetector"

    .line 28
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    invoke-static {p0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz v0, :cond_1

    .line 38
    return-object v1

    .line 39
    :cond_1
    const/4 v0, 0x2

    .line 40
    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/location/support/security/Base64;->decode(Ljava/lang/String;I)[B

    .line 43
    move-result-object p0

    .line 44
    new-instance v2, Ljava/lang/String;

    .line 46
    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    .line 49
    const-string p0, ","

    .line 51
    invoke-virtual {v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    array-length v2, p0

    .line 56
    const/4 v3, 0x4

    .line 57
    if-lt v2, v3, :cond_2

    .line 59
    const/4 v2, 0x0

    .line 60
    aget-object v2, p0, v2

    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 69
    move-result-wide v4

    .line 70
    const/4 v2, 0x1

    .line 71
    aget-object v2, p0, v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 80
    move-result-wide v8

    .line 81
    aget-object v0, p0, v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 90
    move-result-wide v6

    .line 91
    const/4 v0, 0x3

    .line 92
    aget-object p0, p0, v0

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 101
    move-result-wide v10

    .line 102
    new-instance p0, Lcom/amap/location/e/a$a;

    .line 104
    move-object v3, p0

    .line 105
    invoke-direct/range {v3 .. v11}, Lcom/amap/location/e/a$a;-><init>(DDDD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-object p0

    .line 109
    :cond_2
    return-object v1

    .line 110
    :catch_0
    move-exception p0

    .line 111
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 114
    return-object v1
.end method
