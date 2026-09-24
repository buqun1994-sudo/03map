.class public Lcom/amap/location/g/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/g/b/a;


# static fields
.field private static a:Ljava/lang/String; = "nlconfig"


# instance fields
.field private b:Z

.field private c:J

.field private d:Z

.field private e:I

.field private f:I

.field private g:[Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:F

.field private n:I

.field private o:F

.field private p:I

.field private q:I

.field private r:Z

.field private s:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 13

    .line 1
    const-string v0, ""

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/amap/location/g/b/c;->b:Z

    .line 9
    const-wide/16 v2, 0x0

    .line 11
    iput-wide v2, p0, Lcom/amap/location/g/b/c;->c:J

    .line 13
    const/4 v4, 0x0

    .line 14
    iput-boolean v4, p0, Lcom/amap/location/g/b/c;->d:Z

    .line 16
    const/4 v5, 0x6

    .line 17
    iput v5, p0, Lcom/amap/location/g/b/c;->e:I

    .line 19
    const/16 v6, 0x8

    .line 21
    iput v6, p0, Lcom/amap/location/g/b/c;->f:I

    .line 23
    const/16 v7, 0xa

    .line 25
    iput v7, p0, Lcom/amap/location/g/b/c;->h:I

    .line 27
    const/4 v8, 0x5

    .line 28
    iput v8, p0, Lcom/amap/location/g/b/c;->i:I

    .line 30
    const/16 v9, 0x64

    .line 32
    iput v9, p0, Lcom/amap/location/g/b/c;->j:I

    .line 34
    iput-boolean v4, p0, Lcom/amap/location/g/b/c;->k:Z

    .line 36
    const/4 v10, 0x3

    .line 37
    iput v10, p0, Lcom/amap/location/g/b/c;->l:I

    .line 39
    const v11, 0x3f733333    # 0.95f

    .line 42
    iput v11, p0, Lcom/amap/location/g/b/c;->m:F

    .line 44
    iput v9, p0, Lcom/amap/location/g/b/c;->n:I

    .line 46
    const/high16 v11, 0x447a0000    # 1000.0f

    .line 48
    iput v11, p0, Lcom/amap/location/g/b/c;->o:F

    .line 50
    const/16 v11, 0x3c

    .line 52
    iput v11, p0, Lcom/amap/location/g/b/c;->p:I

    .line 54
    const/16 v11, 0x10

    .line 56
    iput v11, p0, Lcom/amap/location/g/b/c;->q:I

    .line 58
    iput-boolean v4, p0, Lcom/amap/location/g/b/c;->r:Z

    .line 60
    iput v4, p0, Lcom/amap/location/g/b/c;->s:I

    .line 62
    const-string v11, "sp_offline_switch"

    .line 64
    if-eqz p1, :cond_1

    .line 66
    const-string v12, "loe"

    .line 68
    invoke-virtual {p1, v12, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 71
    move-result v1

    .line 72
    iput-boolean v1, p0, Lcom/amap/location/g/b/c;->b:Z

    .line 74
    invoke-static {v11, v1}, Lcom/amap/location/support/app/GlobalStorageSync;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    const-string v1, "loct"

    .line 79
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 82
    move-result-wide v1

    .line 83
    iput-wide v1, p0, Lcom/amap/location/g/b/c;->c:J

    .line 85
    const-string v1, "loca"

    .line 87
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 90
    move-result v1

    .line 91
    iput-boolean v1, p0, Lcom/amap/location/g/b/c;->d:Z

    .line 93
    const-string v1, "lott"

    .line 95
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 98
    move-result v1

    .line 99
    iput v1, p0, Lcom/amap/location/g/b/c;->e:I

    .line 101
    const-string v1, "lomwn"

    .line 103
    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 106
    move-result v1

    .line 107
    iput v1, p0, Lcom/amap/location/g/b/c;->f:I

    .line 109
    :try_start_0
    const-string v1, "locpl"

    .line 111
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_0

    .line 121
    const-string v2, ","

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    iput-object v1, p0, Lcom/amap/location/g/b/c;->g:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    invoke-static {v1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 134
    :cond_0
    :goto_0
    const-string v1, "lomrt"

    .line 136
    invoke-virtual {p1, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 139
    move-result v1

    .line 140
    iput v1, p0, Lcom/amap/location/g/b/c;->h:I

    .line 142
    const-string v1, "lomnwrt"

    .line 144
    invoke-virtual {p1, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 147
    move-result v1

    .line 148
    iput v1, p0, Lcom/amap/location/g/b/c;->i:I

    .line 150
    const-string v1, "lomnpr"

    .line 152
    invoke-virtual {p1, v1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 155
    move-result v1

    .line 156
    iput v1, p0, Lcom/amap/location/g/b/c;->j:I

    .line 158
    const-string v1, "lonfd"

    .line 160
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 163
    move-result v1

    .line 164
    iput-boolean v1, p0, Lcom/amap/location/g/b/c;->k:Z

    .line 166
    const-string v1, "louq"

    .line 168
    invoke-virtual {p1, v1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 171
    move-result v1

    .line 172
    iput v1, p0, Lcom/amap/location/g/b/c;->l:I

    .line 174
    const-string v1, "sfe"

    .line 176
    iget v2, p0, Lcom/amap/location/g/b/c;->n:I

    .line 178
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 181
    move-result v1

    .line 182
    iput v1, p0, Lcom/amap/location/g/b/c;->n:I

    .line 184
    :try_start_1
    const-string v1, "sdecay"

    .line 186
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 190
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 193
    move-result v1

    .line 194
    iput v1, p0, Lcom/amap/location/g/b/c;->m:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    :catch_1
    :try_start_2
    const-string v1, "sradius"

    .line 198
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    move-result-object v1

    .line 202
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 205
    move-result v1

    .line 206
    iput v1, p0, Lcom/amap/location/g/b/c;->o:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 208
    :catch_2
    const-string v1, "cage"

    .line 210
    iget v2, p0, Lcom/amap/location/g/b/c;->p:I

    .line 212
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 215
    move-result v1

    .line 216
    iput v1, p0, Lcom/amap/location/g/b/c;->p:I

    .line 218
    const-string v1, "wage"

    .line 220
    iget v2, p0, Lcom/amap/location/g/b/c;->q:I

    .line 222
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 225
    move-result v1

    .line 226
    iput v1, p0, Lcom/amap/location/g/b/c;->q:I

    .line 228
    const-string v1, "logoe"

    .line 230
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 233
    move-result v1

    .line 234
    iput-boolean v1, p0, Lcom/amap/location/g/b/c;->r:Z

    .line 236
    sget-object v1, Lcom/amap/location/i/d;->c:Ljava/lang/String;

    .line 238
    const-string v2, "offline_url"

    .line 240
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    move-result-object v1

    .line 244
    sput-object v1, Lcom/amap/location/i/d;->c:Ljava/lang/String;

    .line 246
    const-string v1, "odrt"

    .line 248
    iget v3, p0, Lcom/amap/location/g/b/c;->s:I

    .line 250
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 253
    move-result v1

    .line 254
    iput v1, p0, Lcom/amap/location/g/b/c;->s:I

    .line 256
    const-string v3, "offline_randomtime_key"

    .line 258
    invoke-static {v3, v1}, Lcom/amap/location/support/util/PeakTimesHelper;->saveDelayRandomTime(Ljava/lang/String;I)V

    .line 261
    const-string v1, "opeaktime"

    .line 263
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    move-result-object v0

    .line 267
    const-string v1, "offline_peaktime_key"

    .line 269
    invoke-static {v1, v0}, Lcom/amap/location/support/util/PeakTimesHelper;->getPeakTimes(Ljava/lang/String;Ljava/lang/String;)[[I

    .line 272
    sget-object v0, Lcom/amap/location/i/d;->c:Ljava/lang/String;

    .line 274
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    move-result-object p1

    .line 278
    sput-object p1, Lcom/amap/location/i/d;->c:Ljava/lang/String;

    .line 280
    goto :goto_1

    .line 281
    :cond_1
    invoke-static {v11, v1}, Lcom/amap/location/support/app/GlobalStorageSync;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/g/b/c;->b:Z

    .line 3
    return v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/g/b/c;->c:J

    .line 3
    return-wide v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/g/b/c;->d:Z

    .line 3
    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/g/b/c;->e:I

    .line 3
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/g/b/c;->f:I

    .line 3
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/g/b/c;->h:I

    .line 3
    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/g/b/c;->i:I

    .line 3
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/g/b/c;->j:I

    .line 3
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/g/b/c;->k:Z

    .line 3
    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/g/b/c;->l:I

    .line 3
    return v0
.end method

.method public k()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/g/b/c;->m:F

    .line 3
    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/g/b/c;->n:I

    .line 3
    return v0
.end method

.method public m()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/g/b/c;->o:F

    .line 3
    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/g/b/c;->p:I

    .line 3
    return v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/g/b/c;->q:I

    .line 3
    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/g/b/c;->r:Z

    .line 3
    return v0
.end method
