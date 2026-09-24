.class public Lcom/amap/location/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0xa

.field public static b:I = 0x14

.field public static c:J = 0x14L

.field public static d:I = 0x5

.field public static e:J = 0x5460L

.field public static f:I = 0x14

.field public static g:I = 0x4

.field public static h:J = 0x0L

.field public static i:Ljava/lang/String; = "5.6"

.field public static j:Z = false

.field public static k:Z = true

.field public static l:Z = false

.field public static m:F = 100.0f

.field public static n:[[I = null

.field public static o:Z = true

.field public static p:Z = false

.field public static q:Z = true

.field public static r:Z = true


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    if-eqz p0, :cond_2

    .line 3
    :try_start_0
    const-string v0, "clql"

    .line 5
    sget v1, Lcom/amap/location/g/a;->a:I

    .line 7
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result v0

    .line 16
    const/16 v2, 0x32

    .line 18
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 21
    move-result v0

    .line 22
    sput v0, Lcom/amap/location/g/a;->a:I

    .line 24
    const-string v0, "clmgd"

    .line 26
    sget v3, Lcom/amap/location/g/a;->b:I

    .line 28
    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 31
    move-result v0

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 35
    move-result v0

    .line 36
    const/16 v3, 0x64

    .line 38
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 41
    move-result v0

    .line 42
    sput v0, Lcom/amap/location/g/a;->b:I

    .line 44
    const-string v0, "clmgt"

    .line 46
    sget-wide v3, Lcom/amap/location/g/a;->c:J

    .line 48
    invoke-virtual {p0, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 51
    move-result-wide v3

    .line 52
    const-wide/16 v5, 0x1

    .line 54
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 57
    move-result-wide v3

    .line 58
    const-wide/16 v5, 0x64

    .line 60
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 63
    move-result-wide v3

    .line 64
    sput-wide v3, Lcom/amap/location/g/a;->c:J

    .line 66
    const-string v0, "clmg"

    .line 68
    sget v3, Lcom/amap/location/g/a;->d:I

    .line 70
    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 73
    move-result v0

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 77
    move-result v0

    .line 78
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 81
    move-result v0

    .line 82
    sput v0, Lcom/amap/location/g/a;->d:I

    .line 84
    const-string v0, "clmt"

    .line 86
    sget-wide v3, Lcom/amap/location/g/a;->e:J

    .line 88
    invoke-virtual {p0, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 91
    move-result-wide v3

    .line 92
    const-wide/16 v5, 0xe10

    .line 94
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 97
    move-result-wide v3

    .line 98
    const-wide/32 v5, 0x3f480

    .line 101
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 104
    move-result-wide v3

    .line 105
    sput-wide v3, Lcom/amap/location/g/a;->e:J

    .line 107
    const-string v0, "clwmx"

    .line 109
    sget v3, Lcom/amap/location/g/a;->f:I

    .line 111
    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 114
    move-result v0

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 118
    move-result v0

    .line 119
    const/16 v3, 0xc8

    .line 121
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 124
    move-result v0

    .line 125
    sput v0, Lcom/amap/location/g/a;->f:I

    .line 127
    const-string v0, "clcmx"

    .line 129
    sget v3, Lcom/amap/location/g/a;->g:I

    .line 131
    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 134
    move-result v0

    .line 135
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 138
    move-result v0

    .line 139
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 142
    move-result v0

    .line 143
    sput v0, Lcom/amap/location/g/a;->g:I

    .line 145
    const-string v0, "olinter"

    .line 147
    sget-wide v1, Lcom/amap/location/g/a;->h:J

    .line 149
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 152
    move-result-wide v0

    .line 153
    const-wide/16 v2, 0x3c

    .line 155
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 158
    move-result-wide v0

    .line 159
    const-wide/16 v2, 0x3e8

    .line 161
    mul-long v0, v0, v2

    .line 163
    sput-wide v0, Lcom/amap/location/g/a;->h:J

    .line 165
    const-string v0, "nprotocol"

    .line 167
    sget-boolean v1, Lcom/amap/location/g/a;->k:Z

    .line 169
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 172
    move-result v0

    .line 173
    sput-boolean v0, Lcom/amap/location/g/a;->k:Z

    .line 175
    const-string v0, "ipv6"

    .line 177
    sget-boolean v1, Lcom/amap/location/g/a;->l:Z

    .line 179
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 182
    move-result v0

    .line 183
    sput-boolean v0, Lcom/amap/location/g/a;->l:Z

    .line 185
    const-string v0, "aos"

    .line 187
    sget-object v1, Lcom/amap/location/protocol/b/a;->m:Ljava/lang/String;

    .line 189
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 193
    sput-object v0, Lcom/amap/location/protocol/b/a;->m:Ljava/lang/String;

    .line 195
    const-string v0, "aps"

    .line 197
    sget-object v1, Lcom/amap/location/protocol/b/a;->o:Ljava/lang/String;

    .line 199
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    move-result-object v0

    .line 203
    sput-object v0, Lcom/amap/location/protocol/b/a;->o:Ljava/lang/String;

    .line 205
    const-string v0, "ver"

    .line 207
    sget-object v1, Lcom/amap/location/g/a;->i:Ljava/lang/String;

    .line 209
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    move-result-object v0

    .line 213
    const-string v1, "5.6,5.7"

    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_0

    .line 221
    sput-object v0, Lcom/amap/location/g/a;->i:Ljava/lang/String;

    .line 223
    :cond_0
    sget-object v0, Lcom/amap/location/g/a;->i:Ljava/lang/String;

    .line 225
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->setProtocolVer(Ljava/lang/String;)V

    .line 228
    const-string v0, "sensor"

    .line 230
    sget-boolean v1, Lcom/amap/location/g/a;->j:Z

    .line 232
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 235
    move-result v0

    .line 236
    sput-boolean v0, Lcom/amap/location/g/a;->j:Z

    .line 238
    const-string v0, "offdist"

    .line 240
    sget v1, Lcom/amap/location/g/a;->m:F

    .line 242
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    move-result-object v0

    .line 250
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 253
    move-result v0

    .line 254
    sput v0, Lcom/amap/location/g/a;->m:F

    .line 256
    const-string v0, "cache"

    .line 258
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 261
    move-result-object v0

    .line 262
    if-eqz v0, :cond_1

    .line 264
    invoke-static {v0}, Lcom/amap/location/h/a/c;->a(Lorg/json/JSONObject;)V

    .line 267
    :cond_1
    const-string v0, "peaktime"

    .line 269
    const-string v1, ""

    .line 271
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    move-result-object v0

    .line 275
    const-string v1, "nl_peaktime_key"

    .line 277
    invoke-static {v1, v0}, Lcom/amap/location/support/util/PeakTimesHelper;->getPeakTimes(Ljava/lang/String;Ljava/lang/String;)[[I

    .line 280
    move-result-object v0

    .line 281
    sput-object v0, Lcom/amap/location/g/a;->n:[[I

    .line 283
    const-string v0, "newStrategy"

    .line 285
    sget-boolean v1, Lcom/amap/location/g/a;->o:Z

    .line 287
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 290
    move-result v0

    .line 291
    sput-boolean v0, Lcom/amap/location/g/a;->o:Z

    .line 293
    const-string v0, "llut"

    .line 295
    sget-boolean v1, Lcom/amap/location/g/a;->q:Z

    .line 297
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 300
    move-result v0

    .line 301
    sput-boolean v0, Lcom/amap/location/g/a;->q:Z

    .line 303
    const-string v0, "semanticsOffline"

    .line 305
    sget-boolean v1, Lcom/amap/location/g/a;->p:Z

    .line 307
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 310
    move-result p0

    .line 311
    sput-boolean p0, Lcom/amap/location/g/a;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    goto :goto_0

    .line 314
    :catchall_0
    move-exception p0

    .line 315
    const-string v0, "CloudConfig"

    .line 317
    invoke-static {v0, p0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    :cond_2
    :goto_0
    return-void
.end method
