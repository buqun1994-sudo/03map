.class public Lcom/autonavi/amapauto/jni/config/AudioConfigData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioConfigData"


# instance fields
.field public audioAttrUsage:I

.field private audioChannel:I

.field public audioContentType:I

.field public audioMode:I

.field public audioStreamFlag:I

.field public audioTrackBuffersize:I

.field public isAudioDataSameWithAmap:Z

.field public isAudioStreamCustomSync:Z

.field public isNeedAudioRequestFocus:Z

.field public isNeedContinueTtsAfterFocusLoss:Z

.field public isNeedGetSystemVolume:Z

.field public isNeedStopAudioTrack:Z

.field public isNeedSystemTTSFocus:Z

.field public isNeedWriteEmptyAudioDataAfterTts:Z

.field public isNeedWriteEmptyAudioDataBeforeTts:Z

.field public isPlayWarningSoundNeedRequestFocus:Z

.field public isPlayWithoutFocusSucced:Z

.field public isUseAudioTrack:Z

.field public isUserHighVersionAudioApi:Z

.field public isVolumeZeroNeedPauseBackgroundNoises:Z

.field public resLoadType:I

.field public rolepath:Ljava/lang/String;

.field public textplay:Ljava/lang/String;

.field public ttsDelayAfterPlay:I

.field public ttsDelayBeforePlay:I

.field public ttsVolumeIncrease:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedStopAudioTrack:Z

    .line 7
    iput-boolean v0, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isPlayWarningSoundNeedRequestFocus:Z

    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isAudioDataSameWithAmap:Z

    .line 12
    const/4 v1, -0x1

    .line 13
    iput v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioStreamFlag:I

    .line 15
    iput-boolean v0, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUserHighVersionAudioApi:Z

    .line 17
    iput-boolean v0, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUseAudioTrack:Z

    .line 19
    iput-boolean v0, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isPlayWithoutFocusSucced:Z

    .line 21
    iput-boolean v0, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedSystemTTSFocus:Z

    .line 23
    return-void
.end method


# virtual methods
.method public getStreamType()I
    .locals 4

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x7537

    .line 7
    invoke-virtual {v0, v1}, Lse;->getIntValue(I)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 14
    iget v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioChannel:I

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v0

    .line 18
    :goto_0
    const/4 v2, 0x3

    .line 19
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v0

    .line 26
    aput-object v0, v2, v3

    .line 28
    iget v0, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioChannel:I

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v0

    .line 34
    const/4 v3, 0x1

    .line 35
    aput-object v0, v2, v3

    .line 37
    const/4 v0, 0x2

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v3

    .line 42
    aput-object v3, v2, v0

    .line 44
    const-string v0, "AudioConfigData"

    .line 46
    const-string v3, "getStreamType channelStreamType:{?} audioChannel:{?} useStreamType:{?}"

    .line 48
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return v1
.end method

.method public setStreamType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioChannel:I

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "ttsDelayAfterPlay="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->ttsDelayAfterPlay:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, " ttsDelayBeforePlay="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->ttsDelayBeforePlay:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, " isNeedWriteEmptyAudioDataAfterTts="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedWriteEmptyAudioDataAfterTts:Z

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, " isNeedWriteEmptyAudioDataBeforeTts="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedWriteEmptyAudioDataBeforeTts:Z

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, " isVolumeZeroNeedPauseBackgroundNoises="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isVolumeZeroNeedPauseBackgroundNoises:Z

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, " audioChannel="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioChannel:I

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, " isAudioStreamCustomSync="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isAudioStreamCustomSync:Z

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, " isNeedContinueTtsAfterFocusLoss="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedContinueTtsAfterFocusLoss:Z

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, " isNeedAudioRequestFocus="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedAudioRequestFocus:Z

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, " isPlayWarningSoundNeedRequestFocus="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isPlayWarningSoundNeedRequestFocus:Z

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, " audioMode="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioMode:I

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, " audioTrackBuffersize="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioTrackBuffersize:I

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, " isNeedGetSystemVolume="

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedGetSystemVolume:Z

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, " isAudioDataSameWithAmap="

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isAudioDataSameWithAmap:Z

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, " audioStreamFlag="

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioStreamFlag:I

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, " isUserHighVersionAudioApi="

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUserHighVersionAudioApi:Z

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, " isUseAudioTrack="

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUseAudioTrack:Z

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, " resLoadType="

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->resLoadType:I

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, " ttsVolumeIncrease="

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->ttsVolumeIncrease:I

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, " rolepath="

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->rolepath:Ljava/lang/String;

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, " textplay="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->textplay:Ljava/lang/String;

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, " isNeedStopAudioTrack="

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedStopAudioTrack:Z

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 230
    return-object v0
.end method
