.class public Lv90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static j:Ljava/lang/String; = "[AMR]AudioRecorder"


# instance fields
.field public a:I

.field public b:Landroid/media/AudioRecord;

.field public c:[S

.field public d:Ljava/lang/Thread;

.field public e:Z

.field public f:Lif0;

.field public g:I

.field public h:I

.field public i:Ljava/io/DataOutputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lv90;->a:I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lv90;->g:I

    .line 10
    iput v0, p0, Lv90;->h:I

    .line 12
    return-void
.end method


# virtual methods
.method public a(Lif0;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lv90;->f:Lif0;

    .line 3
    invoke-static {}, Lse;->c()Lse;

    .line 6
    move-result-object p1

    .line 7
    const/16 v0, 0x7551

    .line 9
    invoke-virtual {p1, v0}, Lse;->getIntValue(I)I

    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lv90;->a:I

    .line 15
    invoke-static {}, Lc;->i()Lc;

    .line 18
    move-result-object p1

    .line 19
    const/4 v0, -0x1

    .line 20
    const-string v1, "MaxStartRecordTimes"

    .line 22
    invoke-virtual {p1, v1, v0}, Lc;->h(Ljava/lang/String;I)I

    .line 25
    move-result p1

    .line 26
    if-lez p1, :cond_0

    .line 28
    invoke-static {}, Lc;->i()Lc;

    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v1, v0}, Lc;->h(Ljava/lang/String;I)I

    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lv90;->a:I

    .line 39
    sget-object v1, Lv90;->j:Ljava/lang/String;

    .line 41
    const/4 v2, 0x1

    .line 42
    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object p1

    .line 48
    aput-object p1, v2, v0

    .line 50
    const-string p1, "load mMaxStartRecordTimes from RecordDebugOption: {?}"

    .line 52
    invoke-static {v1, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 12

    .line 1
    iget-boolean p1, p0, Lv90;->e:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Lv90;->j:Ljava/lang/String;

    .line 8
    const-string v1, "is recoding"

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void

    .line 16
    :cond_0
    const/16 p1, 0x1f40

    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-static {p1, v1, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    .line 22
    move-result p1

    .line 23
    const/16 v2, 0xa0

    .line 25
    if-ge p1, v2, :cond_1

    .line 27
    sget-object v2, Lv90;->j:Ljava/lang/String;

    .line 29
    const-string v3, "bufferSizeInByte is less FRAME_SIZE"

    .line 31
    new-array v4, v0, [Ljava/lang/Object;

    .line 33
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const/16 v2, 0x140

    .line 38
    iput v2, p0, Lv90;->h:I

    .line 40
    :cond_1
    invoke-static {}, Lc;->i()Lc;

    .line 43
    move-result-object v2

    .line 44
    const-string v3, "MinBufferSize"

    .line 46
    const/4 v4, -0x1

    .line 47
    invoke-virtual {v2, v3, v4}, Lc;->h(Ljava/lang/String;I)I

    .line 50
    move-result v2

    .line 51
    const/4 v5, 0x1

    .line 52
    if-lez v2, :cond_2

    .line 54
    invoke-static {}, Lc;->i()Lc;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1, v3, v4}, Lc;->h(Ljava/lang/String;I)I

    .line 61
    move-result p1

    .line 62
    sget-object v2, Lv90;->j:Ljava/lang/String;

    .line 64
    new-array v3, v5, [Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v4

    .line 70
    aput-object v4, v3, v0

    .line 72
    const-string v4, "load minBufferSize from RecordDebugOption: {?}"

    .line 74
    invoke-static {v2, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_2
    new-instance v2, Landroid/media/AudioRecord;

    .line 79
    const/4 v7, 0x1

    .line 80
    const/16 v8, 0x1f40

    .line 82
    const/4 v9, 0x2

    .line 83
    const/4 v10, 0x2

    .line 84
    iget v3, p0, Lv90;->h:I

    .line 86
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 89
    move-result v11

    .line 90
    move-object v6, v2

    .line 91
    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 94
    iput-object v2, p0, Lv90;->b:Landroid/media/AudioRecord;

    .line 96
    sget-object v3, Lv90;->j:Ljava/lang/String;

    .line 98
    const/4 v4, 0x3

    .line 99
    new-array v6, v4, [Ljava/lang/Object;

    .line 101
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    .line 104
    move-result v2

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object v2

    .line 109
    aput-object v2, v6, v0

    .line 111
    iget v2, p0, Lv90;->a:I

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v2

    .line 117
    aput-object v2, v6, v5

    .line 119
    iget v2, p0, Lv90;->h:I

    .line 121
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 124
    move-result v2

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    move-result-object v2

    .line 129
    aput-object v2, v6, v1

    .line 131
    const-string v2, "before startRecording getRecordingState={?},mMaxStartRecordTimes={?},bufferSizeInByte={?}"

    .line 133
    invoke-static {v3, v2, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iput v0, p0, Lv90;->g:I

    .line 138
    const/4 v2, 0x0

    .line 139
    :cond_3
    iget-object v3, p0, Lv90;->b:Landroid/media/AudioRecord;

    .line 141
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 144
    iget-object v3, p0, Lv90;->b:Landroid/media/AudioRecord;

    .line 146
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    .line 149
    move-result v8

    .line 150
    if-ne v8, v4, :cond_4

    .line 152
    goto :goto_1

    .line 153
    :cond_4
    add-int/2addr v2, v5

    .line 154
    iget v3, p0, Lv90;->a:I

    .line 156
    if-gt v2, v3, :cond_6

    .line 158
    const-wide/16 v6, 0x1f4

    .line 160
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 163
    sget-object v3, Lv90;->j:Ljava/lang/String;

    .line 165
    const-string v6, "sleep"

    .line 167
    new-array v7, v0, [Ljava/lang/Object;

    .line 169
    invoke-static {v3, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    goto :goto_0

    .line 173
    :catch_0
    move-exception v3

    .line 174
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    :goto_0
    iget v3, p0, Lv90;->a:I

    .line 179
    if-le v2, v3, :cond_3

    .line 181
    :goto_1
    iget v2, p0, Lv90;->h:I

    .line 183
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 186
    move-result p1

    .line 187
    new-array p1, p1, [S

    .line 189
    iput-object p1, p0, Lv90;->c:[S

    .line 191
    sget-object p1, Lv90;->j:Ljava/lang/String;

    .line 193
    new-array v2, v5, [Ljava/lang/Object;

    .line 195
    iget-object v3, p0, Lv90;->b:Landroid/media/AudioRecord;

    .line 197
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    .line 200
    move-result v3

    .line 201
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    move-result-object v3

    .line 205
    aput-object v3, v2, v0

    .line 207
    const-string v3, "after startRecording getRecordingState={?}"

    .line 209
    invoke-static {p1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    sget-object p1, Lv90;->j:Ljava/lang/String;

    .line 214
    new-array v1, v1, [Ljava/lang/Object;

    .line 216
    iget-object v2, p0, Lv90;->c:[S

    .line 218
    aput-object v2, v1, v0

    .line 220
    array-length v2, v2

    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    move-result-object v2

    .line 225
    aput-object v2, v1, v5

    .line 227
    const-string v2, "audioBuffer={?},audioBuffer.length={?}"

    .line 229
    invoke-static {p1, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iput-boolean v5, p0, Lv90;->e:Z

    .line 234
    new-instance p1, Ljava/lang/Thread;

    .line 236
    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 239
    iput-object p1, p0, Lv90;->d:Ljava/lang/Thread;

    .line 241
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 244
    invoke-static {}, Lc;->i()Lc;

    .line 247
    move-result-object p1

    .line 248
    const-string v1, "savedPcmNumber"

    .line 250
    invoke-virtual {p1, v1, v0}, Lc;->h(Ljava/lang/String;I)I

    .line 253
    move-result p1

    .line 254
    if-lez p1, :cond_5

    .line 256
    invoke-virtual {p0}, Lv90;->c()V

    .line 259
    :cond_5
    return-void

    .line 260
    :cond_6
    sget-object v1, Lv90;->j:Ljava/lang/String;

    .line 262
    const-string v2, "getRecordingState is not recording!poll times out"

    .line 264
    new-array v0, v0, [Ljava/lang/Object;

    .line 266
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-static {}, Lc;->i()Lc;

    .line 272
    move-result-object v6

    .line 273
    iget v0, p0, Lv90;->h:I

    .line 275
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 278
    move-result v7

    .line 279
    const/4 v9, 0x0

    .line 280
    iget v10, p0, Lv90;->a:I

    .line 282
    const-string v11, ""

    .line 284
    invoke-virtual/range {v6 .. v11}, Lc;->g(IIIILjava/lang/String;)V

    .line 287
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 289
    const-string v0, "getRecordingState is not recording!"

    .line 291
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 294
    throw p1
.end method

.method public final c()V
    .locals 9

    .line 1
    iget-object v0, p0, Lv90;->i:Ljava/io/DataOutputStream;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v3, Lv90;->j:Ljava/lang/String;

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    aput-object v0, v1, v2

    .line 13
    const-string v0, "startSavePcm, mPcmDataOutputStream={?}"

    .line 15
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v0, Lv90;->j:Ljava/lang/String;

    .line 21
    new-array v3, v1, [Ljava/lang/Object;

    .line 23
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 26
    move-result-object v4

    .line 27
    aput-object v4, v3, v2

    .line 29
    const-string v4, "startSavePcm, ByteOrder:{?}"

    .line 31
    invoke-static {v0, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    new-instance v0, Ljava/io/File;

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-static {}, Lr50;->e()Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v4, "/AudioRecord/"

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_1

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 69
    :cond_1
    new-instance v3, Lv90$a;

    .line 71
    invoke-direct {v3, p0}, Lv90$a;-><init>(Lv90;)V

    .line 74
    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 77
    move-result-object v3

    .line 78
    invoke-static {}, Lc;->i()Lc;

    .line 81
    move-result-object v4

    .line 82
    const-string v5, "savedPcmNumber"

    .line 84
    invoke-virtual {v4, v5, v2}, Lc;->h(Ljava/lang/String;I)I

    .line 87
    move-result v4

    .line 88
    if-eqz v3, :cond_2

    .line 90
    array-length v5, v3

    .line 91
    if-lt v5, v4, :cond_2

    .line 93
    sget-object v5, Lv90;->j:Ljava/lang/String;

    .line 95
    new-array v6, v1, [Ljava/lang/Object;

    .line 97
    array-length v7, v3

    .line 98
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v7

    .line 102
    aput-object v7, v6, v2

    .line 104
    const-string v7, "startSavePcm, pcmFiles.length:{?}"

    .line 106
    invoke-static {v5, v7, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    new-instance v5, Lv90$b;

    .line 111
    invoke-direct {v5, p0}, Lv90$b;-><init>(Lv90;)V

    .line 114
    invoke-static {v3, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 117
    const/4 v5, 0x0

    .line 118
    :goto_0
    array-length v6, v3

    .line 119
    sub-int/2addr v6, v4

    .line 120
    add-int/2addr v6, v1

    .line 121
    if-ge v5, v6, :cond_2

    .line 123
    sget-object v6, Lv90;->j:Ljava/lang/String;

    .line 125
    new-array v7, v1, [Ljava/lang/Object;

    .line 127
    aget-object v8, v3, v5

    .line 129
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 132
    move-result-object v8

    .line 133
    aput-object v8, v7, v2

    .line 135
    const-string v8, "startSavePcm, delete earliest file:{?}"

    .line 137
    invoke-static {v6, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    aget-object v6, v3, v5

    .line 142
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 145
    add-int/lit8 v5, v5, 0x1

    .line 147
    goto :goto_0

    .line 148
    :cond_2
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 150
    const-string v4, "MMddHHmmss"

    .line 152
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 155
    move-result-object v5

    .line 156
    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 159
    new-instance v4, Ljava/util/Date;

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 164
    move-result-wide v5

    .line 165
    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 168
    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 171
    move-result-object v3

    .line 172
    new-instance v4, Ljava/io/File;

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v0, "/AgroupRecord_"

    .line 188
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v0, ".pcm"

    .line 196
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v0

    .line 203
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 209
    new-instance v0, Ljava/io/DataOutputStream;

    .line 211
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 213
    new-instance v5, Ljava/io/FileOutputStream;

    .line 215
    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 218
    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 221
    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 224
    iput-object v0, p0, Lv90;->i:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    goto :goto_1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    sget-object v3, Lv90;->j:Ljava/lang/String;

    .line 233
    const-string v5, "startSavePcm exception:"

    .line 235
    new-array v6, v2, [Ljava/lang/Object;

    .line 237
    invoke-static {v3, v5, v0, v6}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 240
    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lv90;->i:Ljava/io/DataOutputStream;

    .line 243
    :goto_1
    sget-object v0, Lv90;->j:Ljava/lang/String;

    .line 245
    new-array v1, v1, [Ljava/lang/Object;

    .line 247
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 250
    move-result-object v3

    .line 251
    aput-object v3, v1, v2

    .line 253
    const-string v2, "startSavePcm, file:{?}"

    .line 255
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    sget-object v0, Lv90;->j:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "stop"

    .line 8
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-boolean v0, p0, Lv90;->e:Z

    .line 13
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    iput-boolean v1, p0, Lv90;->e:Z

    .line 18
    iget-object v0, p0, Lv90;->d:Ljava/lang/Thread;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lv90;->d:Ljava/lang/Thread;

    .line 26
    iget-object v0, p0, Lv90;->b:Landroid/media/AudioRecord;

    .line 28
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 31
    invoke-static {}, Lc;->i()Lc;

    .line 34
    move-result-object v0

    .line 35
    const-string v2, "savedPcmNumber"

    .line 37
    invoke-virtual {v0, v2, v1}, Lc;->h(Ljava/lang/String;I)I

    .line 40
    move-result v0

    .line 41
    if-lez v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lv90;->e()V

    .line 46
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lv90;->i:Ljava/io/DataOutputStream;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lv90;->j:Ljava/lang/String;

    .line 7
    const-string v1, "stopSavePcm"

    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    const/4 v0, 0x0

    .line 16
    :try_start_0
    iget-object v1, p0, Lv90;->i:Ljava/io/DataOutputStream;

    .line 18
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :goto_0
    iput-object v0, p0, Lv90;->i:Ljava/io/DataOutputStream;

    .line 23
    goto :goto_2

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception v1

    .line 27
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    sget-object v3, Lv90;->j:Ljava/lang/String;

    .line 32
    const-string v4, "stopSavePcm exception:"

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    invoke-static {v3, v4, v1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    goto :goto_0

    .line 40
    :goto_1
    iput-object v0, p0, Lv90;->i:Ljava/io/DataOutputStream;

    .line 42
    throw v1

    .line 43
    :cond_0
    :goto_2
    return-void
.end method

.method public run()V
    .locals 10

    .line 1
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lv90;->e:Z

    .line 3
    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lv90;->b:Landroid/media/AudioRecord;

    .line 7
    iget-object v1, p0, Lv90;->c:[S

    .line 9
    const/16 v2, 0xa0

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioRecord;->read([SII)I

    .line 15
    move-result v7

    .line 16
    const/4 v0, -0x3

    .line 17
    if-eq v7, v0, :cond_2

    .line 19
    const/4 v0, -0x2

    .line 20
    if-ne v7, v0, :cond_1

    .line 22
    goto :goto_2

    .line 23
    :cond_1
    iget-object v0, p0, Lv90;->f:Lif0;

    .line 25
    iget-object v1, p0, Lv90;->c:[S

    .line 27
    invoke-interface {v0, v1, v7}, Lif0;->a([SI)V

    .line 30
    iget-object v0, p0, Lv90;->i:Ljava/io/DataOutputStream;

    .line 32
    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 35
    :goto_1
    if-ge v0, v7, :cond_0

    .line 37
    :try_start_0
    iget-object v1, p0, Lv90;->c:[S

    .line 39
    array-length v2, v1

    .line 40
    if-ge v0, v2, :cond_0

    .line 42
    iget-object v2, p0, Lv90;->i:Ljava/io/DataOutputStream;

    .line 44
    aget-short v1, v1, v0

    .line 46
    and-int/lit16 v4, v1, 0xff

    .line 48
    shl-int/lit8 v4, v4, 0x8

    .line 50
    const v5, 0xff00

    .line 53
    and-int/2addr v1, v5

    .line 54
    shr-int/lit8 v1, v1, 0x8

    .line 56
    or-int/2addr v1, v4

    .line 57
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    sget-object v1, Lv90;->j:Ljava/lang/String;

    .line 69
    const-string v2, "write pcm exception:"

    .line 71
    new-array v3, v3, [Ljava/lang/Object;

    .line 73
    invoke-static {v1, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    :goto_2
    sget-object v0, Lv90;->j:Ljava/lang/String;

    .line 79
    const/4 v1, 0x3

    .line 80
    new-array v1, v1, [Ljava/lang/Object;

    .line 82
    iget-object v2, p0, Lv90;->c:[S

    .line 84
    aput-object v2, v1, v3

    .line 86
    array-length v2, v2

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v2

    .line 91
    const/4 v3, 0x1

    .line 92
    aput-object v2, v1, v3

    .line 94
    const/4 v2, 0x2

    .line 95
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v4

    .line 99
    aput-object v4, v1, v2

    .line 101
    const-string v2, "audioBuffer={?}\uff0caudioBuffer.length={?}\uff0cerror={?}"

    .line 103
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget v0, p0, Lv90;->g:I

    .line 108
    const/4 v1, 0x5

    .line 109
    if-ge v0, v1, :cond_0

    .line 111
    invoke-static {}, Lc;->i()Lc;

    .line 114
    move-result-object v4

    .line 115
    iget-object v0, p0, Lv90;->c:[S

    .line 117
    array-length v5, v0

    .line 118
    const/4 v6, 0x3

    .line 119
    iget v8, p0, Lv90;->a:I

    .line 121
    const-string v9, ""

    .line 123
    invoke-virtual/range {v4 .. v9}, Lc;->g(IIIILjava/lang/String;)V

    .line 126
    iget v0, p0, Lv90;->g:I

    .line 128
    add-int/2addr v0, v3

    .line 129
    iput v0, p0, Lv90;->g:I

    .line 131
    goto/16 :goto_0

    .line 133
    :cond_3
    return-void
.end method
