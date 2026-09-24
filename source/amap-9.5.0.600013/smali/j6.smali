.class public abstract Lj6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IIIII)Landroid/media/AudioTrack;
    .locals 11

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    const/4 v3, 0x1

    .line 16
    aput-object v1, v0, v3

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v1

    .line 22
    const/4 v4, 0x2

    .line 23
    aput-object v1, v0, v4

    .line 25
    const/4 v1, 0x3

    .line 26
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v5

    .line 30
    aput-object v5, v0, v1

    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v5

    .line 37
    aput-object v5, v0, v1

    .line 39
    const-string v1, "AudioTrackFactory"

    .line 41
    const-string v5, "createAudioTrack audioType:{?} defaultStreamType:{?} sampleRateInHz:{?} channelConfig:{?} bufferSizeInBytes:{?}"

    .line 43
    invoke-static {v1, v5, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v5, "createAudioTrack channel : "

    .line 53
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static {}, Lse;->c()Lse;

    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v5}, Lse;->a()Leq;

    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    new-array v5, v2, [Ljava/lang/Object;

    .line 77
    invoke-static {v1, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Lzm;->d()Lzm;

    .line 83
    move-result-object v0

    .line 84
    sget-object v5, Lzm;->s:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v5, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 89
    move-result v0

    .line 90
    new-array v5, v4, [Ljava/lang/Object;

    .line 92
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 95
    move-result-object v0

    .line 96
    aput-object v0, v5, v2

    .line 98
    invoke-static {}, Lj6;->b()Z

    .line 101
    move-result v0

    .line 102
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    move-result-object v0

    .line 106
    aput-object v0, v5, v3

    .line 108
    const-string v0, "createAudioTrack isUserHighVersionApi:{?} hasLollipop:{?}"

    .line 110
    invoke-static {v1, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-static {}, Lse;->c()Lse;

    .line 116
    move-result-object v0

    .line 117
    const/16 v3, 0x2714

    .line 119
    invoke-virtual {v0, v3}, Lse;->getBooleanValue(I)Z

    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lj6;->b()Z

    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_0

    .line 131
    const-string p1, "createAudioTrack, create volvo AudioTrack"

    .line 133
    new-array v0, v2, [Ljava/lang/Object;

    .line 135
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    new-instance p1, Landroid/media/AudioFormat$Builder;

    .line 140
    invoke-direct {p1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 143
    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 146
    invoke-virtual {p1, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 149
    invoke-virtual {p1, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 152
    invoke-static {}, Lo6;->j()Lo6;

    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p2, p0}, Lo6;->g(I)Landroid/media/AudioAttributes;

    .line 159
    move-result-object v1

    .line 160
    new-instance p0, Landroid/media/AudioTrack;

    .line 162
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 165
    move-result-object v2

    .line 166
    const/4 v4, 0x1

    .line 167
    const/4 v5, 0x0

    .line 168
    move-object v0, p0

    .line 169
    move v3, p4

    .line 170
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 173
    return-object p0

    .line 174
    :cond_0
    invoke-static {}, Lj6;->b()Z

    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_1

    .line 180
    invoke-static {}, Lo6;->j()Lo6;

    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 187
    move-result-object v0

    .line 188
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUserHighVersionAudioApi:Z

    .line 190
    if-eqz v0, :cond_1

    .line 192
    const-string p1, "createAudioTrack, create Lollipop AudioTrack"

    .line 194
    new-array v0, v2, [Ljava/lang/Object;

    .line 196
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    invoke-static {}, Lo6;->j()Lo6;

    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p1, p0}, Lo6;->g(I)Landroid/media/AudioAttributes;

    .line 206
    move-result-object v6

    .line 207
    new-instance p0, Landroid/media/AudioFormat$Builder;

    .line 209
    invoke-direct {p0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 212
    invoke-virtual {p0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 215
    invoke-virtual {p0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 218
    invoke-virtual {p0, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 221
    new-instance p1, Landroid/media/AudioTrack;

    .line 223
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 226
    move-result-object v7

    .line 227
    const/4 v9, 0x1

    .line 228
    const/4 v10, 0x0

    .line 229
    move-object v5, p1

    .line 230
    move v8, p4

    .line 231
    invoke-direct/range {v5 .. v10}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 234
    return-object p1

    .line 235
    :cond_1
    const-string p0, "createAudioTrack, create normal AudioTrack"

    .line 237
    new-array v0, v2, [Ljava/lang/Object;

    .line 239
    invoke-static {v1, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    new-instance p0, Landroid/media/AudioTrack;

    .line 244
    const/4 v6, 0x2

    .line 245
    const/4 v8, 0x1

    .line 246
    move-object v2, p0

    .line 247
    move v3, p1

    .line 248
    move v4, p2

    .line 249
    move v5, p3

    .line 250
    move v7, p4

    .line 251
    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 254
    return-object p0
.end method

.method public static b()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
