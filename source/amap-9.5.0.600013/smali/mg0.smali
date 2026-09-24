.class public Lmg0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:I

.field public E:I

.field public F:I

.field public G:J

.field public H:J

.field public I:J

.field public J:J

.field public K:J

.field public L:J

.field public M:J

.field public N:J

.field public O:J

.field public P:J

.field public a:Z

.field public b:I

.field public c:Ljava/lang/String;

.field public d:D

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:D

.field public j:D

.field public k:D

.field public l:D

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:J

.field public v:J

.field public w:J

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lmg0;->A:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lmg0;->B:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lmg0;->C:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lmg0;->D:I

    .line 15
    iput v0, p0, Lmg0;->E:I

    .line 17
    iput v0, p0, Lmg0;->F:I

    .line 19
    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lmg0;->G:J

    .line 23
    iput-wide v0, p0, Lmg0;->H:J

    .line 25
    iput-wide v0, p0, Lmg0;->I:J

    .line 27
    iput-wide v0, p0, Lmg0;->J:J

    .line 29
    iput-wide v0, p0, Lmg0;->K:J

    .line 31
    iput-wide v0, p0, Lmg0;->L:J

    .line 33
    iput-wide v0, p0, Lmg0;->M:J

    .line 35
    iput-wide v0, p0, Lmg0;->N:J

    .line 37
    iput-wide v0, p0, Lmg0;->O:J

    .line 39
    iput-wide v0, p0, Lmg0;->P:J

    .line 41
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "tbt2HmiTime"

    .line 8
    iget-wide v2, p0, Lmg0;->o:J

    .line 10
    iget-wide v4, p0, Lmg0;->n:J

    .line 12
    sub-long/2addr v2, v4

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 16
    const-string v1, "hmi2AlTime"

    .line 18
    iget-wide v2, p0, Lmg0;->p:J

    .line 20
    iget-wide v4, p0, Lmg0;->o:J

    .line 22
    sub-long/2addr v2, v4

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 26
    const-string v1, "al2PushTime"

    .line 28
    iget-wide v2, p0, Lmg0;->q:J

    .line 30
    iget-wide v4, p0, Lmg0;->p:J

    .line 32
    sub-long/2addr v2, v4

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 36
    const-string v1, "pushTime"

    .line 38
    iget-wide v2, p0, Lmg0;->r:J

    .line 40
    iget-wide v4, p0, Lmg0;->q:J

    .line 42
    sub-long/2addr v2, v4

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    const-string v1, "push2QueueTime"

    .line 48
    iget-wide v2, p0, Lmg0;->s:J

    .line 50
    iget-wide v4, p0, Lmg0;->r:J

    .line 52
    sub-long/2addr v2, v4

    .line 53
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 56
    const-string v1, "queue2TTSPlayTime"

    .line 58
    iget-wide v2, p0, Lmg0;->t:J

    .line 60
    iget-wide v4, p0, Lmg0;->s:J

    .line 62
    sub-long/2addr v2, v4

    .line 63
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 66
    const-string v1, "TTSPlay2ISSStartTime"

    .line 68
    iget-wide v2, p0, Lmg0;->u:J

    .line 70
    iget-wide v4, p0, Lmg0;->t:J

    .line 72
    sub-long/2addr v2, v4

    .line 73
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 76
    const-string v1, "ISSStartTime"

    .line 78
    iget-wide v2, p0, Lmg0;->v:J

    .line 80
    iget-wide v4, p0, Lmg0;->u:J

    .line 82
    sub-long/2addr v2, v4

    .line 83
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 86
    const-string v1, "ISSStart2ISSGETTime"

    .line 88
    iget-wide v2, p0, Lmg0;->w:J

    .line 90
    iget-wide v4, p0, Lmg0;->v:J

    .line 92
    sub-long/2addr v2, v4

    .line 93
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 96
    const-string v1, "ISSSGet2PcmTime"

    .line 98
    iget-wide v2, p0, Lmg0;->x:J

    .line 100
    iget-wide v4, p0, Lmg0;->w:J

    .line 102
    sub-long/2addr v2, v4

    .line 103
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 106
    const-string v1, "pcm2EndPlayTime"

    .line 108
    iget-wide v2, p0, Lmg0;->y:J

    .line 110
    iget-wide v4, p0, Lmg0;->x:J

    .line 112
    sub-long/2addr v2, v4

    .line 113
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 116
    const-string v1, "rawTime"

    .line 118
    iget-wide v2, p0, Lmg0;->z:J

    .line 120
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 123
    const-string v1, "start2endTime"

    .line 125
    iget-wide v2, p0, Lmg0;->y:J

    .line 127
    iget-wide v4, p0, Lmg0;->p:J

    .line 129
    sub-long/2addr v2, v4

    .line 130
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 133
    const-string v1, "playIndex"

    .line 135
    iget v2, p0, Lmg0;->F:I

    .line 137
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    const-string v1, "delayTurnCount"

    .line 142
    iget v2, p0, Lmg0;->E:I

    .line 144
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    const-string v1, "allTurnCount"

    .line 149
    iget v2, p0, Lmg0;->D:I

    .line 151
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    const-string v1, "playStartWriteEmptyTime"

    .line 156
    iget-wide v2, p0, Lmg0;->G:J

    .line 158
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 161
    const-string v1, "shakeElapsedTime"

    .line 163
    iget-wide v2, p0, Lmg0;->H:J

    .line 165
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 168
    const-string v1, "writeBytesSumTime"

    .line 170
    iget-wide v2, p0, Lmg0;->I:J

    .line 172
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 175
    const-string v1, "playEndWriteEmptyTime"

    .line 177
    iget-wide v2, p0, Lmg0;->J:J

    .line 179
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 182
    const-string v1, "writePcmSumTime"

    .line 184
    iget-wide v2, p0, Lmg0;->K:J

    .line 186
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 189
    const-string v1, "writePcmIntervalSumTime"

    .line 191
    iget-wide v2, p0, Lmg0;->L:J

    .line 193
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 196
    const-string v1, "audioInitTime"

    .line 198
    iget-wide v2, p0, Lmg0;->M:J

    .line 200
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 203
    const-string v1, "audioPlayTime"

    .line 205
    iget-wide v2, p0, Lmg0;->N:J

    .line 207
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 210
    const-string v1, "audioStopTime"

    .line 212
    iget-wide v2, p0, Lmg0;->O:J

    .line 214
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 217
    const-string v1, "audioReleaseTime"

    .line 219
    iget-wide v2, p0, Lmg0;->P:J

    .line 221
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 224
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 227
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const/4 v1, 0x1

    .line 231
    new-array v1, v1, [Ljava/lang/Object;

    .line 233
    const/4 v2, 0x0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 237
    move-result-object v0

    .line 238
    aput-object v0, v1, v2

    .line 240
    const-string v0, "TextPlayDelayTrackingData"

    .line 242
    const-string v2, "textPlayEventTracking getAllDiffTime exception is {?}"

    .line 244
    invoke-static {v0, v2, v1}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    const-string v0, "getAllDiffTime failed"

    .line 249
    :goto_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    const-string v1, "soundInfo="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    iget-object v1, p0, Lmg0;->A:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    const-string v1, ",startTTSInfo="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    iget-object v1, p0, Lmg0;->B:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    const-string v1, ",endPlayTTSInfo="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    iget-object v1, p0, Lmg0;->C:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    const-string v1, "mIsTurnPlayText="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    iget-boolean v1, p0, Lmg0;->a:Z

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 16
    const-string v1, ",mSessionId="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    iget v1, p0, Lmg0;->b:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 26
    const-string v1, ",mPlayText="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    iget-object v1, p0, Lmg0;->c:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    const-string v1, ",mCreateTime="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    iget-wide v1, p0, Lmg0;->m:J

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 46
    const-string v1, ",mTbtCallbackSpeed="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    iget-wide v1, p0, Lmg0;->d:D

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 56
    const-string v1, ",mTbtCallBackSegRemainDis="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    iget v1, p0, Lmg0;->e:I

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 66
    const-string v1, ",mEndPlaySegRemainDis="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    iget v1, p0, Lmg0;->g:I

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, ",mTbtCallBackSegIndex="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    iget v1, p0, Lmg0;->f:I

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 86
    const-string v1, ",mEndPlaySegIndex="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget v1, p0, Lmg0;->h:I

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 96
    const-string v1, ",mTbtCallbackLon="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    iget-wide v1, p0, Lmg0;->i:D

    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 106
    const-string v1, ",mTbtCallBackLat="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    iget-wide v1, p0, Lmg0;->j:D

    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 116
    const-string v1, ",mEndTextPlayLon="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    iget-wide v1, p0, Lmg0;->k:D

    .line 123
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 126
    const-string v1, ",mEndTextPlayLat="

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    iget-wide v1, p0, Lmg0;->l:D

    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 136
    const-string v1, ",mTbtCallbackTime="

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    iget-wide v1, p0, Lmg0;->n:J

    .line 143
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 146
    const-string v1, ",mHmiCallbackTime="

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    iget-wide v1, p0, Lmg0;->o:J

    .line 153
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 156
    const-string v1, ",mALStartTextPlayTime="

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    iget-wide v1, p0, Lmg0;->p:J

    .line 163
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 166
    const-string v1, ",mALStartTextPushTime="

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    iget-wide v1, p0, Lmg0;->q:J

    .line 173
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 176
    const-string v1, ",mALEndTextPushTime="

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    iget-wide v1, p0, Lmg0;->r:J

    .line 183
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 186
    const-string v1, ",mALHandleQueueInfoTime="

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    iget-wide v1, p0, Lmg0;->s:J

    .line 193
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 196
    const-string v1, ",mALStartTTSTime="

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    iget-wide v1, p0, Lmg0;->t:J

    .line 203
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 206
    const-string v1, ",mALStartISSStartTime="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    iget-wide v1, p0, Lmg0;->u:J

    .line 213
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 216
    const-string v1, ",mALEndISSStartTime="

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    iget-wide v1, p0, Lmg0;->v:J

    .line 223
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 226
    const-string v1, ",mALStartISSGetTime="

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    iget-wide v1, p0, Lmg0;->w:J

    .line 233
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 236
    const-string v1, ",mALStartFirstPcmTime="

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    iget-wide v1, p0, Lmg0;->x:J

    .line 243
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 246
    const-string v1, ",mALEndPlayTime="

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    iget-wide v1, p0, Lmg0;->y:J

    .line 253
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 256
    const-string v1, ",allTime="

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {p0}, Lmg0;->a()Ljava/lang/String;

    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    const-string v1, ",mPlayIndex="

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    iget v1, p0, Lmg0;->F:I

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 278
    const-string v1, ",mAllTurnCount="

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    iget v1, p0, Lmg0;->D:I

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 288
    const-string v1, ",mDelayTurnCount="

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    iget v1, p0, Lmg0;->E:I

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 298
    const-string v1, ",mPlayStartWriteEmptyTime="

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    iget-wide v1, p0, Lmg0;->G:J

    .line 305
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 308
    const-string v1, ",mShakeElapsedTime="

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    iget-wide v1, p0, Lmg0;->H:J

    .line 315
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 318
    const-string v1, ",mWriteBytesSumTime="

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    iget-wide v1, p0, Lmg0;->I:J

    .line 325
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 328
    const-string v1, ",mPlayEndWriteEmptyTime="

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    iget-wide v1, p0, Lmg0;->J:J

    .line 335
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 338
    const-string v1, ",mWritePcmSumTime="

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    iget-wide v1, p0, Lmg0;->K:J

    .line 345
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 348
    const-string v1, ",mWritePcmIntervalSumTime="

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    iget-wide v1, p0, Lmg0;->L:J

    .line 355
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 358
    const-string v1, ",mAudioInitTime="

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    iget-wide v1, p0, Lmg0;->M:J

    .line 365
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 368
    const-string v1, ",mAudioPlayTime="

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    iget-wide v1, p0, Lmg0;->N:J

    .line 375
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 378
    const-string v1, ",mAudioStopTime="

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    iget-wide v1, p0, Lmg0;->O:J

    .line 385
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 388
    const-string v1, ",mAudioReleaseTime="

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    iget-wide v1, p0, Lmg0;->P:J

    .line 395
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 401
    move-result-object v0

    .line 402
    return-object v0
.end method
