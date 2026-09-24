.class public Lcom/amap/location/e/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static A:I = 0x3

.field public static B:Ljava/lang/String; = "tkf"

.field public static C:I = 0x5

.field public static D:I = 0xa

.field public static E:I = 0x0

.field public static F:Z = false

.field public static G:I = 0x0

.field public static H:Ljava/lang/String; = "https://aloc-gnss-eph.amap.com/gnss-3fence"

.field public static I:Ljava/lang/String; = "https://aloc-gnss-eph.amap.com/gnss-3model"

.field public static J:Ljava/lang/String; = "V1"

.field public static a:Ljava/lang/String; = null

.field public static b:Z = false

.field public static c:Z = true

.field public static d:J = 0x1b7740L

.field public static e:J = 0x3e8L

.field public static f:I = 0x3

.field public static g:I = 0x3

.field public static h:I = 0x708

.field public static i:I = 0x14

.field public static j:Ljava/lang/String; = "https://aloc-gnss-eph.amap.com/gnss-fence"

.field public static k:Ljava/lang/String; = "https://aloc-gnss-eph.aimap.com/gnss-fence"

.field public static l:Ljava/lang/String; = "https://aloc-gnss-eph.amap.com/gnss-model/v2/"

.field public static m:Ljava/lang/String; = "https://aloc-gnss-eph.aimap.com/gnss-model/v2/"

.field public static n:Ljava/lang/String; = "v2"

.field public static o:I = 0x0

.field public static p:[I = null

.field public static q:Z = false

.field public static r:F = 5000.0f

.field public static s:I = 0x4

.field public static t:I = 0x0

.field public static u:I = 0xc8

.field public static v:Z = false

.field public static w:I = 0x14

.field public static x:I = 0x28

.field public static y:I = 0x19

.field public static z:I = 0xa0


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [I

    .line 4
    sput-object v0, Lcom/amap/location/e/a/d;->p:[I

    .line 6
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    if-eqz p0, :cond_1

    .line 3
    :try_start_0
    const-string v0, "filter"

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    sput-boolean v0, Lcom/amap/location/e/a/d;->b:Z

    .line 12
    const-string v0, "isCity"

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 18
    move-result v0

    .line 19
    sput-boolean v0, Lcom/amap/location/e/a/d;->c:Z

    .line 21
    const-string v0, "dc"

    .line 23
    sget v2, Lcom/amap/location/e/a/d;->f:I

    .line 25
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 28
    move-result v0

    .line 29
    sput v0, Lcom/amap/location/e/a/d;->f:I

    .line 31
    const-string v0, "ert"

    .line 33
    sget-wide v2, Lcom/amap/location/e/a/d;->d:J

    .line 35
    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 38
    move-result-wide v2

    .line 39
    sput-wide v2, Lcom/amap/location/e/a/d;->d:J

    .line 41
    const-string v0, "nc"

    .line 43
    sget v2, Lcom/amap/location/e/a/d;->g:I

    .line 45
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 48
    move-result v0

    .line 49
    sput v0, Lcom/amap/location/e/a/d;->g:I

    .line 51
    const-string v0, "reqt"

    .line 53
    sget-wide v2, Lcom/amap/location/e/a/d;->e:J

    .line 55
    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 58
    move-result-wide v2

    .line 59
    sput-wide v2, Lcom/amap/location/e/a/d;->e:J

    .line 61
    const-string v0, "logc"

    .line 63
    sget v2, Lcom/amap/location/e/a/d;->h:I

    .line 65
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 68
    move-result v0

    .line 69
    sput v0, Lcom/amap/location/e/a/d;->h:I

    .line 71
    const-string v0, "errorc"

    .line 73
    sget v2, Lcom/amap/location/e/a/d;->i:I

    .line 75
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 78
    move-result v0

    .line 79
    sput v0, Lcom/amap/location/e/a/d;->i:I

    .line 81
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 84
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    const/16 v2, 0xf

    .line 87
    const-string v3, "murl"

    .line 89
    const-string v4, "furl"

    .line 91
    if-ne v0, v2, :cond_0

    .line 93
    :try_start_1
    sget-object v0, Lcom/amap/location/e/a/d;->k:Ljava/lang/String;

    .line 95
    invoke-virtual {p0, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    sput-object v0, Lcom/amap/location/e/a/d;->j:Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/amap/location/e/a/d;->m:Ljava/lang/String;

    .line 103
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    sput-object p0, Lcom/amap/location/e/a/d;->l:Ljava/lang/String;

    .line 109
    goto :goto_0

    .line 110
    :cond_0
    sget-object v0, Lcom/amap/location/e/a/d;->j:Ljava/lang/String;

    .line 112
    invoke-virtual {p0, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    sput-object v0, Lcom/amap/location/e/a/d;->j:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/amap/location/e/a/d;->l:Ljava/lang/String;

    .line 120
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    sput-object p0, Lcom/amap/location/e/a/d;->l:Ljava/lang/String;

    .line 126
    :goto_0
    sget-object p0, Lcom/amap/location/e/a/d;->l:Ljava/lang/String;

    .line 128
    const-string v0, "/"

    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 134
    if-eqz p0, :cond_1

    .line 136
    array-length v0, p0

    .line 137
    if-lez v0, :cond_1

    .line 139
    array-length v0, p0

    .line 140
    sub-int/2addr v0, v1

    .line 141
    aget-object p0, p0, v0

    .line 143
    sput-object p0, Lcom/amap/location/e/a/d;->n:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    :catch_0
    :cond_1
    return-void
.end method

.method public static b(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    const-string v0, "soft"

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    sput-boolean v0, Lcom/amap/location/e/a/d;->q:Z

    .line 12
    const-string v0, "algotype"

    .line 14
    sget v1, Lcom/amap/location/e/a/d;->s:I

    .line 16
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 19
    move-result v0

    .line 20
    sput v0, Lcom/amap/location/e/a/d;->s:I

    .line 22
    const-string v0, "slogl"

    .line 24
    sget v1, Lcom/amap/location/e/a/d;->t:I

    .line 26
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 29
    move-result v0

    .line 30
    sput v0, Lcom/amap/location/e/a/d;->t:I

    .line 32
    const-string v0, "slinkdis"

    .line 34
    sget v1, Lcom/amap/location/e/a/d;->u:I

    .line 36
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 39
    move-result p0

    .line 40
    sput p0, Lcom/amap/location/e/a/d;->u:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    :cond_0
    return-void
.end method

.method public static c(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    const-string v0, "drift"

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    sput-boolean v0, Lcom/amap/location/e/a/d;->v:Z

    .line 12
    const-string v0, "slogdl"

    .line 14
    sget v1, Lcom/amap/location/e/a/d;->E:I

    .line 16
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 19
    move-result v0

    .line 20
    sput v0, Lcom/amap/location/e/a/d;->E:I

    .line 22
    const-string v0, "es"

    .line 24
    sget v1, Lcom/amap/location/e/a/d;->D:I

    .line 26
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 29
    move-result v0

    .line 30
    sput v0, Lcom/amap/location/e/a/d;->D:I

    .line 32
    const-string v0, "dmos"

    .line 34
    sget v1, Lcom/amap/location/e/a/d;->w:I

    .line 36
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 39
    move-result v0

    .line 40
    sput v0, Lcom/amap/location/e/a/d;->w:I

    .line 42
    const-string v0, "ljs"

    .line 44
    sget v1, Lcom/amap/location/e/a/d;->x:I

    .line 46
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 49
    move-result v0

    .line 50
    sput v0, Lcom/amap/location/e/a/d;->x:I

    .line 52
    const-string v0, "cjs"

    .line 54
    sget v1, Lcom/amap/location/e/a/d;->y:I

    .line 56
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 59
    move-result v0

    .line 60
    sput v0, Lcom/amap/location/e/a/d;->y:I

    .line 62
    const-string v0, "dms"

    .line 64
    sget v1, Lcom/amap/location/e/a/d;->z:I

    .line 66
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 69
    move-result v0

    .line 70
    sput v0, Lcom/amap/location/e/a/d;->z:I

    .line 72
    const-string v0, "sat"

    .line 74
    sget v1, Lcom/amap/location/e/a/d;->A:I

    .line 76
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 79
    move-result v0

    .line 80
    sput v0, Lcom/amap/location/e/a/d;->A:I

    .line 82
    const-string v0, "glt"

    .line 84
    sget v1, Lcom/amap/location/e/a/d;->C:I

    .line 86
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 89
    move-result v0

    .line 90
    sput v0, Lcom/amap/location/e/a/d;->C:I

    .line 92
    const-string v0, "salgo"

    .line 94
    sget-object v1, Lcom/amap/location/e/a/d;->B:Ljava/lang/String;

    .line 96
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    sput-object p0, Lcom/amap/location/e/a/d;->B:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :catch_0
    :cond_0
    return-void
.end method

.method public static d(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    const-string v0, "3dma"

    .line 5
    sget-boolean v1, Lcom/amap/location/e/a/d;->F:Z

    .line 7
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 10
    move-result v0

    .line 11
    sput-boolean v0, Lcom/amap/location/e/a/d;->F:Z

    .line 13
    const-string v0, "3dmaurl"

    .line 15
    sget-object v1, Lcom/amap/location/e/a/d;->H:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/amap/location/e/a/d;->H:Ljava/lang/String;

    .line 23
    const-string v0, "modeurl"

    .line 25
    sget-object v1, Lcom/amap/location/e/a/d;->I:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/amap/location/e/a/d;->I:Ljava/lang/String;

    .line 33
    const-string v0, "logl"

    .line 35
    sget v1, Lcom/amap/location/e/a/d;->G:I

    .line 37
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 40
    move-result p0

    .line 41
    sput p0, Lcom/amap/location/e/a/d;->G:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :catch_0
    :cond_0
    return-void
.end method
