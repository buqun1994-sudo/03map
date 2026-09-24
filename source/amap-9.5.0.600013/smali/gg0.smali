.class public Lgg0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lgg0;->a:Ljava/lang/String;

    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lgg0;->b:I

    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lgg0;->c:I

    .line 14
    iput v0, p0, Lgg0;->d:I

    .line 16
    iput v1, p0, Lgg0;->e:I

    .line 18
    const/16 v2, 0xff

    .line 20
    iput v2, p0, Lgg0;->f:I

    .line 22
    iput v1, p0, Lgg0;->g:I

    .line 24
    iput v1, p0, Lgg0;->h:I

    .line 26
    iput v1, p0, Lgg0;->i:I

    .line 28
    iput v1, p0, Lgg0;->j:I

    .line 30
    iput v1, p0, Lgg0;->k:I

    .line 32
    iput v1, p0, Lgg0;->l:I

    .line 34
    iput v0, p0, Lgg0;->m:I

    .line 36
    iput v1, p0, Lgg0;->n:I

    .line 38
    iput v1, p0, Lgg0;->o:I

    .line 40
    iput-boolean v1, p0, Lgg0;->p:Z

    .line 42
    iput v1, p0, Lgg0;->q:I

    .line 44
    return-void
.end method

.method public static a(Ljava/lang/String;)Lgg0;
    .locals 7

    .line 1
    const-string v0, "TbtSoundInfo"

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 10
    return-object v2

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 15
    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    new-instance v5, Lgg0;

    .line 20
    invoke-direct {v5}, Lgg0;-><init>()V

    .line 23
    :try_start_1
    const-string v6, "text"

    .line 25
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v6

    .line 29
    iput-object v6, v5, Lgg0;->a:Ljava/lang/String;

    .line 31
    const-string v6, "sceneType"

    .line 33
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 36
    move-result v6

    .line 37
    iput v6, v5, Lgg0;->b:I

    .line 39
    const-string v6, "naviType"

    .line 41
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 44
    move-result v6

    .line 45
    iput v6, v5, Lgg0;->c:I

    .line 47
    const-string v6, "soundType"

    .line 49
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 52
    move-result v6

    .line 53
    iput v6, v5, Lgg0;->d:I

    .line 55
    const-string v6, "subSoundType"

    .line 57
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 60
    move-result v6

    .line 61
    iput v6, v5, Lgg0;->e:I

    .line 63
    const-string v6, "subCameraType"

    .line 65
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 68
    move-result v6

    .line 69
    iput v6, v5, Lgg0;->f:I

    .line 71
    const-string v6, "subCategory"

    .line 73
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 76
    move-result v6

    .line 77
    iput v6, v5, Lgg0;->g:I

    .line 79
    const-string v6, "maxValidDis"

    .line 81
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 84
    move-result v6

    .line 85
    iput v6, v5, Lgg0;->h:I

    .line 87
    const-string v6, "minValidDis"

    .line 89
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 92
    move-result v6

    .line 93
    iput v6, v5, Lgg0;->i:I

    .line 95
    const-string v6, "cruiseSoundType"

    .line 97
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 100
    move-result v6

    .line 101
    iput v6, v5, Lgg0;->j:I

    .line 103
    const-string v6, "ringType"

    .line 105
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 108
    move-result v6

    .line 109
    iput v6, v5, Lgg0;->k:I

    .line 111
    const-string v6, "isManualPlay"

    .line 113
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 116
    move-result v6

    .line 117
    iput v6, v5, Lgg0;->l:I

    .line 119
    const-string v6, "manualRequestID"

    .line 121
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 124
    move-result v6

    .line 125
    iput v6, v5, Lgg0;->m:I

    .line 127
    const-string v6, "soundFlag"

    .line 129
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 132
    move-result v6

    .line 133
    iput v6, v5, Lgg0;->n:I

    .line 135
    const-string v6, "remDistOfGPoint"

    .line 137
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 140
    move-result v6

    .line 141
    iput v6, v5, Lgg0;->o:I

    .line 143
    const-string v6, "isCameraOverSpeed"

    .line 145
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 148
    move-result v6

    .line 149
    iput-boolean v6, v5, Lgg0;->p:Z

    .line 151
    const-string v6, "limitSpeed"

    .line 153
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 156
    move-result v4

    .line 157
    iput v4, v5, Lgg0;->q:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    return-object v5

    .line 160
    :catch_0
    move-exception v4

    .line 161
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    new-array v3, v3, [Ljava/lang/Object;

    .line 166
    aput-object p0, v3, v1

    .line 168
    const-string p0, "parse json error:{?}"

    .line 170
    invoke-static {v0, p0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    return-object v2

    .line 174
    :catch_1
    move-exception v4

    .line 175
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    new-array v3, v3, [Ljava/lang/Object;

    .line 180
    aput-object p0, v3, v1

    .line 182
    const-string p0, "parse json load error:{?}"

    .line 184
    invoke-static {v0, p0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "TbtSoundInfo{text=\'"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lgg0;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const/16 v1, 0x27

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", sceneType="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lgg0;->b:I

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", naviType="

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lgg0;->c:I

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", soundType="

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lgg0;->d:I

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", subSoundType="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lgg0;->e:I

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", subCameraType="

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lgg0;->f:I

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", subCategory="

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Lgg0;->g:I

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", maxValidDis="

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Lgg0;->h:I

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", minValidDis="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v1, p0, Lgg0;->i:I

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", cruiseSoundType="

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lgg0;->j:I

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", ringType="

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget v1, p0, Lgg0;->k:I

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ", isManualPlay="

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget v1, p0, Lgg0;->l:I

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ", manualRequestID="

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget v1, p0, Lgg0;->m:I

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ", soundFlag="

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget v1, p0, Lgg0;->n:I

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", remDistOfGPoint="

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v1, p0, Lgg0;->o:I

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, ", isCameraOverSpeed="

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-boolean v1, p0, Lgg0;->p:Z

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, ", limitSpeed="

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget v1, p0, Lgg0;->q:I

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    const/16 v1, 0x7d

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v0

    .line 190
    return-object v0
.end method
