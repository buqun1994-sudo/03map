.class public Lkb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkb$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;

.field public b:Z

.field public c:Landroid/media/AudioTrack;

.field public final d:Ljava/util/concurrent/locks/ReentrantLock;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lkb;->a:Ljava/util/List;

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lkb;->c:Landroid/media/AudioTrack;

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 23
    iput-object v0, p0, Lkb;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 25
    const/16 v0, 0x64

    .line 27
    iput v0, p0, Lkb;->f:I

    .line 29
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v2, "[Audio] AutoWavPlayer"

    .line 9
    const-string v3, "addPlayMediaFile filePath:{?}"

    .line 11
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iput p2, p0, Lkb;->f:I

    .line 16
    iput-boolean v0, p0, Lkb;->b:Z

    .line 18
    iget-object p2, p0, Lkb;->a:Ljava/util/List;

    .line 20
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p0}, Lkb;->h()V

    .line 26
    return-void
.end method

.method public b()I
    .locals 4

    .line 1
    iget-object v0, p0, Lkb;->c:Landroid/media/AudioTrack;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v3

    .line 19
    aput-object v3, v1, v2

    .line 21
    const-string v2, "[Audio] AutoWavPlayer"

    .line 23
    const-string v3, "getFilePlayStates fileAudioState={?}"

    .line 25
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return v0
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkb;->e()V

    .line 4
    invoke-virtual {p0}, Lkb;->j()V

    .line 7
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    invoke-static {}, Lo6;->j()Lo6;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 8
    move-result-object v0

    .line 9
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isPlayWarningSoundNeedRequestFocus:Z

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    const-string v1, "[Audio] AutoWavPlayer"

    .line 18
    const-string v2, "playFileByAudioTrack abandomFocusSystem"

    .line 20
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-static {}, Lo6;->j()Lo6;

    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Lo6;->a(I)Z

    .line 31
    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "[Audio] AutoWavPlayer"

    .line 6
    const-string v3, "clear"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iput-boolean v0, p0, Lkb;->b:Z

    .line 13
    iget-object v0, p0, Lkb;->a:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    return-void
.end method

.method public final f([B)Lkb$a;
    .locals 10

    .line 1
    new-instance v0, Lkb$a;

    .line 3
    invoke-direct {v0}, Lkb$a;-><init>()V

    .line 6
    array-length v1, p1

    .line 7
    const/16 v2, 0x2c

    .line 9
    iput v2, v0, Lkb$a;->a:I

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v1, :cond_1

    .line 15
    aget-byte v4, p1, v3

    .line 17
    int-to-char v4, v4

    .line 18
    const/16 v5, 0x64

    .line 20
    if-ne v4, v5, :cond_0

    .line 22
    const/4 v4, 0x1

    .line 23
    new-array v5, v4, [Ljava/lang/Object;

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v6

    .line 29
    aput-object v6, v5, v2

    .line 31
    const-string v6, "[Audio] AutoWavPlayer"

    .line 33
    const-string v7, "getDataIndex first dchar index:{?} "

    .line 35
    invoke-static {v6, v7, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    add-int/lit8 v5, v3, 0x8

    .line 40
    if-gt v5, v1, :cond_0

    .line 42
    add-int/lit8 v7, v3, 0x1

    .line 44
    aget-byte v7, p1, v7

    .line 46
    int-to-char v7, v7

    .line 47
    const/16 v8, 0x61

    .line 49
    if-ne v7, v8, :cond_0

    .line 51
    add-int/lit8 v7, v3, 0x2

    .line 53
    aget-byte v7, p1, v7

    .line 55
    int-to-char v7, v7

    .line 56
    const/16 v9, 0x74

    .line 58
    if-ne v7, v9, :cond_0

    .line 60
    add-int/lit8 v7, v3, 0x3

    .line 62
    aget-byte v7, p1, v7

    .line 64
    int-to-char v7, v7

    .line 65
    if-ne v7, v8, :cond_0

    .line 67
    iput v5, v0, Lkb$a;->a:I

    .line 69
    add-int/lit8 v1, v3, 0x4

    .line 71
    aget-byte v1, p1, v1

    .line 73
    invoke-virtual {p0, v1}, Lkb;->k(B)I

    .line 76
    move-result v1

    .line 77
    add-int/lit8 v5, v3, 0x5

    .line 79
    aget-byte v5, p1, v5

    .line 81
    invoke-virtual {p0, v5}, Lkb;->k(B)I

    .line 84
    move-result v5

    .line 85
    shl-int/lit8 v5, v5, 0x8

    .line 87
    or-int/2addr v1, v5

    .line 88
    add-int/lit8 v5, v3, 0x6

    .line 90
    aget-byte v5, p1, v5

    .line 92
    invoke-virtual {p0, v5}, Lkb;->k(B)I

    .line 95
    move-result v5

    .line 96
    shl-int/lit8 v5, v5, 0x10

    .line 98
    or-int/2addr v1, v5

    .line 99
    add-int/lit8 v3, v3, 0x7

    .line 101
    aget-byte v3, p1, v3

    .line 103
    invoke-virtual {p0, v3}, Lkb;->k(B)I

    .line 106
    move-result v3

    .line 107
    shl-int/lit8 v3, v3, 0x18

    .line 109
    or-int/2addr v1, v3

    .line 110
    iput v1, v0, Lkb$a;->b:I

    .line 112
    const/4 v1, 0x3

    .line 113
    new-array v1, v1, [Ljava/lang/Object;

    .line 115
    array-length p1, p1

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object p1

    .line 120
    aput-object p1, v1, v2

    .line 122
    iget p1, v0, Lkb$a;->a:I

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object p1

    .line 128
    aput-object p1, v1, v4

    .line 130
    iget p1, v0, Lkb$a;->b:I

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    move-result-object p1

    .line 136
    const/4 v2, 0x2

    .line 137
    aput-object p1, v1, v2

    .line 139
    const-string p1, "getDataIndex dataLen:{?} last data index:{?} len:{?} "

    .line 141
    invoke-static {v6, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    goto :goto_1

    .line 145
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 147
    goto/16 :goto_0

    .line 149
    :cond_1
    :goto_1
    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    invoke-static {}, Lo6;->j()Lo6;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->getStreamType()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public h()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v2, "playFileByAudioTrack:exception :"

    .line 5
    const-string v3, "playFileByAudioTrack end play"

    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v4, v0, [Ljava/lang/Object;

    .line 10
    iget-object v5, v1, Lkb;->a:Ljava/util/List;

    .line 12
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 15
    move-result v5

    .line 16
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v5

    .line 20
    const/4 v6, 0x0

    .line 21
    aput-object v5, v4, v6

    .line 23
    const-string v5, "[Audio] AutoWavPlayer"

    .line 25
    const-string v7, "playFileByAudioTrack mediaPlayRes.size:{?}"

    .line 27
    invoke-static {v5, v7, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v4, v1, Lkb;->a:Ljava/util/List;

    .line 32
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_0

    .line 38
    invoke-virtual/range {p0 .. p0}, Lkb;->e()V

    .line 41
    return-void

    .line 42
    :cond_0
    iget-boolean v4, v1, Lkb;->b:Z

    .line 44
    if-nez v4, :cond_1

    .line 46
    return-void

    .line 47
    :cond_1
    iget v4, v1, Lkb;->e:I

    .line 49
    const v7, 0xac44

    .line 52
    const/4 v8, 0x2

    .line 53
    if-nez v4, :cond_2

    .line 55
    invoke-static {v7, v8, v8}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 58
    move-result v4

    .line 59
    iput v4, v1, Lkb;->e:I

    .line 61
    :cond_2
    iget v4, v1, Lkb;->e:I

    .line 63
    if-ge v4, v0, :cond_3

    .line 65
    const/16 v4, 0x1400

    .line 67
    :cond_3
    iput v4, v1, Lkb;->e:I

    .line 69
    new-array v4, v4, [B

    .line 71
    :try_start_0
    iget-object v10, v1, Lkb;->a:Ljava/util/List;

    .line 73
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v10

    .line 77
    check-cast v10, Ljava/lang/String;

    .line 79
    const-string v11, "playFileByAudioTrack wavVolumePercent:{?} filePath:{?} mBuffSize:{?}"

    .line 81
    const/4 v12, 0x3

    .line 82
    new-array v13, v12, [Ljava/lang/Object;

    .line 84
    iget v14, v1, Lkb;->f:I

    .line 86
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v14

    .line 90
    aput-object v14, v13, v6

    .line 92
    aput-object v10, v13, v0

    .line 94
    iget v14, v1, Lkb;->e:I

    .line 96
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v14

    .line 100
    aput-object v14, v13, v8

    .line 102
    invoke-static {v5, v11, v13}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-object v11, v1, Lkb;->a:Ljava/util/List;

    .line 107
    invoke-interface {v11, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 110
    invoke-static {}, Lo6;->j()Lo6;

    .line 113
    move-result-object v11

    .line 114
    invoke-virtual {v11}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 117
    move-result-object v11

    .line 118
    iget-boolean v11, v11, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isPlayWarningSoundNeedRequestFocus:Z

    .line 120
    const-string v13, "playFileByAudioTrack isPlayWarningSoundNeedRequestFocus:{?}"

    .line 122
    new-array v14, v0, [Ljava/lang/Object;

    .line 124
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 127
    move-result-object v15

    .line 128
    aput-object v15, v14, v6

    .line 130
    invoke-static {v5, v13, v14}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 133
    if-eqz v11, :cond_5

    .line 135
    :try_start_1
    invoke-static {}, Lo6;->j()Lo6;

    .line 138
    move-result-object v11

    .line 139
    invoke-static {}, Lo6;->j()Lo6;

    .line 142
    move-result-object v13

    .line 143
    invoke-virtual {v13}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 146
    move-result-object v13

    .line 147
    iget v13, v13, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioMode:I

    .line 149
    invoke-virtual {v11, v13, v0}, Lo6;->D(II)I

    .line 152
    move-result v11

    .line 153
    invoke-static {}, Lzm;->d()Lzm;

    .line 156
    move-result-object v13

    .line 157
    sget-object v14, Lzm;->L:Ljava/lang/String;

    .line 159
    invoke-virtual {v13, v14, v0}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 162
    move-result v13

    .line 163
    if-eqz v11, :cond_4

    .line 165
    if-ne v11, v8, :cond_5

    .line 167
    if-nez v13, :cond_5

    .line 169
    :cond_4
    const-string v3, "exit playFileByAudioTrack  ret:{?};isRequestDelayedNeedPlay:{?}"

    .line 171
    new-array v4, v8, [Ljava/lang/Object;

    .line 173
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v7

    .line 177
    aput-object v7, v4, v6

    .line 179
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 182
    move-result-object v7

    .line 183
    aput-object v7, v4, v0

    .line 185
    invoke-static {v5, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const/4 v9, 0x0

    .line 191
    goto/16 :goto_8

    .line 193
    :cond_5
    :try_start_2
    const-string v11, "android_assets"

    .line 195
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 198
    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 199
    if-eqz v11, :cond_6

    .line 201
    :try_start_3
    const-string v11, "res"

    .line 203
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 206
    move-result v11

    .line 207
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 210
    move-result-object v10

    .line 211
    invoke-static {}, Lrv;->H()Lrv;

    .line 214
    move-result-object v11

    .line 215
    invoke-virtual {v11}, Lrv;->z()Landroid/content/Context;

    .line 218
    move-result-object v11

    .line 219
    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 222
    move-result-object v11

    .line 223
    invoke-virtual {v11, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 226
    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 227
    goto :goto_0

    .line 228
    :cond_6
    :try_start_4
    new-instance v11, Ljava/io/BufferedInputStream;

    .line 230
    new-instance v13, Ljava/io/FileInputStream;

    .line 232
    invoke-direct {v13, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-direct {v11, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 238
    move-object v10, v11

    .line 239
    :goto_0
    :try_start_5
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    .line 242
    move-result v11

    .line 243
    if-gez v11, :cond_7

    .line 245
    const-string v0, "playFileByAudioTrack:exception read header < 0"

    .line 247
    new-array v3, v6, [Ljava/lang/Object;

    .line 249
    invoke-static {v5, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    invoke-static {v10}, Lns;->a(Ljava/io/Closeable;)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lkb;->d()V

    .line 258
    return-void

    .line 259
    :cond_7
    const/16 v13, 0x16

    .line 261
    aget-byte v13, v4, v13

    .line 263
    if-ne v13, v8, :cond_8

    .line 265
    goto :goto_1

    .line 266
    :cond_8
    const/4 v12, 0x2

    .line 267
    :goto_1
    invoke-virtual {v1, v4}, Lkb;->f([B)Lkb$a;

    .line 270
    move-result-object v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 271
    const-wide/16 v15, 0x12c

    .line 273
    :try_start_6
    iget-object v9, v1, Lkb;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 275
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 278
    const-string v9, "playFileByAudioTrack start play"

    .line 280
    new-array v14, v6, [Ljava/lang/Object;

    .line 282
    invoke-static {v5, v9, v14}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iget-object v9, v1, Lkb;->c:Landroid/media/AudioTrack;

    .line 287
    if-eqz v9, :cond_9

    .line 289
    invoke-virtual {v9}, Landroid/media/AudioTrack;->release()V

    .line 292
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lkb;->g()I

    .line 295
    move-result v9

    .line 296
    iget v14, v1, Lkb;->e:I

    .line 298
    mul-int/lit8 v14, v14, 0x2

    .line 300
    invoke-static {v0, v9, v7, v12, v14}, Lj6;->a(IIIII)Landroid/media/AudioTrack;

    .line 303
    move-result-object v0

    .line 304
    iput-object v0, v1, Lkb;->c:Landroid/media/AudioTrack;

    .line 306
    iget v0, v1, Lkb;->f:I

    .line 308
    invoke-virtual {v1, v0}, Lkb;->i(I)V

    .line 311
    const/16 v0, 0xbc3

    .line 313
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->sendAutoStatus(I)V

    .line 316
    iget-object v0, v1, Lkb;->c:Landroid/media/AudioTrack;

    .line 318
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 321
    iget v0, v13, Lkb$a;->a:I

    .line 323
    sub-int v7, v11, v0

    .line 325
    iget-object v8, v1, Lkb;->c:Landroid/media/AudioTrack;

    .line 327
    sub-int/2addr v11, v0

    .line 328
    invoke-virtual {v8, v4, v0, v11}, Landroid/media/AudioTrack;->write([BII)I

    .line 331
    :goto_2
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    .line 334
    move-result v0

    .line 335
    if-lez v0, :cond_c

    .line 337
    iget-boolean v8, v1, Lkb;->b:Z

    .line 339
    if-nez v8, :cond_a

    .line 341
    goto :goto_3

    .line 342
    :cond_a
    add-int v8, v7, v0

    .line 344
    iget v9, v13, Lkb$a;->b:I

    .line 346
    if-le v8, v9, :cond_b

    .line 348
    sub-int/2addr v9, v7

    .line 349
    iget-object v0, v1, Lkb;->c:Landroid/media/AudioTrack;

    .line 351
    invoke-virtual {v0, v4, v6, v9}, Landroid/media/AudioTrack;->write([BII)I

    .line 354
    goto :goto_3

    .line 355
    :cond_b
    iget-object v7, v1, Lkb;->c:Landroid/media/AudioTrack;

    .line 357
    invoke-virtual {v7, v4, v6, v0}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 360
    move v7, v8

    .line 361
    goto :goto_2

    .line 362
    :cond_c
    :goto_3
    iget-object v0, v1, Lkb;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 364
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 367
    new-array v0, v6, [Ljava/lang/Object;

    .line 369
    invoke-static {v5, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :try_start_7
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    .line 375
    goto :goto_6

    .line 376
    :catch_1
    move-exception v0

    .line 377
    move-object v2, v0

    .line 378
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 381
    goto :goto_6

    .line 382
    :catchall_0
    move-exception v0

    .line 383
    :try_start_8
    new-array v4, v6, [Ljava/lang/Object;

    .line 385
    invoke-static {v5, v2, v0, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 388
    :try_start_9
    iget-object v0, v1, Lkb;->c:Landroid/media/AudioTrack;

    .line 390
    if-eqz v0, :cond_d

    .line 392
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 395
    iget-object v0, v1, Lkb;->c:Landroid/media/AudioTrack;

    .line 397
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 400
    iget-object v0, v1, Lkb;->c:Landroid/media/AudioTrack;

    .line 402
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 405
    iget-object v0, v1, Lkb;->c:Landroid/media/AudioTrack;

    .line 407
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 410
    :cond_d
    const/4 v2, 0x0

    .line 411
    :goto_4
    :try_start_a
    iput-object v2, v1, Lkb;->c:Landroid/media/AudioTrack;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 413
    goto :goto_5

    .line 414
    :catchall_1
    move-exception v0

    .line 415
    :try_start_b
    const-string v2, "throwable playFileByAudioTrack:exception :"

    .line 417
    new-array v4, v6, [Ljava/lang/Object;

    .line 419
    invoke-static {v5, v2, v0, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 422
    const/4 v2, 0x0

    .line 423
    goto :goto_4

    .line 424
    :goto_5
    iget-object v0, v1, Lkb;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 426
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 429
    new-array v0, v6, [Ljava/lang/Object;

    .line 431
    invoke-static {v5, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    :try_start_c
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2

    .line 437
    goto :goto_6

    .line 438
    :catch_2
    move-exception v0

    .line 439
    move-object v2, v0

    .line 440
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 443
    :goto_6
    invoke-static {v10}, Lns;->a(Ljava/io/Closeable;)V

    .line 446
    invoke-virtual/range {p0 .. p0}, Lkb;->j()V

    .line 449
    invoke-virtual/range {p0 .. p0}, Lkb;->d()V

    .line 452
    const/16 v2, 0xbc4

    .line 454
    invoke-static {v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->sendAutoStatus(I)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Lkb;->h()V

    .line 460
    return-void

    .line 461
    :catchall_2
    move-exception v0

    .line 462
    const/4 v4, 0x0

    .line 463
    :try_start_d
    iput-object v4, v1, Lkb;->c:Landroid/media/AudioTrack;

    .line 465
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 466
    :catchall_3
    move-exception v0

    .line 467
    move-object v2, v0

    .line 468
    iget-object v0, v1, Lkb;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 470
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 473
    new-array v0, v6, [Ljava/lang/Object;

    .line 475
    invoke-static {v5, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    :try_start_e
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_3

    .line 481
    goto :goto_7

    .line 482
    :catch_3
    move-exception v0

    .line 483
    move-object v3, v0

    .line 484
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 487
    :goto_7
    invoke-static {v10}, Lns;->a(Ljava/io/Closeable;)V

    .line 490
    invoke-virtual/range {p0 .. p0}, Lkb;->j()V

    .line 493
    invoke-virtual/range {p0 .. p0}, Lkb;->d()V

    .line 496
    const/16 v3, 0xbc4

    .line 498
    invoke-static {v3}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->sendAutoStatus(I)V

    .line 501
    invoke-virtual/range {p0 .. p0}, Lkb;->h()V

    .line 504
    throw v2

    .line 505
    :catch_4
    move-exception v0

    .line 506
    move-object v9, v10

    .line 507
    goto :goto_8

    .line 508
    :catch_5
    move-exception v0

    .line 509
    const/4 v4, 0x0

    .line 510
    move-object v9, v4

    .line 511
    :goto_8
    new-array v3, v6, [Ljava/lang/Object;

    .line 513
    invoke-static {v5, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 516
    if-eqz v9, :cond_e

    .line 518
    invoke-static {v9}, Lns;->a(Ljava/io/Closeable;)V

    .line 521
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lkb;->d()V

    .line 524
    return-void
.end method

.method public i(I)V
    .locals 3

    .line 1
    iget p1, p0, Lkb;->f:I

    .line 3
    int-to-float p1, p1

    .line 4
    const/high16 v0, 0x42c80000    # 100.0f

    .line 6
    div-float/2addr p1, v0

    .line 7
    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    move-result-object v2

    .line 15
    aput-object v2, v0, v1

    .line 17
    iget v1, p0, Lkb;->f:I

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object v1, v0, v2

    .line 26
    const-string v1, "[Audio] AutoWavPlayer"

    .line 28
    const-string v2, "setVolume:{?} wavVolumePercent:{?}"

    .line 30
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lkb;->c:Landroid/media/AudioTrack;

    .line 35
    invoke-virtual {v0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 38
    return-void
.end method

.method public j()V
    .locals 6

    .line 1
    const-string v0, "end stop"

    .line 3
    const-string v1, "[Audio] AutoWavPlayer"

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lkb;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 11
    const-string v3, "strat stop"

    .line 13
    new-array v4, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v3, p0, Lkb;->c:Landroid/media/AudioTrack;

    .line 20
    if-eqz v3, :cond_0

    .line 22
    invoke-virtual {v3}, Landroid/media/AudioTrack;->pause()V

    .line 25
    iget-object v3, p0, Lkb;->c:Landroid/media/AudioTrack;

    .line 27
    invoke-virtual {v3}, Landroid/media/AudioTrack;->flush()V

    .line 30
    iget-object v3, p0, Lkb;->c:Landroid/media/AudioTrack;

    .line 32
    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_0
    iget-object v3, p0, Lkb;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 37
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 40
    new-array v2, v2, [Ljava/lang/Object;

    .line 42
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v3

    .line 47
    :try_start_1
    const-string v4, "stopFileAudioTrack exception :"

    .line 49
    new-array v5, v2, [Ljava/lang/Object;

    .line 51
    invoke-static {v1, v4, v3, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    iget-object v3, p0, Lkb;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 56
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 59
    new-array v2, v2, [Ljava/lang/Object;

    .line 61
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 65
    :catchall_1
    move-exception v3

    .line 66
    iget-object v4, p0, Lkb;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 68
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 71
    new-array v2, v2, [Ljava/lang/Object;

    .line 73
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    throw v3
.end method

.method public final k(B)I
    .locals 0

    .line 1
    and-int/lit16 p1, p1, 0xff

    return p1
.end method
