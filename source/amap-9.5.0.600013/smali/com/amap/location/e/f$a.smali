.class Lcom/amap/location/e/f$a;
.super Lcom/amap/location/support/fence/RectangleFence;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/e/f;
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
    iput-object p1, p0, Lcom/amap/location/e/f$a;->a:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Lcom/amap/location/e/f$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/amap/location/e/f$a;->b(Ljava/lang/String;)Lcom/amap/location/e/f$a;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static b(Ljava/lang/String;)Lcom/amap/location/e/f$a;
    .locals 12

    .line 1
    invoke-static {p0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    const/4 v0, 0x2

    .line 10
    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/location/support/security/Base64;->decode(Ljava/lang/String;I)[B

    .line 13
    move-result-object p0

    .line 14
    new-instance v2, Ljava/lang/String;

    .line 16
    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    .line 19
    const-string p0, ","

    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    array-length v2, p0

    .line 26
    const/4 v3, 0x4

    .line 27
    if-lt v2, v3, :cond_1

    .line 29
    const/4 v2, 0x0

    .line 30
    aget-object v2, p0, v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 39
    move-result-wide v4

    .line 40
    const/4 v2, 0x1

    .line 41
    aget-object v2, p0, v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 50
    move-result-wide v8

    .line 51
    aget-object v0, p0, v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 60
    move-result-wide v6

    .line 61
    const/4 v0, 0x3

    .line 62
    aget-object p0, p0, v0

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 71
    move-result-wide v10

    .line 72
    new-instance p0, Lcom/amap/location/e/f$a;

    .line 74
    move-object v3, p0

    .line 75
    invoke-direct/range {v3 .. v11}, Lcom/amap/location/e/f$a;-><init>(DDDD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-object p0

    .line 79
    :cond_1
    return-object v1

    .line 80
    :catch_0
    move-exception p0

    .line 81
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 84
    return-object v1
.end method
